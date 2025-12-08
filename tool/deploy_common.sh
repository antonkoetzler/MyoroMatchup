#!/bin/bash
#
# Common deploy script functions
#
# Author: Anton Louis Koetzler-Faust
# Date: 07/12/2025

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Validate version type argument
validate_version_type() {
    local version_type=$1
    
    if [[ ! "$version_type" =~ ^(patch|minor|major)$ ]]; then
        echo -e "${RED}❌ Error:${NC} Invalid version type: ${YELLOW}$version_type${NC}"
        echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        exit 1
    fi
}

# Check if we're on the main branch
check_branch() {
    local repo_root="$1"
    cd "$repo_root"
    local current_branch=$(git branch --show-current 2>/dev/null)
    
    if [ -z "$current_branch" ]; then
        echo -e "${RED}❌ Error:${NC} Not in a git repository"
        exit 1
    fi
    
    if [ "$current_branch" != "main" ]; then
        echo -e "${RED}❌ Error:${NC} Current branch is ${YELLOW}$current_branch${NC}, but deployment must be done from ${CYAN}main${NC} branch"
        echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        exit 1
    fi
}

# Check if STAGELOG.md is empty (only contains header and dash)
check_stagelog_empty() {
    local stagelog_file="$1"
    
    # Read file content, skip first line (header), check if only contains "-" or whitespace
    local content=$(tail -n +2 "$stagelog_file" | sed '/^$/d' | tr -d '[:space:]')
    
    # Empty state is just "-" (possibly with whitespace)
    if [ "$content" = "-" ] || [ -z "$content" ]; then
        return 0  # Empty
    else
        return 1  # Not empty
    fi
}

# Transfer STAGELOG.md to CHANGELOG.md
transfer_stagelog_to_changelog() {
    local new_version=$1
    local stagelog_file=$2
    local changelog_file=$3
    
    # Extract content from STAGELOG (skip header, remove empty lines and dash-only lines)
    # Remove empty lines between list items - list items should be consecutive
    local stagelog_content=$(tail -n +2 "$stagelog_file" | grep -v '^-$' | awk '
        BEGIN {in_list=0}
        /^-/ {
            if (in_list && prev_line != "") print prev_line
            print
            prev_line=""
            in_list=1
            next
        }
        /^$/ {
            if (in_list) {
                next
            }
            if (prev_line != "") print prev_line
            prev_line=""
            in_list=0
            next
        }
        {
            if (prev_line != "") print prev_line
            print
            prev_line=""
            in_list=0
        }
        END {if (prev_line != "") print prev_line}
    ')
    
    # If no content after filtering, return
    if [ -z "$stagelog_content" ]; then
        return 1
    fi
    
    # Read current changelog content (skip header)
    # Remove empty lines between list items, but preserve version headers and other structure
    local changelog_content=$(tail -n +2 "$changelog_file" 2>/dev/null)
    if [ -n "$changelog_content" ]; then
        changelog_content=$(printf "%s" "$changelog_content" | awk '
            BEGIN {in_list=0}
            /^##/ {
                if (prev_line != "") print prev_line
                print
                prev_line=""
                in_list=0
                next
            }
            /^-/ {
                if (in_list && prev_line != "") print prev_line
                print
                prev_line=""
                in_list=1
                next
            }
            /^$/ {
                if (in_list) {
                    next
                }
                if (prev_line != "") print prev_line
                print
                prev_line=""
                in_list=0
                next
            }
            {
                if (prev_line != "") print prev_line
                print
                prev_line=""
                in_list=0
            }
            END {if (prev_line != "") print prev_line}
        ' | sed -z 's/\n\+$//')
    fi
    
    # Build new changelog: header, new version section (with build number), then old content
    # Use printf to control newlines precisely
    {
        printf "# CHANGELOG\n"
        printf "\n"
        printf "## %s\n" "$new_version"
        printf "\n"
        printf "%s" "$stagelog_content"
        if [ -n "$changelog_content" ]; then
            printf "\n"
            printf "%s" "$changelog_content"
        fi
        printf "\n"
    } > "$changelog_file"
}

# Clear STAGELOG.md to empty state
clear_stagelog() {
    local stagelog_file=$1
    
    {
        echo "# STAGELOG"
        echo ""
        echo "-"
    } > "$stagelog_file"
}

# Git operations
git_commit_and_push() {
    local version_type=$1
    local project_name=$2
    local version=$3
    local repo_root=$4
    
    echo -e "${BLUE}📤 Committing and pushing changes...${NC}"
    cd "$repo_root"
    
    git add .
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Error:${NC} Failed to stage changes"
        exit 1
    fi
    
    git commit -m "release(${version_type}): \`${project_name}\` ${version}"
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Error:${NC} Failed to commit changes"
        exit 1
    fi
    
    git push
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Error:${NC} Failed to push changes"
        exit 1
    fi
    
    echo -e "${GREEN}✅ Successfully deployed version ${CYAN}$version${NC} to ${CYAN}main${NC} branch${NC}"
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

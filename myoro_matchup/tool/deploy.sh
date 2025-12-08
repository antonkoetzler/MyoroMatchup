#!/bin/bash
#
# Frontend deploy script.
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

# Help function
show_help() {
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${WHITE}🚀 ${MAGENTA}Deploy Script${NC} ${WHITE}🚀${NC}"
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    echo -e "${YELLOW}📋 Usage:${NC}"
    echo -e "  ${GREEN}bash deploy.sh${NC} ${BLUE}<version_type>${NC}"
    echo ""
    echo -e "${YELLOW}📌 Version Types:${NC}"
    echo -e "  ${GREEN}patch${NC}  ${CYAN}→${NC} Increment patch version (1.0.0 → 1.0.1)"
    echo -e "  ${GREEN}minor${NC}  ${CYAN}→${NC} Increment minor version (1.0.0 → 1.1.0)"
    echo -e "  ${GREEN}major${NC}  ${CYAN}→${NC} Increment major version (1.0.0 → 2.0.0)"
    echo ""
    echo -e "${YELLOW}💡 Examples:${NC}"
    echo -e "  ${GREEN}bash deploy.sh patch${NC}"
    echo -e "  ${GREEN}bash deploy.sh minor${NC}"
    echo -e "  ${GREEN}bash deploy.sh major${NC}"
    echo ""
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

# Validate version type argument
validate_version_type() {
    local version_type=$1
    
    if [[ ! "$version_type" =~ ^(patch|minor|major)$ ]]; then
        echo -e "${RED}❌ Error:${NC} Invalid version type: ${YELLOW}$version_type${NC}"
        echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo ""
        show_help
        exit 1
    fi
}

# Get script and project paths
get_script_paths() {
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
}

# Check if we're on the main branch
check_branch() {
    local repo_root="$(cd "$PROJECT_ROOT/.." && pwd)"
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

# Run setup script
run_setup() {
    echo -e "${BLUE}📦 Running setup script...${NC}"
    cd "$PROJECT_ROOT"
    bash "$SCRIPT_DIR/setup.sh"
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Error:${NC} Setup script failed"
        exit 1
    fi
}

# Read and parse current version from pubspec.yaml
read_current_version() {
    local pubspec_file="$PROJECT_ROOT/pubspec.yaml"
    local current_version=$(grep "^version:" "$pubspec_file" | sed 's/version: //' | tr -d ' ')
    
    # Split version and build number using parameter expansion
    local version_part="${current_version%%+*}"
    local build_number="${current_version#*+}"
    
    # If no build number exists (no + in version), default to 0
    if [ "$build_number" = "$current_version" ]; then
        build_number=0
    fi
    
    # Parse version parts using parameter expansion
    local major="${version_part%%.*}"
    local rest="${version_part#*.}"
    local minor="${rest%%.*}"
    local patch="${rest#*.}"
    
    # Set global variables
    MAJOR=$major
    MINOR=$minor
    PATCH=$patch
    BUILD_NUMBER=$build_number
}

# Calculate new version based on version type
calculate_new_version() {
    local version_type=$1
    
    # Update version based on type
    case "$version_type" in
        patch)
            PATCH=$((PATCH + 1))
            ;;
        minor)
            MINOR=$((MINOR + 1))
            PATCH=0
            ;;
        major)
            MAJOR=$((MAJOR + 1))
            MINOR=0
            PATCH=0
            ;;
    esac
    
    # Increment build number
    BUILD_NUMBER=$((BUILD_NUMBER + 1))
}

# Update version in pubspec.yaml
update_pubspec_version() {
    local new_version=$1
    local pubspec_file="$PROJECT_ROOT/pubspec.yaml"
    
    sed -i "s/^version:.*/version: $new_version/" "$pubspec_file"
}

# Check if STAGELOG.md is empty (only contains header and dash)
check_stagelog_empty() {
    local stagelog_file="$PROJECT_ROOT/STAGELOG.md"
    
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
    local stagelog_file="$PROJECT_ROOT/STAGELOG.md"
    local changelog_file="$PROJECT_ROOT/CHANGELOG.md"
    
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
    local stagelog_file="$PROJECT_ROOT/STAGELOG.md"
    
    {
        echo "# STAGELOG"
        echo ""
        echo "-"
    } > "$stagelog_file"
}

# Main execution
main() {
    # Validate arguments
    if [ $# -eq 0 ]; then
        show_help
        exit 1
    fi
    
    local version_type=$1
    validate_version_type "$version_type"
    
    echo -e "${GREEN}✅ Version type:${NC} ${CYAN}$version_type${NC}"
    
    get_script_paths
    
    # Check if we're on the main branch
    check_branch
    
    # Check if STAGELOG.md is empty before any write operations
    if check_stagelog_empty; then
        echo -e "${RED}❌ Error:${NC} ${YELLOW}STAGELOG.md${NC} is empty. There are no changes to deploy."
        echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        exit 1
    fi
    
    # Read current version and calculate new version (but don't write yet)
    read_current_version
    local current_version="$MAJOR.$MINOR.$PATCH+$BUILD_NUMBER"
    
    # Calculate new version
    calculate_new_version "$version_type"
    local new_version="$MAJOR.$MINOR.$PATCH+$BUILD_NUMBER"
    
    run_setup
    
    echo -e "${BLUE}📝 Updating version in pubspec.yaml...${NC}"
    update_pubspec_version "$new_version"
    echo -e "${GREEN}✅ Version updated:${NC} ${CYAN}$current_version${NC} → ${CYAN}$new_version${NC}"
    
    echo -e "${BLUE}📋 Transferring STAGELOG.md to CHANGELOG.md...${NC}"
    if transfer_stagelog_to_changelog "$new_version"; then
        clear_stagelog
        echo -e "${GREEN}✅ STAGELOG.md transferred to CHANGELOG.md.${NC}"
    else
        echo -e "${RED}❌ Error:${NC} Failed to transfer STAGELOG.md to CHANGELOG.md"
        exit 1
    fi
    
    # Git operations - run from MyoroMatchup root directory
    echo -e "${BLUE}📤 Committing and pushing changes...${NC}"
    local repo_root="$(cd "$PROJECT_ROOT/.." && pwd)"
    cd "$repo_root"
    
    git add .
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Error:${NC} Failed to stage changes"
        exit 1
    fi
    
    git commit -m "release(myoro_matchup): $new_version"
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Error:${NC} Failed to commit changes"
        exit 1
    fi
    
    git push
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}❌ Error:${NC} Failed to push changes"
        exit 1
    fi
    
    echo -e "${GREEN}✅ Successfully deployed version ${CYAN}$new_version${NC} to ${CYAN}main${NC} branch${NC}"
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

# Run main function
main "$@"

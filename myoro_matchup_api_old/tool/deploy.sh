#!/bin/bash
#
# Backend deploy script.
#
# Author: Anton Louis Koetzler-Faust
# Date: 07/12/2025

# Get script and project paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
REPO_ROOT="$(cd "$PROJECT_ROOT/.." && pwd)"
COMMON_SCRIPT="$REPO_ROOT/tool/deploy.sh"

# Source common functions
source "$COMMON_SCRIPT"

# Colors (for help function)
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

# Run setup script
run_setup() {
    echo -e "${BLUE}📦 Running setup script...${NC}"
    cd "$PROJECT_ROOT"
    
    if [ -f "$SCRIPT_DIR/setup.sh" ]; then
        bash "$SCRIPT_DIR/setup.sh"
        
        if [ $? -ne 0 ]; then
            echo -e "${RED}❌ Error:${NC} Setup script failed"
            exit 1
        fi
    else
        echo -e "${YELLOW}⚠️  Warning:${NC} Setup script not found, skipping..."
    fi
}

# Read and parse current version from pom.xml
read_current_version() {
    local pom_file="$PROJECT_ROOT/pom.xml"
    
    # Extract version from pom.xml - get version tag that comes after artifactId
    local current_version=$(awk '
        /<artifactId>myoro-matchup-api<\/artifactId>/ { found=1; next }
        found && /<version>/ { 
            gsub(/.*<version>|<\/version>.*/, "")
            gsub(/-SNAPSHOT$/, "")
            print
            exit
        }
    ' "$pom_file")
    
    # Parse version parts using parameter expansion
    local major="${current_version%%.*}"
    local rest="${current_version#*.}"
    local minor="${rest%%.*}"
    local patch="${rest#*.}"
    
    # Set global variables
    MAJOR=$major
    MINOR=$minor
    PATCH=$patch
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
}

# Update version in pom.xml
update_pom_version() {
    local new_version=$1
    local pom_file="$PROJECT_ROOT/pom.xml"
    
    # Update version in pom.xml - update the artifact version, not parent version
    # Use awk to find and update the version tag that comes after artifactId
    awk -v new_version="$new_version" '
        /<artifactId>myoro-matchup-api<\/artifactId>/ { 
            found_artifact=1
            print
            next
        }
        found_artifact && /<version>/ { 
            sub(/<version>.*<\/version>/, "<version>" new_version "</version>")
            found_artifact=0
        }
        { print }
    ' "$pom_file" > "$pom_file.tmp" && mv "$pom_file.tmp" "$pom_file"
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
    
    # Check if we're on the main branch
    check_branch "$REPO_ROOT"
    
    # Check if STAGELOG.md is empty before any write operations
    if check_stagelog_empty "$PROJECT_ROOT/STAGELOG.md"; then
        echo -e "${RED}❌ Error:${NC} ${YELLOW}STAGELOG.md${NC} is empty. There are no changes to deploy."
        echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        exit 1
    fi
    
    # Read current version and calculate new version (but don't write yet)
    read_current_version
    local current_version="$MAJOR.$MINOR.$PATCH"
    
    # Calculate new version
    calculate_new_version "$version_type"
    local new_version="$MAJOR.$MINOR.$PATCH"
    
    run_setup
    
    echo -e "${BLUE}📝 Updating version in pom.xml...${NC}"
    update_pom_version "$new_version"
    echo -e "${GREEN}✅ Version updated:${NC} ${CYAN}$current_version${NC} → ${CYAN}$new_version${NC}"
    
    echo -e "${BLUE}📋 Transferring STAGELOG.md to CHANGELOG.md...${NC}"
    if transfer_stagelog_to_changelog "$new_version" "$PROJECT_ROOT/STAGELOG.md" "$PROJECT_ROOT/CHANGELOG.md"; then
        clear_stagelog "$PROJECT_ROOT/STAGELOG.md"
        echo -e "${GREEN}✅ STAGELOG.md transferred to CHANGELOG.md.${NC}"
    else
        echo -e "${RED}❌ Error:${NC} Failed to transfer STAGELOG.md to CHANGELOG.md"
        exit 1
    fi
    
    # Git operations
    git_commit_and_push "$version_type" "myoro_matchup_api" "$new_version" "$REPO_ROOT"
}

# Run main function
main "$@"

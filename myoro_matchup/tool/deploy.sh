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

# Validate arguments
if [ $# -eq 0 ]; then
    show_help
    exit 1
fi

VERSION_TYPE=$1

if [[ ! "$VERSION_TYPE" =~ ^(patch|minor|major)$ ]]; then
    echo -e "${RED}❌ Error:${NC} Invalid version type: ${YELLOW}$VERSION_TYPE${NC}"
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    show_help
    exit 1
fi

echo -e "${GREEN}✅ Version type:${NC} ${CYAN}$VERSION_TYPE${NC}"
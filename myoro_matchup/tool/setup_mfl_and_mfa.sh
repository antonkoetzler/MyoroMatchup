#!/bin/bash
#
# Script to setup MFL (Myoro Flutter Library) dependencies
# Usage: ./setup_mfl.sh [local|remote]

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if argument is provided
check_argument() {
    if [ $# -eq 0 ]; then
        print_status "Usage: $0 [local|remote]"
        print_status "  local  - Setup MFL dependencies locally (clone repos, use path dependencies)"
        print_status "  remote - Setup MFL dependencies remotely (use pub.dev versions)"
        exit 0
    fi
}

# Function to convert pubspec from pub.dev to path dependency
convert_to_path_dependency() {
    local pubspec_file="$1"
    local dependency_name="$2"
    local path_value="$3"
    
    if [ -f "$pubspec_file" ]; then
        # Comment out version number and uncomment path (handle both states)
        sed -i.bak "s|^  ${dependency_name}: \(\^[0-9].*\)|  ${dependency_name}: # \1|" "$pubspec_file"
        sed -i.bak "s|^    # path: ${path_value}|    path: ${path_value}|" "$pubspec_file"
        rm "${pubspec_file}.bak"
        print_success "Updated $(pwd)/$pubspec_file"
    else
        print_warning "$pubspec_file not found, skipping"
    fi
}

# Function to convert pubspec from path to pub.dev dependency
convert_to_pubdev_dependency() {
    local pubspec_file="$1"
    local dependency_name="$2"
    local path_value="$3"
    
    if [ -f "$pubspec_file" ]; then
        # Uncomment version number and comment path (handle both states)
        sed -i.bak "s|^  ${dependency_name}: # \(\^[0-9].*\)|  ${dependency_name}: \1|" "$pubspec_file"
        sed -i.bak "s|^    path: ${path_value}|    # path: ${path_value}|" "$pubspec_file"
        rm "${pubspec_file}.bak"
        print_success "Updated $(pwd)/$pubspec_file"
    else
        print_warning "$pubspec_file not found, skipping"
    fi
}

# Function to clean up existing repositories
cleanup_repos() {
    local project_root="$1"
    
    print_status "Cleaning up existing repositories..."
    cd "$project_root"
    
    # Remove existing directories to ensure clean clones
    if [ -d "myoro_flutter_library" ]; then
        print_status "Removing existing myoro_flutter_library directory..."
        rm -rf myoro_flutter_library
    fi
    
    if [ -d "myoro_flutter_annotations" ]; then
        print_status "Removing existing myoro_flutter_annotations directory..."
        rm -rf myoro_flutter_annotations
    fi
}

# Function to setup local dependencies
setup_local() {
    print_status "Setting up MFL dependencies locally..."
    
    # Get the project root (MyoroMatchup directory)
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
    
    print_status "Project root: $PROJECT_ROOT"
    
    # Step 1: Clean up and clone repositories
    cleanup_repos "$PROJECT_ROOT"
    
    print_status "Step 1: Cloning repositories..."
    
    # Clone myoro_flutter_annotations first
    print_status "Cloning myoro_flutter_annotations..."
    git clone git@github.com:antonkoetzler/myoro_flutter_annotations.git
    
    # Step 2: Setup myoro_flutter_annotations immediately
    print_status "Step 2: Setting up myoro_flutter_annotations..."
    cd "$PROJECT_ROOT/myoro_flutter_annotations"
    if [ -f "tool/setup.sh" ]; then
        bash tool/setup.sh
        print_success "myoro_flutter_annotations setup completed"
    else
        print_error "setup.sh not found in myoro_flutter_annotations/tool/"
        exit 1
    fi
    
    # Step 3: Clone myoro_flutter_library
    print_status "Step 3: Cloning myoro_flutter_library..."
    cd "$PROJECT_ROOT"
    git clone git@github.com:antonkoetzler/myoro_flutter_library.git
    
    # Step 4: Edit pubspec.yaml files in myoro_flutter_library
    print_status "Step 4: Editing myoro_flutter_library pubspec.yaml files..."
    
    cd "$PROJECT_ROOT/myoro_flutter_library"
    
    # Convert myoro_flutter_annotations to path dependency in main pubspec
    convert_to_path_dependency "pubspec.yaml" "myoro_flutter_annotations" "../myoro_flutter_annotations"
    
    # Convert myoro_flutter_annotations to path dependency in storyboard pubspec
    convert_to_path_dependency "storyboard/pubspec.yaml" "myoro_flutter_annotations" "../../myoro_flutter_annotations"
    
    # Step 5: Setup myoro_flutter_library
    print_status "Step 5: Setting up myoro_flutter_library..."
    if [ -f "tool/setup.sh" ]; then
        bash tool/setup.sh
        print_success "myoro_flutter_library setup completed"
    else
        print_error "setup.sh not found in myoro_flutter_library/tool/"
        exit 1
    fi
    
    # Step 6: Edit MyoroMatchup pubspec.yaml
    print_status "Step 6: Editing MyoroMatchup pubspec.yaml..."
    cd "$PROJECT_ROOT/myoro_matchup"
    
    # Convert both dependencies to path dependencies
    convert_to_path_dependency "pubspec.yaml" "myoro_flutter_library" "../myoro_flutter_library"
    convert_to_path_dependency "pubspec.yaml" "myoro_flutter_annotations" "../myoro_flutter_annotations"
    
    # Step 7: Run MyoroMatchup setup
    print_status "Step 7: Running MyoroMatchup setup..."
    bash tool/setup.sh
    print_success "MyoroMatchup setup completed"
    
    print_success "Local MFL setup completed successfully!"
}

# Function to setup remote dependencies
setup_remote() {
    print_status "Setting up MFL dependencies remotely..."
    
    # Get the project root
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
    
    print_status "Project root: $PROJECT_ROOT"
    
    # Clean up existing repositories
    cleanup_repos "$PROJECT_ROOT"
    
    # Edit MyoroMatchup pubspec.yaml to use pub.dev versions
    print_status "Editing MyoroMatchup pubspec.yaml to use pub.dev versions..."
    cd "$PROJECT_ROOT/myoro_matchup"
    
    # Convert both dependencies to pub.dev versions
    convert_to_pubdev_dependency "pubspec.yaml" "myoro_flutter_library" "../myoro_flutter_library"
    convert_to_pubdev_dependency "pubspec.yaml" "myoro_flutter_annotations" "../myoro_flutter_annotations"
    
    # Run MyoroMatchup setup
    print_status "Running MyoroMatchup setup..."
    bash tool/setup.sh
    print_success "MyoroMatchup setup completed"
    
    print_success "Remote MFL setup completed successfully!"
}

# Main script logic
main() {
    check_argument "$@"
    
    case "$1" in
        "local")
            setup_local
            ;;
        "remote")
            setup_remote
            ;;
        *)
            print_error "Invalid argument: $1"
            print_error "Usage: $0 [local|remote]"
            exit 1
            ;;
    esac
}

# Run main function with all arguments
main "$@"
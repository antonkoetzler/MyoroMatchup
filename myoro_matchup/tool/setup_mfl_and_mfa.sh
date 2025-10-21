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
        # Comment out version number (only on the dependency declaration line)
        sed -i.bak "s|^  ${dependency_name}: \(\^[0-9].*\)|  ${dependency_name}: # \1|" "$pubspec_file"
        # Update only the path within the matched dependency block
        awk -v dep="${dependency_name}" -v p="${path_value}" '
            BEGIN { in_dep=0 }
            {
                if ($0 ~ "^  " dep ":") {
                    in_dep=1
                    print $0
                    next
                }
                if (in_dep==1) {
                    if ($0 ~ /^  [^ ]/ || $0 ~ /^dependencies:/ || $0 ~ /^dev_dependencies:/ || $0 ~ /^flutter:/) {
                        in_dep=0
                        # fallthrough to normal printing of this line
                    } else if ($0 ~ /^    # path: /) {
                        print "    path: " p
                        in_dep=0
                        next
                    } else if ($0 ~ /^    path: /) {
                        print "    path: " p
                        in_dep=0
                        next
                    }
                }
                print $0
            }
        ' "$pubspec_file" > "${pubspec_file}.tmp" && mv "${pubspec_file}.tmp" "$pubspec_file"
        rm -f "${pubspec_file}.bak"
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
        # Uncomment version number only on the dependency declaration line
        sed -i.bak "s|^  ${dependency_name}: # \(\^[0-9].*\)|  ${dependency_name}: \1|" "$pubspec_file"
        # Comment only the path within the matched dependency block (if it matches provided path)
        awk -v dep="${dependency_name}" -v p="${path_value}" '
            BEGIN { in_dep=0 }
            {
                if ($0 ~ "^  " dep ":") {
                    in_dep=1
                    print $0
                    next
                }
                if (in_dep==1) {
                    if ($0 ~ /^  [^ ]/ || $0 ~ /^dependencies:/ || $0 ~ /^dev_dependencies:/ || $0 ~ /^flutter:/) {
                        in_dep=0
                    } else if ($0 ~ /^    path: /) {
                        if ($0 == "    path: " p) {
                            print "    # path: " p
                            in_dep=0
                            next
                        }
                    }
                }
                print $0
            }
        ' "$pubspec_file" > "${pubspec_file}.tmp" && mv "${pubspec_file}.tmp" "$pubspec_file"
        rm -f "${pubspec_file}.bak"
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
    
    if [ -d ".vscode" ]; then
        print_status "Removing existing .vscode directory..."
        rm -rf .vscode
    fi
}

# Function to setup local dependencies
setup_local() {
    print_status "Setting up MFL dependencies locally..."
    
    # Get the project root (parent of MyoroMatchup directory)
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    PROJECT_ROOT="$(dirname "$(dirname "$(dirname "$SCRIPT_DIR")")")"
    
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
    convert_to_path_dependency "storybook/pubspec.yaml" "myoro_flutter_annotations" "../../myoro_flutter_annotations"
    
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
    cd "$PROJECT_ROOT/MyoroMatchup/myoro_matchup"
    
    # Convert both dependencies to path dependencies
    convert_to_path_dependency "pubspec.yaml" "myoro_flutter_library" "../../myoro_flutter_library"
    convert_to_path_dependency "pubspec.yaml" "myoro_flutter_annotations" "../../myoro_flutter_annotations"
    
    # Step 7: Copy .vscode to project root
    print_status "Step 7: Copying .vscode to project root..."
    cd "$PROJECT_ROOT"
    if [ -d "MyoroMatchup/.vscode" ]; then
        cp -r MyoroMatchup/.vscode .
        print_success "Copied .vscode to project root"
        
        # Fix paths in copied .vscode files
        print_status "Fixing paths in .vscode files..."
        if [ -f ".vscode/launch.json" ]; then
            # Fix Flutter program path
            sed -i.bak 's|"program": "myoro_matchup/lib/main.dart"|"program": "MyoroMatchup/myoro_matchup/lib/main.dart"|' .vscode/launch.json
            # Fix env file path
            sed -i.bak 's|"envFile": "${workspaceFolder}/.env"|"envFile": "${workspaceFolder}/MyoroMatchup/.env"|' .vscode/launch.json
            rm .vscode/launch.json.bak
            print_success "Fixed launch.json paths"
        fi
        
        if [ -f ".vscode/tasks.json" ]; then
            # Fix all task command paths
            sed -i.bak 's|"command": "cd myoro_matchup|"command": "cd MyoroMatchup/myoro_matchup|' .vscode/tasks.json
            rm .vscode/tasks.json.bak
            print_success "Fixed tasks.json paths"
        fi
    else
        print_warning "MyoroMatchup/.vscode not found, skipping"
    fi
    
    # Step 8: Run MyoroMatchup setup
    print_status "Step 8: Running MyoroMatchup setup..."
    cd "$PROJECT_ROOT/MyoroMatchup/myoro_matchup"
    bash tool/setup.sh
    print_success "MyoroMatchup setup completed"
    
    print_success "Local MFL setup completed successfully!"
}

# Function to setup remote dependencies
setup_remote() {
    print_status "Setting up MFL dependencies remotely..."
    
    # Get the project root (parent of MyoroMatchup directory)
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    PROJECT_ROOT="$(dirname "$(dirname "$(dirname "$SCRIPT_DIR")")")"
    
    print_status "Project root: $PROJECT_ROOT"
    
    # Clean up existing repositories
    cleanup_repos "$PROJECT_ROOT"
    
    # Edit MyoroMatchup pubspec.yaml to use pub.dev versions
    print_status "Editing MyoroMatchup pubspec.yaml to use pub.dev versions..."
    cd "$PROJECT_ROOT/MyoroMatchup/myoro_matchup"
    
    # Convert both dependencies to pub.dev versions
    convert_to_pubdev_dependency "pubspec.yaml" "myoro_flutter_library" "../../myoro_flutter_library"
    convert_to_pubdev_dependency "pubspec.yaml" "myoro_flutter_annotations" "../../myoro_flutter_annotations"
    
    # Copy .vscode to project root
    print_status "Copying .vscode to project root..."
    cd "$PROJECT_ROOT"
    if [ -d "MyoroMatchup/.vscode" ]; then
        cp -r MyoroMatchup/.vscode .
        print_success "Copied .vscode to project root"
        
        # Fix paths in copied .vscode files
        print_status "Fixing paths in .vscode files..."
        if [ -f ".vscode/launch.json" ]; then
            # Fix Flutter program path
            sed -i.bak 's|"program": "myoro_matchup/lib/main.dart"|"program": "MyoroMatchup/myoro_matchup/lib/main.dart"|' .vscode/launch.json
            # Fix env file path
            sed -i.bak 's|"envFile": "${workspaceFolder}/.env"|"envFile": "${workspaceFolder}/MyoroMatchup/.env"|' .vscode/launch.json
            rm .vscode/launch.json.bak
            print_success "Fixed launch.json paths"
        fi
        
        if [ -f ".vscode/tasks.json" ]; then
            # Fix all task command paths
            sed -i.bak 's|"command": "cd myoro_matchup|"command": "cd MyoroMatchup/myoro_matchup|' .vscode/tasks.json
            rm .vscode/tasks.json.bak
            print_success "Fixed tasks.json paths"
        fi
    else
        print_warning "MyoroMatchup/.vscode not found, skipping"
    fi
    
    # Run MyoroMatchup setup
    print_status "Running MyoroMatchup setup..."
    cd "$PROJECT_ROOT/MyoroMatchup/myoro_matchup"
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
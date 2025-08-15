#!/opt/homebrew/bin/bash

# Profile Management Script for Awesome Academic Prompts Toolkit
# Manages user preferences and settings

set -euo pipefail

# Colors for better UX
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROFILE_FILE="$SCRIPT_DIR/Profiles/user_profile.conf"
DEFAULT_PROFILE="$SCRIPT_DIR/Profiles/default_profile.conf"

# Function to print colored output
print_color() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Function to print header
print_header() {
    clear
    print_color "$BOLD$BLUE" "╔══════════════════════════════════════════════════════════════╗"
    print_color "$BOLD$BLUE" "║                                                              ║"
    print_color "$BOLD$BLUE" "║           ⚙️  USER PROFILE MANAGEMENT ⚙️                    ║"
    print_color "$BOLD$BLUE" "║                                                              ║"
    print_color "$BOLD$BLUE" "║        Customize Your Academic Prompts Experience            ║"
    print_color "$BOLD$BLUE" "║                                                              ║"
    print_color "$BOLD$BLUE" "╚══════════════════════════════════════════════════════════════╝"
    echo ""
}

# Function to create default profile if it doesn't exist
create_default_profile() {
    if [[ ! -f "$DEFAULT_PROFILE" ]]; then
        mkdir -p "$(dirname "$DEFAULT_PROFILE")"
        cat > "$DEFAULT_PROFILE" << 'EOF'
# Default Profile Configuration for Awesome Academic Prompts Toolkit
# This file contains default settings - DO NOT EDIT DIRECTLY

# Display Settings
SHOW_WELCOME=true          # Show welcome message on startup (true/false)
SHOW_COLORS=true           # Enable colored output (true/false)
AUTO_SAVE=true            # Auto-save settings (true/false)

# Interface Settings
DEFAULT_LANGUAGE=EN        # Default language for prompts (EN, ZH, JP, etc.)
DEFAULT_CATEGORY=general  # Default category to start with
INTERFACE_STYLE=modern     # Interface style (modern, classic, minimal)

# Search Settings
SEARCH_HISTORY_SIZE=10     # Number of search queries to remember
DEFAULT_SEARCH_MODE=interactive  # Default search mode (interactive, quick, category)

# Tool Settings
PROMPT_VALIDATION_STRICT=true  # Strict validation for new prompts
AUTO_TRANSLATE=false       # Auto-translate prompts to other languages
BACKUP_BEFORE_EDIT=true    # Create backup before editing files
EOF
    fi
}

# Function to create user profile if it doesn't exist
create_user_profile() {
    if [[ ! -f "$PROFILE_FILE" ]]; then
        mkdir -p "$(dirname "$PROFILE_FILE")"
        cp "$DEFAULT_PROFILE" "$PROFILE_FILE"
        print_color "$GREEN" "✅ Created new user profile from defaults"
    fi
}

# Function to read profile value
read_profile_value() {
    local key="$1"
    local default_value="$2"
    
    if [[ -f "$PROFILE_FILE" ]]; then
        local value=$(grep "^$key=" "$PROFILE_FILE" | cut -d'=' -f2 | tr -d ' ')
        if [[ -n "$value" ]]; then
            echo "$value"
        else
            echo "$default_value"
        fi
    else
        echo "$default_value"
    fi
}

# Function to write profile value
write_profile_value() {
    local key="$1"
    local value="$2"
    
    if [[ -f "$PROFILE_FILE" ]]; then
        # Update existing value
        if grep -q "^$key=" "$PROFILE_FILE"; then
            sed -i.bak "s/^$key=.*/$key=$value/" "$PROFILE_FILE"
        else
            # Add new key-value pair
            echo "$key=$value" >> "$PROFILE_FILE"
        fi
        # Remove backup file
        rm -f "$PROFILE_FILE.bak" 2>/dev/null || true
    fi
}

# Function to show current profile
show_current_profile() {
    print_header
    print_color "$BOLD$CYAN" "📋 Current User Profile Settings"
    echo ""
    
    if [[ ! -f "$PROFILE_FILE" ]]; then
        print_color "$YELLOW" "No user profile found. Using default settings."
        echo ""
        print_color "$BLUE" "Press Enter to create a new profile..."
        read -r </dev/tty
        create_user_profile
        return
    fi
    
    # Read and display current settings
    local show_welcome=$(read_profile_value "SHOW_WELCOME" "true")
    local show_colors=$(read_profile_value "SHOW_COLORS" "true")
    local auto_save=$(read_profile_value "AUTO_SAVE" "true")
    local default_language=$(read_profile_value "DEFAULT_LANGUAGE" "EN")
    local default_category=$(read_profile_value "DEFAULT_CATEGORY" "general")
    local interface_style=$(read_profile_value "INTERFACE_STYLE" "modern")
    local search_history_size=$(read_profile_value "SEARCH_HISTORY_SIZE" "10")
    local default_search_mode=$(read_profile_value "DEFAULT_SEARCH_MODE" "interactive")
    local prompt_validation_strict=$(read_profile_value "PROMPT_VALIDATION_STRICT" "true")
    local auto_translate=$(read_profile_value "AUTO_TRANSLATE" "false")
    local backup_before_edit=$(read_profile_value "BACKUP_BEFORE_EDIT" "true")
    
    print_color "$GREEN" "🔧 Display Settings:"
    print_color "$CYAN" "  Show Welcome:     $show_welcome"
    print_color "$CYAN" "  Show Colors:      $show_colors"
    print_color "$CYAN" "  Auto Save:        $auto_save"
    echo ""
    
    print_color "$GREEN" "🎨 Interface Settings:"
    print_color "$CYAN" "  Default Language: $default_language"
    print_color "$CYAN" "  Default Category: $default_category"
    print_color "$CYAN" "  Interface Style:  $interface_style"
    echo ""
    
    print_color "$GREEN" "🔍 Search Settings:"
    print_color "$CYAN" "  Search History:   $search_history_size queries"
    print_color "$CYAN" "  Default Mode:     $default_search_mode"
    echo ""
    
    print_color "$GREEN" "🛠️  Tool Settings:"
    print_color "$CYAN" "  Strict Validation: $prompt_validation_strict"
    print_color "$CYAN" "  Auto Translate:    $auto_translate"
    print_color "$CYAN" "  Backup Before Edit: $backup_before_edit"
    echo ""
    
    print_color "$MAGENTA" "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    print_color "$BLUE" "Press Enter to continue..."
    read -r </dev/tty
}

# Function to edit profile settings
edit_profile_settings() {
    while true; do
        print_header
        print_color "$BOLD$CYAN" "✏️  Edit Profile Settings"
        echo ""
        print_color "$GREEN" "  1. 🔧 Display Settings"
        print_color "$GREEN" "  2. 🎨 Interface Settings"
        print_color "$GREEN" "  3. 🔍 Search Settings"
        print_color "$GREEN" "  4. 🛠️  Tool Settings"
        print_color "$GREEN" "  5. 🔄 Reset to Defaults"
        print_color "$GREEN" "  6. 🔙 Back to Profile Menu"
        echo ""
        print_color "$MAGENTA" "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo ""
        
        echo -n "Select option (1-6): "
        read -r choice </dev/tty
        
        case $choice in
            1)
                edit_display_settings
                ;;
            2)
                edit_interface_settings
                ;;
            3)
                edit_search_settings
                ;;
            4)
                edit_tool_settings
                ;;
            5)
                reset_to_defaults
                ;;
            6)
                break
                ;;
            *)
                print_color "$RED" "Invalid choice. Please select 1-6."
                sleep 1
                ;;
        esac
    done
}

# Function to edit display settings
edit_display_settings() {
    while true; do
        print_header
        print_color "$BOLD$CYAN" "🔧 Display Settings"
        echo ""
        
        local show_welcome=$(read_profile_value "SHOW_WELCOME" "true")
        local show_colors=$(read_profile_value "SHOW_COLORS" "true")
        local auto_save=$(read_profile_value "AUTO_SAVE" "true")
        
        print_color "$GREEN" "Current Settings:"
        print_color "$CYAN" "  1. Show Welcome: $show_welcome ✅ IMPLEMENTED"
        print_color "$CYAN" "  2. Show Colors:  $show_colors ⚠️  TODO: Not implemented in main scripts"
        print_color "$CYAN" "  3. Auto Save:    $auto_save ⚠️  2: Not implemented in main scripts"
        print_color "$GREEN" "  4. 🔙 Back to Edit Menu"
        echo ""
        
        echo -n "Select setting to edit (1-4): "
        read -r setting_choice </dev/tty
        
        case $setting_choice in
            1)
                echo -n "Show welcome message on startup? (y/n): "
                read -r value </dev/tty
                if [[ "$value" =~ ^[Yy]$ ]]; then
                    write_profile_value "SHOW_WELCOME" "true"
                    print_color "$GREEN" "✅ Welcome message enabled"
                else
                    write_profile_value "SHOW_WELCOME" "false"
                    print_color "$GREEN" "✅ Welcome message disabled"
                fi
                sleep 1
                ;;
            2)
                echo -n "Enable colored output? (y/n): "
                read -r value </dev/tty
                if [[ "$value" =~ ^[Yy]$ ]]; then
                    write_profile_value "SHOW_COLORS" "true"
                    print_color "$GREEN" "✅ Colored output enabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                else
                    write_profile_value "SHOW_COLORS" "false"
                    print_color "$GREEN" "✅ Colored output disabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                fi
                sleep 1
                ;;
            3)
                echo -n "Auto-save settings? (y/n): "
                read -r value </dev/tty
                if [[ "$value" =~ ^[Yy]$ ]]; then
                    write_profile_value "AUTO_SAVE" "true"
                    print_color "$GREEN" "✅ Auto-save enabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                else
                    write_profile_value "AUTO_SAVE" "false"
                    print_color "$GREEN" "✅ Auto-save disabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                fi
                sleep 1
                ;;
            4)
                break
                ;;
            *)
                print_color "$RED" "Invalid choice. Please select 1-4."
                sleep 1
                ;;
        esac
    done
}

# Function to edit interface settings
edit_interface_settings() {
    while true; do
        print_header
        print_color "$BOLD$CYAN" "🎨 Interface Settings"
        echo ""
        
        local default_language=$(read_profile_value "DEFAULT_LANGUAGE" "EN")
        local default_category=$(read_profile_value "DEFAULT_CATEGORY" "general")
        local interface_style=$(read_profile_value "INTERFACE_STYLE" "modern")
        
        print_color "$GREEN" "Current Settings:"
        print_color "$CYAN" "  1. Default Language: $default_language ⚠️  TODO: Not implemented in main scripts"
        print_color "$CYAN" "  2. Default Category: $default_category ⚠️  TODO: Not implemented in main scripts"
        print_color "$CYAN" "  3. Interface Style:  $interface_style ⚠️  TODO: Not implemented in main scripts"
        print_color "$GREEN" "  4. 🔙 Back to Edit Menu"
        echo ""
        
        echo -n "Select setting to edit (1-4): "
        read -r setting_choice </dev/tty
        
        case $setting_choice in
            1)
                echo -n "Enter default language (EN, ZH, JP, DE, FR, ES, IT, PT, RU, AR, KO, HI): "
                read -r value </dev/tty
                if [[ -n "$value" ]]; then
                    write_profile_value "DEFAULT_LANGUAGE" "$value"
                    print_color "$GREEN" "✅ Default language set to $value"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                fi
                sleep 1
                ;;
            2)
                echo -n "Enter default category: "
                read -r value </dev/tty
                if [[ -n "$value" ]]; then
                    write_profile_value "DEFAULT_CATEGORY" "$value"
                    print_color "$GREEN" "✅ Default category set to $value"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                fi
                sleep 1
                ;;
            3)
                echo -n "Select interface style (modern/classic/minimal): "
                read -r value </dev/tty
                if [[ "$value" =~ ^(modern|classic|minimal)$ ]]; then
                    write_profile_value "INTERFACE_STYLE" "$value"
                    print_color "$GREEN" "✅ Interface style set to $value"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                else
                    print_color "$RED" "Invalid style. Please choose: modern, classic, or minimal"
                fi
                sleep 1
                ;;
            4)
                break
                ;;
            *)
                print_color "$RED" "Invalid choice. Please select 1-4."
                sleep 1
                ;;
        esac
    done
}

# Function to edit search settings
edit_search_settings() {
    while true; do
        print_header
        print_color "$BOLD$CYAN" "🔍 Search Settings"
        echo ""
        
        local search_history_size=$(read_profile_value "SEARCH_HISTORY_SIZE" "10")
        local default_search_mode=$(read_profile_value "DEFAULT_SEARCH_MODE" "interactive")
        
        print_color "$GREEN" "Current Settings:"
        print_color "$CYAN" "  1. Search History Size: $search_history_size queries ⚠️  TODO: Not implemented in main scripts"
        print_color "$CYAN" "  2. Default Search Mode: $default_search_mode ⚠️  TODO: Not implemented in main scripts"
        print_color "$GREEN" "  3. 🔙 Back to Edit Menu"
        echo ""
        
        echo -n "Select setting to edit (1-3): "
        read -r setting_choice </dev/tty
        
        case $setting_choice in
            1)
                echo -n "Enter search history size (1-50): "
                read -r value </dev/tty
                if [[ "$value" =~ ^[0-9]+$ ]] && [[ $value -ge 1 ]] && [[ $value -le 50 ]]; then
                    write_profile_value "SEARCH_HISTORY_SIZE" "$value"
                    print_color "$GREEN" "✅ Search history size set to $value"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                else
                    print_color "$RED" "Invalid size. Please enter a number between 1 and 50."
                fi
                sleep 1
                ;;
            2)
                echo -n "Select default search mode (interactive/quick/category): "
                read -r value </dev/tty
                if [[ "$value" =~ ^(interactive|quick|category)$ ]]; then
                    write_profile_value "DEFAULT_SEARCH_MODE" "$value"
                    print_color "$GREEN" "✅ Default search mode set to $value"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in the main scripts"
                else
                    print_color "$RED" "Invalid mode. Please choose: interactive, quick, or category"
                fi
                sleep 1
                ;;
            3)
                break
                ;;
            *)
                print_color "$RED" "Invalid choice. Please select 1-3."
                sleep 1
                ;;
        esac
    done
}

# Function to edit tool settings
edit_tool_settings() {
    while true; do
        print_header
        print_color "$BOLD$CYAN" "🛠️  Tool Settings"
        echo ""
        
        local prompt_validation_strict=$(read_profile_value "PROMPT_VALIDATION_STRICT" "true")
        local auto_translate=$(read_profile_value "AUTO_TRANSLATE" "false")
        local backup_before_edit=$(read_profile_value "BACKUP_BEFORE_EDIT" "true")
        
        print_color "$GREEN" "Current Settings:"
        print_color "$CYAN" "  1. Strict Validation: $prompt_validation_strict ⚠️  TODO: Not implemented in add_prompt.sh"
        print_color "$CYAN" "  2. Auto Translate:    $auto_translate ⚠️  TODO: Not implemented in translate_prompts.sh"
        print_color "$CYAN" "  3. Backup Before Edit: $backup_before_edit ⚠️  TODO: Not implemented in any scripts"
        print_color "$GREEN" "  4. 🔙 Back to Edit Menu"
        echo ""
        
        echo -n "Select setting to edit (1-4): "
        read -r setting_choice </dev/tty
        
        case $setting_choice in
            1)
                echo -n "Enable strict prompt validation? (y/n): "
                read -r value </dev/tty
                if [[ "$value" =~ ^[Yy]$ ]]; then
                    write_profile_value "PROMPT_VALIDATION_STRICT" "true"
                    print_color "$GREEN" "✅ Strict validation enabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in add_prompt.sh"
                else
                    write_profile_value "PROMPT_VALIDATION_STRICT" "false"
                    print_color "$GREEN" "✅ Strict validation disabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in add_prompt.sh"
                fi
                sleep 1
                ;;
            2)
                echo -n "Enable auto-translation? (y/n): "
                read -r value </dev/tty
                if [[ "$value" =~ ^[Yy]$ ]]; then
                    write_profile_value "AUTO_TRANSLATE" "true"
                    print_color "$GREEN" "✅ Auto-translation enabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in translate_prompts.sh"
                else
                    write_profile_value "AUTO_TRANSLATE" "false"
                    print_color "$GREEN" "✅ Auto-translation disabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in translate_prompts.sh"
                fi
                sleep 1
                ;;
            3)
                echo -n "Create backup before editing? (y/n): "
                read -r value </dev/tty
                if [[ "$value" =~ ^[Yy]$ ]]; then
                    write_profile_value "BACKUP_BEFORE_EDIT" "true"
                    print_color "$GREEN" "✅ Backup before edit enabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in any scripts"
                else
                    write_profile_value "BACKUP_BEFORE_EDIT" "false"
                    print_color "$GREEN" "✅ Backup before edit disabled"
                    print_color "$YELLOW" "⚠️  Note: This setting is not yet implemented in any scripts"
                fi
                sleep 1
                ;;
            4)
                break
                ;;
            *)
                print_color "$RED" "Invalid choice. Please select 1-4."
                sleep 1
                ;;
        esac
    done
}

# Function to reset to defaults
reset_to_defaults() {
    print_header
    print_color "$BOLD$CYAN" "🔄 Reset to Default Settings"
    echo ""
    print_color "$YELLOW" "⚠️  This will reset ALL your custom settings to defaults!"
    echo ""
    echo -n "Are you sure? (y/N): "
    read -r confirm </dev/tty
    
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        if [[ -f "$PROFILE_FILE" ]]; then
            rm "$PROFILE_FILE"
        fi
        create_user_profile
        print_color "$GREEN" "✅ Settings reset to defaults"
        sleep 2
    else
        print_color "$BLUE" "Reset cancelled"
        sleep 1
    fi
}

# Function to show main profile menu
show_profile_menu() {
    while true; do
        print_header
        print_color "$BOLD$CYAN" "⚙️  User Profile Management"
        echo ""
        print_color "$GREEN" "  1. 📋 View Current Profile"
        print_color "$GREEN" "  2. ✏️  Edit Settings"
        print_color "$GREEN" "  3. 🔄 Reset to Defaults"
        print_color "$GREEN" "  4. 📁 Open Profile File"
        print_color "$GREEN" "  5. 🔙 Back to Main Menu"
        echo ""
        print_color "$MAGENTA" "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo ""
        
        echo -n "Select option (1-5): "
        read -r choice </dev/tty
        
        case $choice in
            1)
                show_current_profile
                ;;
            2)
                edit_profile_settings
                ;;
            3)
                reset_to_defaults
                ;;
            4)
                if [[ -f "$PROFILE_FILE" ]]; then
                    if command -v code >/dev/null 2>&1; then
                        code "$PROFILE_FILE"
                    elif command -v nano >/dev/null 2>&1; then
                        nano "$PROFILE_FILE"
                    elif command -v vim >/dev/null 2>&1; then
                        vim "$PROFILE_FILE"
                    else
                        less "$PROFILE_FILE"
                    fi
                else
                    print_color "$RED" "Profile file not found!"
                    sleep 1
                fi
                ;;
            5)
                break
                ;;
            *)
                print_color "$RED" "Invalid choice. Please select 1-5."
                sleep 1
                ;;
        esac
    done
}

# Main function
main() {
    # Create default profile if it doesn't exist
    create_default_profile
    
    # Create user profile if it doesn't exist
    create_user_profile
    
    # Show profile menu
    show_profile_menu
}

# Run main function
main "$@"

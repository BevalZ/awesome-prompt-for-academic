#!/opt/homebrew/bin/bash

# Translation Helper Script for Academic Prompts
# This script helps maintain consistency across all 12 language versions

set -euo pipefail

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Script directory (parent of scripts folder)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROMPTS_DIR="$SCRIPT_DIR/Prompts"
PROFILE_FILE="$SCRIPT_DIR/Profiles/user_profile.conf"

# Load language strings
source "$SCRIPT_DIR/Profiles/language_strings.sh" 2>/dev/null || true

# Supported languages
LANGUAGES=("EN" "JP" "ZH" "DE" "FR" "ES" "IT" "PT" "RU" "AR" "KO" "HI")
LANGUAGE_NAMES=("English" "Japanese" "Chinese" "German" "French" "Spanish" "Italian" "Portuguese" "Russian" "Arabic" "Korean" "Hindi")

# Function to read profile value
read_profile_value() {
    local key="$1"
    local default_value="$2"
    
    if [[ -f "$PROFILE_FILE" ]]; then
        local value=$(grep "^$key=" "$PROFILE_FILE" | cut -d'=' -f2 | cut -d'#' -f1 | tr -d ' ')
        if [[ -n "$value" ]]; then
            echo "$value"
        else
            echo "$default_value"
        fi
    else
        echo "$default_value"
    fi
}

print_color() {
    local color=$1
    local message=$2
    local show_colors=$(read_profile_value "SHOW_COLORS" "true")
    
    if [[ "$show_colors" == "true" ]]; then
        echo -e "${color}${message}${NC}"
    else
        echo "$message"
    fi
}

show_usage() {
    print_color "$BLUE" "🌍 Translation Helper for Academic Prompts"
    echo ""
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -h, --help              Show this help message"
    echo "  -s, --status            Show translation status across all languages"
    echo "  -v, --verify            Verify file consistency across languages"
    echo "  -c, --count             Count prompts in each language"
    echo ""
}

show_status() {
    print_color "$BLUE" "📊 Translation Status Across All Languages"
    echo ""
    
    for i in "${!LANGUAGES[@]}"; do
        local lang="${LANGUAGES[$i]}"
        local lang_name="${LANGUAGE_NAMES[$i]}"
        local lang_dir="$PROMPTS_DIR/$lang"
        
        if [[ -d "$lang_dir" ]]; then
            local file_count=$(find "$lang_dir" -name "*.md" -type f | wc -l)
            printf "%-12s %-15s %s files\n" "🌍 $lang" "$lang_name" "$file_count"
        else
            printf "%-12s %-15s %s\n" "❌ $lang" "$lang_name" "Missing"
        fi
    done
    echo ""
}

verify_consistency() {
    print_color "$BLUE" "🔍 Verifying File Consistency Across Languages"
    echo ""
    
    local categories=("business-management" "computer-science" "engineering" "general" "humanities" "mathematics-statistics" "medical-sciences" "natural-sciences" "social-sciences")
    
    for category in "${categories[@]}"; do
        print_color "$YELLOW" "Checking $category.md:"
        
        for lang in "${LANGUAGES[@]}"; do
            local file_path="$PROMPTS_DIR/$lang/$category.md"
            if [[ -f "$file_path" ]]; then
                echo "  ✅ $lang"
            else
                echo "  ❌ $lang (missing)"
            fi
        done
        echo ""
    done
}

count_prompts() {
    print_color "$BLUE" "📈 Prompt Count by Language"
    echo ""
    
    for i in "${!LANGUAGES[@]}"; do
        local lang="${LANGUAGES[$i]}"
        local lang_name="${LANGUAGE_NAMES[$i]}"
        local lang_dir="$PROMPTS_DIR/$lang"
        
        if [[ -d "$lang_dir" ]]; then
            local total_prompts=0
            for file in "$lang_dir"/*.md; do
                if [[ -f "$file" ]]; then
                    local prompt_count=$(grep -c "^### " "$file" 2>/dev/null || echo "0")
                    if [[ "$prompt_count" =~ ^[0-9]+$ ]]; then
                        total_prompts=$((total_prompts + prompt_count))
                    fi
                fi
            done
            printf "%-12s %-15s %s prompts\n" "🌍 $lang" "$lang_name" "$total_prompts"
        else
            printf "%-12s %-15s %s\n" "❌ $lang" "$lang_name" "Missing"
        fi
    done
    echo ""
}

main() {
    case "${1:-}" in
        -h|--help)
            show_usage
            ;;
        -s|--status)
            show_status
            ;;
        -v|--verify)
            verify_consistency
            ;;
        -c|--count)
            count_prompts
            ;;
        "")
            show_status
            ;;
        *)
            print_color "$RED" "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
}

main "$@"
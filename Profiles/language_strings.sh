#!/opt/homebrew/bin/bash

# Language Strings for Interface Localization
# Supports the top 10 most used languages globally based on prompt availability

# Function to get localized string
get_string() {
    local key="$1"
    local lang="${2:-EN}"
    
    case "$lang" in
        "EN") # English
            case "$key" in
                "MAIN_TITLE") echo "🎓 AWESOME ACADEMIC PROMPTS TOOLKIT 🎓" ;;
                "MAIN_SUBTITLE") echo "Your Complete Academic AI Prompt Management" ;;
                "MAIN_SUBTITLE2") echo "Command Center" ;;
                "AVAILABLE_TOOLS") echo "📋 Available Tools:" ;;
                "ADD_PROMPT") echo "📝 Add New Prompt" ;;
                "ADD_PROMPT_DESC") echo "Interactive tool to add academic prompts with validation" ;;
                "SEARCH_PROMPTS") echo "🔍 Search Prompts" ;;
                "SEARCH_PROMPTS_DESC") echo "Find prompts by keywords, categories, or tags" ;;
                "MANAGE_CATEGORIES") echo "🏷️  Manage Categories" ;;
                "MANAGE_CATEGORIES_DESC") echo "Add/manage Research Areas and Prompt Categories" ;;
                "REPO_STATS") echo "📊 Repository Statistics" ;;
                "REPO_STATS_DESC") echo "View collection statistics and overview" ;;
                "TRANSLATION_TOOLS") echo "🌍 Translation Tools" ;;
                "TRANSLATION_TOOLS_DESC") echo "Manage multilingual translations and consistency" ;;
                "DOCUMENTATION") echo "📚 Documentation" ;;
                "DOCUMENTATION_DESC") echo "Access help and documentation" ;;
                "SETTINGS") echo "⚙️  Settings" ;;
                "SETTINGS_DESC") echo "Manage user preferences and configuration" ;;
                "EXIT") echo "🚪 Exit" ;;
                "SELECT_OPTION") echo "Select option" ;;
                "BACK_TO_MENU") echo "🔙 Back to Main Menu" ;;
                "INTERFACE_LANGUAGE") echo "🌐 Interface Language" ;;
                "INTERFACE_LANGUAGE_DESC") echo "Change interface display language" ;;
                # Search Menu
                "SEARCH_MENU_TITLE") echo "🔍 Search Prompts" ;;
                "INTERACTIVE_SEARCH") echo "🔍 Interactive Search" ;;
                "QUICK_KEYWORD_SEARCH") echo "📝 Quick Keyword Search" ;;
                "BROWSE_BY_CATEGORY") echo "📂 Browse by Category" ;;
                "SEARCH_BY_TAG") echo "🏷️ Search by Tag" ;;
                "LIST_ALL_CATEGORIES") echo "📋 List All Categories" ;;
                "COPY_PROMPT_CLIPBOARD") echo "📋 Copy Prompt to Clipboard" ;;
                # Translation Menu
                "TRANSLATION_MENU_TITLE") echo "🌍 Translation Tools & Multilingual Management" ;;
                "TRANSLATION_STATUS") echo "📊 Translation Status" ;;
                "VERIFY_CONSISTENCY") echo "🔍 Verify Consistency" ;;
                "COUNT_PROMPTS") echo "📈 Count Prompts" ;;
                "LANGUAGE_OVERVIEW") echo "🌐 Language Overview" ;;
                # Documentation Menu
                "DOC_MENU_TITLE") echo "📚 Documentation & Help" ;;
                "QUICK_START_COMMON") echo "📋 Quick Start & Common Tasks" ;;
                "TOOLS_OVERVIEW") echo "🛠️ Tools Overview & Features" ;;
                "REPO_STRUCTURE") echo "📁 Repository Structure & Format" ;;
                "COMPLETE_DOCS") echo "📖 Complete Documentation (README.md)" ;;
                "COMMAND_HELP") echo "🔧 Command Help & Examples" ;;
                "LANGUAGES_CATEGORIES") echo "🌍 Languages & Categories Guide" ;;
                "SMART_NAVIGATION") echo "🎭 Smart Navigation Guide" ;;
                # Statistics Menu
                "STATS_MENU_TITLE") echo "📊 Repository Statistics" ;;
                "RETURN_TO_MAIN") echo "🔙 Return to Main Menu" ;;
                "VIEW_STATS_AGAIN") echo "📊 View Statistics Again" ;;
                # Profile Menu
                "PROFILE_MENU_TITLE") echo "⚙️ User Profile Management" ;;
                "VIEW_CURRENT_PROFILE") echo "📋 View Current Profile" ;;
                "EDIT_SETTINGS") echo "✏️ Edit Settings" ;;
                "RESET_TO_DEFAULTS") echo "🔄 Reset to Defaults" ;;
                "OPEN_PROFILE_FILE") echo "📁 Open Profile File" ;;
                # Documentation sub-functions
                "QUICK_START_TITLE") echo "📋 Quick Start & Common Tasks" ;;
                "TOOLS_OVERVIEW_TITLE") echo "🛠️ Tools Overview & Features" ;;
                "STRUCTURE_FORMAT_TITLE") echo "📁 Repository Structure & Format" ;;
                "COMMAND_HELP_TITLE") echo "🔧 Command Help & Examples" ;;
                "LANGUAGES_GUIDE_TITLE") echo "🌍 Languages & Categories Guide" ;;
                "SMART_NAV_TITLE") echo "🎭 Smart Navigation Guide" ;;
                # Profile Management sub-functions
                "CURRENT_PROFILE_TITLE") echo "📋 Current User Profile Settings" ;;
                "EDIT_SETTINGS_TITLE") echo "✏️ Edit Profile Settings" ;;
                "DISPLAY_SETTINGS_TITLE") echo "🔧 Display Settings" ;;
                "INTERFACE_SETTINGS_TITLE") echo "🎨 Interface Settings" ;;
                "SEARCH_SETTINGS_TITLE") echo "🔍 Search Settings" ;;
                "TOOL_SETTINGS_TITLE") echo "🛠️ Tool Settings" ;;
                "RESET_DEFAULTS_TITLE") echo "🔄 Reset to Default Settings" ;;
                "INTERFACE_LANG_SELECTION") echo "🌐 Interface Language Selection" ;;
                # Common UI elements
                "CURRENT_SETTINGS") echo "Current Settings:" ;;
                "PRESS_ENTER_CONTINUE") echo "Press Enter to continue..." ;;
                "PRESS_ENTER_RETURN") echo "Press Enter or type 'q' to return to" ;;
                "INVALID_CHOICE") echo "Invalid choice. Please select" ;;
                "BACK_TO_EDIT_MENU") echo "🔙 Back to Edit Menu" ;;
                "BACK_TO_PROFILE_MENU") echo "🔙 Back to Profile Menu" ;;
                "YES_NO_PROMPT") echo "(y/n)" ;;
                "SELECT_LANGUAGE") echo "Select your preferred interface language:" ;;
                "CHANGES_TAKE_EFFECT") echo "Changes will take effect after restarting the application." ;;
                # Search Tool Strings
                "SEARCH_TOOL_TITLE") echo "🔍 Simple Prompt Search Tool" ;;
                "USAGE") echo "Usage:" ;;
                "OPTIONS") echo "Options:" ;;
                "HELP_MESSAGE") echo "Show this help message" ;;
                "INTERACTIVE_MODE") echo "Interactive search mode" ;;
                "LIST_CATEGORIES") echo "List all available categories" ;;
                "BROWSE_CATEGORIES") echo "Browse prompts by category" ;;
                "SEARCH_CATEGORY") echo "Search in specific category" ;;
                "SEARCH_TAG") echo "Search by tag" ;;
                "VERBOSE_OUTPUT") echo "Verbose output" ;;
                "EXAMPLES") echo "Examples:" ;;
                "INTERACTIVE_MODE_DESC") echo "Interactive mode" ;;
                "LIST_ALL_CATEGORIES_DESC") echo "List all categories" ;;
                "BROWSE_CATEGORIES_DESC") echo "Browse categories interactively" ;;
                "AVAILABLE_CATEGORIES") echo "📂 Available Categories Browser" ;;
                "ERROR_PROMPTS_DIR_NOT_FOUND") echo "Error: Prompts directory not found at" ;;
                "NO_CATEGORIES_FOUND") echo "No categories found." ;;
                "SELECT_CATEGORY_TO_BROWSE") echo "Select a category to browse prompts, or:" ;;
                "BACK_TO_SEARCH_MENU") echo "↩️  Back to Search Menu" ;;
                "ENTER_CATEGORY_NUMBER") echo "Enter category number" ;;
                "OR_RETURN") echo "or 0 to return:" ;;
                "INVALID_CATEGORY_NUMBER") echo "Invalid category number. Please try again." ;;
                "INVALID_CHOICE_ENTER_NUMBER") echo "Invalid choice. Please enter a number." ;;
                "CATEGORY") echo "Category:" ;;
                "ERROR_CATEGORY_FILE_NOT_FOUND") echo "Error: Category file not found:" ;;
                "NO_PROMPTS_FOUND_CATEGORY") echo "No prompts found in this category." ;;
                "PROMPTS_AVAILABLE") echo "prompts available" ;;
                "FOUND_PROMPTS_IN") echo "Found" ;;
                "FOUND_PROMPTS_IN_SUFFIX") echo "prompt(s) in" ;;
                "PROMPTS_SUFFIX") echo ":" ;;
                "VIEW_SPECIFIC_PROMPT") echo "🔍 View specific prompt details" ;;
                "BACK_TO_LIST_CATEGORIES") echo "↩️  Back to List All Categories" ;;
                "BACK_TO_SEARCH_MENU_OPTION") echo "🏠 Back to Search Menu" ;;
                "SELECT_OPTION_1_3") echo "Select option (1-3):" ;;
                "ENTER_PROMPT_NUMBER") echo "Enter prompt number" ;;
                "PROMPT_DETAILS") echo "📋 Prompt Details:" ;;
                "INVALID_PROMPT_NUMBER") echo "Invalid prompt number. Please try again." ;;
                "NO_PROMPTS_AVAILABLE_VIEW") echo "No prompts available to view." ;;
                "BACK_TO_LIST_ALL_CATEGORIES") echo "Back to List All Categories" ;;
                "BACK_TO_SEARCH_MENU_FULL") echo "Back to Search Menu" ;;
                "INVALID_CHOICE_SELECT_1_3") echo "Invalid choice. Please select 1-3." ;;
                "SIMPLE_SEARCH_OPTIONS") echo "🔍 Simple Search Options:" ;;
                "INTERACTIVE_SEARCH_RECOMMENDED") echo "Interactive Search (recommended)" ;;
                "QUICK_KEYWORD_SEARCH") echo "Quick Keyword Search" ;;
                "BROWSE_ALL_CATEGORIES") echo "Browse All Categories" ;;
                "BACK_TO_MAIN_MENU") echo "Back to Main Menu" ;;
                "SELECT_OPTION_1_4") echo "Select option (1-4):" ;;
                "LAUNCHING_INTERACTIVE_SEARCH") echo "🚀 Launching Interactive Search..." ;;
                "ENTER_KEYWORDS_TO_SEARCH") echo "Enter keywords to search:" ;;
                "SEARCHING_FOR") echo "🔍 Searching for:" ;;
                "LAUNCHING_CATEGORY_BROWSER") echo "📂 Launching Category Browser..." ;;
                "RETURNING_TO_MAIN_MENU") echo "Returning to main menu..." ;;
                "WHAT_TO_DO_WITH_PROMPT") echo "📋 What would you like to do with this prompt?" ;;
                "COPY_PROMPT_TO_CLIPBOARD") echo "📋 Copy prompt to clipboard" ;;
                "COPY_SPECIFIC_LANGUAGE") echo "🌍 Copy specific language version" ;;
                "BACK_TO_SEARCH_RESULTS") echo "↩️  Back to search results" ;;
                "BACK_TO_CATEGORY") echo "↩️  Back to category" ;;
                "SELECT_OPTION_1_3_PROMPT") echo "Select option (1-3):" ;;
                "RETURNING_TO_SEARCH_RESULTS") echo "Returning to search results..." ;;
                "RETURNING_TO_CATEGORY_VIEW") echo "Returning to category view..." ;;
                "CLIPBOARD_NOT_FOUND") echo "❌ Clipboard command not found. Please install one of:" ;;
                "MACOS_PBCOPY") echo "- macOS: pbcopy (built-in)" ;;
                "LINUX_XCLIP") echo "- Linux: xclip or xsel" ;;
                "WINDOWS_CLIP") echo "- Windows: clip.exe (built-in)" ;;
                "PROMPT_CONTENT_COPY_MANUALLY") echo "Prompt content (copy manually):" ;;
                "PROMPT_COPIED_SUCCESS") echo "✅ Prompt copied to clipboard successfully!" ;;
                "FAILED_COPY_CLIPBOARD") echo "❌ Failed to copy to clipboard" ;;
                "SELECT_LANGUAGE_VERSION") echo "🌍 Select Language Version:" ;;
                "ENGLISH_EN") echo "🇺🇸 English (EN)" ;;
                "JAPANESE_JP") echo "🇯🇵 Japanese (JP)" ;;
                "CHINESE_ZH") echo "🇨🇳 Chinese (ZH)" ;;
                "GERMAN_DE") echo "🇩🇪 German (DE)" ;;
                "FRENCH_FR") echo "🇫🇷 French (FR)" ;;
                "SPANISH_ES") echo "🇪🇸 Spanish (ES)" ;;
                "ITALIAN_IT") echo "🇮🇹 Italian (IT)" ;;
                "PORTUGUESE_PT") echo "🇵🇹 Portuguese (PT)" ;;
                "RUSSIAN_RU") echo "🇷🇺 Russian (RU)" ;;
                "ARABIC_AR") echo "🇸🇦 Arabic (AR)" ;;
                "KOREAN_KO") echo "🇰🇷 Korean (KO)" ;;
                "HINDI_HI") echo "🇮🇳 Hindi (HI)" ;;
                "BACK_TO_PROMPT_ACTIONS") echo "↩️  Back to prompt actions" ;;
                "SELECT_LANGUAGE_1_13") echo "Select language (1-13):" ;;
                "RETURNING_TO_PROMPT_ACTIONS") echo "Returning to prompt actions..." ;;
                "LOOKING_FOR_LANGUAGE_VERSION") echo "🌍 Looking for" ;;
                "VERSION") echo "version of this prompt..." ;;
                "COULD_NOT_DETERMINE") echo "❌ Could not determine prompt title or category. Copying English version instead." ;;
                "LANGUAGE_FOLDER_NOT_FOUND") echo "⚠️  Language folder not found at" ;;
                "COPYING_ENGLISH_INSTEAD") echo "Copying English version instead." ;;
                "CATEGORY_FILE_NOT_FOUND") echo "⚠️  Category file not found:" ;;
                "FOUND_PROMPT_AT_POSITION") echo "📍 Found prompt at position" ;;
                "FOUND_PROMPT_AT_POSITION_SUFFIX") echo "in" ;;
                "COULD_NOT_FIND_PROMPT_POSITION") echo "⚠️  Could not find prompt position for" ;;
                "COULD_NOT_FIND_AT_POSITION") echo "⚠️  Could not find prompt at position" ;;
                "NOT_FOUND_IN_LANGUAGE") echo "in" ;;
                "FOUND_LANGUAGE_VERSION") echo "✅ Found" ;;
                "LANGUAGE_VERSION_OF_PROMPT") echo "version of prompt" ;;
                "POSITION") echo "(position" ;;
                "IN") echo "in" ;;
                # Profile Management strings
                "DISPLAY_SETTINGS") echo "🔧 Display Settings" ;;
                "INTERFACE_SETTINGS") echo "🎨 Interface Settings" ;;
                "SEARCH_SETTINGS") echo "🔍 Search Settings" ;;
                "TOOL_SETTINGS") echo "🛠️ Tool Settings" ;;
                "RESET_TO_DEFAULTS") echo "🔄 Reset to Defaults" ;;
                "SHOW_WELCOME") echo "Show Welcome" ;;
                "SHOW_COLORS") echo "Show Colors" ;;
                "AUTO_SAVE") echo "Auto Save" ;;
                "INTERFACE_LANGUAGE_SETTING") echo "Interface Language" ;;
                "DEFAULT_LANGUAGE") echo "Default Language" ;;
                "DEFAULT_CATEGORY") echo "Default Category" ;;
                "INTERFACE_STYLE") echo "Interface Style" ;;
                "IMPLEMENTED") echo "✅ IMPLEMENTED" ;;
                "TODO_NOT_IMPLEMENTED") echo "⚠️ TODO: Not implemented in main scripts" ;;
                # Add missing strings found in sub-scripts
                "ENTER_SEARCH_KEYWORDS") echo "Enter search keywords:" ;;
                "ENTER_PROMPT_TITLE") echo "📝 Enter prompt title:" ;;
                "ENTER_DESCRIPTION") echo "📖 Enter description (1-2 sentences):" ;;
                "ENTER_DESCRIPTION_SHORT") echo "📖 Enter description:" ;;
                "CONTINUE_ANYWAY") echo "Continue anyway? (y/N):" ;;
                "ADD_PROMPT_CONFIRM") echo "💾 Add this prompt to" ;;
                "ADD_PROMPT_CONFIRM_SUFFIX") echo ".md? (Y/n):" ;;
                "ENTER_NEW_RESEARCH_AREA") echo "🔬 Enter new research area (or 'done' to finish):" ;;
                "RESEARCH_AREA_EXISTS") echo "Research area already exists. Skipping..." ;;
                "ADD_ANOTHER_RESEARCH_AREA") echo "Add another research area? (y/N):" ;;
                "ENTER_NEW_PROMPT_CATEGORY") echo "📋 Enter new prompt category (or 'done' to finish):" ;;
                "PROMPT_CATEGORY_EXISTS") echo "Prompt category already exists. Skipping..." ;;
                "ADD_ANOTHER_PROMPT_CATEGORY") echo "Add another prompt category? (y/N):" ;;
                "ADD_RESEARCH_AREA") echo "1. Add Research Area(s)" ;;
                "ADD_PROMPT_CATEGORY") echo "2. Add Prompt Category(ies)" ;;
                "REFRESH_DISPLAY") echo "3. Refresh display" ;;
                "EXIT_OPTION") echo "4. Exit" ;;
                "SELECT_OPTION_1_4_SHORT") echo "Select option (1-4):" ;;
                "ENTER_CATEGORY_NUMBER_OR_NAME") echo "Enter category number or name:" ;;
                "NONE") echo "(none)" ;;
                "BULLET_POINT") echo "•" ;;
                "SHOW_WELCOME_MESSAGE") echo "Show welcome message on startup? (y/n):" ;;
                "ENABLE_COLORED_OUTPUT") echo "Enable colored output? (y/n):" ;;
                "AUTO_SAVE_SETTINGS") echo "Auto-save settings? (y/n):" ;;
                "ENTER_DEFAULT_LANGUAGE") echo "Enter default language (EN, ZH, JP, DE, FR, ES, IT, PT, RU, AR, KO, HI):" ;;
                "ENTER_DEFAULT_CATEGORY") echo "Enter default category:" ;;
                "SELECT_INTERFACE_STYLE") echo "Select interface style (modern/classic/minimal):" ;;
                "SELECT_SETTING_TO_EDIT") echo "Select setting to edit (1-3):" ;;
                "ENTER_SEARCH_HISTORY_SIZE") echo "Enter search history size (1-50):" ;;
                "SELECT_DEFAULT_SEARCH_MODE") echo "Select default search mode (interactive/quick/category):" ;;
                "SELECT_TOOL_SETTING_TO_EDIT") echo "Select setting to edit (1-4):" ;;
                "ENABLE_STRICT_PROMPT_VALIDATION") echo "Enable strict prompt validation? (y/n):" ;;
                "ENABLE_AUTO_TRANSLATION") echo "Enable auto-translation? (y/n):" ;;
                "CREATE_BACKUP_BEFORE_EDITING") echo "Create backup before editing? (y/n):" ;;
                "ARE_YOU_SURE") echo "Are you sure? (y/N):" ;;
                "TRANSLATION_HELPER_TITLE") echo "🌍 Translation Helper for Academic Prompts" ;;
                "SHOW_TRANSLATION_STATUS") echo "Show translation status across all languages" ;;
                "VERIFY_FILE_CONSISTENCY") echo "Verify file consistency across languages" ;;
                "COUNT_PROMPTS_IN_LANGUAGE") echo "Count prompts in each language" ;;
                "TRANSLATION_STATUS_TITLE") echo "📊 Translation Status Across All Languages" ;;
                "VERIFY_CONSISTENCY_TITLE") echo "🔍 Verifying File Consistency Across Languages" ;;
                "CHECKING_CATEGORY") echo "Checking" ;;
                "FILE_FOUND") echo "✅" ;;
                "FILE_MISSING") echo "❌ (missing)" ;;
                "COUNT_PROMPTS_TITLE") echo "📈 Prompt Count by Language" ;;
                "CATEGORIES_MANAGEMENT_TITLE") echo "📝 Research Areas and Prompt Categories Management Tool" ;;
                "LIST_ALL_CATEGORIES_AND_ITEMS") echo "List all categories and their items" ;;
                "MANAGE_SPECIFIC_CATEGORY") echo "Manage specific category file" ;;
                "INTERACTIVE_MODE_DEFAULT") echo "Interactive mode (default)" ;;
                "AVAILABLE_CATEGORIES_TITLE") echo "📂 Available Categories:" ;;
                "ERROR_PROMPTS_DIR_NOT_FOUND_FULL") echo "Error: Prompts directory not found at" ;;
                "ENTER_PROMPT_TITLE_SHORT") echo "📝 Enter prompt title:" ;;
                "ENTER_DESCRIPTION_SHORT_ALT") echo "📖 Enter description:" ;;
                "CONTINUE_ANYWAY_SHORT") echo "Continue anyway? (y/N):" ;;
                "ADD_PROMPT_CONFIRM_SHORT") echo "💾 Add this prompt to" ;;
                "ADD_PROMPT_CONFIRM_SUFFIX_SHORT") echo ".md? (Y/n):" ;;
                *) echo "$key" ;;
            esac
            ;;
        "ZH") # Chinese (Simplified)
            case "$key" in
                "MAIN_TITLE") echo "🎓 超棒学术提示工具包 🎓" ;;
                "MAIN_SUBTITLE") echo "您完整的学术AI提示管理" ;;
                "MAIN_SUBTITLE2") echo "命令中心" ;;
                "AVAILABLE_TOOLS") echo "📋 可用工具:" ;;
                "ADD_PROMPT") echo "📝 添加新提示" ;;
                "ADD_PROMPT_DESC") echo "带验证功能的交互式学术提示添加工具" ;;
                "SEARCH_PROMPTS") echo "🔍 搜索提示" ;;
                "SEARCH_PROMPTS_DESC") echo "通过关键词、类别或标签查找提示" ;;
                "MANAGE_CATEGORIES") echo "🏷️  管理类别" ;;
                "MANAGE_CATEGORIES_DESC") echo "添加/管理研究领域和提示类别" ;;
                "REPO_STATS") echo "📊 仓库统计" ;;
                "REPO_STATS_DESC") echo "查看收集统计和概览" ;;
                "TRANSLATION_TOOLS") echo "🌍 翻译工具" ;;
                "TRANSLATION_TOOLS_DESC") echo "管理多语言翻译和一致性" ;;
                "DOCUMENTATION") echo "📚 文档" ;;
                "DOCUMENTATION_DESC") echo "访问帮助和文档" ;;
                "SETTINGS") echo "⚙️  设置" ;;
                "SETTINGS_DESC") echo "管理用户偏好和配置" ;;
                "EXIT") echo "🚪 退出" ;;
                "SELECT_OPTION") echo "选择选项" ;;
                "BACK_TO_MENU") echo "🔙 返回主菜单" ;;
                "INTERFACE_LANGUAGE") echo "🌐 界面语言" ;;
                "INTERFACE_LANGUAGE_DESC") echo "更改界面显示语言" ;;
                # Search Menu
                "SEARCH_MENU_TITLE") echo "🔍 搜索提示" ;;
                "INTERACTIVE_SEARCH") echo "🔍 交互式搜索" ;;
                "QUICK_KEYWORD_SEARCH") echo "📝 快速关键词搜索" ;;
                "BROWSE_BY_CATEGORY") echo "📂 按类别浏览" ;;
                "SEARCH_BY_TAG") echo "🏷️ 按标签搜索" ;;
                "LIST_ALL_CATEGORIES") echo "📋 列出所有类别" ;;
                "COPY_PROMPT_CLIPBOARD") echo "📋 复制提示到剪贴板" ;;
                # Translation Menu
                "TRANSLATION_MENU_TITLE") echo "🌍 翻译工具与多语言管理" ;;
                "TRANSLATION_STATUS") echo "📊 翻译状态" ;;
                "VERIFY_CONSISTENCY") echo "🔍 验证一致性" ;;
                "COUNT_PROMPTS") echo "📈 计算提示数量" ;;
                "LANGUAGE_OVERVIEW") echo "🌐 语言概览" ;;
                # Documentation Menu
                "DOC_MENU_TITLE") echo "📚 文档与帮助" ;;
                "QUICK_START_COMMON") echo "📋 快速开始与常用任务" ;;
                "TOOLS_OVERVIEW") echo "🛠️ 工具概览与功能" ;;
                "REPO_STRUCTURE") echo "📁 仓库结构与格式" ;;
                "COMPLETE_DOCS") echo "📖 完整文档 (README.md)" ;;
                "COMMAND_HELP") echo "🔧 命令帮助与示例" ;;
                "LANGUAGES_CATEGORIES") echo "🌍 语言与类别指南" ;;
                "SMART_NAVIGATION") echo "🎭 智能导航指南" ;;
                # Statistics Menu
                "STATS_MENU_TITLE") echo "📊 仓库统计" ;;
                "RETURN_TO_MAIN") echo "🔙 返回主菜单" ;;
                "VIEW_STATS_AGAIN") echo "📊 再次查看统计" ;;
                # Profile Menu
                "PROFILE_MENU_TITLE") echo "⚙️ 用户配置文件管理" ;;
                "VIEW_CURRENT_PROFILE") echo "📋 查看当前配置文件" ;;
                "EDIT_SETTINGS") echo "✏️ 编辑设置" ;;
                "RESET_TO_DEFAULTS") echo "🔄 重置为默认" ;;
                "OPEN_PROFILE_FILE") echo "📁 打开配置文件" ;;
                # Documentation sub-functions
                "QUICK_START_TITLE") echo "📋 快速开始与常用任务" ;;
                "TOOLS_OVERVIEW_TITLE") echo "🛠️ 工具概览与功能" ;;
                "STRUCTURE_FORMAT_TITLE") echo "📁 仓库结构与格式" ;;
                "COMMAND_HELP_TITLE") echo "🔧 命令帮助与示例" ;;
                "LANGUAGES_GUIDE_TITLE") echo "🌍 语言与类别指南" ;;
                "SMART_NAV_TITLE") echo "🎭 智能导航指南" ;;
                # Profile Management sub-functions
                "CURRENT_PROFILE_TITLE") echo "📋 当前用户配置文件设置" ;;
                "EDIT_SETTINGS_TITLE") echo "✏️ 编辑配置文件设置" ;;
                "DISPLAY_SETTINGS_TITLE") echo "🔧 显示设置" ;;
                "INTERFACE_SETTINGS_TITLE") echo "🎨 界面设置" ;;
                "SEARCH_SETTINGS_TITLE") echo "🔍 搜索设置" ;;
                "TOOL_SETTINGS_TITLE") echo "🛠️ 工具设置" ;;
                "RESET_DEFAULTS_TITLE") echo "🔄 重置为默认设置" ;;
                "INTERFACE_LANG_SELECTION") echo "🌐 界面语言选择" ;;
                # Common UI elements
                "CURRENT_SETTINGS") echo "当前设置:" ;;
                "PRESS_ENTER_CONTINUE") echo "按回车键继续..." ;;
                "PRESS_ENTER_RETURN") echo "按回车键或输入 'q' 返回到" ;;
                "INVALID_CHOICE") echo "无效选择。请选择" ;;
                "BACK_TO_EDIT_MENU") echo "🔙 返回编辑菜单" ;;
                "BACK_TO_PROFILE_MENU") echo "🔙 返回配置文件菜单" ;;
                "YES_NO_PROMPT") echo "(y/n)" ;;
                "SELECT_LANGUAGE") echo "选择您的首选界面语言:" ;;
                "CHANGES_TAKE_EFFECT") echo "更改将在重新启动应用程序后生效。" ;;
                # Search Tool Strings
                "SEARCH_TOOL_TITLE") echo "🔍 简单提示搜索工具" ;;
                "USAGE") echo "用法:" ;;
                "OPTIONS") echo "选项:" ;;
                "HELP_MESSAGE") echo "显示此帮助信息" ;;
                "INTERACTIVE_MODE") echo "交互式搜索模式" ;;
                "LIST_CATEGORIES") echo "列出所有可用类别" ;;
                "BROWSE_CATEGORIES") echo "交互式浏览类别" ;;
                "SEARCH_CATEGORY") echo "在特定类别中搜索" ;;
                "SEARCH_TAG") echo "按标签搜索" ;;
                "VERBOSE_OUTPUT") echo "详细输出" ;;
                "EXAMPLES") echo "示例:" ;;
                "INTERACTIVE_MODE_DESC") echo "交互模式" ;;
                "LIST_ALL_CATEGORIES_DESC") echo "列出所有类别" ;;
                "BROWSE_CATEGORIES_DESC") echo "交互式浏览类别" ;;
                "AVAILABLE_CATEGORIES") echo "📂 可用类别浏览器" ;;
                "ERROR_PROMPTS_DIR_NOT_FOUND") echo "错误：在以下位置未找到提示目录" ;;
                "NO_CATEGORIES_FOUND") echo "未找到类别。" ;;
                "SELECT_CATEGORY_TO_BROWSE") echo "选择一个类别来浏览提示，或者：" ;;
                "BACK_TO_SEARCH_MENU") echo "↩️  返回搜索菜单" ;;
                "ENTER_CATEGORY_NUMBER") echo "输入类别编号" ;;
                "OR_RETURN") echo "或 0 返回：" ;;
                "INVALID_CATEGORY_NUMBER") echo "无效的类别编号。请重试。" ;;
                "INVALID_CHOICE_ENTER_NUMBER") echo "无效选择。请输入数字。" ;;
                "CATEGORY") echo "类别：" ;;
                "ERROR_CATEGORY_FILE_NOT_FOUND") echo "错误：未找到类别文件：" ;;
                "NO_PROMPTS_FOUND_CATEGORY") echo "在此类别中未找到提示。" ;;
                "PROMPTS_AVAILABLE") echo "个提示可用" ;;
                "FOUND_PROMPTS_IN") echo "在" ;;
                "FOUND_PROMPTS_IN_SUFFIX") echo "中找到" ;;
                "PROMPTS_SUFFIX") echo "个提示：" ;;
                "VIEW_SPECIFIC_PROMPT") echo "🔍 查看特定提示详情" ;;
                "BACK_TO_LIST_CATEGORIES") echo "↩️  返回列出所有类别" ;;
                "BACK_TO_SEARCH_MENU_OPTION") echo "🏠 返回搜索菜单" ;;
                "SELECT_OPTION_1_3") echo "选择选项 (1-3)：" ;;
                "ENTER_PROMPT_NUMBER") echo "输入提示编号" ;;
                "PROMPT_DETAILS") echo "📋 提示详情：" ;;
                "INVALID_PROMPT_NUMBER") echo "无效的提示编号。请重试。" ;;
                "NO_PROMPTS_AVAILABLE_VIEW") echo "没有可查看的提示。" ;;
                "BACK_TO_LIST_ALL_CATEGORIES") echo "返回列出所有类别" ;;
                "BACK_TO_SEARCH_MENU_FULL") echo "返回搜索菜单" ;;
                "INVALID_CHOICE_SELECT_1_3") echo "无效选择。请选择 1-3。" ;;
                "SIMPLE_SEARCH_OPTIONS") echo "🔍 简单搜索选项：" ;;
                "INTERACTIVE_SEARCH_RECOMMENDED") echo "交互式搜索（推荐）" ;;
                "QUICK_KEYWORD_SEARCH") echo "快速关键词搜索" ;;
                "BROWSE_ALL_CATEGORIES") echo "浏览所有类别" ;;
                "BACK_TO_MAIN_MENU") echo "返回主菜单" ;;
                "SELECT_OPTION_1_4") echo "选择选项 (1-4)：" ;;
                "LAUNCHING_INTERACTIVE_SEARCH") echo "🚀 启动交互式搜索..." ;;
                "ENTER_KEYWORDS_TO_SEARCH") echo "输入要搜索的关键词：" ;;
                "SEARCHING_FOR") echo "🔍 搜索：" ;;
                "LAUNCHING_CATEGORY_BROWSER") echo "📂 启动类别浏览器..." ;;
                "RETURNING_TO_MAIN_MENU") echo "返回主菜单..." ;;
                "WHAT_TO_DO_WITH_PROMPT") echo "📋 您想对此提示做什么？" ;;
                "COPY_PROMPT_TO_CLIPBOARD") echo "📋 复制提示到剪贴板" ;;
                "COPY_SPECIFIC_LANGUAGE") echo "🌍 复制特定语言版本" ;;
                "BACK_TO_SEARCH_RESULTS") echo "↩️  返回搜索结果" ;;
                "BACK_TO_CATEGORY") echo "↩️  返回类别" ;;
                "SELECT_OPTION_1_3_PROMPT") echo "选择选项 (1-3)：" ;;
                "RETURNING_TO_SEARCH_RESULTS") echo "返回搜索结果..." ;;
                "RETURNING_TO_CATEGORY_VIEW") echo "返回类别视图..." ;;
                "CLIPBOARD_NOT_FOUND") echo "❌ 未找到剪贴板命令。请安装以下之一：" ;;
                "MACOS_PBCOPY") echo "macOS: pbcopy（内置）" ;;
                "LINUX_XCLIP") echo "Linux: xclip 或 xsel" ;;
                "WINDOWS_CLIP") echo "Windows: clip.exe（内置）" ;;
                "PROMPT_CONTENT_COPY_MANUALLY") echo "提示内容（手动复制）：" ;;
                "PROMPT_COPIED_SUCCESS") echo "✅ 提示已成功复制到剪贴板！" ;;
                "FAILED_COPY_CLIPBOARD") echo "❌ 复制到剪贴板失败" ;;
                "SELECT_LANGUAGE_VERSION") echo "🌍 选择语言版本：" ;;
                "ENGLISH_EN") echo "🇺🇸 英语 (EN)" ;;
                "JAPANESE_JP") echo "🇯🇵 日语 (JP)" ;;
                "CHINESE_ZH") echo "🇨🇳 中文 (ZH)" ;;
                "GERMAN_DE") echo "🇩🇪 德语 (DE)" ;;
                "FRENCH_FR") echo "🇫🇷 法语 (FR)" ;;
                "SPANISH_ES") echo "🇪🇸 西班牙语 (ES)" ;;
                "ITALIAN_IT") echo "🇮🇹 意大利语 (IT)" ;;
                "PORTUGUESE_PT") echo "🇵🇹 葡萄牙语 (PT)" ;;
                "RUSSIAN_RU") echo "🇷🇺 俄语 (RU)" ;;
                "ARABIC_AR") echo "🇸🇦 阿拉伯语 (AR)" ;;
                "KOREAN_KO") echo "🇰🇷 韩语 (KO)" ;;
                "HINDI_HI") echo "🇮🇳 印地语 (HI)" ;;
                "BACK_TO_PROMPT_ACTIONS") echo "↩️  返回提示操作" ;;
                "SELECT_LANGUAGE_1_13") echo "选择语言 (1-13)：" ;;
                "RETURNING_TO_PROMPT_ACTIONS") echo "返回提示操作..." ;;
                "LOOKING_FOR_LANGUAGE_VERSION") echo "🌍 正在寻找此提示的" ;;
                "VERSION") echo "版本..." ;;
                "COULD_NOT_DETERMINE") echo "❌ 无法确定提示标题或类别。复制英语版本。" ;;
                "LANGUAGE_FOLDER_NOT_FOUND") echo "⚠️  未找到语言文件夹" ;;
                "COPYING_ENGLISH_INSTEAD") echo "复制英语版本。" ;;
                "CATEGORY_FILE_NOT_FOUND") echo "⚠️  未找到类别文件" ;;
                "FOUND_PROMPT_AT_POSITION") echo "📍 在" ;;
                "FOUND_PROMPT_AT_POSITION_SUFFIX") echo "中找到位置" ;;
                "COULD_NOT_FIND_PROMPT_POSITION") echo "⚠️  无法找到提示位置" ;;
                "COULD_NOT_FIND_AT_POSITION") echo "⚠️  在位置" ;;
                "NOT_FOUND_IN_LANGUAGE") echo "未找到" ;;
                "FOUND_LANGUAGE_VERSION") echo "✅ 找到" ;;
                "LANGUAGE_VERSION_OF_PROMPT") echo "版本的提示" ;;
                "POSITION") echo "（位置" ;;
                "IN") echo "在" ;;
                # Additional missing strings
                "ERROR_CATEGORY_FILE_NOT_FOUND") echo "错误：未找到类别文件：" ;;
                "RETURNING_TO_CATEGORY_VIEW") echo "返回类别视图..." ;;
                # Profile Management strings
                "DISPLAY_SETTINGS") echo "🔧 显示设置" ;;
                "INTERFACE_SETTINGS") echo "🎨 界面设置" ;;
                "SEARCH_SETTINGS") echo "🔍 搜索设置" ;;
                "TOOL_SETTINGS") echo "🛠️ 工具设置" ;;
                "RESET_TO_DEFAULTS") echo "🔄 重置为默认" ;;
                "SHOW_WELCOME") echo "显示欢迎信息" ;;
                "SHOW_COLORS") echo "显示颜色" ;;
                "AUTO_SAVE") echo "自动保存" ;;
                "INTERFACE_LANGUAGE_SETTING") echo "界面语言" ;;
                "DEFAULT_LANGUAGE") echo "默认语言" ;;
                "DEFAULT_CATEGORY") echo "默认类别" ;;
                "INTERFACE_STYLE") echo "界面样式" ;;
                "IMPLEMENTED") echo "✅ 已实现" ;;
                "TODO_NOT_IMPLEMENTED") echo "⚠️ 待办：未在主脚本中实现" ;;
                # Add missing strings found in sub-scripts
                "ENTER_SEARCH_KEYWORDS") echo "输入搜索关键词：" ;;
                "ENTER_PROMPT_TITLE") echo "📝 输入提示标题：" ;;
                "ENTER_DESCRIPTION") echo "📖 输入描述（1-2句话）：" ;;
                "ENTER_DESCRIPTION_SHORT") echo "📖 输入描述：" ;;
                "CONTINUE_ANYWAY") echo "继续吗？(y/N)：" ;;
                "ADD_PROMPT_CONFIRM") echo "💾 将此提示添加到" ;;
                "ADD_PROMPT_CONFIRM_SUFFIX") echo ".md？(Y/n)：" ;;
                "ENTER_NEW_RESEARCH_AREA") echo "🔬 输入新的研究领域（或输入 'done' 完成）：" ;;
                "RESEARCH_AREA_EXISTS") echo "研究领域已存在。跳过..." ;;
                "ADD_ANOTHER_RESEARCH_AREA") echo "添加另一个研究领域？(y/N)：" ;;
                "ENTER_NEW_PROMPT_CATEGORY") echo "📋 输入新的提示类别（或输入 'done' 完成）：" ;;
                "PROMPT_CATEGORY_EXISTS") echo "提示类别已存在。跳过..." ;;
                "ADD_ANOTHER_PROMPT_CATEGORY") echo "添加另一个提示类别？(y/N)：" ;;
                "ADD_RESEARCH_AREA") echo "1. 添加研究领域" ;;
                "ADD_PROMPT_CATEGORY") echo "2. 添加提示类别" ;;
                "REFRESH_DISPLAY") echo "3. 刷新显示" ;;
                "EXIT_OPTION") echo "4. 退出" ;;
                "SELECT_OPTION_1_4_SHORT") echo "选择选项 (1-4)：" ;;
                "ENTER_CATEGORY_NUMBER_OR_NAME") echo "输入类别编号或名称：" ;;
                "NONE") echo "（无）" ;;
                "BULLET_POINT") echo "•" ;;
                "SHOW_WELCOME_MESSAGE") echo "启动时显示欢迎信息？(y/n)：" ;;
                "ENABLE_COLORED_OUTPUT") echo "启用彩色输出？(y/n)：" ;;
                "AUTO_SAVE_SETTINGS") echo "自动保存设置？(y/n)：" ;;
                "ENTER_DEFAULT_LANGUAGE") echo "输入默认语言 (EN, ZH, JP, DE, FR, ES, IT, PT, RU, AR, KO, HI)：" ;;
                "ENTER_DEFAULT_CATEGORY") echo "输入默认类别：" ;;
                "SELECT_INTERFACE_STYLE") echo "选择界面样式 (modern/classic/minimal)：" ;;
                "SELECT_SETTING_TO_EDIT") echo "选择要编辑的设置 (1-3)：" ;;
                "ENTER_SEARCH_HISTORY_SIZE") echo "输入搜索历史大小 (1-50)：" ;;
                "SELECT_DEFAULT_SEARCH_MODE") echo "选择默认搜索模式 (interactive/quick/category)：" ;;
                "SELECT_TOOL_SETTING_TO_EDIT") echo "选择要编辑的设置 (1-4)：" ;;
                "ENABLE_STRICT_PROMPT_VALIDATION") echo "启用严格提示验证？(y/n)：" ;;
                "ENABLE_AUTO_TRANSLATION") echo "启用自动翻译？(y/n)：" ;;
                "CREATE_BACKUP_BEFORE_EDITING") echo "编辑前创建备份？(y/n)：" ;;
                "ARE_YOU_SURE") echo "您确定吗？(y/N)：" ;;
                "TRANSLATION_HELPER_TITLE") echo "🌍 学术提示翻译助手" ;;
                "SHOW_TRANSLATION_STATUS") echo "显示所有语言的翻译状态" ;;
                "VERIFY_FILE_CONSISTENCY") echo "验证跨语言的文件一致性" ;;
                "COUNT_PROMPTS_IN_LANGUAGE") echo "计算每种语言的提示数量" ;;
                "TRANSLATION_STATUS_TITLE") echo "📊 所有语言的翻译状态" ;;
                "VERIFY_CONSISTENCY_TITLE") echo "🔍 验证跨语言的文件一致性" ;;
                "CHECKING_CATEGORY") echo "检查" ;;
                "FILE_FOUND") echo "✅" ;;
                "FILE_MISSING") echo "❌ (缺失)" ;;
                "COUNT_PROMPTS_TITLE") echo "📈 按语言统计提示数量" ;;
                "CATEGORIES_MANAGEMENT_TITLE") echo "📝 研究领域和提示类别管理工具" ;;
                "LIST_ALL_CATEGORIES_AND_ITEMS") echo "列出所有类别及其项目" ;;
                "MANAGE_SPECIFIC_CATEGORY") echo "管理特定类别文件" ;;
                "INTERACTIVE_MODE_DEFAULT") echo "交互模式（默认）" ;;
                "AVAILABLE_CATEGORIES_TITLE") echo "📂 可用类别：" ;;
                "ERROR_PROMPTS_DIR_NOT_FOUND_FULL") echo "错误：在以下位置未找到提示目录" ;;
                "ENTER_PROMPT_TITLE_SHORT") echo "📝 输入提示标题：" ;;
                "ENTER_DESCRIPTION_SHORT_ALT") echo "📖 输入描述：" ;;
                "CONTINUE_ANYWAY_SHORT") echo "继续吗？(y/N)：" ;;
                "ADD_PROMPT_CONFIRM_SHORT") echo "💾 将此提示添加到" ;;
                "ADD_PROMPT_CONFIRM_SUFFIX_SHORT") echo ".md？(Y/n)：" ;;
                *) echo "$key" ;;
            esac
            ;;
        "ES") # Spanish
            case "$key" in
                "MAIN_TITLE") echo "🎓 TOOLKIT DE PROMPTS ACADÉMICOS IMPRESIONANTES 🎓" ;;
                "MAIN_SUBTITLE") echo "Su Centro de Gestión Completo de Prompts de IA Académica" ;;
                "MAIN_SUBTITLE2") echo "Centro de Comando" ;;
                "AVAILABLE_TOOLS") echo "📋 Herramientas Disponibles:" ;;
                "ADD_PROMPT") echo "📝 Agregar Nuevo Prompt" ;;
                "ADD_PROMPT_DESC") echo "Herramienta interactiva para agregar prompts académicos con validación" ;;
                "SEARCH_PROMPTS") echo "🔍 Buscar Prompts" ;;
                "SEARCH_PROMPTS_DESC") echo "Encuentra prompts por palabras clave, categorías o etiquetas" ;;
                "MANAGE_CATEGORIES") echo "🏷️  Gestionar Categorías" ;;
                "MANAGE_CATEGORIES_DESC") echo "Agregar/gestionar Áreas de Investigación y Categorías de Prompts" ;;
                "REPO_STATS") echo "📊 Estadísticas del Repositorio" ;;
                "REPO_STATS_DESC") echo "Ver estadísticas de la colección y resumen" ;;
                "TRANSLATION_TOOLS") echo "🌍 Herramientas de Traducción" ;;
                "TRANSLATION_TOOLS_DESC") echo "Gestionar traducciones multilingües y consistencia" ;;
                "DOCUMENTATION") echo "📚 Documentación" ;;
                "DOCUMENTATION_DESC") echo "Acceder a ayuda y documentación" ;;
                "SETTINGS") echo "⚙️  Configuración" ;;
                "SETTINGS_DESC") echo "Gestionar preferencias de usuario y configuración" ;;
                "EXIT") echo "🚪 Salir" ;;
                "SELECT_OPTION") echo "Seleccionar opción" ;;
                "BACK_TO_MENU") echo "🔙 Volver al Menú Principal" ;;
                "INTERFACE_LANGUAGE") echo "🌐 Idioma de Interfaz" ;;
                "INTERFACE_LANGUAGE_DESC") echo "Cambiar idioma de visualización de interfaz" ;;
                *) echo "$key" ;;
            esac
            ;;
        "HI") # Hindi
            case "$key" in
                "MAIN_TITLE") echo "🎓 अद्भुत शैक्षणिक प्रॉम्प्ट टूलकिट 🎓" ;;
                "MAIN_SUBTITLE") echo "आपका पूर्ण शैक्षणिक AI प्रॉम्प्ट प्रबंधन" ;;
                "MAIN_SUBTITLE2") echo "कमांड सेंटर" ;;
                "AVAILABLE_TOOLS") echo "📋 उपलब्ध उपकरण:" ;;
                "ADD_PROMPT") echo "📝 नया प्रॉम्प्ट जोड़ें" ;;
                "ADD_PROMPT_DESC") echo "सत्यापन के साथ शैक्षणिक प्रॉम्प्ट जोड़ने के लिए इंटरैक्टिव उपकरण" ;;
                "SEARCH_PROMPTS") echo "🔍 प्रॉम्प्ट खोजें" ;;
                "SEARCH_PROMPTS_DESC") echo "कीवर्ड, श्रेणियों या टैग द्वारा प्रॉम्प्ट खोजें" ;;
                "MANAGE_CATEGORIES") echo "🏷️  श्रेणियां प्रबंधित करें" ;;
                "MANAGE_CATEGORIES_DESC") echo "अनुसंधान क्षेत्र और प्रॉम्प्ट श्रेणियां जोड़ें/प्रबंधित करें" ;;
                "REPO_STATS") echo "📊 रिपॉजिटरी आंकड़े" ;;
                "REPO_STATS_DESC") echo "संग्रह आंकड़े और अवलोकन देखें" ;;
                "TRANSLATION_TOOLS") echo "🌍 अनुवाद उपकरण" ;;
                "TRANSLATION_TOOLS_DESC") echo "बहुभाषी अनुवाद और संगति प्रबंधित करें" ;;
                "DOCUMENTATION") echo "📚 दस्तावेज़ीकरण" ;;
                "DOCUMENTATION_DESC") echo "सहायता और दस्तावेज़ीकरण तक पहुंचें" ;;
                "SETTINGS") echo "⚙️  सेटिंग्स" ;;
                "SETTINGS_DESC") echo "उपयोगकर्ता प्राथमिकताएं और कॉन्फ़िगरेशन प्रबंधित करें" ;;
                "EXIT") echo "🚪 निकास" ;;
                "SELECT_OPTION") echo "विकल्प चुनें" ;;
                "BACK_TO_MENU") echo "🔙 मुख्य मेनू पर वापस" ;;
                "INTERFACE_LANGUAGE") echo "🌐 इंटरफ़ेस भाषा" ;;
                "INTERFACE_LANGUAGE_DESC") echo "इंटरफ़ेस प्रदर्शन भाषा बदलें" ;;
                *) echo "$key" ;;
            esac
            ;;
        "AR") # Arabic
            case "$key" in
                "MAIN_TITLE") echo "🎓 مجموعة أدوات المطالبات الأكاديمية الرائعة 🎓" ;;
                "MAIN_SUBTITLE") echo "مركز إدارة مطالبات الذكاء الاصطناعي الأكاديمي الكامل" ;;
                "MAIN_SUBTITLE2") echo "مركز القيادة" ;;
                "AVAILABLE_TOOLS") echo "📋 الأدوات المتاحة:" ;;
                "ADD_PROMPT") echo "📝 إضافة مطالبة جديدة" ;;
                "ADD_PROMPT_DESC") echo "أداة تفاعلية لإضافة مطالبات أكاديمية مع التحقق" ;;
                "SEARCH_PROMPTS") echo "🔍 البحث في المطالبات" ;;
                "SEARCH_PROMPTS_DESC") echo "العثور على المطالبات بالكلمات المفتاحية أو الفئات أو العلامات" ;;
                "MANAGE_CATEGORIES") echo "🏷️  إدارة الفئات" ;;
                "MANAGE_CATEGORIES_DESC") echo "إضافة/إدارة مجالات البحث وفئات المطالبات" ;;
                "REPO_STATS") echo "📊 إحصائيات المستودع" ;;
                "REPO_STATS_DESC") echo "عرض إحصائيات المجموعة والنظرة العامة" ;;
                "TRANSLATION_TOOLS") echo "🌍 أدوات الترجمة" ;;
                "TRANSLATION_TOOLS_DESC") echo "إدارة الترجمات متعددة اللغات والاتساق" ;;
                "DOCUMENTATION") echo "📚 التوثيق" ;;
                "DOCUMENTATION_DESC") echo "الوصول إلى المساعدة والتوثيق" ;;
                "SETTINGS") echo "⚙️  الإعدادات" ;;
                "SETTINGS_DESC") echo "إدارة تفضيلات المستخدم والتكوين" ;;
                "EXIT") echo "🚪 خروج" ;;
                "SELECT_OPTION") echo "اختر الخيار" ;;
                "BACK_TO_MENU") echo "🔙 العودة إلى القائمة الرئيسية" ;;
                "INTERFACE_LANGUAGE") echo "🌐 لغة الواجهة" ;;
                "INTERFACE_LANGUAGE_DESC") echo "تغيير لغة عرض الواجهة" ;;
                *) echo "$key" ;;
            esac
            ;;
        "PT") # Portuguese
            case "$key" in
                "MAIN_TITLE") echo "🎓 TOOLKIT DE PROMPTS ACADÊMICOS FANTÁSTICOS 🎓" ;;
                "MAIN_SUBTITLE") echo "Seu Centro Completo de Gerenciamento de Prompts de IA Acadêmica" ;;
                "MAIN_SUBTITLE2") echo "Centro de Comando" ;;
                "AVAILABLE_TOOLS") echo "📋 Ferramentas Disponíveis:" ;;
                "ADD_PROMPT") echo "📝 Adicionar Novo Prompt" ;;
                "ADD_PROMPT_DESC") echo "Ferramenta interativa para adicionar prompts acadêmicos com validação" ;;
                "SEARCH_PROMPTS") echo "🔍 Pesquisar Prompts" ;;
                "SEARCH_PROMPTS_DESC") echo "Encontrar prompts por palavras-chave, categorias ou tags" ;;
                "MANAGE_CATEGORIES") echo "🏷️  Gerenciar Categorias" ;;
                "MANAGE_CATEGORIES_DESC") echo "Adicionar/gerenciar Áreas de Pesquisa e Categorias de Prompts" ;;
                "REPO_STATS") echo "📊 Estatísticas do Repositório" ;;
                "REPO_STATS_DESC") echo "Ver estatísticas da coleção e visão geral" ;;
                "TRANSLATION_TOOLS") echo "🌍 Ferramentas de Tradução" ;;
                "TRANSLATION_TOOLS_DESC") echo "Gerenciar traduções multilíngues e consistência" ;;
                "DOCUMENTATION") echo "📚 Documentação" ;;
                "DOCUMENTATION_DESC") echo "Acessar ajuda e documentação" ;;
                "SETTINGS") echo "⚙️  Configurações" ;;
                "SETTINGS_DESC") echo "Gerenciar preferências do usuário e configuração" ;;
                "EXIT") echo "🚪 Sair" ;;
                "SELECT_OPTION") echo "Selecionar opção" ;;
                "BACK_TO_MENU") echo "🔙 Voltar ao Menu Principal" ;;
                "INTERFACE_LANGUAGE") echo "🌐 Idioma da Interface" ;;
                "INTERFACE_LANGUAGE_DESC") echo "Alterar idioma de exibição da interface" ;;
                *) echo "$key" ;;
            esac
            ;;
        "RU") # Russian
            case "$key" in
                "MAIN_TITLE") echo "🎓 ПОТРЯСАЮЩИЙ НАБОР АКАДЕМИЧЕСКИХ ПРОМПТОВ 🎓" ;;
                "MAIN_SUBTITLE") echo "Ваш Полный Центр Управления Академическими ИИ Промптами" ;;
                "MAIN_SUBTITLE2") echo "Командный Центр" ;;
                "AVAILABLE_TOOLS") echo "📋 Доступные Инструменты:" ;;
                "ADD_PROMPT") echo "📝 Добавить Новый Промпт" ;;
                "ADD_PROMPT_DESC") echo "Интерактивный инструмент для добавления академических промптов с проверкой" ;;
                "SEARCH_PROMPTS") echo "🔍 Поиск Промптов" ;;
                "SEARCH_PROMPTS_DESC") echo "Найти промпты по ключевым словам, категориям или тегам" ;;
                "MANAGE_CATEGORIES") echo "🏷️  Управление Категориями" ;;
                "MANAGE_CATEGORIES_DESC") echo "Добавить/управлять Областями Исследований и Категориями Промптов" ;;
                "REPO_STATS") echo "📊 Статистика Репозитория" ;;
                "REPO_STATS_DESC") echo "Просмотр статистики коллекции и обзора" ;;
                "TRANSLATION_TOOLS") echo "🌍 Инструменты Перевода" ;;
                "TRANSLATION_TOOLS_DESC") echo "Управление многоязычными переводами и согласованностью" ;;
                "DOCUMENTATION") echo "📚 Документация" ;;
                "DOCUMENTATION_DESC") echo "Доступ к справке и документации" ;;
                "SETTINGS") echo "⚙️  Настройки" ;;
                "SETTINGS_DESC") echo "Управление пользовательскими предпочтениями и конфигурацией" ;;
                "EXIT") echo "🚪 Выход" ;;
                "SELECT_OPTION") echo "Выберите опцию" ;;
                "BACK_TO_MENU") echo "🔙 Назад в Главное Меню" ;;
                "INTERFACE_LANGUAGE") echo "🌐 Язык Интерфейса" ;;
                "INTERFACE_LANGUAGE_DESC") echo "Изменить язык отображения интерфейса" ;;
                *) echo "$key" ;;
            esac
            ;;
        "JP") # Japanese
            case "$key" in
                "MAIN_TITLE") echo "🎓 素晴らしい学術プロンプトツールキット 🎓" ;;
                "MAIN_SUBTITLE") echo "完全な学術AIプロンプト管理" ;;
                "MAIN_SUBTITLE2") echo "コマンドセンター" ;;
                "AVAILABLE_TOOLS") echo "📋 利用可能なツール:" ;;
                "ADD_PROMPT") echo "📝 新しいプロンプトを追加" ;;
                "ADD_PROMPT_DESC") echo "検証機能付きの学術プロンプト追加インタラクティブツール" ;;
                "SEARCH_PROMPTS") echo "🔍 プロンプト検索" ;;
                "SEARCH_PROMPTS_DESC") echo "キーワード、カテゴリー、またはタグでプロンプトを検索" ;;
                "MANAGE_CATEGORIES") echo "🏷️  カテゴリー管理" ;;
                "MANAGE_CATEGORIES_DESC") echo "研究分野とプロンプトカテゴリーの追加/管理" ;;
                "REPO_STATS") echo "📊 リポジトリ統計" ;;
                "REPO_STATS_DESC") echo "コレクション統計と概要を表示" ;;
                "TRANSLATION_TOOLS") echo "🌍 翻訳ツール" ;;
                "TRANSLATION_TOOLS_DESC") echo "多言語翻訳と一貫性の管理" ;;
                "DOCUMENTATION") echo "📚 ドキュメント" ;;
                "DOCUMENTATION_DESC") echo "ヘルプとドキュメントへのアクセス" ;;
                "SETTINGS") echo "⚙️  設定" ;;
                "SETTINGS_DESC") echo "ユーザー設定と構成の管理" ;;
                "EXIT") echo "🚪 終了" ;;
                "SELECT_OPTION") echo "オプションを選択" ;;
                "BACK_TO_MENU") echo "🔙 メインメニューに戻る" ;;
                "INTERFACE_LANGUAGE") echo "🌐 インターフェース言語" ;;
                "INTERFACE_LANGUAGE_DESC") echo "インターフェース表示言語を変更" ;;
                *) echo "$key" ;;
            esac
            ;;
        "DE") # German
            case "$key" in
                "MAIN_TITLE") echo "🎓 FANTASTISCHES AKADEMISCHES PROMPT-TOOLKIT 🎓" ;;
                "MAIN_SUBTITLE") echo "Ihr Komplettes Akademisches KI-Prompt-Management" ;;
                "MAIN_SUBTITLE2") echo "Kommandozentrale" ;;
                "AVAILABLE_TOOLS") echo "📋 Verfügbare Tools:" ;;
                "ADD_PROMPT") echo "📝 Neuen Prompt Hinzufügen" ;;
                "ADD_PROMPT_DESC") echo "Interaktives Tool zum Hinzufügen akademischer Prompts mit Validierung" ;;
                "SEARCH_PROMPTS") echo "🔍 Prompts Suchen" ;;
                "SEARCH_PROMPTS_DESC") echo "Prompts nach Stichwörtern, Kategorien oder Tags finden" ;;
                "MANAGE_CATEGORIES") echo "🏷️  Kategorien Verwalten" ;;
                "MANAGE_CATEGORIES_DESC") echo "Forschungsbereiche und Prompt-Kategorien hinzufügen/verwalten" ;;
                "REPO_STATS") echo "📊 Repository-Statistiken" ;;
                "REPO_STATS_DESC") echo "Sammlungsstatistiken und Übersicht anzeigen" ;;
                "TRANSLATION_TOOLS") echo "🌍 Übersetzungstools" ;;
                "TRANSLATION_TOOLS_DESC") echo "Mehrsprachige Übersetzungen und Konsistenz verwalten" ;;
                "DOCUMENTATION") echo "📚 Dokumentation" ;;
                "DOCUMENTATION_DESC") echo "Auf Hilfe und Dokumentation zugreifen" ;;
                "SETTINGS") echo "⚙️  Einstellungen" ;;
                "SETTINGS_DESC") echo "Benutzereinstellungen und Konfiguration verwalten" ;;
                "EXIT") echo "🚪 Beenden" ;;
                "SELECT_OPTION") echo "Option auswählen" ;;
                "BACK_TO_MENU") echo "🔙 Zurück zum Hauptmenü" ;;
                "INTERFACE_LANGUAGE") echo "🌐 Oberflächensprache" ;;
                "INTERFACE_LANGUAGE_DESC") echo "Anzeigesprache der Oberfläche ändern" ;;
                *) echo "$key" ;;
            esac
            ;;
        "FR") # French
            case "$key" in
                "MAIN_TITLE") echo "🎓 BOÎTE À OUTILS DE PROMPTS ACADÉMIQUES FANTASTIQUES 🎓" ;;
                "MAIN_SUBTITLE") echo "Votre Centre Complet de Gestion de Prompts IA Académiques" ;;
                "MAIN_SUBTITLE2") echo "Centre de Commande" ;;
                "AVAILABLE_TOOLS") echo "📋 Outils Disponibles:" ;;
                "ADD_PROMPT") echo "📝 Ajouter Nouveau Prompt" ;;
                "ADD_PROMPT_DESC") echo "Outil interactif pour ajouter des prompts académiques avec validation" ;;
                "SEARCH_PROMPTS") echo "🔍 Rechercher Prompts" ;;
                "SEARCH_PROMPTS_DESC") echo "Trouver des prompts par mots-clés, catégories ou tags" ;;
                "MANAGE_CATEGORIES") echo "🏷️  Gérer Catégories" ;;
                "MANAGE_CATEGORIES_DESC") echo "Ajouter/gérer Domaines de Recherche et Catégories de Prompts" ;;
                "REPO_STATS") echo "📊 Statistiques du Dépôt" ;;
                "REPO_STATS_DESC") echo "Voir statistiques de la collection et aperçu" ;;
                "TRANSLATION_TOOLS") echo "🌍 Outils de Traduction" ;;
                "TRANSLATION_TOOLS_DESC") echo "Gérer traductions multilingues et cohérence" ;;
                "DOCUMENTATION") echo "📚 Documentation" ;;
                "DOCUMENTATION_DESC") echo "Accéder à l'aide et à la documentation" ;;
                "SETTINGS") echo "⚙️  Paramètres" ;;
                "SETTINGS_DESC") echo "Gérer préférences utilisateur et configuration" ;;
                "EXIT") echo "🚪 Quitter" ;;
                "SELECT_OPTION") echo "Sélectionner option" ;;
                "BACK_TO_MENU") echo "🔙 Retour au Menu Principal" ;;
                "INTERFACE_LANGUAGE") echo "🌐 Langue d'Interface" ;;
                "INTERFACE_LANGUAGE_DESC") echo "Changer la langue d'affichage de l'interface" ;;
                *) echo "$key" ;;
            esac
            ;;
        *) # Default to English
            get_string "$key" "EN"
            ;;
    esac
}

# Function to get language name in native script
get_language_name() {
    local lang="$1"
    case "$lang" in
        "EN") echo "🇺🇸 English" ;;
        "ZH") echo "🇨🇳 中文" ;;
        "ES") echo "🇪🇸 Español" ;;
        "HI") echo "🇮🇳 हिन्दी" ;;
        "AR") echo "🇸🇦 العربية" ;;
        "PT") echo "🇵🇹 Português" ;;
        "RU") echo "🇷🇺 Русский" ;;
        "JP") echo "🇯🇵 日本語" ;;
        "DE") echo "🇩🇪 Deutsch" ;;
        "FR") echo "🇫🇷 Français" ;;
        *) echo "$lang" ;;
    esac
}

# Function to get supported interface languages
get_supported_languages() {
    echo "EN ZH ES HI AR PT RU JP DE FR"
}
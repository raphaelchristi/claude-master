#!/bin/bash

# Claude + TaskMaster Integration Installer
# This script installs the integration for Claude Code

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Function to show usage
show_usage() {
    echo -e "${BLUE}Claude + TaskMaster Integration Installer${NC}"
    echo ""
    echo -e "${YELLOW}Usage:${NC}"
    echo -e "  ${GREEN}./install.sh${NC}                 Interactive installation (recommended)"
    echo -e "  ${GREEN}./install.sh --global${NC}        Install globally (~/.claude/)"
    echo -e "  ${GREEN}./install.sh --local${NC}         Install locally (current project)"
    echo -e "  ${GREEN}./install.sh --both${NC}          Install both globally and locally"
    echo -e "  ${GREEN}./install.sh --help${NC}          Show this help"
    echo ""
    echo -e "${YELLOW}Installation Types:${NC}"
    echo -e "  ${BLUE}Global:${NC}  Available in ALL projects (recommended for frequent use)"
    echo -e "  ${BLUE}Local:${NC}   Available only in current project (project-specific)"
    echo -e "  ${BLUE}Both:${NC}    Global + local copy for customization"
}

# Function to check Claude Code installation
check_claude() {
    if [ ! -d "$HOME/.claude" ]; then
        echo -e "${RED}❌ Claude Code directory not found at ~/.claude${NC}"
        echo -e "${YELLOW}Please install Claude Code first: https://claude.ai/code${NC}"
        exit 1
    fi
    echo -e "${BLUE}📁 Found Claude directory at ~/.claude${NC}"
}

# Function to install globally
install_global() {
    echo -e "${PURPLE}🌍 Installing globally to ~/.claude/${NC}"
    
    # Create commands directory if it doesn't exist
    mkdir -p "$HOME/.claude/commands"
    
    # Copy commands
    echo -e "${BLUE}📋 Installing commands globally...${NC}"
    cp -r commands/* "$HOME/.claude/commands/"
    
    # Copy documentation
    echo -e "${BLUE}📚 Installing documentation globally...${NC}"
    cp CLAUDE.md "$HOME/.claude/"
    
    # Make commands executable (if they're shell scripts)
    find "$HOME/.claude/commands" -name "*.sh" -exec chmod +x {} \; 2>/dev/null || true
    
    echo -e "${GREEN}✅ Global installation completed!${NC}"
}

# Function to install locally
install_local() {
    echo -e "${PURPLE}📁 Installing locally to current project${NC}"
    
    # Copy commands to local project
    echo -e "${BLUE}📋 Installing commands locally...${NC}"
    cp -r commands ./
    
    # Copy documentation
    echo -e "${BLUE}📚 Installing documentation locally...${NC}"
    cp CLAUDE.md ./
    
    # Make commands executable (if they're shell scripts)
    find ./commands -name "*.sh" -exec chmod +x {} \; 2>/dev/null || true
    
    echo -e "${GREEN}✅ Local installation completed!${NC}"
}

# Function for interactive installation
interactive_install() {
    echo -e "${BLUE}🚀 Claude + TaskMaster Integration Installer${NC}"
    echo ""
    echo -e "${YELLOW}Choose installation type:${NC}"
    echo -e "  ${GREEN}1)${NC} Global installation (available in all projects) ${BLUE}[Recommended]${NC}"
    echo -e "  ${GREEN}2)${NC} Local installation (current project only)"
    echo -e "  ${GREEN}3)${NC} Both global and local"
    echo -e "  ${GREEN}4)${NC} Show help and exit"
    echo ""
    
    while true; do
        read -p "Enter your choice (1-4): " choice
        case $choice in
            1)
                check_claude
                install_global
                break
                ;;
            2)
                install_local
                break
                ;;
            3)
                check_claude
                install_global
                echo ""
                install_local
                break
                ;;
            4)
                show_usage
                exit 0
                ;;
            *)
                echo -e "${RED}Invalid choice. Please enter 1-4.${NC}"
                ;;
        esac
    done
}

# Parse command line arguments
case "${1:-}" in
    --global)
        check_claude
        install_global
        ;;
    --local)
        install_local
        ;;
    --both)
        check_claude
        install_global
        echo ""
        install_local
        ;;
    --help|-h)
        show_usage
        exit 0
        ;;
    "")
        interactive_install
        ;;
    *)
        echo -e "${RED}❌ Unknown option: $1${NC}"
        echo ""
        show_usage
        exit 1
        ;;
esac

echo ""
echo -e "${YELLOW}🎯 Quick Start:${NC}"
echo -e "${BLUE}1. Navigate to any project directory${NC}"
echo -e "${BLUE}2. Run: /project-setup${NC}"
echo -e "${BLUE}3. Follow the setup wizard${NC}"
echo ""
echo -e "${YELLOW}📚 Documentation:${NC}"
echo -e "${BLUE}• Complete guide: ~/.claude/CLAUDE.md (global) or ./CLAUDE.md (local)${NC}"
echo -e "${BLUE}• Commands help: ~/.claude/commands/README.md${NC}"
echo ""
echo -e "${GREEN}🚀 Ready to revolutionize your development workflow!${NC}"
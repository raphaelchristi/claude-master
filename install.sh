#!/bin/bash

# Claude + TaskMaster Integration Installer
# This script installs the integration globally for Claude Code

set -e

echo "🚀 Installing Claude + TaskMaster Integration..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if Claude directory exists
if [ ! -d "$HOME/.claude" ]; then
    echo -e "${RED}❌ Claude Code directory not found at ~/.claude${NC}"
    echo -e "${YELLOW}Please install Claude Code first: https://claude.ai/code${NC}"
    exit 1
fi

echo -e "${BLUE}📁 Found Claude directory at ~/.claude${NC}"

# Create commands directory if it doesn't exist
mkdir -p "$HOME/.claude/commands"

# Copy commands
echo -e "${BLUE}📋 Installing commands...${NC}"
cp -r commands/* "$HOME/.claude/commands/"

# Copy documentation
echo -e "${BLUE}📚 Installing documentation...${NC}"
cp CLAUDE.md "$HOME/.claude/"

# Make commands executable (if they're shell scripts)
find "$HOME/.claude/commands" -name "*.sh" -exec chmod +x {} \;

echo -e "${GREEN}✅ Installation completed successfully!${NC}"
echo ""
echo -e "${YELLOW}🎯 Quick Start:${NC}"
echo -e "${BLUE}1. Navigate to any project directory${NC}"
echo -e "${BLUE}2. Run: /project-setup${NC}"
echo -e "${BLUE}3. Follow the setup wizard${NC}"
echo ""
echo -e "${YELLOW}📚 Documentation:${NC}"
echo -e "${BLUE}• Complete guide: ~/.claude/CLAUDE.md${NC}"
echo -e "${BLUE}• Commands help: ~/.claude/commands/README.md${NC}"
echo ""
echo -e "${GREEN}🚀 Ready to revolutionize your development workflow!${NC}"
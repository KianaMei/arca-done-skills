#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_COMMANDS="${HOME}/.claude/commands"

echo "=== Arca.live Emoticon Skill Installer ==="
echo ""

# 1. Copy skill to Claude commands
mkdir -p "$CLAUDE_COMMANDS"
cp "$REPO_DIR/commands/arca.md" "$CLAUDE_COMMANDS/arca.md"
echo "[OK] Skill installed: $CLAUDE_COMMANDS/arca.md"

# 2. Install Python dependencies
echo ""
echo "Installing Python dependencies..."
pip install -r "$REPO_DIR/scraper/requirements.txt" --quiet
echo "[OK] Dependencies installed"

# 3. Set environment variable hint
SCRAPER_DIR="$REPO_DIR/scraper"
echo ""
echo "=== Setup Complete ==="
echo ""
echo "Add to your shell profile (~/.bashrc or ~/.zshrc):"
echo ""
echo "  export ARCA_SCRAPER_DIR=\"$SCRAPER_DIR\""
echo ""
echo "Optional (for auto-login):"
echo "  export ARCA_USERNAME=\"your_username\""
echo "  export ARCA_PASSWORD=\"your_password\""
echo ""
echo "Then: source ~/.bashrc"
echo "Use:  /arca https://arca.live/e/XXXXX"

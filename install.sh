#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SCRAPER_DIR="$REPO_DIR/scraper"
CLAUDE_COMMANDS="${HOME}/.claude/commands"

echo "=== Arca.live Emoticon Skill Installer ==="
echo ""

# 1. Install Python dependencies
echo "Installing Python dependencies..."
pip install -r "$SCRAPER_DIR/requirements.txt" --quiet
echo "[OK] Dependencies installed"

# 2. Copy skill and inject scraper path
mkdir -p "$CLAUDE_COMMANDS"
sed "s|{{SCRAPER_DIR}}|$SCRAPER_DIR|g" "$REPO_DIR/commands/arca.md" > "$CLAUDE_COMMANDS/arca.md"
echo "[OK] Skill installed: $CLAUDE_COMMANDS/arca.md"

echo ""
echo "=== Done! ==="
echo "Restart your AI coding assistant, then use:  /arca https://arca.live/e/XXXXX"
echo ""
echo "Optional (for auto-login on login-required pages):"
echo "  export ARCA_USERNAME=\"your_username\""
echo "  export ARCA_PASSWORD=\"your_password\""

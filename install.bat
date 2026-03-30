@echo off
chcp 65001 >/dev/null
setlocal enabledelayedexpansion

set REPO_DIR=%~dp0
set SCRAPER_DIR=%REPO_DIR%scraper
set CLAUDE_COMMANDS=%USERPROFILE%\.claude\commands

echo === Arca.live Emoticon Skill Installer ===
echo.

:: 1. Install Python dependencies
echo Installing Python dependencies...
pip install -r "%SCRAPER_DIR%\requirements.txt" --quiet
echo [OK] Dependencies installed

:: 2. Copy skill and inject scraper path
if not exist "%CLAUDE_COMMANDS%" mkdir "%CLAUDE_COMMANDS%"
powershell -Command "(Get-Content '%REPO_DIR%commands\arca.md') -replace '\{\{SCRAPER_DIR\}\}', '%SCRAPER_DIR%' | Set-Content '%CLAUDE_COMMANDS%\arca.md'"
echo [OK] Skill installed: %CLAUDE_COMMANDS%\arca.md

echo.
echo === Done! ===
echo Restart your AI coding assistant, then use:  /arca https://arca.live/e/XXXXX
echo.
echo Optional (for auto-login):
echo   setx ARCA_USERNAME "your_username"
echo   setx ARCA_PASSWORD "your_password"
echo.
pause

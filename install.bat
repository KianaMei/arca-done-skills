@echo off
chcp 65001 >/dev/null
setlocal

set REPO_DIR=%~dp0
set CLAUDE_COMMANDS=%USERPROFILE%\.claude\commands

echo === Arca.live Emoticon Skill Installer ===
echo.

if not exist "%CLAUDE_COMMANDS%" mkdir "%CLAUDE_COMMANDS%"
copy /Y "%REPO_DIR%commands\arca.md" "%CLAUDE_COMMANDS%\arca.md" >/dev/null
echo [OK] Skill installed: %CLAUDE_COMMANDS%\arca.md

echo.
echo Installing Python dependencies...
pip install -r "%REPO_DIR%scraper\requirements.txt" --quiet
echo [OK] Dependencies installed

set SCRAPER_DIR=%REPO_DIR%scraper
echo.
echo === Setup Complete ===
echo.
echo Run:  setx ARCA_SCRAPER_DIR "%SCRAPER_DIR%"
echo.
echo Optional:
echo   setx ARCA_USERNAME "your_username"
echo   setx ARCA_PASSWORD "your_password"
echo.
echo Then restart terminal and use:  /arca https://arca.live/e/XXXXX
echo.
pause

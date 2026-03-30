# Arca.live Emoticon Scraper - Claude Code Skill

A Claude Code skill that downloads emoticon packs from [arca.live](https://arca.live), automatically converts videos to GIFs, and translates Korean titles to Chinese.

## Features

- Downloads all media (images + videos) from arca.live emoticon pages
- Bypasses Cloudflare protection via DrissionPage (Chromium automation)
- Auto-converts MP4 to GIF with ffmpeg palette optimization
- Auto-translates Korean pack titles to Chinese (by Claude, not machine translation)
- Multi-stage login support for arca.live

## Install

```bash
git clone https://github.com/KianaMei/arca-done-skills.git ~/arca-done-skills
cd ~/arca-done-skills

# Linux / macOS
chmod +x install.sh && ./install.sh

# Windows
install.bat
```

Then set the environment variable as instructed by the installer.

## Usage

In Claude Code:

```
/arca https://arca.live/e/48022
```

With a custom Chinese name:

```
/arca https://arca.live/e/38391 诡术妄想使徒表情包D1
```

## Requirements

- Python 3.10+
- Chrome / Chromium browser installed
- Claude Code CLI

## Environment Variables

| Variable | Required | Description |
|---|---|---|
| `ARCA_SCRAPER_DIR` | Yes | Path to the `scraper/` directory |
| `ARCA_USERNAME` | No | arca.live username (for login-required pages) |
| `ARCA_PASSWORD` | No | arca.live password |

## File Structure

```
arca-done-skills/
├── commands/
│   └── arca.md              # Claude Code skill definition
├── scraper/
│   ├── arca_scraper_dp.py   # Main scraper (DrissionPage)
│   ├── arca_stitcher.py     # Video stitcher (optional)
│   ├── requirements.txt     # Python dependencies
│   └── .env.example         # Environment variable template
├── install.sh               # Linux/macOS installer
├── install.bat              # Windows installer
└── README.md
```

## License

MIT

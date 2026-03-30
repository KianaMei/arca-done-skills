# Arca.live Emoticon Scraper Skill

Download emoticon packs from [arca.live](https://arca.live), auto-convert videos to GIF, translate Korean titles to Chinese.

## Features

- Downloads all media (images + videos) from arca.live emoticon pages
- Bypasses Cloudflare via DrissionPage (Chromium automation)
- Auto-converts MP4 to GIF with ffmpeg palette optimization
- Translates Korean pack titles to Chinese (by AI, not machine translation)
- Connection pooling + parallel GIF conversion for speed

## Install

```bash
git clone https://github.com/KianaMei/arca-done-skills.git ~/arca-done-skills
cd ~/arca-done-skills

# Linux / macOS
./install.sh

# Windows
install.bat
```

That's it. No manual configuration needed.

## Usage

In your AI coding assistant:

```
/arca https://arca.live/e/48022
```

With a custom Chinese name:

```
/arca https://arca.live/e/38391 诡术妄想使徒表情包D1
```

## Requirements

- Python 3.10+
- Chrome / Chromium browser

## Optional: Auto-login

For pages that require login:

```bash
export ARCA_USERNAME="your_username"
export ARCA_PASSWORD="your_password"
```

## License

MIT

---
description: "Download arca.live emoticon packs (images + animated GIFs), auto-convert MP4 to GIF, translate Korean titles to Chinese"
---

Download emoticon packs from arca.live.

Usage: /arca <url> [Chinese name]

Examples:
- /arca https://arca.live/e/48022
- /arca https://arca.live/e/38391 诡术妄想使徒表情包D1

Arguments: $ARGUMENTS

## Steps

1. Parse the first argument as the arca.live URL. Remaining arguments (if any) are the user-provided Chinese name.

2. Locate the scraper directory. Check in order (use the first one that contains `arca_scraper_dp.py`):
   - `{{SCRAPER_DIR}}`
   - The current working directory
   If not found, tell the user to re-run the install script.

3. If a Chinese name was provided, pass it as the third CLI argument. Run the scraper (timeout 10 minutes):
   ```bash
   # With Chinese name:
   cd "<scraper_dir>" && python arca_scraper_dp.py "<url>" "downloads" "<chinese_name>"

   # Without Chinese name (translate after):
   cd "<scraper_dir>" && python arca_scraper_dp.py "<url>" "downloads"
   ```
   Note: a Chromium window will pop up for Cloudflare verification.

4. After scraping completes, find the newly created directory under `<scraper_dir>/downloads/`.

5. If no Chinese name was provided in step 1, translate and rename:
   - YOU translate the Korean title to Chinese, then rename: `<korean_title>_<your_chinese_translation>`
   - Translation guidelines:
     - Game names: use the commonly known Chinese name (e.g. 트릭컬=诡术妄想, 블루아카이브=蔚蓝档案, 원신=原神, 명일방주=明日方舟)
     - 콘/이모티콘 = 表情包
     - 사도 = 使徒, 리메이크 = 重制, 리마스터 = 重置版
     - Character names: transliterate to Chinese or keep original
   - Use `mv` to rename the directory

6. Count the results (use `ls` to list files):
   - Count `.gif` files (converted from video)
   - Count `.png`, `.jpg`, `.webp` files (static images)

7. Report:
   - Final directory path
   - File counts (X animated GIFs, Y static images)
   - Translation breakdown (each Korean word -> Chinese meaning)

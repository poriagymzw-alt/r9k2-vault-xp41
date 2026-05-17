#!/usr/bin/env bash
set -euo pipefail

if ! command -v yt-dlp >/dev/null 2>&1; then
  echo "[error] yt-dlp nasb nist."
  echo "Run: bash scripts/setup-local.sh"
  exit 1
fi

sed '/^[[:space:]]*#/d; /^[[:space:]]*$/d' urls.txt | sort -u > clean_urls.txt

if [ ! -s clean_urls.txt ]; then
  echo "[error] urls.txt khali ast."
  exit 1
fi

yt-dlp \
  --batch-file clean_urls.txt \
  --simulate \
  --skip-download \
  --no-playlist \
  --no-color \
  --newline \
  --print "%(extractor)s | %(id)s | %(title)s | %(duration_string|unknown)s"

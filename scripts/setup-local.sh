#!/usr/bin/env bash
set -euo pipefail

sudo apt-get update
sudo apt-get install -y ffmpeg ca-certificates curl

python -m pip install --upgrade pip
python -m pip install --upgrade yt-dlp

echo "yt-dlp version:"
yt-dlp --version

echo "ffmpeg version:"
ffmpeg -version | head -n 1

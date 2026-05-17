# Strong No-Login Public Video Downloader

This repository uses GitHub Actions to download public allowed videos and return them as temporary artifacts.

## Important

- No login
- No cookies
- No session
- No geo-bypass
- No video push to repository
- Only public videos you own or have permission to archive

## Usage

Go to:

Actions -> strong-no-login-public-video-downloader -> Run workflow

Then fill:

- url: public video URL
- quality: 720 or 480 recommended
- artifact_name: downloaded-video
- keep_days: 1

After the workflow finishes:

Run page -> Artifacts -> download artifact

## Optional urls.txt

You can also put URLs in `urls.txt`, one URL per line.

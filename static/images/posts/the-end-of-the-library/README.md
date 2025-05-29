# Social Card Image

To create a social card image from the anime sunshine GIF:

1. Open https://t.gifs.bsky.app/SoL4eCQ5skEAAAP3/anime-sunshine.webm in your browser
2. Pause at a good frame (the sunshine moment)
3. Take a screenshot
4. Crop/resize to 1200x630 pixels
5. Save as social-card.png in this directory

Or use ffmpeg:
```bash
ffmpeg -i "https://t.gifs.bsky.app/SoL4eCQ5skEAAAP3/anime-sunshine.webm" -vframes 1 -vf scale=1200:630 social-card.png
```
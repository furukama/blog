#!/bin/bash
# Script to extract first frame from video for social card

VIDEO_URL="https://t.gifs.bsky.app/SoL4eCQ5skEAAAP3/anime-sunshine.webm"
OUTPUT_DIR="static/images/posts/the-end-of-the-library"
OUTPUT_FILE="$OUTPUT_DIR/anime-sunshine-frame.jpg"

# Create directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Download and extract first frame using ffmpeg
echo "Downloading video and extracting frame..."
ffmpeg -i "$VIDEO_URL" -vframes 1 -q:v 2 "$OUTPUT_FILE"

if [ -f "$OUTPUT_FILE" ]; then
    echo "✅ Frame extracted successfully to: $OUTPUT_FILE"
    echo "Update your post's images field to use: /images/posts/the-end-of-the-library/anime-sunshine-frame.jpg"
else
    echo "❌ Failed to extract frame"
fi
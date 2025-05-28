# Bluesky Integration Setup

## Required GitHub Secrets

### Bluesky
1. `BLUESKY_HANDLE` - Your Bluesky handle (e.g., `furukama.bsky.social`)
2. `BLUESKY_PASSWORD` - Your Bluesky app password (not your main password!)

## Setting up Bluesky App Password

1. Go to https://bsky.app/settings/app-passwords
2. Click "Add App Password"
3. Give it a name like "Blog Auto-Post"
4. Copy the generated password
5. Use this as `BLUESKY_PASSWORD` in GitHub Secrets

## Features

### Cross-posting
- Automatically posts new blog posts to Bluesky
- Adds Bluesky post URI to metadata for comment tracking

### Comments System
- Fetches replies from Bluesky every 30 minutes
- Displays them as comments on your blog posts
- Provides "Reply on Bluesky" button

## Testing

1. **Test posting**: 
   - Go to Actions → "Post to Bluesky"
   - Run with test_mode = true

2. **Test comment fetching**:
   - Go to Actions → "Fetch Bluesky Comments"
   - Run workflow manually

## How Comments Work

1. When you publish a post, it's automatically shared on Bluesky
2. The post metadata is updated with the Bluesky post URI
3. Every 30 minutes, a GitHub Action fetches replies from Bluesky
4. Replies are saved to `data/comments.json`
5. Your blog posts load and display these comments

## Limitations

- Comments update every 30 minutes (GitHub Actions schedule)
- Bluesky comments include the full thread hierarchy
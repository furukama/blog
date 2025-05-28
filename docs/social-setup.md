# Social Media Integration Setup

## Required GitHub Secrets

### Twitter/X (OAuth 1.0a)
1. `TWITTER_API_KEY` - Your app's API Key (Consumer Key)
2. `TWITTER_API_SECRET` - Your app's API Key Secret (Consumer Secret)
3. `TWITTER_ACCESS_TOKEN` - Access Token (OAuth 1.0a)
4. `TWITTER_ACCESS_TOKEN_SECRET` - Access Token Secret (OAuth 1.0a)

**Important**: These are found in your Twitter app's "Keys and tokens" page under:
- "Consumer Keys" section (API Key & Secret)
- "Authentication Tokens" section (Access Token & Secret)

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
- Automatically posts new blog posts to both Twitter/X and Bluesky
- Adds social media IDs to post metadata for comment tracking

### Comments System
- Fetches replies from both platforms every 30 minutes
- Displays them as comments on your blog posts
- Provides "Reply on X" and "Reply on Bluesky" buttons

## Testing

1. **Test cross-posting**: 
   - Go to Actions → "Cross-post to Social Media"
   - Run with test_mode = true

2. **Test comment fetching**:
   - Go to Actions → "Fetch Social Media Comments"
   - Run workflow manually

## How Comments Work

1. When you publish a post, it's automatically shared on both platforms
2. The post metadata is updated with the social media post IDs
3. Every 30 minutes, a GitHub Action fetches replies from both platforms
4. Replies are saved to `data/comments.json`
5. Your blog posts load and display these comments

## Limitations

- Comments update every 30 minutes (GitHub Actions schedule)
- Twitter API has rate limits on fetching replies
- Bluesky comments include the full thread hierarchy
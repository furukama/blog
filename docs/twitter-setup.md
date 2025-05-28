# Twitter API v2 Setup Guide

## Required Secrets

Add these to your GitHub repository secrets:

1. `TWITTER_CLIENT_ID` - Your app's Client ID (OAuth 2.0)
2. `TWITTER_CLIENT_SECRET` - Your app's Client Secret (OAuth 2.0)
3. `TWITTER_ACCESS_TOKEN` - User access token
4. `TWITTER_ACCESS_TOKEN_SECRET` - User access token secret

## Getting the Credentials

### 1. Create/Update your Twitter App

1. Go to https://developer.twitter.com/en/portal/dashboard
2. Select your app (or create one)
3. Go to "User authentication settings"
4. Set up OAuth 2.0:
   - App permissions: **Read and write**
   - Type of App: **Web App, Automated App or Bot**
   - Callback URL: `https://localhost:3000/callback` (or any URL)
   - Website URL: `https://furukama.com`

### 2. Get OAuth 2.0 Credentials

1. In your app settings, go to "Keys and tokens"
2. Under OAuth 2.0, copy:
   - Client ID → `TWITTER_CLIENT_ID`
   - Client Secret → `TWITTER_CLIENT_SECRET`

### 3. Generate User Access Tokens

1. Still in "Keys and tokens"
2. Under "User Access Tokens", click "Generate"
3. Copy:
   - Access Token → `TWITTER_ACCESS_TOKEN`
   - Access Token Secret → `TWITTER_ACCESS_TOKEN_SECRET`

### 4. Verify App Permissions

Make sure your app has:
- OAuth 2.0 enabled
- Read and Write permissions
- User authentication set up

## Testing

1. Go to Actions → "Tweet New Posts (API v2)"
2. Click "Run workflow"
3. Leave "Test with existing post" as true
4. Run and check the logs

## Troubleshooting

- **403 Forbidden**: Check app permissions are "Read and write"
- **401 Unauthorized**: Regenerate your tokens
- **429 Too Many Requests**: You've hit rate limits
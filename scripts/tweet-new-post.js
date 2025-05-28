// Install: npm install twitter-api-v2 gray-matter
const { TwitterApi } = require('twitter-api-v2');
const matter = require('gray-matter');
const fs = require('fs');

// Initialize Twitter client
const client = new TwitterApi({
  appKey: process.env.TWITTER_API_KEY,
  appSecret: process.env.TWITTER_API_SECRET,
  accessToken: process.env.TWITTER_ACCESS_TOKEN,
  accessSecret: process.env.TWITTER_ACCESS_SECRET,
});

async function tweetNewPost(filepath) {
  const content = fs.readFileSync(filepath, 'utf8');
  const { data } = matter(content);
  
  const tweet = `New blog post: ${data.title}\n\n${data.description}\n\nhttps://furukama.com/blog/${filepath.split('/').pop().replace('.md', '')}/`;
  
  try {
    await client.v2.tweet(tweet);
    console.log('Tweet posted successfully!');
  } catch (error) {
    console.error('Error posting tweet:', error);
  }
}

// Usage: node tweet-new-post.js content/blog/my-new-post.md
if (process.argv[2]) {
  tweetNewPost(process.argv[2]);
}
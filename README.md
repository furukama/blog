# Furukama's Blog

A personal blog built with Hugo and the Bear Cub theme.

## Quick Start

```bash
# Install Hugo (macOS)
brew install hugo

# Run development server
hugo server -D

# Build the site
hugo --gc --minify
```

## Structure

- `content/` - Blog posts and pages
- `static/` - Static assets (images, js, etc.)
- `layouts/` - Custom templates
- `themes/bearcub/` - Hugo theme

## Adding Content

### Create a new blog post

```bash
hugo new posts/my-new-post.md
```

Edit the generated file in `content/posts/my-new-post.md`:

```markdown
---
title: "My New Post"
date: 2025-05-29T10:00:00+02:00
draft: false
description: "A brief description of your post"
tags: ["tag1", "tag2"]
categories: ["category"]
images: ["/images/posts/my-new-post/social-card.png"]
---

Your post content here...
```

### Create a new note

```bash
hugo new notes/my-note.md
```

Notes are shorter, informal posts. Structure is similar to blog posts.

### Update the Now page

Edit `content/now.md` directly. This page shows what you're currently focused on.

### Update the Reading list

Edit `content/reading.md`. Use the custom book shortcodes:

```markdown
{{< book 
    title="Book Title" 
    author="Author Name"
    goodreads="https://www.goodreads.com/book/show/..."
    cover="https://images-na.ssl-images-amazon.com/..."
    rating="4.28"
    notes="Your thoughts on the book"
>}}

{{< booklist 
    title="Book Title" 
    author="Author Name" 
    date="May 2025" 
    url="https://www.goodreads.com/book/show/..." 
    rating="4.18" 
>}}
```

### Adding images

1. Place images in `static/images/`
2. For post-specific images: `static/images/posts/post-name/`
3. Reference in markdown: `![Alt text](/images/posts/post-name/image.png)`

### Social cards

Social cards are automatically generated if `generateSocialCard = true` in `hugo.toml`. To use a custom image instead, add to front matter:

```yaml
images: ["/images/posts/my-post/custom-social-card.png"]
```

### Multilingual content

The site supports English (default) and German. To create German content:

```bash
# German blog post
hugo new de/posts/mein-neuer-beitrag.md

# German note
hugo new de/notes/meine-notiz.md
```

Language switcher will appear automatically when content exists in multiple languages.

## Features

- Dynamic social card generation
- Bluesky comments integration
- Reading list with book covers
- Responsive design
- Automatic cross-posting to Bluesky

## Deploy

The site is configured for deployment at https://furukama.com/

## License

Content is copyrighted. Theme is under its own license.
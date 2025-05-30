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
# Create with today's date automatically
hugo new notes/$(date +%Y-%m-%d)-my-note-title.md

# Or create with any filename and rename later
hugo new notes/my-note.md
./scripts/rename-note.sh content/notes/my-note.md
```

Notes are shorter, informal posts. The filename should follow YYYY-MM-DD-slug format.

**Automatic renaming**: Use the provided script to rename any note to the correct format:
```bash
./scripts/rename-note.sh content/notes/my-note.md
# Renames to: content/notes/2025-05-29-my-note.md (using date from frontmatter)
```

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
3. For note-specific images: `static/images/notes/note-name/`
4. Reference in markdown: `![Alt text](/images/posts/post-name/image.png)`

#### Advanced image usage

**Centered image with caption:**
```markdown
{{< figure src="/images/notes/note-name/image.png" 
    alt="Image description" 
    caption="Your caption text here" 
    width="400" 
    class="center" >}}
```

**Image with link:**
```markdown
{{< figure src="/images/posts/post-name/image.png" 
    alt="Image description" 
    link="https://example.com" 
    target="_blank" >}}
```

**Image with link and caption, centered:**
```markdown
{{< figure src="/images/notes/note-name/image.png" 
    alt="Image description" 
    caption="Click to visit the site" 
    link="https://example.com" 
    target="_blank"
    width="500"
    class="center" >}}
```

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

### Bluesky integration

The site has two-way Bluesky integration:

1. **Blog to Bluesky**: New blog posts are automatically shared to Bluesky
2. **Bluesky to Notes**: Bluesky posts (that don't contain furukama.com links) are automatically imported as notes every 6 hours

To set up Bluesky integration:
1. Add `BLUESKY_HANDLE` and `BLUESKY_PASSWORD` as GitHub secrets
2. (Optional) Add `PAT` as a GitHub secret with repo write permissions for the import workflow
3. The workflows will run automatically

## Features

- Dynamic social card generation
- Bluesky comments integration
- Reading list with book covers
- Responsive design
- Automatic cross-posting to Bluesky
- Automatic import of Bluesky posts as notes (non-blog posts)

## Deploy

The site is configured for deployment at https://furukama.com/

## License

Content is copyrighted. Theme is under its own license.
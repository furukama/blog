#!/bin/bash
# Script to update reading page social image based on first book cover

# Extract the first book cover URL
COVER_URL=$(grep -m1 'cover="' content/reading.md | sed -n 's/.*cover="\([^"]*\)".*/\1/p')

if [ -n "$COVER_URL" ]; then
    echo "Updating reading page social image to: $COVER_URL"
    
    # Update the images field in the front matter
    sed -i '' '/^images:/s|images:.*|images: ["'"$COVER_URL"'"]|' content/reading.md
    
    # Add the file to the commit if it was modified
    if ! git diff --quiet content/reading.md; then
        git add content/reading.md
        echo "✅ Reading page social image updated"
    else
        echo "✅ No changes needed"
    fi
else
    echo "⚠️  No book cover found in reading.md"
fi
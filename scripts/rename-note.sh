#!/bin/bash
# ABOUTME: Script to rename note files to YYYY-MM-DD-slug format
# ABOUTME: Extracts date from frontmatter and creates proper slug

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <note-file.md>"
    exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found"
    exit 1
fi

# Extract date from frontmatter
DATE=$(grep -m 1 "^date:" "$FILE" | sed 's/date:[ ]*//;s/["'\'']//g' | cut -d'T' -f1)

if [ -z "$DATE" ]; then
    echo "Error: No date found in frontmatter"
    exit 1
fi

# Get the directory and base filename
DIR=$(dirname "$FILE")
BASENAME=$(basename "$FILE" .md)

# Create slug from current filename (remove date if already present)
SLUG=$(echo "$BASENAME" | sed 's/^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}-//g' | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# New filename
NEWNAME="$DIR/$DATE-$SLUG.md"

if [ "$FILE" = "$NEWNAME" ]; then
    echo "File already has correct format"
    exit 0
fi

# Rename the file
mv "$FILE" "$NEWNAME"
echo "Renamed: $FILE -> $NEWNAME"
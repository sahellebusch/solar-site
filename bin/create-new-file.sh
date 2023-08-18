#!/bin/bash

# Check if a file path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path="docs/$1"

# Validate that the file has a ".md" extension
if [[ ! "$1" =~ \.md$ ]]; then
    echo "Error: The provided file is not a markdown file (.md)"
    exit 1
fi

# Extract the directory path from the provided file path
dir_path=$(dirname "$file_path")

# Create the directory path if it doesn't exist
if [ ! -d "$dir_path" ]; then
    mkdir -p "$dir_path"
    echo "Created directory: $dir_path"
fi

# Create a new markdown file
touch "$file_path"

# Add content to the markdown file
echo "# New Markdown File" > "$file_path"
echo "" >> "$file_path"
echo "This is a new markdown file." >> "$file_path"
echo "" >> "$file_path"
echo "{{ git_page_authors }}" >> "$file_path"

echo "Markdown file created at: $file_path"

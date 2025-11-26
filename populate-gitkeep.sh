#!/bin/bash
# Populate .gitkeep files into all empty directories in the repository
# Excludes .git directory to avoid interfering with git internals

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

find "$REPO_ROOT" -type d -empty -not -path "$REPO_ROOT/.git/*" | while read -r dir; do
    touch "$dir/.gitkeep"
    echo "Created: $dir/.gitkeep"
done

echo "Done."

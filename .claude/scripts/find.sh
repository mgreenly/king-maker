#!/bin/bash
# /find command - Search for text across markdown files
# Usage: /find search-phrase

if [ -z "$1" ]; then
    echo "Error: Please provide a search phrase"
    echo "Usage: /find search-phrase"
    exit 1
fi

SEARCH_TERM="$*"

echo "Searching for: $SEARCH_TERM"
echo ""

# Use ripgrep to find matches with context
# -i = case insensitive
# --type md = only markdown files
# -n = show line numbers
# --no-heading = don't group by file
# --color=never = no color codes
if command -v rg &> /dev/null; then
    RESULTS=$(rg -i --type md -n --no-heading --color=never "$SEARCH_TERM" 2>/dev/null)

    if [ -z "$RESULTS" ]; then
        echo "No matches found for '$SEARCH_TERM'"
        exit 0
    fi

    echo "Found '$SEARCH_TERM' in:"
    echo ""

    # Format output as: filename           ...fragment...
    echo "$RESULTS" | while IFS=: read -r file line content; do
        # Truncate content if too long
        if [ ${#content} -gt 80 ]; then
            content="${content:0:80}..."
        fi
        printf -- "- %-20s ...%s\n" "$file" "$content"
    done
else
    # Fallback to grep if ripgrep not available
    RESULTS=$(grep -rin "$SEARCH_TERM" --include="*.md" . 2>/dev/null)

    if [ -z "$RESULTS" ]; then
        echo "No matches found for '$SEARCH_TERM'"
        exit 0
    fi

    echo "Found '$SEARCH_TERM' in:"
    echo ""

    # Format output as: filename           ...fragment...
    echo "$RESULTS" | while IFS=: read -r file line content; do
        # Remove leading ./ from filename
        file="${file#./}"
        # Truncate content if too long
        if [ ${#content} -gt 80 ]; then
            content="${content:0:80}..."
        fi
        printf -- "- %-20s ...%s\n" "$file" "$content"
    done
fi

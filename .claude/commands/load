#!/bin/bash
# /load command - Load a skill from the library into context
# Usage: /load skillname

if [ -z "$1" ]; then
    echo "Error: Please provide a skill name"
    echo "Usage: /load skillname"
    exit 1
fi

SKILL_NAME="$1"
SKILL_FILE=".claude/library/${SKILL_NAME}/SKILL.md"

if [ ! -f "$SKILL_FILE" ]; then
    echo "Error: Skill '$SKILL_NAME' not found at $SKILL_FILE"
    echo ""
    echo "Available skills:"
    if [ -d ".claude/library" ]; then
        ls -1 .claude/library/ 2>/dev/null || echo "  (no skills available)"
    else
        echo "  (library directory doesn't exist)"
    fi
    exit 1
fi

# Output the skill content to load it into context
cat "$SKILL_FILE"

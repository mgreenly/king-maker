---
description: Load a skill from the .claude/library directory into context
---

Load the skill "$1" from the `.claude/library/$1/SKILL.md` file.

Use the Read tool to read `.claude/library/$1/SKILL.md`.

If the file exists, display its contents so it can be referenced in this conversation.

If the file doesn't exist, use the Bash tool to list available skills: `ls -1 .claude/library/`

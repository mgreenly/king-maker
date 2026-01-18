# Load Skill

Load a skill from the `.claude/library/` directory into the current context.

## Usage

When the user invokes `/load <skill-name>`, load the specified skill from `.claude/library/<skill-name>/SKILL.md` into the conversation context.

## Instructions

1. Use the Read tool to read `.claude/library/$1/SKILL.md`
2. If the file exists, the skill content will be loaded into context for reference
3. If the file doesn't exist, list available skills using: `ls -1 .claude/library/`
4. Inform the user whether the skill was loaded successfully or not

## Example

User: `/load jj`

You should:
- Use Read tool with file_path: `.claude/library/jj/SKILL.md`
- If successful, the skill instructions are now available in context
- Confirm to the user that the skill has been loaded

## Available Skills

Skills are stored in `.claude/library/{skill-name}/SKILL.md` format.

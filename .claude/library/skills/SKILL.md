# Skills Library Structure

## Important: Library-Based Skills Only

When the user refers to "skills", they mean **skills stored in the `.claude/library/` directory**.

## The `/load` Command

The `/load` command exists to load skills on-demand from `.claude/library/*/SKILL.md`.

Usage: `/load {skill-name}` loads `.claude/library/{skill-name}/SKILL.md` into context.

## Directory Structure

### ✅ Correct: `.claude/library/`
- Skills are stored in `.claude/library/{skill-name}/SKILL.md`
- These skills are loaded on-demand using the `/load` command
- This approach keeps context clean and only loads what's needed
- Example: `.claude/library/jj/SKILL.md`

### ❌ Do NOT use: `.claude/skills/`
- The `.claude/skills/` directory structure should **never** be used
- Skills in that location are pre-read automatically
- We do not want automatic pre-reading of skills
- We prefer explicit, on-demand loading via `/load`

## Loading Skills

Use the `/load` command to load skills into context:
```bash
/load jj       # Loads .claude/library/jj/SKILL.md
/load skills   # Loads this file
```

## Creating New Skills

When creating new skills:
1. Create directory: `.claude/library/{skill-name}/`
2. Create file: `.claude/library/{skill-name}/SKILL.md`
3. Document the skill's purpose and usage
4. Load it when needed with `/load {skill-name}`

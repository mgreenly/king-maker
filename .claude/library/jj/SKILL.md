# Jujutsu (jj) Version Control

This project uses **Jujutsu (jj)** for version control instead of traditional git commands.

## Important Notes

### Commits
When the user asks to "make a commit" or "create a commit", they mean:
- Create a **permanent commit** using `jj commit`
- Do NOT just describe the working-copy commit
- The working-copy is automatic in jj, but the user wants explicit permanent commits

### Basic jj Workflow
- `jj status` - Show working-copy status
- `jj diff` - Show changes in working-copy
- `jj log` - Show commit history
- `jj commit -m "message"` - Create a permanent commit from working-copy changes
- `jj describe -m "message"` - Update the working-copy description (not what user typically wants)

### Key Differences from Git
- jj automatically tracks changes in a working-copy commit
- `jj commit` creates a new permanent commit and a new working-copy
- The working-copy is separate from permanent commits
- When user says "commit", they want a permanent commit via `jj commit`

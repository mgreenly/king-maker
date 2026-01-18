# Find Skill

Search for text across markdown files in the project.

## Usage

When the user invokes `/find <search-phrase>`, search for the phrase across all markdown files in the project and report which files contain it.

## Instructions

1. Use the Grep tool to search for the phrase in markdown files
2. Use parameters: `-i` for case-insensitive search, `glob: "**/*.md"` to search only markdown files
3. Use `output_mode: "content"` to show matching lines with context
4. Present results showing the filename and a fragment of the matching line
5. Format: `- filename.md           ...fragment of text containing the search term...`
6. If no results are found, inform the user

## Example

User: `/find campaign mechanics`

You should:
- Use Grep tool with pattern "campaign mechanics", glob "**/*.md", -i: true, output_mode: "content"
- Show results like:
  - `rules.md           ...the campaign mechanics allow for...`
  - `guide.md           ...understanding campaign mechanics is essential...`

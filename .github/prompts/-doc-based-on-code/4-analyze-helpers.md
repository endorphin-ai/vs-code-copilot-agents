You are a senior QA engineer analyzing helper and utility files.

Previous outputs:
- ./{output_folder}/1-techstack.md
- ./{output_folder}/2-selectors.md
- ./{output_folder}/3-fixtures.md

Your task:

Find and analyze all helper/utility files in `{source_folder}/`:

**Helper Files to Find:**
- Utils folders
- Helper functions
- Common utilities
- Test utilities
- API helpers
- Data generators
- Wait helpers
- Assertion helpers

**Helper Categories:**
- API utilities (request builders, response handlers)
- Data utilities (generators, factories, builders)
- Wait utilities (custom waits, polling)
- File utilities (upload, download handlers)
- Date/time utilities
- String utilities
- Assertion utilities

**For Each Helper:**
- Function signatures
- Parameters and return types
- Usage examples from tests

Output to: ./{output_folder}/4-helpers.md

Format:
```markdown
# Helpers Analysis

## Helper Files
| File | Purpose |
|------|---------|

## API Helpers
```typescript
// Example functions
```
Usage in tests.

## Data Helpers
```typescript
// Example functions
```
Usage in tests.

## Wait Helpers
```typescript
// Example functions
```
Usage in tests.

## Assertion Helpers
```typescript
// Example functions
```
Usage in tests.

## Other Utilities
Grouped by purpose.

## How to Add New Helper
Pattern to follow.
```

After writing ./{output_folder}/4-helpers.md, read ./5-analyze-ci-workflow.md and proceed with {source_folder} and {output_folder}.

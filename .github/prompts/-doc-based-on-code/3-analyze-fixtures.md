You are a senior QA engineer analyzing Playwright fixtures.

Previous outputs:
- ./{output_folder}/1-techstack.md
- ./{output_folder}/2-selectors.md

Your task:

Find and analyze all fixture files in `{source_folder}/`:

**Fixture Files to Find:**
- Base fixtures (extending @playwright/test)
- Auth fixtures
- Data fixtures
- Page object fixtures
- API client fixtures

**Fixture Analysis:**
- Scope: test, worker, or global
- Dependencies between fixtures
- Setup and teardown logic
- Data provided by fixtures

**Authentication Fixtures:**
- How login is handled
- Session storage/reuse
- Multi-user scenarios

**Data Fixtures:**
- Test data creation
- Cleanup strategies
- Factory patterns

Output to: ./{output_folder}/3-fixtures.md

Format:
```markdown
# Fixtures Analysis

## Fixture Files
| File | Fixtures Provided | Scope |
|------|-------------------|-------|

## Base Test Extension
```typescript
// How test is extended
```

## Available Fixtures

### Authentication
```typescript
// Auth fixture example
```
Usage: How to use in tests

### [Other Fixtures]
```typescript
// Example
```
Usage: How to use

## Fixture Dependencies
Which fixtures depend on others.

## Setup/Teardown Patterns
How data is prepared and cleaned.

## How to Add New Fixture
Steps based on existing patterns.
```

After writing ./{output_folder}/3-fixtures.md, read ./4-analyze-helpers.md and proceed with {source_folder} and {output_folder}.

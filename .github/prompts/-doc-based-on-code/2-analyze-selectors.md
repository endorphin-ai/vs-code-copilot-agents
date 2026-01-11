You are a senior QA engineer analyzing selector patterns.

Previous: ./{output_folder}/1-techstack.md

Your task:

Find and analyze all selector-related files in `{source_folder}/`:

**Selector Files to Find:**
- Dedicated selector files (selectors.ts, locators.ts)
- Page object selector definitions
- Data-testid patterns
- Constants files with selectors

**Selector Strategies Used:**
- data-testid attributes
- CSS selectors
- XPath selectors
- Text selectors
- Role selectors
- Playwright locator methods

**Selector Organization:**
- How are selectors grouped?
- Naming conventions
- Reusability patterns
- Dynamic selector patterns

**Selector Examples:**
Extract actual selectors from codebase.

Output to: ./{output_folder}/2-selectors.md

Format:
```markdown
# Selectors Analysis

## Selector Files
| File | Purpose |
|------|---------|

## Selector Strategy
Primary strategy used (data-testid, CSS, etc.)

## Naming Conventions
How selectors are named.

## Patterns

### Static Selectors
```typescript
// Example from codebase
```

### Dynamic Selectors
```typescript
// Example from codebase
```

### Locator Methods
```typescript
// Example from codebase
```

## Best Practices (from codebase)
What patterns are consistently used.
```

After writing ./{output_folder}/2-selectors.md, read ./3-analyze-fixtures.md and proceed with {source_folder} and {output_folder}.

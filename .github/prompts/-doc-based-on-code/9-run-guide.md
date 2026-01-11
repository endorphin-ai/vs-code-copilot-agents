You are a senior QA engineer creating the final test run guide.

Synthesize ALL previous outputs:
- ./{output_folder}/1-techstack.md
- ./{output_folder}/2-selectors.md
- ./{output_folder}/3-fixtures.md
- ./{output_folder}/4-helpers.md
- ./{output_folder}/5-ci-workflow.md
- ./{output_folder}/6-categorization.json
- ./{output_folder}/7-patterns.json
- ./{output_folder}/8-styleguides/*.md

Output to: {final_output_file}

Format:
```markdown
# Test Framework Guide

## Quick Start

### Prerequisites
- Node version
- Dependencies to install

### Installation
```bash
npm install
npx playwright install
```

### Run Tests
```bash
# All tests
npm run test

# E2E only
npm run test:e2e

# API only
npm run test:api

# Specific file
npx playwright test path/to/test.spec.ts

# With UI mode
npx playwright test --ui

# Debug mode
npx playwright test --debug
```

### Run by Tag
```bash
npx playwright test --grep @smoke
npx playwright test --grep @regression
```

### Run by Browser
```bash
npx playwright test --project=chromium
npx playwright test --project=firefox
```

## Project Structure
```
tests/
├── e2e/           # E2E tests
├── api/           # API tests
├── fixtures/      # Test fixtures
├── pages/         # Page objects
├── helpers/       # Utilities
└── selectors/     # Selectors
```

## Available Fixtures
| Fixture | Purpose | Scope |
|---------|---------|-------|

## Available Helpers
| Helper | Purpose | Import |
|--------|---------|--------|

## Selectors Strategy
How selectors are organized.

## Writing New Tests

### New E2E Test
1. Create file: `tests/e2e/{feature}.spec.ts`
2. Import fixtures
3. Follow pattern:
```typescript
// Template
```

### New API Test
1. Create file: `tests/api/{endpoint}.spec.ts`
2. Import API client
3. Follow pattern:
```typescript
// Template
```

### New Page Object
1. Create file: `tests/pages/{Page}Page.ts`
2. Extend base page
3. Follow pattern:
```typescript
// Template
```

## CI/CD

### How Tests Run in CI
Summary from CI analysis.

### Run Locally Like CI
```bash
# Command to match CI
```

## Debugging

### Debug Single Test
```bash
npx playwright test path/to/test.spec.ts --debug
```

### View Trace
```bash
npx playwright show-trace trace.zip
```

### Generate Report
```bash
npx playwright show-report
```

## Environment Configuration
| Variable | Purpose | Default |
|----------|---------|---------|

## Troubleshooting

### Common Issues
| Issue | Solution |
|-------|----------|

## Quick Reference

### Commands
| Command | Description |
|---------|-------------|

### Tags
| Tag | Purpose |
|-----|---------|

### Fixtures
| Fixture | Use When |
|---------|----------|
```

This is the final step. Ensure completeness.
Guide should enable anyone to run and write tests.

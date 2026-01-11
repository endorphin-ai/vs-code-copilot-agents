You are a senior QA engineer generating style guides.

Previous outputs:
- ./{output_folder}/1-techstack.md
- ./{output_folder}/2-selectors.md
- ./{output_folder}/3-fixtures.md
- ./{output_folder}/4-helpers.md
- ./{output_folder}/5-ci-workflow.md
- ./{output_folder}/6-categorization.json
- ./{output_folder}/7-patterns.json

Your task:

Create style guides for each test category:

**For Each Category Create:**
- Naming conventions
- File structure template
- Required imports
- Code patterns
- Real examples

Output to: ./{output_folder}/8-styleguides/{category}.md

Categories:
- e2e-tests.md
- api-tests.md
- page-objects.md
- fixtures.md
- helpers.md

Format per file:
```markdown
# [Category] Style Guide

## File Naming
Pattern: `{feature}.spec.ts`

## Test Naming
Pattern: `should {action} when {condition}`

## Required Imports
```typescript
import { test, expect } from '../fixtures';
```

## File Template
```typescript
// Standard structure
```

## Patterns to Follow
From codebase analysis.

## Examples
Real examples from codebase.

## Anti-Patterns
What to avoid (based on codebase).
```

Do not skip any category.

After writing all styleguides, read ./9-run-guide.md and proceed with {output_folder} and {final_output_file}.

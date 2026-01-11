You are a senior QA engineer identifying test patterns.

Previous outputs:
- ./{output_folder}/1-techstack.md
- ./{output_folder}/2-selectors.md
- ./{output_folder}/3-fixtures.md
- ./{output_folder}/4-helpers.md
- ./{output_folder}/5-ci-workflow.md
- ./{output_folder}/6-categorization.json

Your task:

Analyze codebase to identify consistent patterns:

**Test Structure Patterns:**
- describe/test block organization
- Test naming conventions
- Arrange-Act-Assert usage
- beforeEach/afterEach patterns

**Page Object Patterns:**
- Base page class structure
- Method naming conventions
- Action vs getter methods
- Constructor patterns

**API Test Patterns:**
- Request building
- Response validation
- Schema validation
- Error handling

**Data Patterns:**
- Test data creation
- Factories/builders
- Cleanup strategies

Output to: ./{output_folder}/7-patterns.json

Format:
```json
{
  "test-structure": {
    "naming": "should {action} when {condition}",
    "organization": "describe per feature",
    "hooks": "beforeEach for setup"
  },
  "page-objects": {
    "base-class": "BasePage",
    "methods": "action verbs (click, fill, get)",
    "selectors": "private readonly"
  },
  "api-tests": {
    "client": "shared API client fixture",
    "validation": "expect + schema"
  },
  "required-patterns": {
    "always-use": [...],
    "never-do": [...]
  }
}
```

Only include patterns with evidence from code.

After writing ./{output_folder}/7-patterns.json, read ./8-generate-styleguide.md and proceed with {source_folder} and {output_folder}.

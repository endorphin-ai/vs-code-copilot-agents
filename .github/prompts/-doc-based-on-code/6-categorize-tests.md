You are a senior QA engineer categorizing test files.

Previous outputs:
- ./{output_folder}/1-techstack.md
- ./{output_folder}/2-selectors.md
- ./{output_folder}/3-fixtures.md
- ./{output_folder}/4-helpers.md
- ./{output_folder}/5-ci-workflow.md

Your task:

Visit every test file in `{source_folder}/` and categorize:

**Test Categories:**
- `e2e-tests`: Browser-based end-to-end tests
- `api-tests`: API/REST endpoint tests
- `page-objects`: Page Object Model classes
- `components`: Component/unit tests
- `visual`: Visual regression tests
- `smoke`: Smoke test suite
- `regression`: Full regression suite

**For Each File Note:**
- File path
- Test count
- Tags/annotations used
- Features covered

Output to: ./{output_folder}/6-categorization.json

Format:
```json
{
  "e2e-tests": [
    {
      "path": "./tests/e2e/login.spec.ts",
      "tests": 5,
      "tags": ["@smoke", "@auth"],
      "features": ["login", "logout"]
    }
  ],
  "api-tests": [...],
  "page-objects": [...],
  "summary": {
    "total_files": 50,
    "total_tests": 200,
    "by_category": {
      "e2e-tests": 30,
      "api-tests": 20
    }
  }
}
```

Do not skip files. Accuracy is mission-critical.

After writing ./{output_folder}/6-categorization.json, read ./7-identify-patterns.md and proceed with {source_folder} and {output_folder}.

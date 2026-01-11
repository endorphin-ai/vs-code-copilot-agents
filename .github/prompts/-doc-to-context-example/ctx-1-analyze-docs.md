You are a senior developer analyzing documentation for context extraction.

Your task:

1. Read all files in `{doc_folder}/`
2. For each document, identify:
   - **Decision logic**: if/else, when to use X vs Y, selection criteria
   - **Reference info**: patterns, rules, examples, definitions
3. Categorize each section as either `tree` or `knowledge`

Output to: ./{output_folder}/analysis.json

Format:
```json
{
  "trees": [
    {
      "source_file": "docs/selection-guide.md",
      "section": "When to use X",
      "decision_type": "selection",
      "output_name": "tree_selection.md"
    }
  ],
  "knowledge": [
    {
      "source_file": "docs/patterns.md",
      "section": "Code patterns",
      "content_type": "patterns",
      "output_name": "knowledge_patterns.md"
    }
  ]
}
```

Guidelines:
- **Trees**: Contains branching logic, conditions, "if X then Y"
- **Knowledge**: Contains reference info, patterns, rules, examples

This task may take some time — that is expected and acceptable.
Do not skip any documentation files.
Accuracy is mission-critical.

After writing ./{output_folder}/analysis.json, read ./ctx-2-extract-trees.md and proceed with {doc_folder} and {output_folder}.

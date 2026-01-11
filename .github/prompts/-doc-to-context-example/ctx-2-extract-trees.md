You are a senior developer creating decision trees from documentation.

Analysis is defined in: ./{output_folder}/analysis.json (read this first)

Reference: Read `COPILOT_AGENTS_GUIDE.md` section on Decision Trees for syntax.

Your task:

For each item in `analysis.json → trees[]`:

1. Read the source section from `{doc_folder}/`
2. Extract the decision logic
3. Convert to tree format
4. Write to `./{output_folder}/trees/{output_name}`

Tree format:
```markdown
# [Decision Name] Decision Tree

[Description of what this tree decides]

Input condition:
├─ "condition_a", "keyword_a"
│   → result_a
├─ "condition_b", "keyword_b"
│   → result_b
└─ Unknown
    → default or ask user

**Output:** `variableName` variable
```

Requirements:
- One tree file per decision type
- Use descriptive branch labels
- Include fallback for unknown inputs
- Define output variable name

Do not skip any trees from analysis.json.
Accuracy is mission-critical.

After writing all trees to ./{output_folder}/trees/, read ./ctx-3-extract-knowledge.md and proceed with {doc_folder} and {output_folder}.

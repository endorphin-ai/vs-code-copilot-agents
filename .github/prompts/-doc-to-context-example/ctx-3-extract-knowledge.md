You are a senior developer creating knowledge files from documentation.

Analysis is defined in: ./{output_folder}/analysis.json (read this first)
Trees created in: ./{output_folder}/trees/

Reference: Read `COPILOT_AGENTS_GUIDE.md` for knowledge file patterns.

Your task:

For each item in `analysis.json → knowledge[]`:

1. Read the source section from `{doc_folder}/`
2. Extract the reference information
3. Convert to knowledge format
4. Write to `./{output_folder}/knowledge/{output_name}`

Knowledge format by type:

**For patterns:**
```markdown
# [Topic] Patterns

## Pattern Name

Description of when to use.

```code
example code here
```

## Key Rules
- Rule 1
- Rule 2
```

**For anti-patterns:**
```markdown
# Anti-Patterns

## Patterns to Identify

1. **Pattern Name** - Look for: "symptoms"
   - Should be: "correct approach"

2. **Pattern Name** - Look for: "symptoms"
   - Should be: "correct approach"

## How to Check
1. Step one
2. Step two
```

**For reference lists:**
```markdown
# [Topic] Reference

## Available Options

| Option | Description | When to Use |
|--------|-------------|-------------|
| option_a | desc | condition |
| option_b | desc | condition |
```

Requirements:
- One knowledge file per topic
- Use actual content from docs, don't invent
- Keep focused and scannable
- Include examples where available

Do not skip any knowledge items from analysis.json.
This is the final step. Ensure completeness.

Summary output:
After creating all files, list what was created:
- Trees: list of files in {output_folder}/trees/
- Knowledge: list of files in {output_folder}/knowledge/

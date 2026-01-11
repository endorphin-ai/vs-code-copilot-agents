# Prompt Chain Guide

> Sequential prompt execution for complex multi-step tasks.

---

## 1. WHAT IS A PROMPT CHAIN

A prompt chain is a technique where multiple prompts execute in sequence, each building on the outputs of previous steps.

**Use Cases:**

-   Documentation generation from codebase
-   Multi-phase analysis workflows
-   Code transformation pipelines
-   Automated report generation

**Architecture:**

```
Magic Prompt (Orchestrator)
    ├── 1-step.md → output-1
    ├── 2-step.md → output-2 (uses output-1)
    ├── 3-step.md → output-3 (uses output-1, output-2)
    └── N-step.md → final-output (uses all)
```

---

## 2. TWO FILE TYPES

| Type             | Purpose                                   | Example           |
| ---------------- | ----------------------------------------- | ----------------- |
| **Magic Prompt** | Orchestrator - sets params, defines order | `magic-prompt.md` |
| **Sub-Prompt**   | Single step - does one task               | `1-analyze.md`    |

---

## 3. VARIABLE SYNTAX

**Declaration (in magic prompt):**

```
{output_folder} = .results
{final_output_file} = ./output/final.md
```

**Usage (in sub-prompts):**

```
Write your findings to ./{output_folder}/1-analysis.md
```

**Variable naming:**

-   Use `snake_case` with curly braces: `{variable_name}`
-   Common variables: `{output_folder}`, `{final_output_file}`, `{domain}`

---

## 4. MAGIC PROMPT TEMPLATE

```markdown
{output_folder} = .results
{final_output_file} = ./output/final.md

You are executing a multi-step prompt chain.

1. Navigate to the prompts folder
2. Review all prompt files WITHOUT executing them
3. Confirm you understand the full chain sequence
4. Execute prompts in numerical order:
    - 1-first-step.md
    - 2-second-step.md
    - 3-third-step.md
5. For each step, output results to `{output_folder}/`
    - Mirror the step filename: `1-first-step.md` → `{output_folder}/1-first-step.md`

Stop ONLY when:

-   All steps are complete
-   A full `{final_output_file}` can be generated
```

### Magic Prompt Components

| Component       | Purpose                    | Required    |
| --------------- | -------------------------- | ----------- |
| Parameters      | Define variables           | Yes         |
| Preview phase   | "Review WITHOUT executing" | Recommended |
| Execution order | Numbered list              | Yes         |
| Output mapping  | Step → output file         | Yes         |
| Stop condition  | When to end                | Yes         |

---

## 5. SUB-PROMPT TEMPLATE

```markdown
You are a senior developer responsible for [task].

The project is defined in: ./{output_folder}/1-previous-step.md (read this file first)

Your task:

1. [Specific action]
2. [Specific action]
3. Output results to: ./{output_folder}/N-this-step.md

This task may take some time — that is expected and acceptable.
Do not skip files or produce partial results.
Accuracy and completeness are mission-critical.

After writing ./{output_folder}/N-this-step.md, read the contents of ./N+1-next-step.md and proceed accordingly with {output_folder} as the output-folder.
```

### Sub-Prompt Components

| Component          | Purpose                         | Required            |
| ------------------ | ------------------------------- | ------------------- |
| Role               | "You are a senior developer..." | Yes                 |
| Input refs         | Previous step outputs           | Yes (except step 1) |
| Task steps         | What to do                      | Yes                 |
| Quality guardrails | "Do not skip..."                | Recommended         |
| Output file        | Where to write                  | Yes                 |
| Chain command      | Link to next step               | Yes (except last)   |

---

## 6. CHAINING COMMANDS

### Link to Next Step

```markdown
After writing ./{output_folder}/2-categorize.md, read the contents of ./3-analyze.md and proceed accordingly with {output_folder} as the output-folder.
```

### Reference Previous Output

```markdown
You've been informed that:

-   Tech stack: ./{output_folder}/1-techstack.md (read this first)
-   File categories: ./{output_folder}/2-categorization.json
```

### Chain Command Patterns

| Pattern       | Syntax                                              |
| ------------- | --------------------------------------------------- |
| Next step     | `read ./N-next.md and proceed accordingly`          |
| With variable | `proceed with {output_folder} as the output-folder` |
| Read previous | `defined as: ./{output_folder}/N-previous.md`       |

---

## 7. QUALITY GUARDRAILS

Include these in sub-prompts to ensure thorough execution:

```markdown
This task may take some time — that is expected and acceptable.

Do not skip files or produce partial results due to time or complexity.
Accuracy and completeness are mission-critical.

You are permitted to take as long as necessary to:

-   Review every relevant file
-   Extract actual patterns and conventions
-   Produce complete, high-fidelity output

Do not optimize for speed or brevity.
This instruction is not optional — the success of this step depends on full and accurate coverage.
```

---

## 8. OUTPUT MANAGEMENT

### Folder Structure

```
prompts/                    # Prompt files
    magic-prompt.md
    1-analyze.md
    2-categorize.md
    3-generate.md

{output_folder}/            # Generated outputs
    1-analyze.md
    2-categorization.json
    3-domains/
        domain-a.md
        domain-b.md
    final-output.md
```

### File Naming

| Step Output  | Pattern                                  |
| ------------ | ---------------------------------------- |
| Markdown     | `./{output_folder}/N-stepname.md`        |
| JSON         | `./{output_folder}/N-stepname.json`      |
| Subdirectory | `./{output_folder}/N-stepname/{item}.md` |
| Final        | `{final_output_file}`                    |

### Mirror Naming

Sub-prompt filename → Output filename:

```
1-determine-techstack.md → {output_folder}/1-techstack.md
2-categorize-files.md → {output_folder}/2-file-categorization.json
```

---

## 9. EXAMPLE CHAIN

### magic-prompt.md

```markdown
{output_folder} = .analysis
{final_output_file} = ./CODEBASE_DOCS.md

You are generating documentation using a prompt chain.

1. Review all prompts in this folder WITHOUT executing
2. Execute in order:
    - 1-analyze-structure.md
    - 2-document-components.md
    - 3-generate-docs.md
3. Output each step to {output_folder}/

Stop when {final_output_file} is complete.
```

### 1-analyze-structure.md

```markdown
You are a senior developer analyzing codebase structure.

Your task:

1. Identify all directories and their purposes
2. List key files in each directory
3. Output to ./{output_folder}/1-structure.md

After writing, read ./2-document-components.md and proceed with {output_folder}.
```

### 2-document-components.md

```markdown
You are documenting components.

Structure is defined in: ./{output_folder}/1-structure.md (read first)

Your task:

1. For each component directory found
2. Document purpose, props, usage
3. Output to ./{output_folder}/2-components.md

Do not skip any components. Accuracy is mission-critical.

After writing, read ./3-generate-docs.md and proceed with {output_folder}.
```

### 3-generate-docs.md

```markdown
You are generating final documentation.

Inputs:

-   ./{output_folder}/1-structure.md
-   ./{output_folder}/2-components.md

Your task:

1. Synthesize all previous outputs
2. Generate comprehensive documentation
3. Write to {final_output_file}

This is the final step. Ensure completeness.
```

---

## 10. QUICK REFERENCE

### Variable Syntax

```
{variable_name}           # Declaration and usage
./{output_folder}/        # Path with variable
{final_output_file}       # Final output path
```

### Chain Commands

```markdown
# Link to next

After writing ..., read ./N-next.md and proceed accordingly with {output_folder}

# Reference previous

defined as: ./{output_folder}/N-previous.md (read this first)

# Quality guardrail

Do not skip files. Accuracy is mission-critical.
```

### File Patterns

```
prompts/
    magic-prompt.md       # Orchestrator
    1-step.md             # First sub-prompt
    2-step.md             # Second sub-prompt
    N-step.md             # Nth sub-prompt

{output_folder}/
    1-output.md           # Step 1 output
    2-output.json         # Step 2 output
    N-subdirectory/       # Step N outputs
```

### Checklist

**Magic Prompt:**

-   [ ] Parameters defined at top
-   [ ] Preview phase included
-   [ ] Execution order numbered
-   [ ] Output mapping specified
-   [ ] Stop condition defined

**Sub-Prompt:**

-   [ ] Role assigned
-   [ ] Previous outputs referenced (if not step 1)
-   [ ] Task steps clear
-   [ ] Output file specified
-   [ ] Chain command to next (if not last step)
-   [ ] Quality guardrails included

---

Made with ❤️ at [endorphinai.dev](https://endorphinai.dev/)

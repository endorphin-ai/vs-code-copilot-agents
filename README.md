# GitHub Copilot Custom Agents

Templates and guides for building custom agents and prompt chains.

## Structure

```
.github/
├── agents/                      # Agent files
│   ├── example-orchestrator     # Simple orchestrator
│   ├── vscode-orchestrator      # VS Code with handoffs
│   ├── copilot-orchestrator     # Copilot with runSubagent
│   ├── example-validator        # Validator sub-agent
│   └── example-transformer      # Transformer sub-agent
│
└── prompts/                     # Prompt chain examples
    ├── magic-prompt.md          # Simple: project summary
    ├── 1-analyze-structure.md
    ├── 2-generate-summary.md
    │
    ├── docs-to-context.md       # Docs → context converter
    ├── ctx-1-analyze-docs.md
    ├── ctx-2-extract-trees.md
    ├── ctx-3-extract-knowledge.md
    │
    └── -doc-based-on-code/      # Playwright test framework docs
        ├── magic-prompt.md
        ├── 1-analyze-techstack.md
        ├── 2-analyze-selectors.md
        ├── 3-analyze-fixtures.md
        ├── 4-analyze-helpers.md
        ├── 5-analyze-ci-workflow.md
        ├── 6-categorize-tests.md
        ├── 7-identify-patterns.md
        ├── 8-generate-styleguide.md
        └── 9-run-guide.md

.copilot-utils/context/          # Context files
    trees/                       # Decision trees
    knowledge/                   # Reference knowledge

COPILOT_AGENTS_GUIDE.md          # Agent guide
PROMPT_CHAIN_GUIDE.md            # Prompt chain guide
```

## Guides

| Guide | Purpose |
|-------|---------|
| `COPILOT_AGENTS_GUIDE.md` | Building custom agents for GitHub Copilot |
| `PROMPT_CHAIN_GUIDE.md` | Sequential prompt execution technique |

## Prompt Chain Examples

| Chain | Purpose |
|-------|---------|
| `magic-prompt.md` | Generate project summary |
| `docs-to-context.md` | Convert docs → trees + knowledge |
| `-doc-based-on-code/` | Generate Playwright test framework docs |

## Quick Start

**For Agents:**
1. Read `COPILOT_AGENTS_GUIDE.md`
2. Copy template from `.github/agents/`
3. Create trees and knowledge in `.copilot-utils/`

**For Prompt Chains:**
1. Read `PROMPT_CHAIN_GUIDE.md`
2. Copy example from `.github/prompts/`
3. Set variables and run magic prompt

---

Made with ❤️ at [endorphinai.dev](https://endorphinai.dev/)

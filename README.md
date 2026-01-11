# GitHub Copilot Custom Agents

Templates and guides for building custom agents and prompt chains.

## Structure

```
.github/agents/              # Agent files (workflow definitions)
    example-orchestrator     # Simple orchestrator pattern
    vscode-orchestrator      # VS Code with handoffs syntax
    copilot-orchestrator     # GitHub Copilot with runSubagent
    example-validator        # Validator sub-agent
    example-transformer      # Transformer sub-agent

.copilot-utils/context/      # Context files
    trees/                   # Decision trees (if/else logic)
    knowledge/               # Reference knowledge

COPILOT_AGENTS_GUIDE.md      # Agent syntax & patterns guide
PROMPT_CHAIN_GUIDE.md        # Prompt chain technique guide
```

## Guides

| Guide | Purpose |
|-------|---------|
| `COPILOT_AGENTS_GUIDE.md` | Building custom agents for GitHub Copilot |
| `PROMPT_CHAIN_GUIDE.md` | Sequential prompt execution technique |

## Quick Start

**For Agents:**
1. Read `COPILOT_AGENTS_GUIDE.md`
2. Copy template from `.github/agents/`
3. Create trees and knowledge in `.copilot-utils/`

**For Prompt Chains:**
1. Read `PROMPT_CHAIN_GUIDE.md`
2. Create magic prompt + numbered sub-prompts

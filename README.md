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

.copilot-utils/context/          # Context files
    trees/                       # Decision trees
    knowledge/                   # Reference knowledge

COPILOT_AGENTS_GUIDE.md          # Agent guide

```

## Guides

| Guide                                                     | Purpose                                                                           |
| --------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `COPILOT_AGENTS_GUIDE.md`                                 | Building custom agents for GitHub Copilot                                         |
| [VIDEO](https://youtu.be/rcFvAMWv7Yk?si=c2auQfOdQ7XKtqFz) | How to Build a Custom AI Agent for GitHub Copilot (Context Engineering Explained) |

## Quick Start

**For Agents:**

1. Read `COPILOT_AGENTS_GUIDE.md`
2. Copy template from `.github/agents/`
3. Create trees and knowledge in `.copilot-utils/`

---

Made with ❤️ at [endorphinai.dev](https://endorphinai.dev/)

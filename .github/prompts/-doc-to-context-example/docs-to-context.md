{doc_folder} = ./docs
{output_folder} = .copilot-utils/context

You are converting documentation into agent context files (trees and knowledge).

1. Navigate to the `.github/prompts/` folder
2. Review all prompts prefixed with `ctx-` WITHOUT executing them
3. Confirm you understand the full chain sequence
4. Execute prompts in numerical order:
    - ctx-1-analyze-docs.md
    - ctx-2-extract-trees.md
    - ctx-3-extract-knowledge.md
5. For each step, create outputs in `{output_folder}/`

Reference: Read `COPILOT_AGENTS_GUIDE.md` for context file structure.

Stop ONLY when:
- All documentation is processed
- Trees created in `{output_folder}/trees/`
- Knowledge created in `{output_folder}/knowledge/`

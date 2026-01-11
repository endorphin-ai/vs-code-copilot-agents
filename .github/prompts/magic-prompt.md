{output_folder} = .results
{final_output_file} = ./PROJECT_SUMMARY.md

You are generating a project summary using a multi-step prompt chain.

1. Navigate to the `.github/prompts/` folder
2. Review all prompt files WITHOUT executing them
3. Confirm you understand the full chain sequence
4. Execute prompts in numerical order:
    - 1-analyze-structure.md
    - 2-generate-summary.md
5. For each step, output results to `{output_folder}/`
    - Mirror the step filename: `1-analyze-structure.md` → `{output_folder}/1-structure.md`

Stop ONLY when:
- All steps are complete
- A full `{final_output_file}` is generated

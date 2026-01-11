You are a senior QA engineer analyzing the test framework tech stack.

Your task:

Scan repository root and `{source_folder}/` to identify:

**Package Analysis (package.json):**
- Playwright version
- TypeScript version
- Node version requirements
- All test-related dependencies
- Scripts available (test, e2e, api, etc.)

**Configuration Files:**
- playwright.config.ts settings
- tsconfig.json configuration
- .env files and environment variables
- Any custom config files

**Project Structure:**
- Root folder layout
- Test folder organization
- Shared resources location

**Browser Configuration:**
- Which browsers are configured
- Device emulation settings
- Viewport configurations

Output to: ./{output_folder}/1-techstack.md

Format:
```markdown
# Tech Stack Analysis

## Dependencies
| Package | Version | Purpose |
|---------|---------|---------|

## Scripts
| Command | Description |
|---------|-------------|
| npm run test | ... |

## Playwright Config
Key settings from playwright.config.ts

## TypeScript Config
Key settings from tsconfig.json

## Environment Variables
| Variable | Purpose |
|----------|---------|

## Browser Setup
Configured browsers and settings
```

After writing ./{output_folder}/1-techstack.md, read ./2-analyze-selectors.md and proceed with {source_folder} and {output_folder}.

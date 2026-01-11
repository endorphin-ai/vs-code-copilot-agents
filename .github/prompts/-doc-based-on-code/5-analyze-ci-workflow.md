You are a senior QA engineer analyzing CI/CD workflow configuration.

Previous outputs:
- ./{output_folder}/1-techstack.md
- ./{output_folder}/2-selectors.md
- ./{output_folder}/3-fixtures.md
- ./{output_folder}/4-helpers.md

Your task:

Find and analyze CI/CD configuration files:

**Files to Find:**
- .github/workflows/*.yml (GitHub Actions)
- .gitlab-ci.yml (GitLab CI)
- Jenkinsfile
- azure-pipelines.yml
- bitbucket-pipelines.yml
- Any CI config files

**Workflow Analysis:**
- When tests run (push, PR, schedule)
- Test jobs and their configuration
- Parallel execution setup
- Sharding configuration
- Browser matrix

**Environment Setup:**
- How Node/dependencies installed
- Environment variables used
- Secrets management
- Cache configuration

**Test Execution:**
- Commands used to run tests
- Test filtering (tags, grep)
- Retry configuration
- Timeout settings

**Reporting:**
- Test reports generated
- Artifacts saved
- Failure notifications

Output to: ./{output_folder}/5-ci-workflow.md

Format:
```markdown
# CI/CD Workflow Analysis

## Workflow Files
| File | Trigger | Purpose |
|------|---------|---------|

## Pipeline Structure
```yaml
# Simplified workflow structure
```

## Test Jobs

### [Job Name]
- Trigger: when it runs
- Browser: which browser
- Command: test command used

## Environment Setup
How environment is prepared.

## Parallel Execution
How tests are parallelized/sharded.

## Reporting
What reports are generated and where.

## Secrets/Variables
| Variable | Purpose |
|----------|---------|

## How to Run Locally Like CI
Commands to replicate CI locally.
```

After writing ./{output_folder}/5-ci-workflow.md, read ./6-categorize-tests.md and proceed with {source_folder} and {output_folder}.

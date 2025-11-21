# github-workflow-sandbox

A sandbox repository for testing GitHub Actions workflows.

## Repository Structure

- **src/** - Source code directory
- **.github/workflows/** - GitHub Actions workflow definitions

## Branches

This repository uses the following branch structure:

- **main** - Main production branch
- **develop** - Development integration branch
- **feature/test1** - Feature branch for testing feature workflows
- **release/test1** - Release branch for testing release workflows
- **hotfix/test1** - Hotfix branch for testing hotfix workflows

## Setup

To set up all branches, run:

```bash
./setup-branches.sh
```

Or refer to [BRANCH_SETUP.md](BRANCH_SETUP.md) for manual setup instructions.

Commit #2 to get squashed
# Branch Setup Instructions

This repository is set up with the following branch structure for GitHub workflow sandbox testing:

## Required Branches

The following branches should be created in the repository:

1. **main** - Main production branch
2. **develop** - Development integration branch
3. **feature/test1** - Feature branch for testing feature workflows
4. **release/test1** - Release branch for testing release workflows
5. **hotfix/test1** - Hotfix branch for testing hotfix workflows

## How to Create Branches

If these branches don't exist yet, you can create them using the following commands:

```bash
# Create and push main branch
git checkout -b main
git push origin main

# Create and push develop branch
git checkout -b develop
git push origin develop

# Create and push feature/test1 branch
git checkout -b feature/test1
git push origin feature/test1

# Create and push release/test1 branch
git checkout -b release/test1
git push origin release/test1

# Create and push hotfix/test1 branch
git checkout -b hotfix/test1
git push origin hotfix/test1
```

## Branch Purpose

These branches follow a git-flow style branching model and can be used to test various GitHub Actions workflows triggered by different branch patterns.

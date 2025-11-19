#!/bin/bash

# Script to set up all required branches for the GitHub workflow sandbox

set -e

echo "Setting up branches for GitHub workflow sandbox..."

# Array of branches to create
branches=("main" "develop" "feature/test1" "release/test1" "hotfix/test1")

# Get current branch
current_branch=$(git rev-parse --abbrev-ref HEAD)
echo "Current branch: $current_branch"

# Create and push each branch
for branch in "${branches[@]}"; do
    echo "Creating branch: $branch"
    
    # Check if branch exists locally
    if git show-ref --verify --quiet refs/heads/$branch; then
        echo "  Branch $branch already exists locally"
    else
        git branch $branch
        echo "  Created branch $branch locally"
    fi
    
    # Try to push to remote
    if git push origin $branch 2>/dev/null; then
        echo "  Pushed branch $branch to remote"
    else
        echo "  Note: Could not push $branch to remote (may already exist or need manual push)"
    fi
done

echo ""
echo "Branch setup complete!"
echo "Local branches created:"
git branch

echo ""
echo "To verify remote branches, run: git ls-remote --heads origin"

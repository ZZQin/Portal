#!/bin/bash
# Push to GitHub script
# Run this after creating your GitHub repository

echo "Enter your GitHub username:"
read USERNAME

echo "Enter your repository name (e.g., portal-website):"
read REPO_NAME

# Add remote
git remote add origin "https://github.com/$USERNAME/$REPO_NAME.git"

# Rename branch to main (if needed)
git branch -M main

# Push
git push -u origin main

echo "✅ Successfully pushed to https://github.com/$USERNAME/$REPO_NAME"


#!/bin/bash
# Complete setup script for GitHub and GitHub Pages

echo "=========================================="
echo "  PORTAL Website - GitHub Setup"
echo "=========================================="
echo ""
echo "Step 1: Make sure you have created an empty repository on GitHub"
echo "   URL: https://github.com/new"
echo ""
echo "Step 2: Enter your GitHub details:"
echo ""

read -p "GitHub Username: " USERNAME
read -p "Repository Name (e.g., portal-website): " REPO_NAME

echo ""
echo "Step 3: Adding remote and pushing..."

# Add remote
git remote add origin "https://github.com/$USERNAME/$REPO_NAME.git" 2>/dev/null || git remote set-url origin "https://github.com/$USERNAME/$REPO_NAME.git"

# Push
git branch -M main
git push -u origin main

echo ""
echo "✅ Code pushed successfully!"
echo ""
echo "=========================================="
echo "  Enable GitHub Pages (Choose Option)"
echo "=========================================="
echo ""
echo "Option A - Automatic (requires gh CLI):"
echo "   gh repo edit \"$USERNAME/$REPO_NAME\" --enable-pages --pages-branch main"
echo ""
echo "Option B - Manual (via Web):"
echo "   1. Go to: https://github.com/$USERNAME/$REPO_NAME/settings/pages"
echo "   2. Under \"Source\", select \"GitHub Actions\""
echo "   3. The workflow will automatically deploy your site"
echo ""
echo "Your site will be live at:"
echo "   https://$USERNAME.github.io/$REPO_NAME"
echo ""


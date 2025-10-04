#!/bin/bash

# 33514SEC - GitHub Pages Deployment Script
# Simple TTP by n3m351d4

echo "🚀 Deploying 33514SEC to GitHub Pages..."

# Check if remote exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "📡 Adding GitHub remote..."
    git remote add origin https://github.com/n3m351d4/33514SEC.git
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin main

echo "✅ Deployment complete!"
echo "🌐 Your site will be available at: https://n3m351d4.github.io/33514SEC/"
echo "⏱️  It may take a few minutes to deploy on GitHub Pages"
echo ""
echo "📋 Next steps:"
echo "1. Go to https://github.com/n3m351d4/33514SEC/settings/pages"
echo "2. Source: Deploy from a branch"
echo "3. Branch: main"
echo "4. Folder: / (root)"
echo "5. Click Save"
echo ""
echo "Simple TTP by n3m351d4"

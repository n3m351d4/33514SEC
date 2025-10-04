# 🚀 Deployment Instructions

## GitHub Pages Setup

### 1. Create GitHub Repository
1. Go to [GitHub](https://github.com) and create a new repository
2. Name it `Sitevisualizations` (or any name you prefer)
3. Make it public for GitHub Pages
4. Don't initialize with README (we already have one)

### 2. Push to GitHub
```bash
# Add remote origin (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/Sitevisualizations.git

# Push to GitHub
git push -u origin main
```

### 3. Enable GitHub Pages
1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section
4. Under **Source**, select **Deploy from a branch**
5. Select **main** branch and **/ (root)** folder
6. Click **Save**

### 4. Access Your Site
Your site will be available at:
```
https://YOUR_USERNAME.github.io/Sitevisualizations/
```

## Local Development

### Option 1: Python HTTP Server
```bash
cd /Users/n3m351d4/Documents/Sitevisualizations
python -m http.server 8000
```
Visit: `http://localhost:8000`

### Option 2: Node.js Serve
```bash
cd /Users/n3m351d4/Documents/Sitevisualizations
npx serve .
```

### Option 3: Live Server (VS Code)
1. Install "Live Server" extension in VS Code
2. Right-click on `index.html`
3. Select "Open with Live Server"

## Custom Domain (Optional)

If you want to use a custom domain:

1. Create a `CNAME` file in the root directory:
```bash
echo "yourdomain.com" > CNAME
```

2. Add the file to git:
```bash
git add CNAME
git commit -m "Add custom domain"
git push
```

3. Configure DNS settings with your domain provider

## Updates and Maintenance

### Adding New Visualizations
1. Create new HTML files in appropriate folders
2. Update `index.html` to include new visualizations
3. Commit and push changes:
```bash
git add .
git commit -m "Add new visualization: [name]"
git push
```

### Updating Existing Visualizations
1. Edit the HTML files
2. Test locally
3. Commit and push:
```bash
git add .
git commit -m "Update visualization: [name]"
git push
```

## Troubleshooting

### GitHub Pages Not Updating
- Wait 5-10 minutes for changes to propagate
- Check GitHub Actions tab for build status
- Ensure all files are committed and pushed

### Local Server Issues
- Try different ports: `python -m http.server 8080`
- Check if port is already in use
- Use `npx serve . -p 3000` for different port

### File Not Found Errors
- Check file paths are correct
- Ensure all files are committed to git
- Verify GitHub Pages is pointing to correct branch

## Security Considerations

- All visualizations are client-side only
- No sensitive data should be included
- Use HTTPS for custom domains
- Regularly update dependencies if any are added

---

**Happy Deploying! 🚀**

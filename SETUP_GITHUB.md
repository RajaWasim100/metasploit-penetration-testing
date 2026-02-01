# GitHub Repository Setup Guide

This guide will help you push this project to GitHub.

## Prerequisites

1. **GitHub Account**: Create one at [github.com](https://github.com) if you don't have one
2. **Git Installed**: Verify with `git --version`
3. **GitHub CLI (Optional)**: For easier setup, install [GitHub CLI](https://cli.github.com/)

## Method 1: Using GitHub CLI (Recommended)

### Step 1: Install GitHub CLI
```bash
# Windows (using winget)
winget install --id GitHub.cli

# Or download from: https://cli.github.com/
```

### Step 2: Authenticate
```bash
gh auth login
```

### Step 3: Create Repository and Push
```bash
cd "c:\Users\Raja\Downloads\Metasplotable project"

# Initialize git (if not already done)
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Metasploit Penetration Testing Project"

# Create repository on GitHub and push
gh repo create metasploit-penetration-testing --public --source=. --remote=origin --push
```

## Method 2: Manual Setup

### Step 1: Create Repository on GitHub

1. Go to [github.com/new](https://github.com/new)
2. Repository name: `metasploit-penetration-testing` (or your preferred name)
3. Description: "Comprehensive Metasploit Framework penetration testing project with advanced exploitation techniques"
4. Choose **Public** or **Private**
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

### Step 2: Initialize Git Locally

```bash
cd "c:\Users\Raja\Downloads\Metasplotable project"

# Initialize git repository
git init

# Add remote repository
git remote add origin https://github.com/RajaWasim100/metasploit-penetration-testing.git

# Or if using SSH:
# git remote add origin git@github.com:RajaWasim100/metasploit-penetration-testing.git
```

### Step 3: Configure Git (if not already done)

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Step 4: Add and Commit Files

```bash
# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Metasploit Penetration Testing Project

- Comprehensive README with project overview
- Organized documentation and methodology
- Screenshots demonstrating exploitation techniques
- Professional repository structure
- MIT License and contribution guidelines"
```

### Step 5: Push to GitHub

```bash
# Push to main branch
git branch -M main
git push -u origin main
```

## Method 3: Using GitHub Desktop

1. Download [GitHub Desktop](https://desktop.github.com/)
2. Sign in with your GitHub account
3. File → Add Local Repository
4. Select the project folder
5. Publish repository to GitHub

## Post-Setup Steps

### 1. Update README.md

After creating the repository, you may want to:
- Update author information with your full details
- Add your contact details (LinkedIn, email)
- Customize any other personal information

### 2. Add Repository Topics

On GitHub, go to your repository → Settings → Topics, and add:
- `metasploit`
- `penetration-testing`
- `cybersecurity`
- `ethical-hacking`
- `kali-linux`
- `exploitation`
- `security-research`

### 3. Add Repository Description

Use: "Comprehensive Metasploit Framework penetration testing project demonstrating advanced exploitation techniques, post-exploitation activities, and security assessment procedures."

### 4. Enable GitHub Pages (Optional)

For documentation hosting:
1. Go to Settings → Pages
2. Source: Deploy from a branch
3. Branch: `main` / `docs`
4. Save

## Troubleshooting

### Authentication Issues

If you encounter authentication problems:

```bash
# Use Personal Access Token instead of password
# Generate token at: https://github.com/settings/tokens
# Use token as password when prompted
```

### Large File Issues

If images are too large:
```bash
# Install Git LFS (Large File Storage)
git lfs install
git lfs track "*.png"
git add .gitattributes
```

### Push Rejected

If push is rejected:
```bash
# Pull first (if repository was initialized on GitHub)
git pull origin main --allow-unrelated-histories
# Then push again
git push -u origin main
```

## Next Steps

1. ✅ Repository created and pushed
2. ✅ Update README with your information
3. ✅ Add topics and description
4. ✅ Share your project!

## Support

If you encounter issues:
- Check [GitHub Docs](https://docs.github.com/)
- Review [Git Documentation](https://git-scm.com/doc)
- Open an issue in the repository

---

**Happy Coding! 🚀**

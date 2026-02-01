# GitHub Repository Setup Script
# This script helps you initialize git and push to GitHub

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Metasploit Project - GitHub Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
Write-Host "Checking Git installation..." -ForegroundColor Yellow
try {
    $gitVersion = git --version
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed!" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Or run: winget install --id Git.Git -e --source winget" -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Check if we're in the right directory
$currentDir = Get-Location
Write-Host "Current directory: $currentDir" -ForegroundColor Cyan
Write-Host ""

# Check if git is already initialized
if (Test-Path ".git") {
    Write-Host "Git repository already initialized." -ForegroundColor Yellow
    $continue = Read-Host "Do you want to continue? (y/n)"
    if ($continue -ne "y") {
        exit 0
    }
} else {
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
}

Write-Host ""

# Check GitHub CLI
Write-Host "Checking GitHub CLI installation..." -ForegroundColor Yellow
try {
    $ghVersion = gh --version
    Write-Host "✓ GitHub CLI is installed" -ForegroundColor Green
    $useGH = Read-Host "Do you want to use GitHub CLI to create the repository? (y/n)"
    
    if ($useGH -eq "y") {
        Write-Host ""
        Write-Host "Adding files to git..." -ForegroundColor Yellow
        git add .
        
        Write-Host "Creating initial commit..." -ForegroundColor Yellow
        git commit -m "Initial commit: Metasploit Penetration Testing Project"
        
        Write-Host ""
        Write-Host "Creating repository on GitHub..." -ForegroundColor Yellow
        Write-Host "Repository will be created at: https://github.com/RajaWasim100/metasploit-penetration-testing" -ForegroundColor Cyan
        $visibility = Read-Host "Make repository public? (y/n)"
        
        if ($visibility -eq "y") {
            gh repo create metasploit-penetration-testing --public --source=. --remote=origin --push
        } else {
            gh repo create metasploit-penetration-testing --private --source=. --remote=origin --push
        }
        
        Write-Host ""
        Write-Host "✓ Repository created and pushed to GitHub!" -ForegroundColor Green
        Write-Host "View your repository at: https://github.com/RajaWasim100/metasploit-penetration-testing" -ForegroundColor Cyan
        exit 0
    }
} catch {
    Write-Host "GitHub CLI is not installed. Using manual method..." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Manual Setup Instructions:" -ForegroundColor Cyan
Write-Host "1. Go to https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: metasploit-penetration-testing" -ForegroundColor White
Write-Host "3. Description: Comprehensive Metasploit Framework penetration testing project" -ForegroundColor White
Write-Host "4. Choose Public or Private" -ForegroundColor White
Write-Host "5. DO NOT initialize with README (we already have one)" -ForegroundColor White
Write-Host "6. Click 'Create repository'" -ForegroundColor White
Write-Host ""

$continue = Read-Host "Have you created the repository on GitHub? (y/n)"
if ($continue -ne "y") {
    Write-Host "Please create the repository first, then run this script again." -ForegroundColor Yellow
    exit 0
}

Write-Host ""
Write-Host "Adding files to git..." -ForegroundColor Yellow
git add .

Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Metasploit Penetration Testing Project

- Comprehensive README with project overview
- Organized documentation and methodology
- Screenshots demonstrating exploitation techniques
- Professional repository structure
- MIT License and contribution guidelines"

Write-Host ""
Write-Host "Setting up remote..." -ForegroundColor Yellow
git remote add origin https://github.com/RajaWasim100/metasploit-penetration-testing.git

Write-Host "Renaming branch to main..." -ForegroundColor Yellow
git branch -M main

Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You may be prompted for your GitHub credentials." -ForegroundColor Cyan
git push -u origin main

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "✓ Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Your repository is now live at:" -ForegroundColor Cyan
Write-Host "https://github.com/RajaWasim100/metasploit-penetration-testing" -ForegroundColor Yellow
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Add repository topics (metasploit, penetration-testing, cybersecurity)" -ForegroundColor White
Write-Host "2. Update your profile information in README.md if needed" -ForegroundColor White
Write-Host "3. Share your project!" -ForegroundColor White
Write-Host ""

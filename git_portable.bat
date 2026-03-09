@echo off
setlocal EnableDelayedExpansion
title Git Portable Universal Tool

echo =========================================
echo     Git Portable Universal Tool
echo =========================================
echo.

:: -------------------------------------------------
:: 1) Ensure we're inside a project folder
:: -------------------------------------------------
if not exist ".git" (
    echo Initializing new git repository...
    git init
    echo.
)

:: -------------------------------------------------
:: 2) Detect current branch
:: -------------------------------------------------
for /f "delims=" %%i in ('git branch --show-current 2^>nul') do set currentBranch=%%i
if not defined currentBranch (
    set currentBranch=main
    git checkout -b main >nul 2>nul
)

echo Current branch: %currentBranch%
echo.

:: -------------------------------------------------
:: 3) Show status
:: -------------------------------------------------
git status
echo.

:: -------------------------------------------------
:: 4) Add & Commit if changes exist
:: -------------------------------------------------
git add .

git diff --cached --quiet
if not %errorlevel%==0 (
    set "commitMsg="
    set /p "commitMsg=Enter commit message: "
    if not defined commitMsg (
        echo Commit message cannot be empty.
        pause
        exit /b
    )
    git commit -m "!commitMsg!"
) else (
    echo Nothing new to commit.
)

:: -------------------------------------------------
:: 5) Always reset remote safely (IMPORTANT)
:: -------------------------------------------------
git remote remove origin >nul 2>nul

set "repoURL="
set /p "repoURL=Enter GitHub repository URL: "
if not defined repoURL (
    echo Repository URL cannot be empty.
    pause
    exit /b
)

git remote add origin "!repoURL!"

:: -------------------------------------------------
:: 6) Push safely
:: -------------------------------------------------
echo.
echo Pushing to remote...
git push -u origin %currentBranch% --force-with-lease

if errorlevel 1 (
    echo.
    echo Trying safe pull + push...
    git pull origin %currentBranch% --allow-unrelated-histories --no-edit
    git push -u origin %currentBranch%
)

echo.
echo Done Successfully.
pause
exit /b

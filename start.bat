@echo off
title WebGenAI - Starting...
color 0B
cls
echo.
echo  ================================================
echo   WebGenAI - AI Website Builder
echo   Free, No Key Needed, Unlimited Generations
echo  ================================================
echo.

REM ── Check Node.js ─────────────────────────────────
where node >nul 2>nul
if %errorlevel% neq 0 (
    color 0C
    echo  ERROR: Node.js is NOT installed!
    echo.
    echo  Please do this:
    echo  1. Open Chrome or Edge browser
    echo  2. Go to: https://nodejs.org
    echo  3. Click the big green LTS button
    echo  4. Download and install it (click Next, Next, Finish)
    echo  5. Come back and double-click this file again
    echo.
    pause
    exit /b 1
)

echo  [OK] Node.js is installed!
echo.

REM ── Install packages first time ────────────────────
if not exist "node_modules" (
    echo  Installing packages (this only happens once, takes 1-2 minutes)...
    echo.
    call npm install
    if %errorlevel% neq 0 (
        color 0C
        echo.
        echo  ERROR: Package install failed.
        echo  Make sure you have internet connection and try again.
        pause
        exit /b 1
    )
    echo.
    echo  [OK] Packages installed!
    echo.
)

REM ── Create .env if missing ──────────────────────────
if not exist ".env" (
    if exist ".env.example" (
        copy ".env.example" ".env" >nul
        echo  [OK] Created .env file.
        echo  TIP: Open .env with Notepad to add free API keys for better results.
        echo.
    )
)

REM ── Start! ─────────────────────────────────────────
color 0A
echo  ================================================
echo.
echo   App is starting...
echo.
echo   Once you see "WebGenAI SaaS — Running!"
echo   open your browser and go to:
echo.
echo        http://localhost:3000
echo.
echo   Press Ctrl+C to stop the server anytime.
echo  ================================================
echo.

node backend/server.js

echo.
color 07
echo  App stopped.
pause

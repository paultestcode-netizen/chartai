@echo off
echo.
echo  ===================================
echo   ChartAI - Starting App...
echo  ===================================
echo.

:: Check if npx is available
where npx >nul 2>&1
if %errorlevel% neq 0 (
    echo  ERROR: Node.js is not installed.
    echo  Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo  Starting local server on http://localhost:4173
echo  Press Ctrl+C to stop the server.
echo.
npx -y serve . -p 4173 --single
pause

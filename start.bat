@echo off
REM HTML to PPTX Studio - Windows Startup Script

echo ===========================
echo HTML to PPTX Studio
echo ===========================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed
    echo Please install Python 3.8 or higher from python.org
    pause
    exit /b 1
)

echo Python found
echo.

REM Check if we're in the right directory
if not exist "backend\app.py" (
    echo Error: Please run this script from the html-to-pptx-studio directory
    pause
    exit /b 1
)

REM Install dependencies
echo Installing dependencies...
cd backend
pip install -r requirements.txt -q

REM Install Playwright browsers
echo Installing Playwright browsers (one-time setup)...
playwright install chromium

echo.
echo Setup complete!
echo.
echo Starting backend server...
start python app.py

echo.
echo ===========================
echo App is ready!
echo ===========================
echo.
echo Backend: http://localhost:5000
echo Frontend: Open frontend\index.html in your browser
echo.
echo Press any key to open the frontend...
pause >nul

REM Open frontend in default browser
start "" "frontend\index.html"

echo.
echo App is running! Close this window to stop the server.
pause
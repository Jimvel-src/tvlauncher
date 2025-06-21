@echo off
REM Change to the script's directory
cd /d "%~dp0"

REM Get local IP address
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4" ^| findstr /v "169.254"') do set IP=%%a
set IP=%IP:~1%

REM Start Python HTTP server on port 8000
start "" python -m http.server 8000

REM Wait a moment for the server to start
timeout /t 2 >nul

REM Open the default page in Firefox in fullscreen (kiosk) mode
start "" "firefox" "--kiosk" "http://%IP%:8000/custom.html"

echo.
echo Press Ctrl+C to close the server and exit.
pause >nul
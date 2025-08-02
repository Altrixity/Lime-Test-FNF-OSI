@echo off
chcp 65001 >nul

powershell -Command ^
"Write-Host '██╗░░░░░██╗███╗░░░███╗███████╗  ████████╗███████╗░██████╗████████╗░░░░░░███████╗███╗░░██╗███████╗' -ForegroundColor Green; ^
Write-Host '██║░░░░░██║████╗░████║██╔════╝  ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝░░░░░░██╔════╝████╗░██║██╔════╝' -ForegroundColor Green; ^
Write-Host '██║░░░░░██║██╔████╔██║█████╗░░  ░░░██║░░░█████╗░░╚█████╗░░░░██║░░░█████╗█████╗░░██╔██╗██║█████╗░░' -ForegroundColor Green; ^
Write-Host '██║░░░░░██║██║╚██╔╝██║██╔══╝░░  ░░░██║░░░██╔══╝░░░╚═══██╗░░░██║░░░╚════╝██╔══╝░░██║╚████║██╔══╝░░' -ForegroundColor Green; ^
Write-Host '███████╗██║██║░╚═╝░██║███████╗  ░░░██║░░░███████╗██████╔╝░░░██║░░░░░░░░░██║░░░░░██║░╚███║██║░░░░░' -ForegroundColor Green; ^
Write-Host '╚══════╝╚═╝╚═╝░░░░░╚═╝╚══════╝  ░░░╚═╝░░░╚══════╝╚═════╝░░░░╚═╝░░░░░░░░░╚═╝░░░░░╚═╝░░╚══╝╚═╝░░░░░' -ForegroundColor Green"

echo.
set /p folderGame=Enter FNF Psych Engine path to run: 
set "folderGame=%folderGame:"=%"
cd /d "%folderGame%" || (
    echo Invalid path. Exiting...
    pause
    exit /b
)

echo.
echo Press 1 to run "lime test windows"
echo Press 2 to run "lime test windows -debug"
echo Press 3 to run "lime build windows"
echo Press 4 to run "lime test html5"
echo Press 5 to run "lime build html5 -debug"
set /p choice=Your choice: 

if "%choice%"=="1" (
    powershell -Command "Write-Host 'Please Hold while it compiles XD' -ForegroundColor Red"
    lime test windows
) else if "%choice%"=="2" (
    powershell -Command "Write-Host 'Please Hold while it compiles XD with Debug Enabled' -ForegroundColor Yellow"
    lime test windows -debug
) else if "%choice%"=="3" (
    powershell -Command "Write-Host 'Please Hold while it compiles your build XD (It will be exported in the export folder!)' -ForegroundColor Green"
    lime build windows
) else if "%choice%"=="4" (
    powershell -Command "Write-Host 'Please Hold while it compiles your build XD ' -ForegroundColor Blue"
    lime test html5
) else if "%choice%"=="5" (
    powershell -Command "Write-Host 'Please Hold while it compiles your build XD (It will be exported in the export folder!)' -ForegroundColor Purple"
    lime test html5 -debug
) else (
    echo Invalid input. Nothing was run.
)

pause
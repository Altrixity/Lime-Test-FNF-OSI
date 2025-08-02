@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Altri\Downloads\LimeTest-FNF 2.exe
REM BFCPEICON=C:\Users\Altri\Downloads\LimeTest-10 (1).ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Lime Test-FNF
REM BFCPEVERDESC=Easily run Lime test for Psych Engine
REM BFCPEVERCOMPANY=Altrixity
REM BFCPEVERCOPYRIGHT=Nun LOL
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=30
REM BFCPEWINDOWWIDTH=120
REM BFCPEWTITLE=Lime Test-FNF (Non Admin)
REM BFCPEOPTIONEND
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
) else (
    echo Invalid input. Nothing was run.
)

pause
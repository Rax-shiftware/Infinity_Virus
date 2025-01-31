@echo off
:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: This script will uninstall the entire Infinity malware system from your computer.
:: Current directory: data/helpers/infinity/112.991.4.441/remox
:: then: data/helpers/infinity/112.991.4.441/
cd ..
timeout /t 1
:: then: data/helpers/infinity/ if cd ..
cd ..
timeout /t 1
:: then: data/helpers/ if cd ..
cd ..
timeout /t 1
timeout /t 10
:: removing the entire Infinity malware system from your computer
rmdir /s /q /f helpers
:: base
cd ..
timeout /t 30
rmdir /s /q /f data
echo Infinity malware has been successfully removed from your computer. use the command 'shutdown /r /t 0' to restart your computer.
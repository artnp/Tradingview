@echo off
chcp 65001 >nul
title GitHub Uploader - artnp/Tradingview
echo.
echo ========================================
echo   Uploading to artnp/Tradingview (main)
echo ========================================

powershell -NoProfile -ExecutionPolicy Bypass -File "D:\Github\github_upload.ps1" "%~dp0." "artnp/Tradingview"

if %ERRORLEVEL% equ 0 (
    echo.
    echo Upload complete!
) else (
    echo.
    echo Upload had errors.
)
echo.
exit /b

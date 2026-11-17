@echo off
chcp 65001 > nul
cd /d "%~dp0"

echo ========================================================
echo     Wgrywanie zmian na GitHub (Repozytorium Certy)
echo ========================================================
echo.

echo [1/3] Wysyłanie zmian na GitHub (git push origin main)...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo   ✓ SUKCES! Wszystkie zmiany są już na GitHubie!
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo   ✗ Wystąpił problem przy wysyłaniu. Sprawdź logi powyżej.
    echo ========================================================
)

echo.
pause

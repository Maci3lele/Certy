@echo off
chcp 65001 > nul
cd /d "%~dp0"

echo ========================================================
echo     Wgrywanie zmian na GitHub (Repozytorium Certy)
echo ========================================================
echo.

echo [1/3] Sprawdzanie zmienionych plików:
git status -s
echo.

set /p MSG="Wpisz opis commita (wciśnij ENTER dla domyślnego): "
if "%MSG%"=="" set MSG=Poprawa weryfikacji pytań wielokrotnego wyboru i oznaczeń odpowiedzi

echo.
echo [2/3] Dodawanie i commitowanie zmian...
git add -A
git commit -m "%MSG%"

echo.
echo [3/3] Wysyłanie na GitHub (git push origin main)...
git push origin main

echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   ✓ SUKCES! Wszystkie zmiany są już na GitHubie!
    echo ========================================================
) else (
    echo ========================================================
    echo   ✗ WYSTĄPIŁ BŁĄD podczas git push. Sprawdź logi powyżej.
    echo ========================================================
)

echo.
pause

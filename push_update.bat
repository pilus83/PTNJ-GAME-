@echo off
chcp 65001 >nul
echo ================================================
echo   PUSH KEMASKINI KE GITHUB ^& VERCEL
echo ================================================
echo.

cd /d "%~dp0"

echo [1/4] Semak perubahan...
git status
echo.

echo [2/4] Tambah semua fail baru/berubah...
git add .
echo.

set /p MSG=Masukkan mesej commit (contoh: ganti logo baru): 
if "%MSG%"=="" set MSG=kemaskini fail

echo.
echo [3/4] Simpan perubahan dengan mesej: %MSG%
git commit -m "%MSG%"
echo.

echo [4/4] Push ke GitHub...
git push origin main
echo.

echo ================================================
echo   SUBMODULE berjaya di-push!
echo   Sekarang kemaskini repo utama...
echo ================================================
echo.

cd /d "%~dp0.."
git add PTNJ-GAME-
git commit -m "kemaskini submodule: %MSG%"
git push origin main

echo.
echo ================================================
echo   SELESAI! Vercel akan deploy secara automatik.
echo ================================================
pause

@echo off
title JuegoSantaCruz - Servidor Local
echo ============================================
echo    JUEGO SANTA CRUZ - Iniciando servidor...
echo ============================================
echo.

:: Verificar si Python esta instalado
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Servidor iniciado en: http://localhost:8080
    echo Abriendo el juego en el navegador...
    echo.
    echo Para cerrar el servidor, cierra esta ventana.
    timeout /t 2 /nobreak >nul
    start http://localhost:8080
    python -m http.server 8080
) else (
    echo ERROR: Python no esta instalado.
    echo Por favor instala Python desde https://www.python.org
    pause
)

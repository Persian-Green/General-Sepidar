@echo off
echo  In the name of ALLAH
echo  --------------------
echo.
echo  Chose a System:
echo.
echo  [1] TOP
echo  [2] Tempo
echo  [3] Wistore
echo.
set /p number=

if %number% == 1 (
    netsh wlan connect name="Accounting"
    del "C:\Sepidar\user.config"
    copy "C:\MEGA\Code\Administration\Change Sepidar Connection\Files\Top Client\user.config" "C:\Sepidar\user.config" /Y
) else if %number% == 2 (
    netsh wlan connect name="wistore"
    copy "C:\MEGA\Code\Administration\Change Sepidar Connection\Files\Tempo Client\user.config" "C:\Sepidar\user.config" /Y
) else if %number% == 3 (
    netsh wlan connect name="wistore"
    copy "C:\MEGA\Code\Administration\Change Sepidar Connection\Files\Wistore Client\user.config" "C:\Sepidar\user.config" /Y
) else (
    echo The number is not 1, 2, or 3.
)

start C:\Sepidar\Shell.exe

pause
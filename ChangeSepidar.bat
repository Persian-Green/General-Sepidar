@echo off
echo  In the name of ALLAH
echo  --------------------
echo.
echo  Chose a System:
echo.
echo  [1] Tempo (Poiandegan)
echo  [2] Wistore (Shokouh)
echo.
set /p number=

:: Set paths (using short paths to avoid Unicode issues)
set "SEPIDAR=C:\App\Sepidar"
set "CONFIG=C:\App\Change Sepidar Connection"

:: Clean old files
del "C:\App\Sepidar\user.config"
del "C:\App\Sepidar\*.License"
del "C:\App\Sepidar\VersionLicense.cdx"

:: Copy new files based on selection
if %number% == 1 (
    xcopy "%CONFIG%\Files\Tempo Client\*.*" "%SEPIDAR%\" /Y /Q /E
) else if %number% == 2 (
    xcopy "%CONFIG%\Files\Wistore Client\*.*" "%SEPIDAR%\" /Y /Q /E
) else (
    echo The number is not 1 or 2.
    pause
)

:: Launch Sepidar
start "" "%SEPIDAR%\Shell.exe"
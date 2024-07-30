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

if %number% == 1 (
    del "C:\App\Sepidar\user.config"
    del "C:\App\Sepidar\0057230 (1).License"
    del "C:\App\Sepidar\0063452 (2).License"
    del "C:\App\Sepidar\VersionLicense.cdx"
    copy "C:\App\Change Sepidar Connection\Files\Tempo Client\user.config" "C:\App\Sepidar\user.config" /Y
    copy "C:\App\Change Sepidar Connection\Files\Tempo Client\0057230 (1).License" "C:\App\Sepidar\0057230 (1).License" /Y
    copy "C:\App\Change Sepidar Connection\Files\Tempo Client\VersionLicense.cdx" "C:\App\Sepidar\VersionLicense.cdx" /Y
) else if %number% == 2 (
    del "C:\App\Sepidar\user.config"
    del "C:\App\Sepidar\0057230 (1).License"
    del "C:\App\Sepidar\0063452 (2).License"
    del "C:\App\Sepidar\VersionLicense.cdx"
    copy "C:\App\Change Sepidar Connection\Files\Wistore Client\user.config" "C:\App\Sepidar\user.config" /Y
    copy "C:\App\Change Sepidar Connection\Files\Wistore Client\0063452 (2).License" "C:\App\Sepidar\0063452 (2).License" /Y
    copy "C:\App\Change Sepidar Connection\Files\Wistore Client\VersionLicense.cdx" "C:\App\Sepidar\VersionLicense.cdx" /Y
) else (
    echo The number is not 1 or 2.
    pause
)

start C:\App\Sepidar\Shell.exe

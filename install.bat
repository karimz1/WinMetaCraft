@echo off

:: Ensure the script is running with administrative privileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( 
    echo Running with administrative privileges
) else (
    echo Please run the script as an Administrator
    pause
    exit /b
)

set /p "installChoice=Do you want to install WinMetaCraft? (Y/N): "

set "targetDir=C:\WinMetaCraft"

if /i "%installChoice%"=="Y" (
    if not exist "%targetDir%" mkdir "%targetDir%"

    echo:
    echo Copying WinMetaCraft folder to: %targetDir%
    xcopy /E /I /Y "%~dp0WinMetaCraft" "%targetDir%"

    echo:
    echo Installing WinMetaCraft Menu Context
    regedit /s "%targetDir%\reg\addContextMenu.reg"
    echo Installation completed successfully.
) else (
    echo:
    echo:
    echo Installation cancelled.
)
pause

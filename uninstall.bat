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

:: Delete the registry keys
reg delete "HKCR\*\shell\WinMetaCraft" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WinMetaCraft.UpdateFileDates" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WinMetaCraft.ReadMeta" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\WinMetaCraft.DeleteMeta" /f
reg delete "HKCR\Directory\shell\WinMetaCraft.GitRedate" /f
reg delete "HKCR\Directory\Background\shell\WinMetaCraft.GitRedate" /f

echo Registry keys deleted successfully.

:: Remove the WinMetaCraft directory
rmdir /s /q "C:\WinMetaCraft"

echo WinMetaCraft directory deleted successfully.
pause

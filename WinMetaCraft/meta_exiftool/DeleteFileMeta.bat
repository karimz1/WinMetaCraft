@ECHO OFF

SET FilePath=%1
SET ExifToolPath="%~dp0exiftool.exe"

ECHO Removed Meta from: %FilePath%
%ExifToolPath% -all= %FilePath% 
PAUSE
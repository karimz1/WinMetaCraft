@ECHO OFF

SET FilePath=%1
SET ExifToolPath="%~dp0exiftool.exe"

ECHO Read Meta from: %FilePath%
%ExifToolPath% %FilePath%
PAUSE
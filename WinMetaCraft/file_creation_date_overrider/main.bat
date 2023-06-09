@echo off

IF "%~1"=="" (
  echo No file path argument provided. Please specify a file path.
  exit /b 1
)

set "file_path=%~1"

echo Override File Creation Date

set /p "date_time_str=Enter the date and time in this format: YYYY-MM-DD HH:MM:SS "

powershell.exe -ExecutionPolicy Bypass -Command "$filePath = '%file_path%'; $desiredDateTime = [DateTime]::ParseExact('%date_time_str%', 'yyyy-MM-dd HH:mm:ss', [System.Globalization.CultureInfo]::InvariantCulture); $file = Get-Item $filePath; $file.CreationTime = $desiredDateTime; $file.LastWriteTime = $desiredDateTime; $file.LastAccessTime = $desiredDateTime"

echo File dates update completed successfully.

pause
@echo off
SET "SCRIPT_PATH=%~dp0git-redate"
SET "WORKING_DIR=%~1"
"C:\Program Files\Git\bin\sh.exe" --login -i -c "cd ""%WORKING_DIR%"" && bash ""%SCRIPT_PATH%"" --commits 10 .; bash"

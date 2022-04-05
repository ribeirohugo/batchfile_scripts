@ECHO OFF
ECHO Git Backups started

SET REPO_FILE=repos.txt
SET OUTPUT_FILE=backups

if not exist "%OUTPUT_FILE%" mkdir %OUTPUT_FILE%

ECHO File "%OUTPUT_FILE%" created.

for /F "tokens=*" %%A in (%REPO_FILE%) do git -C %OUTPUT_FILE% clone %%A

ECHO Git Backups ended

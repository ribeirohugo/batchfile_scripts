@ECHO OFF
ECHO STARTED

SET SCRIPTS_DIR=init

cd %SCRIPTS_DIR%

for /r %%i in (*) do start cmd /k %%i

ECHO FINISHED


@echo off
setlocal

if "%~1"=="" exit /b 1

set "inputPath=%~1"

set "normalizedPath=%inputPath:\=/%"

if "%normalizedPath:*/models/=*"=="%normalizedPath%" exit /b 1

set "outputPath=%normalizedPath:*/models/=models/%"

set "outputPath=%outputPath: =%"

echo|set /p="%outputPath%" | clip

exit /b 0

@echo off 
for /f "tokens=* delims=" %%i in ('dir /b "%USERPROFILE%/.pyenv-venv/versions"') do ( echo "%%i" )

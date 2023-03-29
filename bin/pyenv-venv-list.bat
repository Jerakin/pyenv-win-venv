@echo off 
SET _PYENV_VENV_VERSIONS=%USERPROFILE%\.pyenv-venv\versions

for /f "tokens=* delims=" %%i in ('dir /b "%_PYENV_VENV_VERSIONS%\versions"') do ( echo "%%i" )

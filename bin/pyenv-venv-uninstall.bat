@echo off
SET _PYENV_VENV_VERSIONS=%USERPROFILE%\.pyenv-venv\versions

IF EXIST %_PYENV_VENV_VERSIONS%\%1 (
	echo Uninstalling env: %1
	rd /s /q %_PYENV_VENV_VERSIONS%\%1
) ELSE (
	echo %1 is not installed.
)
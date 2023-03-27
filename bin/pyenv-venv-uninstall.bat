@echo off
IF EXIST %USERPROFILE%\.pyenv-venv\versions\%1 (
	echo Uninstalling env: %1
	rd /s /q %USERPROFILE%\.pyenv-venv\versions\%1
) ELSE (
	echo %1 is not installed.
)
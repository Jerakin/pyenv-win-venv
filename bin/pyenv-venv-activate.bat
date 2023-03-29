@echo off 

SET _PYENV_VENV_VERSIONS=%USERPROFILE%\.pyenv-venv\versions

IF EXIST %_PYENV_VENV_VERSIONS%/%1/Scripts/activate.bat (
	%_PYENV_VENV_VERSIONS%/%1/Scripts/activate
) else (
	echo Env "%1" is not installed. Install using 'pyenv-win-venv install ^<python_version^> %1'
)

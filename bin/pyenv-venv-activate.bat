@echo off 

IF EXIST %USERPROFILE%/.pyenv-venv/versions/%1/Scripts/activate (
	%USERPROFILE%/.pyenv-venv/versions/%1/Scripts/activate
) else (
	echo Env "%1" is not installed. Install using 'pyenv-win-venv install ^<python_version^> %1'
)

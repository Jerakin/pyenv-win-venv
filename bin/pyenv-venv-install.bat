@echo off
IF EXIST %USERPROFILE%\.pyenv\pyenv-win\versions\%1 (
	IF NOT EXIST %USERPROFILE%/.pyenv-venv/versions/%2 (
		pyenv shell %1
		python -m venv %USERPROFILE%/.pyenv-venv/versions/%2
	) ELSE (
		echo '%2' already exists. Please choose another name for the env.
	)
)ELSE (
	echo Python v%1 is not installed. Install using 'pyenv install %1'
)



@echo off
IF EXIST %USERPROFILE%\.pyenv\pyenv-win\versions\%1 (
	IF NOT EXIST %USERPROFILE%/.pyenv-venv/versions/%2 (
		pyenv shell %1
		
		FOR /F %%I IN ('python -c "import platform;print(platform.python_version())"') DO @SET "PYVERSION_FULL=%%I"
		FOR /F "tokens=1,2 delims=." %%i IN ("%PYVERSION_FULL%") DO (
			SET M_VERSION=%%i
			SET P_VERSION=%%j
		)
		SET POST_33=1

		IF %M_VERSION% EQU 3 (
			IF %P_VERSION% LSS 3 (
				SET POST_33=0
			)
		)
		
		IF %M_VERSION% EQU 2 (
			SET POST_33=0
		)
		
		IF %POST_33% EQU 1 (
			python -m venv %USERPROFILE%/.pyenv-venv/versions/%2
		) ELSE (
			pip install virtualenv
			python -m virtualenv "%USERPROFILE%/.pyenv-venv/versions/%2"
		)

	) ELSE (
		echo '%2' already exists. Please choose another name for the env.
	)
)ELSE (
	echo Python v%1 is not installed. Install using 'pyenv install %1'
)

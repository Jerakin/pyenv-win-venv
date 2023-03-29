@echo off

SET _PYENV_VENV_VERSIONS=%USERPROFILE%\.pyenv-venv\versions
SET _PYENV_VERSIONS=%USERPROFILE%\.pyenv\pyenv-win\versions


IF "%1" == "" (
	IF "%VIRTUAL_ENV%" neq "" (
		FOR /f "delims=" %%A in ("%VIRTUAL_ENV%") do (
			set VNAME=%%~nxA
		)
		echo %VNAME% > %cd%\.python-version
	) ELSE (
		echo No active Environment
	)
) ELSE (

	IF EXIST %_PYENV_VENV_VERSIONS%\%1\ (
		echo %1 > %cd%\.python-version
	) ELSE (
		echo Environment '%1' is not installed.
	)
)
@echo off

SET _PYENV_VENV_VERSIONS=%USERPROFILE%\.pyenv-venv\versions
SET _PYENV_VERSIONS=%USERPROFILE%\.pyenv\pyenv-win\versions
SET ENVNAME=""

IF NOT EXIST %_PYENV_VERSIONS%\%1 (
	echo Python v%1 is not installed. Install using 'pyenv install %1'
	goto :eof
)
IF EXIST %_PYENV_VENV_VERSIONS%\versions\%2 (
	echo '%2' already exists. Please choose another name for the env.
	goto :eof
)
if exist %VIRTUAL_ENV%\Scripts\deactivate.bat (
	for %%I in (%VIRTUAL_ENV%) do set ENVNAME=%%~nxI
	call %VIRTUAL_ENV%\Scripts\deactivate
)

call pyenv shell %1

FOR /F %%I IN ('python -c "import platform;print(platform.python_version())"') DO @SET "PYVERSION_FULL=%%I"
FOR /F "tokens=1,2 delims=." %%i IN ("%PYVERSION_FULL%") DO (
	SET /a M_VERSION=%%i
	SET /a P_VERSION=%%j
)

echo Installing environment: %2 using Python v%PYVERSION_FULL%

IF %M_VERSION% EQU 2 goto :USE_VIRTUALENV

IF %M_VERSION% EQU 3 IF %P_VERSION% LSS 3 goto :USE_VIRTUALENV

goto :USE_VENV

:USE_VIRTUALENV
call python -W ignore:DEPRECATION -m pip --disable-pip-version-check install --quiet virtualenv
call python -m virtualenv --quiet "%_PYENV_VENV_VERSIONS%\%2"
goto :REACTIVATE_ENV

:USE_VENV
python -m venv %_PYENV_VENV_VERSIONS%\%2
goto :REACTIVATE_ENV

:REACTIVATE_ENV
IF NOT %ENVNAME% == "" call pyenv-venv activate %ENVNAME%
goto :eof
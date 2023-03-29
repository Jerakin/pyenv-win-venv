@echo off

SET _PYENV_VENV_VERSIONS=%USERPROFILE%\.pyenv-venv\versions
SET _PYENV_VERSIONS=%USERPROFILE%\.pyenv\pyenv-win\versions


IF NOT EXIST %cd%\.python-version (
	echo No python-version found in this directory
	goto :eof
)

SET /p PRE_ENVNAME=<%cd%\.python-version

call :TRIM %PRE_ENVNAME% ENVNAME

IF "%ENVNAME%" == "" (
	echo python-version file is empty
) ELSE (
	%_PYENV_VENV_VERSIONS%\%ENVNAME%\Scripts\activate
)
goto :eof


:TRIM
SET %2=%1
goto :eof

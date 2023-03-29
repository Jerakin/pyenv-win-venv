@echo off

SET _PYENV_VENV_VERSIONS=%USERPROFILE%\.pyenv-venv\versions
SET _PYENV_VERSIONS=%USERPROFILE%\.pyenv\pyenv-win\versions

IF "%1" == "" (
	echo %_PYENV_VENV_VERSIONS%
) ELSE (
	IF EXIST %_PYENV_VENV_VERSIONS%\%1\Scripts\ (
		echo %_PYENV_VENV_VERSIONS%\%1\Scripts\python.exe
	) ELSE (
		pyenv which %1
	)
)
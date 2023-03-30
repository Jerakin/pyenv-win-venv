@echo off 

IF EXIST %~dp0pyenv-venv-%1.bat (
	call %~dp0pyenv-venv-%1.bat %2 %3
	goto :eof
)

IF "%1" == "" (
	call %~dp0pyenv-venv-help
	goto :eof
)

call %~dp0pyenv-venv-help
goto :eof
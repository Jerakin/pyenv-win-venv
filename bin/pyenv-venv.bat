@echo off 
set IS_COMMAND=0
IF "%1" == "install" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-install %2 %3
)
IF "%1" == "uninstall" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-uninstall %2
)
IF "%1" == "activate" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-activate %2
)
IF "%1" == "deactivate" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-deactivate
)
IF "%1" == "list" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-list
)
IF "%1" == "help" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-help
)
IF "%1" == "which" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-which
)
IF "%1" == "" (
	set IS_COMMAND=1
	call %~dp0pyenv-venv-help
)
IF %IS_COMMAND% EQU 0 (
	call %~dp0pyenv-venv-help
)
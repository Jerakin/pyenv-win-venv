@echo off 
IF "%1" == "install" (
	call %~dp0pyenv-venv-install %2 %3
)
IF "%1" == "uninstall" (
	call %~dp0pyenv-venv-uninstall %2
)
IF "%1" == "activate" (
	call %~dp0pyenv-venv-activate %2
)
IF "%1" == "deactivate" (
	call %~dp0pyenv-venv-deactivate
)
IF "%1" == "list" (
	call %~dp0pyenv-venv-list
)
IF "%1" == "help" (
	call %~dp0pyenv-venv-help
)
IF "%1" == "which" (
	call %~dp0pyenv-venv-which
)
IF "%1" == "" (
	call %~dp0pyenv-venv-help
)
IF %IS_COMMAND% EQU 0 (
	call %~dp0pyenv-venv-help
)
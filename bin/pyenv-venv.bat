@echo off 
IF "%1" == "install" (
	call %~dp0pyenv-venv-install %2 %3
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

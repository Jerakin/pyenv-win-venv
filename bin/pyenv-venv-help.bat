@echo off
IF "%1" == "" (
	echo Copyright ^(c^) Mattias Hedberg ^<the_rensind@hotmail.com^>
	echo. 
	echo Usage: pyenv-venv ^<command^> ^<args^>
	echo. 
	echo A CLI to manage virtual envs with pyenv-win
	echo. 
	echo Commands:
	echo     activate            activate an env
	echo     deactivate          deactivate an env
	echo     install             install an env
	echo     uninstall           uninstall an env
	echo     list                list all installed environments versions
	echo     help                show this information
)
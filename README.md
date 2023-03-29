# pyenv-win-venv

## Installation

### Dependencies

As this project is using [pyenv-win](https://github.com/pyenv-win/pyenv-win) to install python versions it needs to be installed properly.

### Instructions

Download the repository and add the `/bin` folder to your PATH variable.


## Usage

```
> pyenv-venv
    Copyright (c) Mattias Hedberg <the_rensind@hotmail.com>

    Usage: pyenv-venv <command> <args>

    A CLI to manage virtual envs with pyenv-win

    Commands:
        init                searches for a .python-version file in the 
                            current directory and activates the env
        local               set the active or provided env name in the
                            current directory
        activate            activate an env
        deactivate          deactivate an env
        install             install an env
        uninstall           uninstall an env
        list                list all installed environments versions
        which <command>     shows the path to an executable
        help                show this information
```


# Automatic activation using `.python-version`
**This is NOT possible**  
While that is possible in the unix version [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) as well as the powershell version [pyenv-win-venv](https://github.com/pyenv-win/pyenv-win-venv) cmd.exe does not have a life time file such as `profile.ps1`.
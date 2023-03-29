@echo off

IF EXIST %VIRTUAL_ENV%\Scripts\%1 (
	echo %VIRTUAL_ENV%\Scripts\%1.exe
) ELSE (
	pyenv which %1
)

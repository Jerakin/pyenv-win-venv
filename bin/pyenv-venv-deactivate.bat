@echo off
if exist %VIRTUAL_ENV%\Scripts\deactivate.bat (
	%VIRTUAL_ENV%\Scripts\deactivate
) else (
	echo No environment active
)

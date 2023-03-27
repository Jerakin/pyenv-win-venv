@echo off
if exist %VIRTUAL_ENV%/deactivate (
	%VIRTUAL_ENV%/deactivate
) else (
	echo No environment active
)

@echo off

REM Settings
set project="Infrastructure"
set statup-project="Api"

set dotnetCommand=dotnet ef %* --project %project% --startup-project %startup-project%
%dotnetCommand%


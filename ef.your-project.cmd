@echo on

REM Settings
set project="Infrastructure"
set statup-project="Api"

REM Check if there are at least two arguments
if "%1"=="" (
    echo Please provide a command and subcommand.
    exit /b 1
)
if "%2"=="" (
    echo Please provide a subcommand.
    exit /b 1
)

REM Assign the first and second arguments as the command and subcommand
set command=%1
set subcommand=%2
shift
shift

REM Construct the dotnet ef command
set dotnetCommand=dotnet ef %command% %subcommand% --project %project% --startup-project %startup-project%
REM Initialize the remaining arguments variable
set remainingArgs=

REM Loop through the remaining arguments and append them
:loop
if "%1"=="" goto execute
set remainingArgs=%remainingArgs% %1
shift
goto loop

:execute
REM Change directory to src
cd src

REM Execute the command with the remaining arguments
%dotnetCommand% %remainingArgs%

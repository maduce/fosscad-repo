ver | findstr /c:"Version 5." > nul
IF %ERRORLEVEL%==0 (
start/wait rundll32.exe setupapi,InstallHinfSection DefaultInstall 4 "%~dp0arduino.inf"
) ELSE (
%SystemRoot%\System32\InfDefaultInstall.exe "%~dp0arduino.inf"
)
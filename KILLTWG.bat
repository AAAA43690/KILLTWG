@ECHO OFF
::::::::::::::::
::Run as Admin::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
TITLE Asking for Administrator access
MODE CON COLS=44 LINES=7
COLOR F0
ECHO.
ECHO Asking for Administrator access . . .
ECHO.
ECHO.
ECHO Please click on "Yes"to continue . . .
ECHO.
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %Apply%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
CLS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::
::ANNOYING DISCLAIMER::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
TITLE KILLTWG - DISCLAIMER
COLOR CF
MODE CON COLS=120 LINES=30
ECHO.
ECHO.
ECHO.
ECHO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ECHO +  WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING     +
ECHO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ECHO + By running KILLTWG you accept complete responsibility for anything that happens.				  +
ECHO + There is NO WARRANTY, you run it at your OWN.									  +
ECHO + RISK and anything that happens, good or bad, is YOUR RESPONSIBILITY.						  +
ECHO + If you don't agree to this then stop KILLTWG immediately.							  +
ECHO + 														  +
ECHO + Again,													  +
ECHO + IT IS YOUR RESPONSIBILITY TO KNOW WHAT YOU ARE GOING TO DO.							  +
ECHO + So if CUT does something you didn't expect and you didn't read theinstructions. It is YOUR FAULT.		  +
ECHO +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ECHO.
ECHO Type "yes" to continue, or press ctrl+c to cancel.
SETLOCAL ENABLEDELAYEDEXPANSION
:Y/N
SET /p CHOICE=Agree ? :
IF NOT "!CHOICE!"=="yes" ECHO You must type "yes" to continue&& GOTO Y/N
ENDLOCAL DISABLEDELAYEDEXPANSION
CLS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::
::WHAT WILL CUT DO ?::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::TITLE KILLTWG - What will KILLTWG do ?
::COLOR 0A
::ECHO.
::ECHO.
::ECHO  What will KILLTWG do ?
::ECHO  This Program will KILL the process "REDAgent" and it won't start again, TRIGGER ?
::ECHO.
::ECHO.
::PAUSE
::CLS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::
::KILLTWG::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
COLOR 0A
TITLE KILLTWG - Processing . . .
CD /D D:
ECHO.
ECHO.
ECHO Changing the name of file . . .
RENAME C:\"Program Files (x86)"\TWG GWT
ECHO.
ECHO Killing the task "REDAgent.exe" . . .
TASKKILL /F /IM REDAgent.exe
ECHO.
ECHO.
ECHO Finished !
ECHO.
ECHO Press any key to exit.
PAUSE >NUL
EXIT
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
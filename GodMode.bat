@echo off
@title GodMode
setlocal

set APP=GodMode
set AUTHOR=POMBO
set AVATAR=\Õ/
set MADE_BY=MADE BY:
set SPACE= 
set KEY=@2024
echo %APP%%SPACE%%MADE_BY%%SPACE%%SPACE%%AUTHOR%%SPACE%%SPACE%%AVATAR%%SPACE%%KEY%

echo.
echo This program enables Windows GodMode!
echo.
pause

cls
color 0C
echo Warning! - GodMode is a tool made for advanced Windows users only! Any action done is the user's responsibility!
echo.
echo Warning! - This program may cause instability in Windows versions prior to Windows 7!

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show(\"GodMode is a tool made for advanced Windows users only!`n`nThe improper use of this tool can cause irreparable damage to Windows.`n`nAny actions done are the sole responsibility of the user!\", \"GodMode\", \"OK\", [System.Windows.Forms.MessageBoxIcon]::Information);}"

cls
echo.
color 07
echo Authorized!

cls
echo.
echo Checking if GodMode is already enabled...

set godmode_folder="%userprofile%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"

if not exist %godmode_folder% (
	echo.
	echo GodMode is not enabled!
	echo.
	echo Enabling GodMode...
	mkdir %godmode_folder%
	if %errorlevel% neq 0 (
		cls
		color 07
		echo.
		echo Error: Failed to create GodMode.{ED7BA470-8E54-465E-825C-99712043E01C} folder in %userprofile%\Desktop!
		echo.
		echo Warning! - Failed to create GodMode folder. Please check your permissions!
		pause
		goto ENDBAT
	)
	attrib +h %godmode_folder%
	cls
	echo.
	color 0A
	echo GodMode enabled!
	echo.
	echo Starting GodMode...
	explorer %godmode_folder%
	goto ENDBAT
)

cls
echo.
color 0A
echo GodMode already enabled!

echo.
echo Starting GodMode...
explorer %godmode_folder%

:ENDBAT
endlocal
exit
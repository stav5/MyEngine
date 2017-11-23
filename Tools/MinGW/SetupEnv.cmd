@echo off
goto :main

:main
	
	if not [%1]==[] (
		set RootFolder=%1
		echo RootFolder: %RootFolder%
	) else (
		set RootFolder="./../.."
	)

	if not [%2]==[] (
		set DriveLetter=%2
		echo DriveLetter: %DriveLetter%
	) else (
		set DriveLetter=M
	)

	call :initMinGW
	call :updatePath
	call :updateDir



goto :EOF


:initMinGW
set Path=%Path%;C:\MinGW\bin\
goto :EOF

:updatePath
set Path=%Path%;%DriveLetter%:\Lib\Win32\Runtimes
goto :EOF


:updateDir
subst %DriveLetter%: /D
subst %DriveLetter%: %RootFolder%
cd /D %DriveLetter%:\

set Path=%Path%;M:\Tools\MinGW\

cls
goto :EOF


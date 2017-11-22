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

	call :initVC
	call :initDir



goto :EOF


:initVC
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" x86
echo DONE
cls
goto :EOF


:initPath
goto :EOF




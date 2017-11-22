@echo off

pushd %DriveLetter%:\Build
gcc -c ..\Src\*.cpp -DdllBuild 
gcc -shared -o mylib.dll *.o -Wl,--out-implib,mylib.a

gcc -c ..\Spike\*.cpp -o mymain.exe
popd

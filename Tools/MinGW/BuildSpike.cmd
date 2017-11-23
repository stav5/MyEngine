@echo off

pushd %DriveLetter%:\Build
gcc -c %DriveLetter%:\Spike\spike.cpp -I%DriveLetter%:\Include
gcc spike.o -o spike.exe -L%DriveLetter%:\Build -lengine
popd

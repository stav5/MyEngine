@echo off

pushd %DriveLetter%:\Build
g++ -c %DriveLetter%:\Spike\spike.cpp -I%DriveLetter%:\Include
g++ spike.o -o spike.exe -L%DriveLetter%:\Build -lengine
popd

@echo off

pushd %DriveLetter%:\Build

g++ -c %DriveLetter%:\Src\*.cpp -DDLL_BUILD -I%DriveLetter%:\Include -I%DriveLetter%:\Lib\Win32\Includes

g++ -shared -o engine.dll *.o -I%DriveLetter%:\Lib\Win32\Includes -L%DriveLetter%:\Lib\Win32\Libs -lSDL2 -lSDL2main -lSDL2test -Wl,--out-implib,engine.lib 

popd




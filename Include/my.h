#pragma once

#ifdef DLL_BUILD
	#define DECLSPEC __declspec(dllexport)
#else
	#define DECLSPEC __declspec(dllimport)
#endif

#include <cstdio>

namespace My
{

int DECLSPEC TripleMe(int x);
void DECLSPEC DoStuff();

class DECLSPEC MyGame
{
public:
	MyGame();
	void AddScene();
	void Start();
};

}


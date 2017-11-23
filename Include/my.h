#pragma once

#ifdef DLL_BUILD
	#define DECLSPEC __declspec(dllexport)
#else
	#define DECLSPEC __declspec(dllimport)
#endif


#ifdef C_HEADERS
extern "C" {
#endif
namespace My
{

int DECLSPEC TripleMe(int x);
void DECLSPEC DoStuff();

}
#ifdef C_HEADERS
}
#endif


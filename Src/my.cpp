#include <my.h>
#include <cstdio>
#include <SDL.h>
namespace My
{

int TripleMe(int x)
{
	return x*3;
}

void DoStuff()
{
	printf("stuff\n");
	SDL_Init(SDL_INIT_EVERYTHING);
}

}

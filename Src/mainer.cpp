#ifdef dllBuild
	#define DLLSPEC __declspec(dllexport)
#else
	#define DLLSPEC __declspec(dllimport)
#endif



int DLLSPEC doubleFunc(int x)
{
	return 2*x;
}



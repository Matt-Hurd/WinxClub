#include "generated/globals.h"

int SetGlobalFunction(void (*a0)(void), int a1)
{
    gGlobalFunctionTable[a1] = a0;
    return 1;
}

int SetNextGlobalFunction(int a0)
{
    unsigned char *next;

    next = (unsigned char *)gGlobalFunctionTable - 4;
    *next = a0;
    return 1;
}

int GetNextGlobalFunction(void)
{
    unsigned char *next;

    next = (unsigned char *)gGlobalFunctionTable - 4;
    return *next;
}

int MainLoop(void)
{
    unsigned char *next;

    next = (unsigned char *)gGlobalFunctionTable - 4;
    do {
        gGlobalFunctionTable[*next]();
    } while (*next != 0x18);
    return 0;
}

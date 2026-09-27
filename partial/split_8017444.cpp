/* Two functions of split_8017444: sub_8017444's own pool holds its vtable
 * and the 0xFFFE field initialiser; sub_8017450 shares the vtable word and
 * calls out to sub_80177E8 with the global gUnknown_03003454 dereferenced
 * as its own pool word.
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern "C" void sub_80177E8(void *a0, void *a1);
extern "C" int __VTABLE__371dword_803ED1C;

extern "C" void sub_8017444(void *a0)
{
    *(int *)a0 = (int)&__VTABLE__371dword_803ED1C;
    *(unsigned short *)((char *)a0 + 4) = 0xFFFE;
    *(unsigned short *)((char *)a0 + 6) = 0xFFFE;
}

extern "C" void sub_8017450(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__371dword_803ED1C;
    sub_80177E8(gUnknown_03003454, a0);
}

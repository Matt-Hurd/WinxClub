/* Three functions of split_802DDDC; the rest of the unit is still assembly in
 * asm/nonmatching/split_802DDDC/. Two are slots of the class labelled
 * dword_803ED28: sub_802DFE4 at +0x1C, sub_802DFD8 at +0x20.
 *
 * sub_802E8B0 is the +0x20 body most of this vtable family shares; it stays
 * assembly and is declared as a plain function here, since the stub headers
 * carry no inheritance yet.
 *
 * sub_802DDDC is not a member -- same shape as sub_802C6D0 (a different unit,
 * same idiom): a still-asm callee and two globals declared locally.
 */
#include "dword_803ED28.hpp"

extern "C" void sub_802E8B0(void *a0);

void dword_803ED28::m20()
{
    sub_802E8B0(this);
}

unsigned int dword_803ED28::m1C()
{
    return (*(unsigned int *)((char *)this + 0x48) >> 10) & 0x1f;
}

extern "C" void sub_802E47A(void *a0);
extern "C" void sub_8000DE6(void *a0, void *a1);
extern "C" int sub_8028BE4(void *a0);
extern "C" void sub_80268AC(void *a0);
extern void *gUnknown_03003EB8;
extern void *gUnknown_0300345C;

extern "C" void sub_802DDDC(void *a0)
{
    char *obj = (char *)a0;
    void *base;

    sub_802E47A(a0);
    if (*(void **)(obj + 0x44) != 0) {
        sub_8000DE6(gUnknown_03003EB8, obj + 0x44);
        *(void **)(obj + 0x44) = 0;
    }

    base = gUnknown_0300345C;
    if (sub_8028BE4((char *)base
            + ((((*(unsigned int *)(obj + 0x34) << 6) >> 0x1c) + 0x3a) << 5))) {
        base = gUnknown_0300345C;
        sub_80268AC((char *)base
            + ((((*(unsigned int *)(obj + 0x34) << 6) >> 0x1c) + 0x3a) << 5));
    }
}

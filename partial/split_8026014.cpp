/* Three functions of split_8026014; the rest of the unit is still assembly
 * in asm/nonmatching/split_8026014/. GenericObject__08 is the vtable's
 * working label for slot +0x08, so it is written as
 * __vftable_GenericObject::m08(); the slot returns a value (used by its
 * callers as a boolean-ish result), so include/__vftable_GenericObject.hpp
 * gained that return type -- the mangled name does not encode it, so the
 * vtable itself is unchanged.
 */
#include "__vftable_GenericObject.hpp"

extern "C" void SetNextGlobalFunction(int a0);
extern "C" void sub_80007A0(void *a0, unsigned int a1, int a2);
extern "C" void sub_801DB90(void *a0);
extern "C" int m08__7DefaultFv(void *a0);

extern "C" void MaybeHandleTransitionToArea(void)
{
    SetNextGlobalFunction(0x10);
}

extern "C" void sub_80261C8(void *a0, void **a1)
{
    unsigned short v = *(unsigned short *)((char *)*a1 + 4);
    unsigned int field = *(unsigned int *)((char *)a0 + 0x7c);

    field = (field & ~0x0F000000) | ((v & 0xf) << 24);
    *(unsigned int *)((char *)a0 + 0x7c) = field;

    unsigned int idx = (field >> 24) & 0xf;
    unsigned short w = *(unsigned short *)((char *)a0 + idx * 2 + 8);
    sub_80007A0(*(void **)((char *)a0 + 0x2c), w, 0);
}

int __vftable_GenericObject::m08(void *a1)
{
    unsigned char b = *(unsigned char *)*(void **)a1;

    switch (b) {
    case 0x1c:
        return *(int *)((char *)this + 0x78) == 0 ? 1 : 0;
    case 0x1f:
        sub_801DB90(this);
        if (*(int *)((char *)this + 0x80 + 0x1c) == 0)
            *(int *)((char *)this + 0x80 + 0x1c) = 0x13;
        return *(int *)((char *)this + 0x78) == 0 ? 1 : 0;
    case 0x26:
        return 1;
    default:
        return m08__7DefaultFv(this);
    }
}

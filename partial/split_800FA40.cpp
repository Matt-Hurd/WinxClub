/* Twelve functions of split_800FA40; the rest of the unit is still assembly
 * in asm/nonmatching/split_800FA40/. sub_800FA40 (48 lines) was attempted and
 * parked -- see notes/parked.md.
 *
 * sub_800FAD6 and sub_800FAB0 store `__VTABLE__337dword_803EAE0` by hand
 * (raw pointer store through an `extern "C" int __VTABLE__...` declaration),
 * the same shape as src/split_8040380.cpp -- not a real construction of
 * `dword_803EAE0` (its own real constructor, `include/dword_803EAE0.hpp` /
 * src/dword_803EAE0.cpp, is matched elsewhere), so no call to it appears
 * here. sub_800FB48 and sub_800FB72 have no `decl:` in config/symbols.yml,
 * so they get their own local `extern "C"` prototypes here rather than one.
 */
#include "generated/functions.h"
#include "Obj.h"

extern "C" int __VTABLE__337dword_803EAE0;
extern "C" void sub_800FB48(void *a0);
extern "C" void sub_800FB72(void *a0, int a1);

extern "C" void sub_800FAF8(void)
{
}

extern "C" void sub_800FAFC(void)
{
}

extern "C" void sub_800FB0C(void)
{
}

extern "C" void sub_800FAFA(void)
{
}

extern "C" void sub_800FB0A(void)
{
}

extern "C" int sub_800FAFE(void)
{
    return 1;
}

extern "C" int sub_800FB02(void)
{
    return 0;
}

extern "C" int sub_800FB06(void)
{
    return 0;
}

extern "C" int sub_800FB0E(void)
{
    return 0;
}

extern "C" int sub_800FA9A(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    unsigned int flags = a0->field_18;
    return (flags >> 10 & 0xffff) && (flags >> 6 & 0xf);
}

extern "C" void sub_800FAD6(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__337dword_803EAE0;
    sub_800FB72(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}

extern "C" void *sub_800FAB0(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x6c);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_800FB48(a0);
    *(int *)a0 = (int)&__VTABLE__337dword_803EAE0;
    return a0;
}

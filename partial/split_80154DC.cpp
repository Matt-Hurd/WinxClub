/* Two of split_80154DC's three assigned functions; sub_80155D6 is parked --
 * see notes/parked.md -- and the rest of the unit stays assembly in
 * asm/nonmatching/split_80154DC/. cpp_evidence.py proves this unit C++
 * (__nw__FUi, __vecmap1c__). sub_8015588 is Anonymous3::m00, the unit's own
 * vtable slot 0 (config/vtables.yml); sub_80154DC is a free function -- an
 * allocate-or-reuse constructor, the same shape as sub_80143E0 in
 * partial/split_80142D0.cpp -- and is extern "C" to keep its working name.
 * sub_8014436 itself is that unit's own real signature, reused here as the
 * dtor sub_8015588 hands to __vecmap1ci__FPvT1iPFPvi_v.
 */
#include "Anonymous3.hpp"

extern "C" void sub_8017444(void *a0);
extern "C" void *sub_80143E0(void *a0);
extern "C" void sub_8014436(void *a0, int a1);
extern "C" void sub_8017450(void *a0, int a1);
extern "C" void sub_803DA18(void *a0);
extern "C" void sub_80177D8(void *a0, void *a1);
extern "C" void __vecmap1c__FPvT1iPFPv_v(void *first, void *last, int size,
                                          void (*ctor)(void *));
extern "C" void __vecmap1ci__FPvT1iPFPvi_v(void *first, void *last, int size,
                                            void (*dtor)(void *, int));
extern "C" int __VTABLE__302Anonymous3;
extern "C" void *gUnknown_03003E88;

/* Allocate-or-reuse constructor for an Anonymous3, the a0-provided-buffer
 * shape sub_80143E0 already has in split_80142D0. */
extern "C" void *sub_80154DC(void *a0)
{
    unsigned char i;

    if (a0 == 0) {
        a0 = operator new(0x368);
        if (a0 == 0)
            return a0;
    }

    sub_8017444(a0);
    *(int *)a0 = (int)&__VTABLE__302Anonymous3;

    sub_80143E0((char *)a0 + 0x80);
    sub_80143E0((char *)a0 + 0x104);

    __vecmap1c__FPvT1iPFPv_v((char *)a0 + 0x180, (char *)a0 + 0x360, 0x78,
                              (void (*)(void *))sub_80143E0);

    *(unsigned short *)((char *)a0 + 4) = 3;

    sub_80177D8(gUnknown_03003E88, a0);

    *(unsigned char *)((char *)a0 + 0xf8) = 0;
    *(unsigned short *)((char *)a0 + 0x17c) = 0;
    *(unsigned short *)((char *)a0 + 0x17e) = 0xffff;
    *(int *)((char *)a0 + 0x100) = 0;

    for (i = 0; i < 8; i++) {
        *(int *)((char *)a0 + i * 4 + 8) = 0;
    }
    for (i = 0; i < 2; i++) {
        *(int *)((char *)a0 + i * 4 + 0x28) = 0;
    }
    for (i = 0; i < 3; i++) {
        *(int *)((char *)a0 + i * 4 + 0x30) = 0;
    }
    *(int *)((char *)a0 + 0x3c) = 0;

    return a0;
}

void Anonymous3::m00(int a0)
{
    *(int *)this = (int)&__VTABLE__302Anonymous3;

    __vecmap1ci__FPvT1iPFPvi_v((char *)this + 0x2e8, (char *)this + 0x108,
                                -120, sub_8014436);

    sub_8014436((char *)this + 0x104, 0);
    sub_8014436((char *)this + 0x80, 0);
    sub_8017450(this, 0);

    if (a0) {
        sub_803DA18(this);
    }
}

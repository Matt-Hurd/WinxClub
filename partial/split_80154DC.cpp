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

    /* 0x80 and 0x104 are the addresses of two embedded, separately
     * constructed objects (sub_80143E0's own shape, not Anonymous3's own
     * fields) and 0x180/0x360 bound the array of them ctor'd by
     * __vecmap1c__FPvT1iPFPv_v below; offset 4 is likewise unclaimed by
     * winx-qhyt.41's field list -- all four stay casts, out of this
     * ticket's scope (see docs/decisions/drafts/2026-09-27-object-types-
     * residue.md, family G, and the ticket's own "naming the 0x2e8
     * target's own type" exclusion). */
    sub_80143E0((char *)a0 + 0x80);
    sub_80143E0((char *)a0 + 0x104);

    __vecmap1c__FPvT1iPFPv_v((char *)a0 + 0x180, (char *)a0 + 0x360, 0x78,
                              (void (*)(void *))sub_80143E0);

    *(unsigned short *)((char *)a0 + 4) = 3;

    sub_80177D8(gUnknown_03003E88, a0);

    ((Anonymous3 *)a0)->field_f8 = 0;
    ((Anonymous3 *)a0)->field_17c = 0;
    ((Anonymous3 *)a0)->field_17e = 0xffff;
    ((Anonymous3 *)a0)->field_100 = 0;

    /* 0x8, 0x28 and 0x30 are unclaimed by this ticket's field list too --
     * three loop-indexed int arrays, no name proposed. */
    for (i = 0; i < 8; i++) {
        *(int *)((char *)a0 + i * 4 + 8) = 0;
    }
    for (i = 0; i < 2; i++) {
        *(int *)((char *)a0 + i * 4 + 0x28) = 0;
    }
    for (i = 0; i < 3; i++) {
        *(int *)((char *)a0 + i * 4 + 0x30) = 0;
    }
    ((Anonymous3 *)a0)->field_3c = 0;

    return a0;
}

void Anonymous3::m00(int a0)
{
    *(int *)this = (int)&__VTABLE__302Anonymous3;

    /* 0x108 is the same array's other bound (see field_2e8's own comment);
     * 0x104 and 0x80 are the two embedded objects' addresses, same as the
     * ctor above -- all three stay casts, out of this ticket's scope. */
    __vecmap1ci__FPvT1iPFPvi_v(&this->field_2e8, (char *)this + 0x108,
                                -120, sub_8014436);

    sub_8014436((char *)this + 0x104, 0);
    sub_8014436((char *)this + 0x80, 0);
    sub_8017450(this, 0);

    if (a0) {
        sub_803DA18(this);
    }
}

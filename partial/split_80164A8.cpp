/* Six functions of split_80164A8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80164A8/, including sub_8016556 and sub_8016612
 * (parked -- see notes/parked.md). cpp_evidence.py proves the unit C++ via
 * __da__FPv / __nw__FUi elsewhere in it (winx-78k.31); none of these is a
 * vtable slot, so they all stay free functions.
 *
 * sub_80164E6's per-element call is the same self-relative function-pointer
 * shape as sub_8018160 in partial/split_8018070.cpp: the element's first
 * word is a vtable pointer whose own first word is an offset from itself,
 * added back to get the callable target -- __call_via_r2 is the compiler's
 * own veneer for the resulting indirect call, not something to write by
 * hand.
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern "C" void *sub_803DA9C(unsigned int a0, void *a1, int a2, int a3);
extern "C" void *maybeGameObjFactory(unsigned short a0);
extern "C" void sub_8017450(void *a0, int a1);
extern "C" void sub_8017444(void *a0);
extern "C" void sub_80177D8(void *a0, void *a1);
extern "C" int __VTABLE__375dword_803ED94;

extern "C" void sub_801659C(unsigned char *a0)
{
    unsigned short *node;
    unsigned short i;
    void *obj, *cur;

    i = 0;
    node = *(unsigned short **)(a0 + 0xc);
    *(void **)(a0 + 0x14) =
        sub_803DA9C(*(unsigned char *)(a0 + 8) * 4, GetEWRAMStart(), 0, 0);
    goto test1;
next1:
    obj = maybeGameObjFactory(*node);
    (*(void ***)(a0 + 0x14))[i] = obj;
    *(unsigned short *)((char *)obj + 6) = i;
    i++;
    node = *(unsigned short **)((char *)node + 4);
test1:
    if (node != 0 && *(unsigned char *)(a0 + 8) > i)
        goto next1;

    node = *(unsigned short **)(a0 + 0xc);
    if (node == 0)
        return;
free1:
    cur = node;
    node = *(unsigned short **)((char *)node + 4);
    sub_803DA18(cur);
    if (node != 0)
        goto free1;
}

extern "C" void sub_80164E6(void *a0, int a1)
{
    unsigned short i;
    void *elem;

    for (i = 0; i < *((unsigned char *)a0 + 8); i++) {
        elem = (*(void ***)((char *)a0 + 0x14))[i];
        if (elem != 0) {
            void *base = *(void **)elem;
            void (*fn)(void *, int) = (void (*)(void *, int))(*(int *)base + (int)base);
            fn(elem, 1);
        }
    }

    operator delete[](*(void **)((char *)a0 + 0x14));
    *(unsigned char *)((char *)a0 + 8) = 0;
    *(void **)((char *)a0 + 0x14) = 0;
}

extern "C" void sub_80165F2(void *a0)
{
    if (*(void **)((char *)a0 + 0x14) != 0)
        sub_80164E6(a0, 0);

    *(int *)((char *)a0 + 0xc) = 0;
    *(int *)((char *)a0 + 0x10) = 0;
    *(unsigned char *)((char *)a0 + 8) = 0;
}

extern "C" void sub_8016526(void *a0, int a1)
{
    *(int *)a0 = (int)&__VTABLE__375dword_803ED94;

    if (*(void **)((char *)a0 + 0x14) != 0)
        sub_80164E6(a0, 0);

    sub_8017450(a0, 0);

    if (a1)
        sub_803DA18(a0);
}

extern "C" void *sub_80164A8(void *a0)
{
    void *obj = a0;

    if (!obj) {
        obj = operator new(0x18);
        if (!obj)
            return obj;
    }

    sub_8017444(obj);
    *(int *)obj = (int)&__VTABLE__375dword_803ED94;
    *(short *)((char *)obj + 4) = 2;
    sub_80177D8(gUnknown_03003E88, obj);
    *(unsigned char *)((char *)obj + 8) = 0;
    *(void **)((char *)obj + 0x14) = 0;
    *(void **)((char *)obj + 0x10) = 0;
    *(void **)((char *)obj + 0xc) = 0;

    return obj;
}

extern "C" int sub_8016690(void)
{
    return 1;
}

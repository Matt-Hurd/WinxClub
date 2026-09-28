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
 *
 * FactoryRec164A8 is a local record, scoped to this unit only -- see
 * docs/decisions/drafts/2026-09-27-object-types-residue.md, family H. Its
 * own offsets (0x0, 0x4, 0x8, 0xc, 0x10, 0x14) do not match struct Slot's
 * (include/SlotManager.h: 0x14, 0x18) at any shared field, even though a
 * FactoryRec164A8 is handed to SlotManager (sub_8017444, sub_80177D8), so
 * it is not Slot wearing a different name. FactoryNode164A8 is the singly
 * linked list sub_801659C builds and frees off field_0c. Working names
 * only; each array element the factory hands back (`obj` below) is a
 * third, still unsurveyed object -- no header for it yet, so its one field
 * access keeps its cast.
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern "C" void *sub_803DA9C(unsigned int a0, void *a1, int a2, int a3);
extern "C" void *maybeGameObjFactory(unsigned short a0);
extern "C" void sub_8017450(void *a0, int a1);
extern "C" void sub_8017444(void *a0);
extern "C" void sub_80177D8(void *a0, void *a1);
extern "C" int __VTABLE__375dword_803ED94;

typedef struct FactoryNode164A8 {
    unsigned short id;             /* 0x00 -- passed to maybeGameObjFactory */
    struct FactoryNode164A8 *next; /* 0x04 */
} FactoryNode164A8;

typedef struct {
    void *vtable;              /* 0x00 */
    short field_04;             /* 0x04 -- always set to 2 */
    char gap_06[2];
    unsigned char field_08;     /* 0x08 -- element count */
    char gap_09[3];
    FactoryNode164A8 *field_0c; /* 0x0c -- list of nodes to build elements from */
    void *field_10;             /* 0x10 -- always zeroed, never read */
    void **field_14;            /* 0x14 -- operator new[]'d array of factory objects */
} FactoryRec164A8;

extern "C" void sub_801659C(FactoryRec164A8 *a0)
{
    FactoryNode164A8 *node;
    unsigned short i;
    void *obj;
    FactoryNode164A8 *cur;

    i = 0;
    node = a0->field_0c;
    a0->field_14 =
        (void **)sub_803DA9C(a0->field_08 * 4, GetEWRAMStart(), 0, 0);
    goto test1;
next1:
    obj = maybeGameObjFactory(node->id);
    a0->field_14[i] = obj;
    *(unsigned short *)((char *)obj + 6) = i; /* obj: maybeGameObjFactory's own product, no header surveyed yet */
    i++;
    node = node->next;
test1:
    if (node != 0 && a0->field_08 > i)
        goto next1;

    node = a0->field_0c;
    if (node == 0)
        return;
free1:
    cur = node;
    node = node->next;
    sub_803DA18(cur);
    if (node != 0)
        goto free1;
}

extern "C" void sub_80164E6(FactoryRec164A8 *a0, int a1)
{
    unsigned short i;
    void *elem;

    for (i = 0; i < a0->field_08; i++) {
        elem = a0->field_14[i];
        if (elem != 0) {
            void *base = *(void **)elem;
            void (*fn)(void *, int) = (void (*)(void *, int))(*(int *)base + (int)base);
            fn(elem, 1);
        }
    }

    operator delete[](a0->field_14);
    a0->field_08 = 0;
    a0->field_14 = 0;
}

extern "C" void sub_80165F2(FactoryRec164A8 *a0)
{
    if (a0->field_14 != 0)
        sub_80164E6(a0, 0);

    a0->field_0c = 0;
    a0->field_10 = 0;
    a0->field_08 = 0;
}

extern "C" void sub_8016526(FactoryRec164A8 *a0, int a1)
{
    a0->vtable = (void *)&__VTABLE__375dword_803ED94;

    if (a0->field_14 != 0)
        sub_80164E6(a0, 0);

    sub_8017450(a0, 0);

    if (a1)
        sub_803DA18(a0);
}

extern "C" void *sub_80164A8(void *a0)
{
    FactoryRec164A8 *obj = (FactoryRec164A8 *)a0;

    if (!obj) {
        obj = (FactoryRec164A8 *)operator new(0x18);
        if (!obj)
            return obj;
    }

    sub_8017444(obj);
    obj->vtable = (void *)&__VTABLE__375dword_803ED94;
    obj->field_04 = 2;
    sub_80177D8(gUnknown_03003E88, obj);
    obj->field_08 = 0;
    obj->field_14 = 0;
    obj->field_10 = 0;
    obj->field_0c = 0;

    return obj;
}

extern "C" int sub_8016690(void)
{
    return 1;
}

/* Four of the five assigned functions of split_8000D64; the rest of the unit,
 * including the parked sub_8000DE6 (see notes/parked.md), is still assembly
 * in asm/nonmatching/split_8000D64/.
 *
 * g3003448__Init, sub_8000DE6 and sub_8000E6C all touch the same embedded
 * object at a0+0x19C0 (fields at +0x1c/+0x24 are the delete[]'d pointers
 * sub_8000F4C and sub_8000FCE also use) and a second small struct at
 * a0+0x19A0 (the free-list head at +0x1e, the count at +0x1c). None of
 * these have decl: entries in config/symbols.yml, so they get their own
 * local extern "C" prototypes here rather than generated ones.
 */
#include "generated/functions.h"
#include "Unknown_03003448.h"

extern "C" void sub_8000CC6(int *a0, int a1);
extern "C" void sub_8000CCA(int *a0, int a1);
extern "C" void sub_8000C7C(int *a0, int a1);
extern "C" void sub_800B9B6(void *a0);
extern "C" void nullsub_3(void *a0);
extern "C" int __VTABLE__14Singleton_3EB8;
extern "C" int __VTABLE__350dword_803EC78;
extern "C" void *gUnknown_03003EB8;
extern "C" void *gUnknown_03003EA0;
extern "C" void sub_800B7DC(void *a0);
extern "C" void sub_800B8A4(void *a0, int a1);
extern "C" void sub_800B8CE(void);
extern "C" void sub_800B916(void *a0);
extern "C" void sub_8000DE6(void *a0, void **a1);

extern "C" void sub_8000F4C(struct Unknown_03003448 *a0, int a1, unsigned int a2, int a3)
{
    unsigned short *list = a0->field_19dc;

    if (list) {
        operator delete[](list);
        a0->field_19dc = 0;
    }

    if (a2) {
        unsigned int i;

        a0->field_19d8 = 0;
        a0->field_19dc = (unsigned short *)sub_803DA9C(a2 * 2, GetEWRAMStart(), 0, 0);

        for (i = 0; i < a2 - 1; i++) {
            a0->field_19dc[i] = i + 1;
        }
        a0->field_19dc[a2 - 1] = -1;
    }

    sub_8000CC6(&a0->field_04, a2);
    sub_8000CCA(&a0->field_04, a3);
    sub_8000C7C(&a0->field_04, a1);
    sub_800B9B6(&a0->field_04);
}

extern "C" void *g3003448__Init(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x1BE0);
        if (a0 == 0) {
            return a0;
        }
    }
    {
        *(int *)a0 = (int)&__VTABLE__14Singleton_3EB8;
        gUnknown_03003EB8 = a0;
        *(int *)a0 = (int)&__VTABLE__350dword_803EC78;
        sub_800B7DC(&((struct Unknown_03003448 *)a0)->field_04);

        ((struct Unknown_03003448 *)a0)->field_19b4 = 0;
        ((struct Unknown_03003448 *)a0)->field_19b8 = 0;

        ((struct Unknown_03003448 *)a0)->field_19bc = 0;
        ((struct Unknown_03003448 *)a0)->field_19be = 0;

        ((struct Unknown_03003448 *)a0)->field_19c0 = 0;
        ((struct Unknown_03003448 *)a0)->field_19c4 = 0;
        ((struct Unknown_03003448 *)a0)->field_19c6 = 0;
        ((struct Unknown_03003448 *)a0)->field_19c8 = 0;
        ((struct Unknown_03003448 *)a0)->field_19ca = 0;
        ((struct Unknown_03003448 *)a0)->field_19cc = 0;
        ((struct Unknown_03003448 *)a0)->field_19ce = 0;
        ((struct Unknown_03003448 *)a0)->field_19d0 = 0;
        ((struct Unknown_03003448 *)a0)->field_19d4 = 0;
        ((struct Unknown_03003448 *)a0)->field_19d8 = 0x0000FFFF;
        ((struct Unknown_03003448 *)a0)->field_19dc = 0;
        ((struct Unknown_03003448 *)a0)->field_19e0 = 0x0000FFFF;
        ((struct Unknown_03003448 *)a0)->field_19e4 = 0;

        {
            unsigned int flags = ((struct Unknown_03003448 *)a0)->field_19e8;
            unsigned int mask = 0xFFFF;
            flags &= ~mask;
            mask += 1;
            flags &= ~mask;
            mask <<= 1;
            flags &= ~mask;
            mask <<= 1;
            flags &= ~mask;
            mask <<= 1;
            flags |= mask;
            mask <<= 1;
            flags |= mask;
            ((struct Unknown_03003448 *)a0)->field_19e8 = flags;
        }
    }
    return a0;
}

extern "C" void sub_8000E6C(struct Unknown_03003448 *a0)
{
    int i;

    for (i = 1; i <= a0->field_19bc; i++) {
        void *elem = (unsigned char *)a0->field_19c0 + i * 0x60;
        if (*(int *)((unsigned char *)elem + 0x14) != 0) {
            sub_8000DE6(a0, &elem);
        }
    }

    a0->field_19e8 |= 0x40000;
    operator delete[](a0->field_19c0);
    a0->field_19c0 = 0;
    operator delete[](a0->field_19d0);
    a0->field_19d0 = 0;
    a0->field_19bc = 0;
    a0->field_19c4 = 0;
    a0->field_19c6 = 0;
    a0->field_19c8 = 0;
    a0->field_19ca = 0;
    a0->field_19cc = 0;
    a0->field_19ce = 0;
    a0->field_19e8 &= 0xFFFF0000;
    if (gUnknown_03003EA0 != 0) {
        sub_800B8CE();
        sub_800B916(gUnknown_03003EA0);
    }
    a0->field_19e8 &= ~0x40000;
}

extern "C" void sub_8000FCE(struct Unknown_03003448 *a0)
{
    nullsub_3(&a0->field_04);

    if (a0->field_19e4 != 0) {
        operator delete[](a0->field_19e4);
        a0->field_19e4 = 0;
    }

    /* +0x54 and +0x7a fall inside the ambiguous Singleton_3EA0-shaped
     * sub-object at field_04 (see the header note above struct
     * Unknown_03003448); not one of this struct's own declared fields. */
    if (*(int *)((char *)a0 + 0x54) != 0) {
        unsigned int i;

        a0->field_19e0 = *(unsigned short *)((char *)a0 + 0x7a);
        a0->field_19e4 =
            (unsigned short *)sub_803DA9C(*(unsigned int *)((char *)a0 + 0x54) * 2, GetEWRAMStart(), 0, 0);

        for (i = 0; i < *(unsigned int *)((char *)a0 + 0x54) - 1; i++) {
            a0->field_19e4[i] = *(unsigned short *)((char *)a0 + 0x7a) + i + 1;
        }
        a0->field_19e4[*(unsigned int *)((char *)a0 + 0x54) - 1] = -1;
    }
}

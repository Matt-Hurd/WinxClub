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
extern "C" void sub_8000E6C(void *a0);
extern "C" void sub_8000DE6(void *a0, void **a1);

extern "C" void sub_8000F4C(void *a0, int a1, unsigned int a2, int a3)
{
    unsigned short *list = *(unsigned short **)((char *)a0 + 0x19DC);

    if (list) {
        operator delete[](list);
        *(unsigned short **)((char *)a0 + 0x19DC) = 0;
    }

    if (a2) {
        unsigned int i;

        *(int *)((char *)a0 + 0x19D8) = 0;
        *(unsigned short **)((char *)a0 + 0x19DC) =
            (unsigned short *)sub_803DA9C(a2 * 2, GetEWRAMStart(), 0, 0);

        for (i = 0; i < a2 - 1; i++) {
            (*(unsigned short **)((char *)a0 + 0x19DC))[i] = i + 1;
        }
        (*(unsigned short **)((char *)a0 + 0x19DC))[a2 - 1] = -1;
    }

    sub_8000CC6((int *)((char *)a0 + 4), a2);
    sub_8000CCA((int *)((char *)a0 + 4), a3);
    sub_8000C7C((int *)((char *)a0 + 4), a1);
    sub_800B9B6((char *)a0 + 4);
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
        sub_800B7DC((char *)a0 + 4);

        *(int *)((char *)a0 + 0x19B4) = 0;
        *(int *)((char *)a0 + 0x19B8) = 0;

        *(unsigned short *)((char *)a0 + 0x19BC) = 0;
        *(unsigned short *)((char *)a0 + 0x19BE) = 0;

        *(void **)((char *)a0 + 0x19C0) = 0;
        *(unsigned short *)((char *)a0 + 0x19C4) = 0;
        *(unsigned short *)((char *)a0 + 0x19C6) = 0;
        *(unsigned short *)((char *)a0 + 0x19C8) = 0;
        *(unsigned short *)((char *)a0 + 0x19CA) = 0;
        *(unsigned short *)((char *)a0 + 0x19CC) = 0;
        *(unsigned short *)((char *)a0 + 0x19CE) = 0;
        *(void **)((char *)a0 + 0x19D0) = 0;
        *(int *)((char *)a0 + 0x19D4) = 0;
        *(unsigned int *)((char *)a0 + 0x19D8) = 0x0000FFFF;
        *(void **)((char *)a0 + 0x19DC) = 0;
        *(unsigned int *)((char *)a0 + 0x19E0) = 0x0000FFFF;
        *(void **)((char *)a0 + 0x19E4) = 0;

        {
            unsigned int flags = *(unsigned int *)((char *)a0 + 0x19E8);
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
            *(unsigned int *)((char *)a0 + 0x19E8) = flags;
        }
    }
    return a0;
}

extern "C" void sub_8000E6C(void *a0)
{
    int i;

    for (i = 1; i <= *(unsigned short *)((char *)a0 + 0x19BC); i++) {
        void *elem = (char *)(*(void **)((char *)a0 + 0x19C0)) + i * 0x60;
        if (*(int *)((char *)elem + 0x14) != 0) {
            sub_8000DE6(a0, &elem);
        }
    }

    *(unsigned int *)((char *)a0 + 0x19E8) |= 0x40000;
    operator delete[](*(void **)((char *)a0 + 0x19C0));
    *(void **)((char *)a0 + 0x19C0) = 0;
    operator delete[](*(void **)((char *)a0 + 0x19D0));
    *(void **)((char *)a0 + 0x19D0) = 0;
    *(unsigned short *)((char *)a0 + 0x19BC) = 0;
    *(unsigned short *)((char *)a0 + 0x19C4) = 0;
    *(unsigned short *)((char *)a0 + 0x19C6) = 0;
    *(unsigned short *)((char *)a0 + 0x19C8) = 0;
    *(unsigned short *)((char *)a0 + 0x19CA) = 0;
    *(unsigned short *)((char *)a0 + 0x19CC) = 0;
    *(unsigned short *)((char *)a0 + 0x19CE) = 0;
    *(unsigned int *)((char *)a0 + 0x19E8) &= 0xFFFF0000;
    if (gUnknown_03003EA0 != 0) {
        sub_800B8CE();
        sub_800B916(gUnknown_03003EA0);
    }
    *(unsigned int *)((char *)a0 + 0x19E8) &= ~0x40000;
}

extern "C" void sub_8000FCE(void *a0)
{
    nullsub_3((char *)a0 + 4);

    if (*(void **)((char *)a0 + 0x19E4) != 0) {
        operator delete[](*(void **)((char *)a0 + 0x19E4));
        *(void **)((char *)a0 + 0x19E4) = 0;
    }

    if (*(int *)((char *)a0 + 0x54) != 0) {
        unsigned int i;

        *(int *)((char *)a0 + 0x19E0) = *(unsigned short *)((char *)a0 + 0x7a);
        *(unsigned short **)((char *)a0 + 0x19E4) =
            (unsigned short *)sub_803DA9C(*(unsigned int *)((char *)a0 + 0x54) * 2, GetEWRAMStart(), 0, 0);

        for (i = 0; i < *(unsigned int *)((char *)a0 + 0x54) - 1; i++) {
            (*(unsigned short **)((char *)a0 + 0x19E4))[i] =
                *(unsigned short *)((char *)a0 + 0x7a) + i + 1;
        }
        (*(unsigned short **)((char *)a0 + 0x19E4))[*(unsigned int *)((char *)a0 + 0x54) - 1] = -1;
    }
}

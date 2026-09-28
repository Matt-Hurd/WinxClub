/* Seven functions of split_800F1E8; the rest of the unit is still assembly in
 * asm/nonmatching/split_800F1E8/. sub_800F408, sub_800F2E2 and sub_800F2BC
 * are parked -- see notes/parked.md.
 */
#include "generated/functions.h"
#include "Obj.h"

extern "C" void *memset(void *, int, unsigned int);

extern "C" void sub_800F1E8(int *a0i)
{
    Obj *a0 = (Obj *)a0i;
    unsigned int i;

    a0->field_00 = 0x8800;
    for (i = 0; i < 1; i++) {
        (&a0->field_18)[i] = 0;
        (&a0->field_04)[i] = 1;
    }
    for (i = 0; i < 2; i++) {
        (&a0->field_10)[i] = 0;
        (&a0->field_08)[i] = 1;
        (&a0->field_7c)[i] = 0;
    }
    a0->field_34 = 0;
}

extern "C" void sub_800F220(int *a0i)
{
    Obj *a0 = (Obj *)a0i;
    unsigned int i;

    memset(a0, 0, 0x80);
    a0->field_00 = 0x8800;
    for (i = 0; i < 1; i++) {
        (&a0->field_18)[i] = 0;
        (&a0->field_04)[i] = 1;
    }
    for (i = 0; i < 2; i++) {
        (&a0->field_10)[i] = 0;
        (&a0->field_08)[i] = 1;
        (&a0->field_7c)[i] = 0;
    }
    a0->field_34 = 0;
}

extern "C" int sub_800F2B4(void)
{
    return 0x98;
}

extern "C" void sub_800F2B8(void *a0v, int a1)
{
    Obj *a0 = (Obj *)a0v;
    a0->field_70 = (struct ObjBank *)a1;
}

extern "C" void sub_800FB48(void *a0);
extern "C" void sub_800FB72(void *a0, int a1);
extern "C" void *sub_803DAC0(void *a0, int a1);
extern "C" void sub_8012468(void *a0, void *a1, int a2);
extern int __VTABLE__328dword_803E870;

extern "C" void *sub_800F264(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    if (a0 == 0) {
        a0 = (Obj *)operator new(0x78);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_800FB48(a0);
    a0->field_00 = (unsigned int)&__VTABLE__328dword_803E870;
    a0->field_70 = 0;
    a0->field_74 = 0;
    a0->field_6c = 0;
    return a0;
}

extern "C" void sub_800F292(void *a0v, int a1)
{
    Obj *a0 = (Obj *)a0v;
    a0->field_00 = (unsigned int)&__VTABLE__328dword_803E870;
    sub_800FB72(a0, 0);
    if (a1) {
        sub_803DA18(a0);
    }
}

extern void *gUnknown_03003E84;

/* Every a0->0x70 access below keeps its (char *) cast: converting any one
 * of them to field access perturbs which register the ROM's compile keeps
 * the pointer live in across the goto, and moves a byte -- see
 * notes/quirks/a-second-pointer-expression-defeats-tccs-reload-elimination.md.
 * a0->4, a0->8, a0->0x74 and a0->0x5c convert cleanly on their own. */
extern "C" int sub_800F312(void *a0, unsigned int a1)
{
    char *dest = *(char **)((char *)a0 + 4);
    int extra = 0;
    void *saved;

    if (*(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x90) < a1) {
        extra = a1 - *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x90);
        a1 = *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x90);
    }

    if (*(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x90) != 0) {
        void *g = gUnknown_03003E84;
        int cursor = *(int *)((char *)a0 + 0x74);

        saved = sub_803DAC0(g, cursor);
        *(void **)(*(char **)((char *)a0 + 0x70) + 0x2c) = saved;

        if (*(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c) + a1
            > (unsigned int)(1 << *(int *)((char *)a0 + 8))) {
            unsigned int firstLen = (1 << *(int *)((char *)a0 + 8))
                - *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c);
            unsigned int writeIdx;

            sub_8012468(*(char **)((char *)a0 + 0x70),
                         dest + ((*(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c) >> 1) << 1),
                         firstLen);
            writeIdx = *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c);
            sub_8012468(*(char **)((char *)a0 + 0x70), dest,
                         a1 - ((1 << *(int *)((char *)a0 + 8)) - writeIdx));
            *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c) =
                a1 - ((1 << *(int *)((char *)a0 + 8))
                      - *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c));
        } else {
            sub_8012468(*(char **)((char *)a0 + 0x70),
                         dest + ((*(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c) >> 1) << 1),
                         a1);
            *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c) =
                (*(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c) + a1)
                & ((1 << *(int *)((char *)a0 + 8)) - 1);
        }

        *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x90) -= a1;
        *(int *)((char *)a0 + 0x74) += *(int *)(*(char **)((char *)a0 + 0x70) + 0x2c) - (int)saved;
        goto fill;
    }

    *(int *)((char *)a0 + 0x5c) = 4;
    *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x90) = 1 << *(int *)((char *)a0 + 8);
    a1 = 0;

fill:
    while (extra > 0) {
        *(short *)(dest + (((*(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c)
                              & ((1 << *(int *)((char *)a0 + 8)) - 1)) >> 1) << 1)) = 0;
        *(unsigned int *)(*(char **)((char *)a0 + 0x70) + 0x8c) += 2;
        extra -= 2;
    }

    return a1;
}


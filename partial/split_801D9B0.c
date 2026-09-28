/* Two functions of split_801D9B0; the rest of the unit is still assembly in
 * asm/nonmatching/split_801D9B0/.
 */

#include "SpriteRecord.h"

extern unsigned short sub_803F6B4(void *a0);
extern void sub_80007A0(void *a0, int a1, int a2);
extern void sub_803FC14(void *a0);
extern void sub_8000914(void *a0);

void sub_801DAA0(void *a0, void *a1)
{
    void *src = *(void **)a1;
    unsigned short mode = *(unsigned short *)((char *)src + 4);
    unsigned char i;

    if (mode != 0) {
        if (mode != 1)
            return;
        i = 0;
        goto mode1;
    }

    i = 0;
    do {
        *(unsigned short *)((char *)a0 + i * 2 + 8) =
            *(unsigned short *)((char *)src + i * 2 + 6);
        if (*(unsigned short *)((char *)a0 + i * 2 + 0x18) == 0) {
            *(unsigned short *)((char *)a0 + i * 2 + 0x18) =
                *(unsigned short *)((char *)src + i * 2 + 6);
        }
        i++;
    } while (i < 4);
    return;

mode1:
    do {
        *(unsigned short *)((char *)a0 + i * 2 + 0x18) =
            *(unsigned short *)((char *)src + i * 2 + 6);
        i++;
    } while (i < 4);
}

void sub_801DAEC(void *a0, void *a1)
{
    void *src = *(void **)a1;
    unsigned short count = *(unsigned short *)((char *)src + 6);
    void *p = *(void **)((char *)a0 + 0x2c);
    unsigned int flag;

    if (count == 0)
        goto body;
    flag = (*(unsigned int *)p << 0x15) >> 0x1f;
    if (flag != 0)
        return;

body:
    *(unsigned short *)((char *)a0 + 0x18) =
        *(unsigned short *)((char *)src + 4);
    *(unsigned short *)((char *)a0 + 0x1a) =
        *(unsigned short *)((char *)src + 4);
    *(unsigned short *)((char *)a0 + 0x1c) =
        *(unsigned short *)((char *)src + 4);
    *(unsigned short *)((char *)a0 + 0x1e) =
        *(unsigned short *)((char *)src + 4);

    if (sub_803F6B4(p) != *(unsigned short *)((char *)src + 4)) {
        sub_80007A0(*(void **)((char *)a0 + 0x2c),
                    *(unsigned short *)((char *)src + 4), 0);
    }

    flag = (*(unsigned int *)(*(void **)((char *)a0 + 0x2c)) << 0x15) >> 0x1f;
    if (flag != 0)
        return;

    sub_803FC14(*(void **)((char *)a0 + 0x2c));
    sub_8000914(*(void **)((char *)a0 + 0x2c));
}

/* sub_801D9B0 stays in asm/nonmatching/split_801D9B0/ -- see notes/parked.md. */
extern int sub_801D9B0(void *a0_unused, void *a1);
extern void sub_801D788(void *a0, int a1);

void sub_801DA2A(void *a0)
{
    int r = sub_801D9B0(a0, *(void **)((char *)a0 + 0x28));

    if (r != 0) {
        sub_801D788(a0, r);
    }
}

void sub_801DB80(void *a0)
{
    extern void *gUnknown_03003450;

    *(void **)((char *)gUnknown_03003450 + 0x9c0 + 0xc) =
        *(void **)((char *)a0 + 0x2c);
}

/* Allocates a 0x1c-byte node from EWRAM the same way the sub_803DA80 family
 * elsewhere in the ROM does (see notes/parked.md's winx-dz5/winx-q0w/winx-1g9
 * entries), clears it with a plain memset that inlines to the same
 * MOV+STMIA burst per
 * notes/quirks/a-small-word-typed-memset-inlines-instead-of-calling-rt-memclr_w.md,
 * then copies four (offset, size) halfword pairs from the source struct and
 * three trailing header fields (two halfwords, one byte read as a halfword
 * and truncated on store) before pushing the node onto a0's list at +0x28. */
void sub_801DA46(void *a0, void *a1)
{
    extern void *GetEWRAMStart(void);
    extern void *sub_803DA80(unsigned int size, void *heap, int a2, int a3);
    extern void *memset(void *, int, unsigned int);
    void *src = *(void **)a1;
    struct SpriteRecord *buf =
        (struct SpriteRecord *)sub_803DA80(0x1c, GetEWRAMStart(), 0, 0);
    unsigned char i;

    if (buf != 0) {
        memset(buf, 0, 0x1c);
    }
    for (i = 0; i < 4; i++) {
        buf->field_00[i] = *(unsigned short *)((char *)src + i * 2 + 4);
        buf->field_08[i] = *(unsigned short *)((char *)src + i * 2 + 0xc);
    }
    buf->field_10 = *(unsigned short *)((char *)src + 0x14);
    buf->field_12 = *(unsigned short *)((char *)src + 0x16);
    buf->field_14 = (unsigned char)*(unsigned short *)((char *)src + 0x18);
    buf->field_18 = *(void **)((char *)a0 + 0x28);
    *(void **)((char *)a0 + 0x28) = buf;
}

/* sub_801DB3E stays in asm/nonmatching/split_801D9B0/ -- see notes/parked.md. */

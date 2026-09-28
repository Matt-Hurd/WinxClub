/* Two functions of split_801D9B0; the rest of the unit is still assembly in
 * asm/nonmatching/split_801D9B0/.
 *
 * `a0` is a Default* (include/Default.hpp); Default.hpp is a C++ class
 * header this .c unit cannot include (tcc, not tcpp), so the struct below
 * mirrors the fields reached here: field_08/field_18 are Default's
 * sprite_08..sprite_0e/sprite_18..sprite_1e (an indexed array reproduces the
 * hand-split offsets the same way, see
 * notes/quirks/an-indexed-struct-array-access-compiles-the-same-as-the-hand-
 * split-offset.md); field_2c is a Sprite* (include/Sprite.h); field_28 is
 * the SpriteRecord list head sub_801DA46 pushes onto (include/SpriteRecord.h).
 */

#include "Sprite.h"
#include "SpriteRecord.h"

struct GameObj {
    char gap_00[8];
    unsigned short field_08[4];
    char gap_10[0x18 - 0x10];
    unsigned short field_18[4];
    char gap_20[0x28 - 0x20];
    struct SpriteRecord *field_28;
    struct Sprite *field_2c;
};

extern unsigned short sub_803F6B4(void *a0);
extern void sub_80007A0(void *a0, int a1, int a2);
extern void sub_803FC14(void *a0);
extern void sub_8000914(void *a0);

void sub_801DAA0(struct GameObj *a0, void *a1)
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
        a0->field_08[i] = *(unsigned short *)((char *)src + i * 2 + 6);
        if (a0->field_18[i] == 0) {
            a0->field_18[i] = *(unsigned short *)((char *)src + i * 2 + 6);
        }
        i++;
    } while (i < 4);
    return;

mode1:
    do {
        a0->field_18[i] = *(unsigned short *)((char *)src + i * 2 + 6);
        i++;
    } while (i < 4);
}

void sub_801DAEC(struct GameObj *a0, void *a1)
{
    void *src = *(void **)a1;
    unsigned short count = *(unsigned short *)((char *)src + 6);
    struct Sprite *p = a0->field_2c;
    unsigned int flag;

    if (count == 0)
        goto body;
    flag = (p->field_00 << 0x15) >> 0x1f;
    if (flag != 0)
        return;

body:
    a0->field_18[0] = *(unsigned short *)((char *)src + 4);
    a0->field_18[1] = *(unsigned short *)((char *)src + 4);
    a0->field_18[2] = *(unsigned short *)((char *)src + 4);
    a0->field_18[3] = *(unsigned short *)((char *)src + 4);

    if (sub_803F6B4(p) != *(unsigned short *)((char *)src + 4)) {
        sub_80007A0(a0->field_2c, *(unsigned short *)((char *)src + 4), 0);
    }

    flag = (a0->field_2c->field_00 << 0x15) >> 0x1f;
    if (flag != 0)
        return;

    sub_803FC14(a0->field_2c);
    sub_8000914(a0->field_2c);
}

/* sub_801D9B0 stays in asm/nonmatching/split_801D9B0/ -- see notes/parked.md. */
extern int sub_801D9B0(void *a0_unused, void *a1);
extern void sub_801D788(void *a0, int a1);

void sub_801DA2A(struct GameObj *a0)
{
    int r = sub_801D9B0(a0, a0->field_28);

    if (r != 0) {
        sub_801D788(a0, r);
    }
}

void sub_801DB80(struct GameObj *a0)
{
    /* gUnknown_03003450 + 0x9cc: probably Singleton_3EA4, no header yet --
     * kept as a raw cast (winx-qhyt.14). */
    extern void *gUnknown_03003450;

    *(void **)((char *)gUnknown_03003450 + 0x9c0 + 0xc) = a0->field_2c;
}

/* Allocates a 0x1c-byte node from EWRAM the same way the sub_803DA80 family
 * elsewhere in the ROM does (see notes/parked.md's winx-dz5/winx-q0w/winx-1g9
 * entries), clears it with a plain memset that inlines to the same
 * MOV+STMIA burst per
 * notes/quirks/a-small-word-typed-memset-inlines-instead-of-calling-rt-memclr_w.md,
 * then copies four (offset, size) halfword pairs from the source struct and
 * three trailing header fields (two halfwords, one byte read as a halfword
 * and truncated on store) before pushing the node onto a0's list at +0x28. */
void sub_801DA46(struct GameObj *a0, void *a1)
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
    buf->field_18 = a0->field_28;
    a0->field_28 = buf;
}

/* sub_801DB3E stays in asm/nonmatching/split_801D9B0/ -- see notes/parked.md. */

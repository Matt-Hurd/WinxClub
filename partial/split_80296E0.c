/* Seven functions of split_80296E0; the rest of the unit is still assembly
 * in asm/nonmatching/split_80296E0/. HostileCreature__PlayerIframe and
 * HostileCreature__DamagePlayer are its own slot bodies, single-field
 * bit tests/sets on a0+0x80+0x2c. HostileCreature__3C, the same shape as
 * Npc::m3C() in partial/split_80253A8.cpp plus a conditional bitfield write,
 * is parked -- see notes/parked.md.
 *
 * HostileCreature__54 and sub_802B0CA are free functions (no hex-offset
 * working label). maybeCall60IfActive, HostileCreature__20,
 * HostileBaseObject__5C and HostileScriptGroups__58 (winx-iez.43's other
 * assigned functions of this unit) all park -- see notes/parked.md.
 */
#include "generated/functions.h"
#include "generated/globals.h"

int sub_80296E0(void *a0)
{
    unsigned int i;

    i = (*(unsigned int *)((char *)a0 + 0x7c) >> 28) & 7;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;
    i++;
    if (i == 5)
        i = 0;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;
    i++;
    if (i == 5)
        i = 0;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;
    i++;
    if (i == 5)
        i = 0;

    if (*(int *)((char *)a0 + i * 4 + 0x38) != 0)
        goto fail;

    return 1;

fail:
    return 0;
}

struct Obj7C {
    char pad_00[0x58];
    int cx;
    int cy;
    char pad_60[0x7c - 0x60];
    unsigned int : 24;
    unsigned int dir : 4;
    unsigned int : 4;
};

void sub_802AC74(struct Obj7C *a0, int *a1)
{
    int dx, dy, adx, ady;

    dx = a1[0] - a0->cx;
    dy = a1[1] - a0->cy;
    adx = (dx < 0) ? -dx : dx;
    ady = (dy < 0) ? -dy : dy;

    if (adx > ady) {
        if (dx > 0)
            a0->dir = 0;
        else
            a0->dir = 2;
    } else if (ady > adx) {
        if (dy > 0)
            a0->dir = 1;
        else
            a0->dir = 3;
    } else {
        if (dx > 0)
            a0->dir = 0;
        else
            a0->dir = 2;
    }
}

void sub_802B0A0(void)
{
}

int HostileCreature__PlayerIframe(void *a0)
{
    return (*(unsigned int *)((char *)a0 + 0x80 + 0x2c) >> 3) & 1;
}

void HostileCreature__DamagePlayer(void *a0)
{
    *(unsigned int *)((char *)a0 + 0x80 + 0x2c) |= 8;
}

extern int *gUnknown_03003E98;

void HostileCreature__54(void)
{
    int v = *(int *)((char *)gUnknown_03003E98 + 8);
    int idx = v & 3;

    if (idx == 3)
        idx = 0;
    sub_8028C2E((char *)gUnknown_0300345C + (unsigned char)(idx + 0x42) * 0x20);
}

extern void sub_801F65C(void *a0);

void sub_802B0CA(void *a0)
{
    unsigned int idx;

    sub_801F65C(a0);

    *(unsigned int *)((char *)a0 + 0x80 + 0xc) =
        (*(unsigned int *)((char *)a0 + 0x80 + 0xc) & 0x8007FFFF) | 0x80000;

    if (*(int *)((char *)a0 + 0x80 + 0x1c) == 9) {
        idx = *(unsigned int *)((char *)a0 + 0x80 + 0x2c) & 7;
        if (!(*(int *)((char *)a0 + idx * 8 + 0x80 + 0x38) & 1)) {
            unsigned char *p = (unsigned char *)gUnknown_03003458 + 0x29 * 0x20;
            p[2]--;
        }
    }

    *(int *)((char *)a0 + 0x80 + 0x1c) = 0xf;
}


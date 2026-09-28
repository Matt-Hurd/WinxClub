/* Functions of split_80017E4; the rest of the unit is still assembly in
 * asm/nonmatching/split_80017E4/.
 */

#include "generated/functions.h"
#include "Unknown_03003448.h"

int sub_80017E4(void *a0, int a1, int a2, int a3)
{
    int r0 = 0;

    switch (a1) {
    case 1:
        r0 = 0x10;
        break;
    case 3:
        r0 = 0xc;
        break;
    case 5:
        r0 = 9;
        break;
    case 7:
        r0 = 8;
        break;
    }

    switch (a3) {
    case 0xa:
        r0 = r0 * 2;
        break;
    case 2:
        r0 = r0 * 3;
        break;
    }

    return r0 * a2;
}

/* Same field layout as sub_80017E4, unpacked from a packed word instead of
 * taking type/size/variant already split out: bits[3:0] type, bits[7:4]
 * variant, bits[18:8] size. Written as a bitfield struct it forces an extra
 * register (`v` no longer aliases the loaded word once it is named `p.type`),
 * so it stays plain shifts, matching the ROM's `lsl`/`lsr` mask pairs -- Thumb
 * has no AND-immediate, so a `& mask` on a compile-time width becomes a
 * shift-left/shift-right pair either way. */
int sub_8001818(void *a0, int *a1, int a2)
{
    int v = *a1;
    int type = (unsigned)(v << 28) >> 28;
    int size = (unsigned)(v << 13) >> 21;

    if (a2 == 0) {
        a2 = (unsigned)(v << 24) >> 28;
    }

    v = 0;
    switch (type) {
    case 1:
        v = 0x10;
        break;
    case 3:
        v = 0xc;
        break;
    case 5:
        v = 9;
        break;
    case 7:
        v = 8;
        break;
    }

    switch (a2) {
    case 0xa:
        v = v * 2;
        break;
    case 2:
        v = v * 3;
        break;
    }

    return size * v;
}

void *sub_800185E(void *a0, int a1)
{
    /* +0x34 falls inside the ambiguous Singleton_3EA0-shaped sub-object at
     * Unknown_03003448's field_04 (see the header note), not one of
     * Unknown_03003448's own declared fields. */
    void *base = *(void **)((char *)a0 + 0x34);
    return (a1 << 4) + (char *)base;
}

void nullsub_21(void)
{
}

void nullsub_22(void)
{
}

int sub_80019A6(struct Unknown_03003448 *a0)
{
    return (unsigned)(a0->field_19e8 << 0xc) >> 0x1f;
}

/* +0x1ad4 and +0x19ec (below, in sub_80019C4/D4/E8/FC) are past
 * field_19e8, the last field Unknown_03003448's header declares -- see the
 * header's own note on why the struct stops there. */
void *sub_80019B4(void *a0)
{
    return sub_800F1DA((char *)a0 + 0x1ad4);
}

int sub_80019C4(void *a0)
{
    return sub_80154CE((char *)a0 + 0x19ec);
}

void sub_80019D4(void *a0, void *a1, int a2)
{
    sub_801549A(a0, (char *)a1 + 0x19ec, (unsigned short)a2);
}

void sub_80019E8(void *a0, void *a1, int a2)
{
    sub_80154AA(a0, (char *)a1 + 0x19ec, (unsigned short)a2);
}

void sub_80019FC(void *a0, void *a1, int a2)
{
    sub_80154BA(a0, (char *)a1 + 0x19ec, (unsigned short)a2);
}

void sub_8001A10(struct Unknown_03003448 *a0, int a1)
{
    unsigned int old = a0->field_19e8;

    old &= ~(1 << 0x14);
    a0->field_19e8 = (a1 << 0x14) | old;
}

int sub_8001A26(struct Unknown_03003448 *a0)
{
    return (unsigned)(a0->field_19e8 << 0xb) >> 0x1f;
}

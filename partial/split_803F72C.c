/* Three of split_803F72C's four functions; sub_803F72C is parked (see
 * notes/parked.md) and stays assembly in asm/nonmatching/split_803F72C/.
 */
#include "EntityState.h"
#include "Singleton_3EA0.hpp"
#include "Sprite.h"

extern void sub_803F8BC(void *a0, void *out);
extern struct Singleton_3EA0_Data *sub_8000D5A(void *a0);
extern void *gUnknown_03003EA0;

void sub_803F774(struct EntityState *a0, unsigned char *a1, unsigned char *a2)
{
    struct { unsigned short x, y; } pos;
    short accumY;
    short accumX;

    accumY = a0->field_1a;
    accumX = a0->field_18;

    *a1 = 0;
    *a2 = 0;

    goto testA;
nextA:
    sub_803F8BC(a0->field_54[*a2 * a0->field_6f], &pos);
    accumY = pos.y + accumY;
    (*a2)++;
testA:
    if (*a2 < a0->field_6e && accumY < 0xa0)
        goto nextA;

    goto testB;
nextB:
    sub_803F8BC(a0->field_54[*a1], &pos);
    accumX = pos.x + accumX;
    (*a1)++;
testB:
    if (*a1 < a0->field_6f && accumX < 0xf0)
        goto nextB;

    if (*a1 == 0) {
        *a2 = 0;
    }
    if (*a2 == 0) {
        *a1 = 0;
    }
}

/* a0 is the 0x58-byte vtable object surveyed as type 9
 * (docs/decisions/drafts/2026-09-27-object-types.md, include/dword_803E374.hpp)
 * -- a pure-virtual C++ class, so this plain C translation unit can only
 * reach it by raw offset. */
void sub_803F814(void *a0, short *out1, short *out2, short *out3, short *out4)
{
    signed char delta;

    if (*((unsigned char *)a0 + 0x38) == 1) {
        unsigned char flags = *((unsigned char *)a0 + 0x1c);

        if (flags & 4) {
            delta = (*(unsigned short *)((char *)a0 + 0x20)
                     - *(unsigned short *)(*(char **)((char *)a0 + 0x14) + 4)) / 2;
        } else if (flags & 2) {
            delta = *(unsigned short *)((char *)a0 + 0x20)
                    - *(unsigned short *)(*(char **)((char *)a0 + 0x14) + 4);
        } else {
            delta = 0;
        }

        if (out1)
            *out1 = *(unsigned short *)((char *)a0 + 0x18) + delta;
        if (out2)
            *out2 = *(unsigned short *)((char *)a0 + 0x18)
                    + *(unsigned short *)(*(char **)((char *)a0 + 0x14) + 4) + delta;
    } else {
        if (out1)
            *out1 = *(unsigned short *)((char *)a0 + 0x18);
        if (out2)
            *out2 = *(unsigned short *)((char *)a0 + 0x18)
                    + *(unsigned short *)((char *)a0 + 0x20);
    }

    if (out3)
        *out3 = *(unsigned short *)((char *)a0 + 0x1a);
    if (out4)
        *out4 = *(unsigned short *)((char *)a0 + 0x1a)
                + *(unsigned short *)((char *)a0 + 0x1e);
}

unsigned short sub_803F898(struct Sprite *a0)
{
    struct Singleton_3EA0_Data *cam = sub_8000D5A(gUnknown_03003EA0);
    struct FrameEntry *cam20 = cam->field_20;

    return (unsigned short)(a0->field_10 - cam20);
}

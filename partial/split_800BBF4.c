/* Two functions of split_800BBF4; the rest of the unit is still assembly in
 * asm/nonmatching/split_800BBF4/, including sub_800C134 (parked, see
 * notes/parked.md).
 *
 * sub_800C0EC and sub_800CADA's `a0` is the camera singleton's data portion,
 * struct Singleton_3EA0_Data (include/Singleton_3EA0.hpp) -- not the
 * level-state object at gUnknown_03003448 winx-qhyt.25 named this unit for;
 * that survey attribution was superseded once winx-qhyt.13 wrote
 * include/Unknown_03003448.h, whose header comment says so explicitly and
 * lists these two functions by name. sub_800BCE4's `a0` is unread and its
 * `a1` is a small binary tree of packed bytes reached through a separate,
 * unidentified pointer; neither is in scope here.
 */
#include "Singleton_3EA0.hpp"

/* a0 is carried through unread -- every caller passes a pointer, but nothing
 * in this function ever loads it; it is only here to keep the register
 * layout the callers already use. */
void sub_800BCE4(void *a0, unsigned char *a1, unsigned int a2, unsigned int a3,
                  unsigned int a4)
{
    unsigned int r0;
    unsigned int node;
    unsigned int left, right;
    unsigned int flag;

    r0 = a4 ? a3 : 0;

    if (a3 >= 8)
        goto done;

    do {
        /* `idx` re-spells `a2 >> 1`, already folded into `p` above: tcc
         * commons the two into one shift and, as a side effect, keeps the
         * register that ends up holding it (r6) on the ROM's side of the
         * `adds r4, r6, r1` a few lines down. Naming the index once and
         * reusing it moves that add's operand order and stops the match. */
        unsigned char *p = a1 + (a2 >> 1);
        unsigned int idx = a2 >> 1;
        unsigned int v;

        if (a2 & 1) {
            v = *p;
            v = (v & ~0x38) | ((r0 & 7) << 3);
            v = (v & ~0x80) | (a4 << 7);
            *p = v;
        } else {
            v = *p;
            v = (v & ~7) | (r0 & 7);
            v = (v & ~0x40) | (a4 << 6);
            *p = v;
        }

        node = *p;
        a2 = idx;

        left = node & 7;
        right = (node >> 3) & 7;

        if (left == right) {
            if ((node & 0x40) && (node >> 7))
                r0++;
        } else if (left > right) {
            r0 = left;
        } else {
            r0 = right;
        }

        flag = ((node & 0x40) && (node >> 7)) ? 1 : 0;

        a4 = flag;
        a3++;
    } while (a3 < 8);

done:
    node = *a1;
    node = (node & ~0x10) | (a4 << 4);
    node &= ~0xf;
    *a1 = (unsigned char)((r0 & 0xf) | node);
}

void sub_800C0EC(struct Singleton_3EA0_Data *a0, unsigned int a1, unsigned int a2)
{
    unsigned int i;
    unsigned char saved;

    for (i = 0; i < a2 - 1; i++) {
        *(unsigned short *)((char *)&a0->field_3a0 + (a1 + i) * 2) =
            (unsigned char)(a1 + i + 1);
    }

    saved = a0->field_3c0;
    *(unsigned short *)((char *)&a0->field_3a0 + (a1 + a2 - 1) * 2) = saved;
    a0->field_3c0 = (unsigned char)a1;
    a0->field_3c1 -= a2;
}

unsigned int sub_800CADA(struct Singleton_3EA0_Data *a0)
{
    return a0->field_78 & 1;
}

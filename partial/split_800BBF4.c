/* Two functions of split_800BBF4; the rest of the unit is still assembly in
 * asm/nonmatching/split_800BBF4/, including sub_800C134 (parked, see
 * notes/parked.md).
 *
 * Both walk the same packed structure at offset 0x3a0/0x3c0 of `a0`: a
 * halfword table at +0x3a0, a byte pair at +0x3c0/+0x3c1, and (for
 * sub_800BCE4) a small binary tree of packed bytes reached through a
 * separate pointer, `a1`. Field names are unknown, so this stays raw offset
 * arithmetic rather than a named struct.
 */

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

void sub_800C0EC(void *a0, unsigned int a1, unsigned int a2)
{
    unsigned int i;
    unsigned char *field;
    unsigned char saved;

    for (i = 0; i < a2 - 1; i++) {
        *(unsigned short *)((char *)a0 + 0x3a0 + (a1 + i) * 2) =
            (unsigned char)(a1 + i + 1);
    }

    field = (unsigned char *)a0 + 0x3c0;
    saved = field[0];
    *(unsigned short *)((char *)a0 + 0x3a0 + (a1 + a2 - 1) * 2) = saved;
    field[0] = (unsigned char)a1;
    field[1] -= a2;
}

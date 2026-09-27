/* One function of split_8016108; the rest of the unit stays assembly in
 * asm/nonmatching/split_8016108/.
 *
 * sub_801613E: if *(a0+0xf8) is set, optionally tell a0's field_3c object
 * about it (sub_80401E4, when its own field0's bit0 is set), reset the
 * flag to 4, clear a0+0xfa and tell sub_8028C2E about gUnknown_0300345C's
 * value plus 0x100 (built as two 8-bit adds in the ROM, same value in C).
 *
 * sub_80162D6 was attempted here too (a straight-line setup sequence for
 * the a0+0x80 sub-object) but two spots would not match: the a0+0x80
 * pointer ("npc") computed once and cached in r5 across several calls comes
 * out of the compiler into r0 first then a MOV to r5, where every C shape
 * tried (a plain assignment before the first call, and an assignment
 * expression inside the first call's argument) put it straight into r5;
 * and the final clamp's val/dest register roles (LDR r1,[r6,#4] vs the
 * ROM's LDR r0,[r6,#4], with STR's source/base swapped to match) is the
 * same class of unreachable-from-source register choice as
 * quirks/add-operand-order-follows-evaluation-not-source.md. Parked; see
 * notes/parked.md.
 */
extern void sub_80401E4(void *a0, int a1);
extern void sub_8028C2E(void *a0);
extern void *gUnknown_0300345C;

void sub_801613E(void *a0)
{
    unsigned char *p1 = (unsigned char *)a0 + 0xf0;

    if (*(p1 + 8) != 0) {
        void *ptr = *(void **)((char *)a0 + 0x3c);
        int flag = *(unsigned int *)ptr & 1;

        if (flag)
            sub_80401E4(ptr, 0);

        *(p1 + 8) = 4;
        *(unsigned short *)((char *)a0 + 0xfa) = 0;
        sub_8028C2E((char *)gUnknown_0300345C + 0x100);
    }
}

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
 *
 * `a0` is a struct Anonymous3 * (include/Anonymous3.hpp is the C++ class
 * header this mirrors; this is a plain .c translation unit compiled by
 * tcc, which cannot parse `class`, so it reaches the fields through
 * include/Anonymous3.h instead).
 */
#include "Anonymous3.h"

extern void sub_80401E4(void *a0, int a1);
extern void sub_8028C2E(void *a0);
extern void *gUnknown_0300345C;

void sub_801613E(void *a0)
{
    /* a0+0xf0, not ((struct Anonymous3 *)a0)->field_f8 directly: removing
     * this split moves a byte (quirks/offset-split-tells-you-where-the-
     * field-boundary-is.md) -- 0xf0 looks like a real boundary this
     * ticket does not claim, not just tcc's own constant synthesis; same
     * as partial/split_80163D4.cpp's own 0x1b cases. */
    unsigned char *p1 = (unsigned char *)a0 + 0xf0;

    if (*(p1 + 8) != 0) {
        void *ptr = ((struct Anonymous3 *)a0)->field_3c;
        int flag = *(unsigned int *)ptr & 1;

        if (flag)
            sub_80401E4(ptr, 0);

        *(p1 + 8) = 4;
        ((struct Anonymous3 *)a0)->field_fa = 0;
        sub_8028C2E((char *)gUnknown_0300345C + 0x100);
    }
}

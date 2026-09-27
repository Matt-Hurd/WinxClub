#include "SlotManager.h"

extern void sub_80050FA(int a0);
extern void *GetEWRAMStart(void);
extern void *sub_803DA80(void *a0, void *a1, void *a2, void *a3);
extern void *sub_803DA9C(void *a0, void *a1, void *a2, void *a3);
extern unsigned int gUnknown_03003468;

/* Finds a free slot index in a0's tables and claims it: when a3 == 0,
 * first looks for an already-free "special" slot 1-3; otherwise (or if
 * none is free) scans slots 4-63 and, on finding a free one, allocates
 * a buffer of a3 bytes (EWRAM-rounded via sub_803DA9C, or a fixed one
 * via sub_803DA80 when a3 rounds to zero words) for it. Either way, a2
 * sets or clears a flag on the claimed slot and a1 is recorded for it,
 * plus a running counter byte is bumped. Returns the claimed index. */
unsigned int sub_803FC68(struct SlotManager *a0, unsigned int a1, int a2, unsigned int a3)
{
    unsigned char idx;
    unsigned int r7;
    void *p;

    if (a3 != 0)
        goto L3;

    idx = 1;
    goto T1;
INCR1:
    idx++;
    if (idx >= 4)
        goto L9;
T1:
    if (a0->field_298[idx] == 0
     && !(a0->field_598[idx] & 1))
        goto L9;
    goto INCR1;

L3:
    idx = 4;
    goto T2;
INCR2:
    idx++;
    if (idx >= 0x40)
        goto L6;
T2:
    if (a0->field_18[idx] != 0)
        goto INCR2;

L6:
    sub_80050FA(gUnknown_03003468);
    r7 = a3 >> 2;
    p = GetEWRAMStart();
    if (r7 == 0)
        goto L7;
    r7 <<= 2;
    p = sub_803DA9C((void *)r7, p, 0, 0);
    goto L8;
L7:
    p = sub_803DA80((void *)4, p, 0, 0);
L8:
    a0->field_18[idx] = p;
    sub_80050FA(0);
    a0->field_198[idx] = a3;
    a0->field_118[idx] = 0;
    a0->field_218[idx] = 0;

L9:
    if (a2 != 0) {
        a0->field_598[idx] = 1;
        goto L11;
    }
    a0->field_598[idx] = 0;
L11:
    a0->field_498[idx] = a1;
    a0->field_618++;

    return idx;
}

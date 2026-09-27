/* Functions of split_80012F0; the rest of the unit is still assembly in
 * asm/nonmatching/split_80012F0/. Six functions in this unit
 * (sub_80012F0, sub_8001338, sub_80013D8, sub_800138E, sub_800149A,
 * sub_8001432) all call the division-by-96 veneer sub_8040550 and use its
 * r1 (quotient) result immediately -- see notes/parked.md and
 * notes/quirks/a-hand-written-division-helper-can-return-a-second-value-in-r1-that-tcc-wont-reproduce.md.
 * They stay in assembly.
 */

#include "generated/functions.h"

void nullsub_20(void)
{
}

void sub_80015E6(void *a0, int a1, int a2)
{
    char *rec = (char *)a0 + 0x1980;
    int *p = (int *)(rec + 0x34);

    p[0] = a1;
    p[1] = a2;
}

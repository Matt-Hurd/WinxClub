/* One function of split_800212C; the rest of the unit is still assembly in
 * asm/nonmatching/split_800212C/. a0 is Singleton_3EA4 (gUnknown_03003EA4),
 * same restriction and pattern as partial/split_8002004.c's sub_8002004:
 * a plain C translation unit cannot include Singleton_3EA4.hpp's class, so
 * field_9a0 is reached by raw offset, typed through Singleton3EA4Records.h.
 */
#include "Singleton3EA4Records.h"

extern void sub_800DEF8(void *a0, int *a1, int a2);

void sub_80023BA(void *a0, int *a1)
{
    /* p[0]/p[1] are field_38/field_3c; a direct ->field_38/->field_3c read
     * here moves a byte
     * (notes/quirks/a-second-pointer-expression-defeats-tccs-reload-elimination.md),
     * so this keeps the indexed form. */
    int *p = (int *)((char *)*(struct Singleton3EA4LevelBounds **)((char *)a0 + 0x9a0) + 0x38);
    int dx = a1[0] - p[0];
    int dy = a1[1] - p[1];
    int diff[2];

    diff[0] = dx;
    diff[1] = dy;
    sub_800DEF8(a0, diff, 0);
}

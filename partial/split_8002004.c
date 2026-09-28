/* Three of the unit's four candidates; sub_8002010 is parked, see
 * notes/parked.md. The rest of the unit is still assembly in
 * asm/nonmatching/split_8002004/. a0 is Singleton_3EA4 (gUnknown_03003EA4);
 * this is a plain C translation unit, so it cannot include
 * Singleton_3EA4.hpp's class -- the fields are reached by raw offset from
 * a0 instead, the same restriction and pattern partial/split_800065C.c's
 * sub_800069A documents, but typed through Singleton3EA4Records.h (a plain
 * struct, no vtable).
 */
#include "Singleton3EA4Records.h"

void *sub_8002004(void *a0)
{
    return (char *)*(struct Singleton3EA4LevelBounds **)((char *)a0 + 0x9a0) + 0x38;
}

void sub_8002020(void *a0, unsigned int a1)
{
    *(unsigned int *)((char *)a0 + 0x9d8) = a1;
}

int sub_80020F8(void *a0, int a1, int a2)
{
    struct Singleton3EA4Entry870 *elem;

    elem = *(struct Singleton3EA4Entry870 **)((char *)a0 + 0x870 + a1 * 0x58) + a2;
    return ((elem->field_0c - elem->field_14) >> 1) / elem->field_02;
}

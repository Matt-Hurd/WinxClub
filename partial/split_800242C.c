/* a0 is Singleton_3EA4 (gUnknown_03003EA4); field_08/field_0c are already
 * at their header offsets (8, 0xc), but field_08's own +0x10 target has no
 * header yet, so that stays raw offset arithmetic. The a1*0x58+0x880/+0x10
 * pair the original code split into a "slot" is Singleton3EA4Entry890,
 * i.e. field_890 (0x870 + 0x20) at a1's 88-byte stride -- same restriction
 * as partial/split_8002004.c: a plain C translation unit cannot include
 * Singleton_3EA4.hpp's class, so it is reached by raw offset from a0,
 * typed through Singleton3EA4Records.h once the pointer is loaded.
 *
 * sub_80024D8 and sub_800242C are parked, see notes/parked.md.
 */
#include "Singleton3EA4Records.h"

void *sub_80024C6(void *a0, unsigned char a1)
{
    void *base = *(void **)((char *)*(void **)((char *)a0 + 8) + 0x10);
    unsigned char idx = *((unsigned char *)*(void **)((char *)a0 + 0xc) + a1);
    unsigned offset = idx * 20;

    return (char *)base + offset;
}

void sub_8002548(void *a0, int a1, int a2, unsigned char a3)
{
    struct Singleton3EA4Entry890 *elem =
        *(struct Singleton3EA4Entry890 **)((char *)a0 + 0x890 + a1 * 0x58);
    void *base = *(void **)((char *)*(void **)((char *)a0 + 8) + 0x10);
    unsigned char idx = *((unsigned char *)*(void **)((char *)a0 + 0xc) + a3);
    unsigned offset = idx * 20;

    elem->field_20[a2] = (char *)base + offset;
}

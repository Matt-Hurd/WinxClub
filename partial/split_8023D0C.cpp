/* Two of split_8023D0C's three assigned functions; the parked sub_8023FE4
 * (see notes/parked.md) is still assembly in asm/nonmatching/split_8023D0C/.
 */
#include "generated/functions.h"
#include "generated/globals.h"

extern "C" void *sub_8023D0C(void *a0)
{
    char *obj = (char *)a0;

    if (obj == 0) {
        obj = (char *)operator new(0x194);
        if (obj == 0) {
            return obj;
        }
    }

    *(unsigned char *)(obj + 0xc) = 0;
    *(unsigned char *)(obj + 0xd) = 0;
    *(int *)(obj + 0xc8) = 0;
    *(int *)(obj + 0xcc) = 0;
    *(int *)(obj + 0xd0) = 0;
    sub_80143E0(obj + 0x11c);

    unsigned char i;
    for (i = 0; i < 16; i++)
        *(int *)(obj + i * 4 + 0xdc) = 0;
    for (i = 0; i < 2; i++)
        *(int *)(obj + i * 4 + 0xd4) = 0;
    for (i = 0; i < 6; i++)
        *(int *)(obj + i * 4 + 0x10) = 0;
    for (i = 0; i < 8; i++)
        *(int *)(obj + i * 4 + 0x28) = 0;
    for (i = 0; i < 6; i++) {
        *(int *)(obj + i * 4 + 0x48) = 0;
        *(int *)(obj + i * 4 + 0x60) = 0;
    }
    for (i = 0; i < 4; i++) {
        *(int *)(obj + i * 4 + 0x78) = 0;
        *(int *)(obj + i * 4 + 0x88) = 0;
    }
    for (i = 0; i < 6; i++) {
        *(int *)(obj + i * 4 + 0x98) = 0;
        *(int *)(obj + i * 4 + 0xb0) = 0;
    }

    return obj;
}

extern "C" void sub_8023DD0(void *a0);
extern "C" void sub_8000DE6(void *a0, void *a1);

/* Walks the +0xdc[16] pointer array sub_8023D0C zeroed and, for each set
 * entry, unlinks it via sub_8000DE6 before clearing the slot. */
extern "C" void sub_8023F88(void *a0, int a1)
{
    char *obj = (char *)a0;
    unsigned char i;

    if (*(int *)(obj + 0x28) != 0)
        sub_8023DD0(obj);

    for (i = 0; i < 16; i++) {
        char *mid = obj + i * 4;
        char *rec = mid + 0xc0;
        if (*(int *)(rec + 0x1c) != 0) {
            sub_8000DE6(gUnknown_03003448, mid + 0xdc);
            *(int *)(rec + 0x1c) = 0;
        }
    }

    sub_8014436(obj + 0x11c, 0);

    if (a1)
        sub_803DA18(obj);
}

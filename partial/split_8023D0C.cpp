/* One function of split_8023D0C; the rest of the unit is still assembly in
 * asm/nonmatching/split_8023D0C/.
 */
#include "generated/functions.h"

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

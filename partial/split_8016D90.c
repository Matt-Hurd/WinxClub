/* One of split_8016D90's four functions; sub_8016F78, sub_8016E20 and
 * sub_8016E8C are parked (see notes/parked.md) and stay assembly in
 * asm/nonmatching/split_8016D90/.
 */
#include "generated/globals.h"

extern void sub_803FEF8(int a0, int a1);
extern void sub_8020AB6(void *a0);
extern void sub_801CBDE(void *a0, int a1);
extern void sub_802459E(void *a0, int a1);
extern void *gUnknown_03003458;
extern void *gUnknown_030034F8;

void sub_8016D90(void *a0, void *a1)
{
    void *obj = *(void **)a1;

    sub_803FEF8(2, *(unsigned short *)((char *)obj + 4) == 1
        || *(unsigned short *)((char *)obj + 4) == 2);

    if (*(unsigned short *)((char *)obj + 4) == 1
        || *(unsigned short *)((char *)obj + 4) == 2) {
        sub_8020AB6(*(void **)((char *)gUnknown_03003458 + 0x20));
    }

    sub_801CBDE(gUnknown_03003458, *(unsigned short *)((char *)obj + 4) == 1
        || *(unsigned short *)((char *)obj + 4) == 2);

    {
        unsigned short mode4 = *(unsigned short *)((char *)obj + 4);
        void *singleton = gUnknown_03003458;
        int flag = (mode4 == 1 || mode4 == 2);
        char *base = (char *)singleton + 0x500;
        unsigned int old = *(unsigned int *)(base + 0x1c);
        *(unsigned int *)(base + 0x1c) = (old & ~0x1000) | (flag << 12);
    }

    sub_802459E(gUnknown_030034F8, *(unsigned short *)((char *)obj + 4) == 1);

    *(unsigned int *)((char *)a0 + 0xc) = (*(unsigned short *)((char *)obj + 4) != 0);
}

/* Two of split_8016D90's four functions; sub_8016F78, sub_8016E20 and
 * sub_8016E8C are parked (see notes/parked.md) and stay assembly in
 * asm/nonmatching/split_8016D90/.
 */
#include "generated/globals.h"
#include "winxclub.h"

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
        sub_8020AB6(((struct Unknown_03003458 *)gUnknown_03003458)->objects[0]);
    }

    sub_801CBDE(gUnknown_03003458, *(unsigned short *)((char *)obj + 4) == 1
        || *(unsigned short *)((char *)obj + 4) == 2);

    {
        unsigned short mode4 = *(unsigned short *)((char *)obj + 4);
        struct Unknown_03003458 *singleton = gUnknown_03003458;
        int flag = (mode4 == 1 || mode4 == 2);
        unsigned int old = singleton->total_object_count;
        singleton->total_object_count = (old & ~0x1000) | (flag << 12);
    }

    sub_802459E(gUnknown_030034F8, *(unsigned short *)((char *)obj + 4) == 1);

    *(unsigned int *)((char *)a0 + 0xc) = (*(unsigned short *)((char *)obj + 4) != 0);
}

/* a0 is genuinely unused. Reading the offset-4 field twice -- once signed
 * for the test and negation, once unsigned for the positive-branch call
 * argument -- lands the instruction count; naming the negated value (rather
 * than casting the negation inline) is what moves the `movs r1,#0` flag
 * load after the zero-extend, matching the ROM's schedule (winx-aif3.10). */
void sub_8016F50(void *a0, void *a1)
{
    char *p = *(void **)a1;
    short v = *(short *)(p + 4);

    if (v > 0) {
        sub_803FEF8(*(unsigned short *)(p + 4), 1);
    } else {
        unsigned short neg = -v;
        sub_803FEF8(neg, 0);
    }
}

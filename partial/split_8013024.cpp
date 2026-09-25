/* Two functions of split_8013024; the rest of the unit is still assembly in
 * asm/nonmatching/split_8013024/.
 */
#include "generated/functions.h"

extern "C" void sub_8013318(void *a0, int a1)
{
    if (*(void **)((char *)a0 + 0x14) != *(void **)((char *)a0 + 0x10)) {
        operator delete[](*(void **)((char *)a0 + 0x10));
        *(void **)((char *)a0 + 0x10) = *(void **)((char *)a0 + 0x14);
    }
    if (a1) {
        sub_803DA18(a0);
    }
}

extern "C" void *memset(void *, int, unsigned int);

/* int * rather than void *: that is what makes tcpp call __rt_memclr_w
 * (word variant) and not __rt_memclr; armlink lands the Thumb BL on
 * __16__rt_memclr_w. */
extern "C" void sub_80132F4(int *a0)
{
    memset(a0, 0, 0x218);
    *((unsigned char *)a0 + 0x214) = 0x80;
    *((unsigned char *)a0 + 0x173) = 0;
}

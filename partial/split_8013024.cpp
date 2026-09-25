/* One function of split_8013024; the rest of the unit is still assembly in
 * asm/nonmatching/split_8013024/. sub_80132F4 is parked -- see
 * notes/parked.md.
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

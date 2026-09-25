/* Two functions of split_80137F8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80137F8/. sub_80137F8 was tried but parked -- see
 * notes/parked.md.
 */
#include "generated/functions.h"

/* Field 0x40 setter; unreferenced by any converted source, called only
 * through data not text (or a table not yet ported). */
extern "C" void sub_80139A4(void *a0, int a1)
{
    *(int *)((char *)a0 + 0x40) = a1;
}

extern "C" int sub_80139A8(void)
{
    return 1;
}

/* One function of split_8012468; the rest of the unit is still assembly in
 * asm/nonmatching/split_8012468/.
 *
 * `a0` is a Default* (include/Default.hpp), but Default.hpp is a C++ class
 * header and this unit is a plain .c translation unit compiled by tcc, which
 * cannot parse `class`; it reaches Default::field_34 through include/GameObj.h
 * instead of including it.
 */

#include "GameObj.h"

extern void gUnknown_03002F48(void *a0, void *a1, unsigned int a2);
extern void sub_80124C8(void *a0);

void sub_8012468(struct GameObj *a0, void *a1, int a2)
{
    unsigned char *dest = a1;
    unsigned int remaining = a2;
    unsigned int avail = a0->field_34;

    if (avail >= remaining) {
        gUnknown_03002F48(a0, dest, remaining);
        return;
    }

    if (avail != 0) {
        unsigned char *p = dest;
        dest += (avail >> 1) << 1;
        remaining -= avail;
        gUnknown_03002F48(a0, p, avail);
    }

    for (;;) {
        unsigned char *p;

        sub_80124C8(a0);
        avail = a0->field_34;
        if (avail >= remaining) {
            gUnknown_03002F48(a0, dest, remaining);
            return;
        }
        p = dest;
        dest += (avail >> 1) << 1;
        remaining -= avail;
        gUnknown_03002F48(a0, p, avail);
        if (remaining == 0)
            return;
    }
}

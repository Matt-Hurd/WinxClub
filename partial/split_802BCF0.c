/* One function of split_802BCF0; the rest of the unit stays assembly in
 * asm/nonmatching/split_802BCF0/.
 *
 * sub_802BEFC is the same idiom as sub_802DDDC (a different unit): run the
 * base body (sub_802E47A), then look up the same field-derived index into
 * gUnknown_0300345C and toggle it through sub_8028BE4/sub_80268AC.
 */
#include "Default.hpp"

extern void sub_802E47A(void *a0);
extern int sub_8028BE4(void *a0);
extern void sub_80268AC(void *a0);
extern void *gUnknown_0300345C;

void sub_802BEFC(void *a0)
{
    struct Default *obj = (struct Default *)a0;
    void *base;

    sub_802E47A(a0);

    base = gUnknown_0300345C;
    if (sub_8028BE4((char *)base
            + ((((obj->field_34 << 6) >> 0x1c) + 0x37) << 5))) {
        base = gUnknown_0300345C;
        sub_80268AC((char *)base
            + ((((obj->field_34 << 6) >> 0x1c) + 0x37) << 5));
    }
}

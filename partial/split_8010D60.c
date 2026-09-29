/* Two functions of split_8010D60; the rest of the unit is still assembly in
 * asm/nonmatching/split_8010D60/, including sub_8010F90, parked (see
 * notes/parked.md). Both functions' a0 is dword_803EC98
 * (include/dword_803EC98.hpp, winx-qhyt.29).
 */
#include "dword_803EC98.hpp"

extern void sub_8010D60(void *a0);
extern int sub_8010ED2(void *a0, unsigned char a1);

int sub_8010F10(void *a0)
{
    int (*fn)(void *, unsigned char) = sub_8010ED2;

    if (((struct dword_803EC98_Data *)a0)->field_6e0 == 0)
        goto fail;
    if (!fn(a0, ((struct dword_803EC98_Data *)a0)->field_6df))
        goto fail;
    if (((struct dword_803EC98_Data *)a0)->field_6e0 & (1 << ((struct dword_803EC98_Data *)a0)->field_6dd))
        sub_8010D60(a0);
    else
        ((struct dword_803EC98_Data *)a0)->field_6dc = 0;
    if (((struct dword_803EC98_Data *)a0)->field_6dc == 0)
    {
        unsigned char idx;
        unsigned char v;

        ((struct dword_803EC98_Data *)a0)->field_6e0 &= ~(1 << ((struct dword_803EC98_Data *)a0)->field_6dd);
        v = ((struct dword_803EC98_Data *)a0)->field_6df + 1;
        ((struct dword_803EC98_Data *)a0)->field_6df = v;
        if (v >= 0xb)
            ((struct dword_803EC98_Data *)a0)->field_6df = 0;
        idx = ((struct dword_803EC98_Data *)a0)->field_6dd + 1;
        ((struct dword_803EC98_Data *)a0)->field_6dd = idx;
        if (idx >= 0xb)
            ((struct dword_803EC98_Data *)a0)->field_6dd = 0;
        ((struct dword_803EC98_Data *)a0)->field_6dc = 1;
        ((struct dword_803EC98_Data *)a0)->field_6e8 = 0;
        ((struct dword_803EC98_Data *)a0)->field_6ec = 0;
    }
    return 1;

fail:
    return 0;
}

int sub_8010ED2(void *a0, unsigned char a1)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    if (a1 >= 0xb)
        return 0;
    if (self->field_6d8 == 0 && self->field_6d0 == a1)
        return 0;
    if (self->field_64c[a1].field_00 == 0)
        return 0;
    return 1;
}

/* Four functions of split_801099C; the rest of the unit is still assembly in
 * asm/nonmatching/split_801099C/, including sub_8010AB4 and sub_8010A0A,
 * both parked (see notes/parked.md). sub_8010B6C's division reaches
 * __16__rt_sdiv
 * (notes/quirks/a-thumb-bl-to-__rt_memclr_w-lands-on-__16__rt_memclr_w.md).
 *
 * sub_80109DE, sub_80109EC, sub_8010B3E and sub_8010B6C's a0 is
 * dword_803EC98 (include/dword_803EC98.hpp, winx-qhyt.29); sub_801099C's a0
 * is a different, still-uncast object (gUnknown_03003448's gap_00, see
 * notes/parked.md-adjacent docs/decisions/drafts/2026-09-27-object-types.md
 * type 13), so its one cast stays.
 */
#include "dword_803EC98.hpp"

extern void *gUnknown_03003E84;
extern void *sub_800529A(void *a0, void *a1, int a2, void *a3);

int sub_80109DE(void *a0)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    return (unsigned short)self->field_10 - self->field_5c - 1;
}

int sub_801099C(void *a0, unsigned int a1)
{
    void *cur;
    void *next;
    void *g;
    unsigned int w0, w4;
    unsigned int i;
    int sum;

    sum = 0;
    cur = *(void **)((char *)a0 + 4);
    for (i = 0; i < a1; i++) {
        g = sub_800529A(gUnknown_03003E84, cur, 8, 0);
        w0 = *(unsigned int *)g;
        w4 = *(unsigned int *)((char *)g + 4);
        sum += w0 >> 16;
        next = (char *)cur + 8;
        next = (char *)next + ((w4 << 19) >> 17);
        cur = (char *)next + ((w4 >> 13) << 2);
    }
    return sum;
}

int sub_80109EC(void *a0)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;
    unsigned int idx;
    unsigned int val;

    idx = self->field_54;
    val = self->field_64c[idx].field_04;
    return (val >> 16) - self->field_60 - 1;
}

int sub_8010B6C(void *a0)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;

    return (self->field_64 - self->field_68) * 1000
        / (int)((self->field_0c >> 4) & 0xff);
}

void sub_8010B3E(void *a0, int a1)
{
    struct dword_803EC98_Data *self = (struct dword_803EC98_Data *)a0;
    int prod;

    prod = self->field_58 * a1;
    self->field_7c = (self->field_7c + prod) & self->field_80;
    self->field_6fc += prod;
    self->field_60 -= a1;
    self->field_64 += a1;
}

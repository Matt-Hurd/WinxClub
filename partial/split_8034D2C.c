/* Two functions of split_8034D2C; the rest of the unit, including
 * sub_8034D98, is still assembly in asm/nonmatching/split_8034D2C/.
 * Boss__50 and Boss__TakeDamage are Boss's working labels for these slots
 * (see include/Boss.hpp), but neither working label is what the mangled
 * name pass renames, so both are written verbatim as plain C functions
 * (Boss.hpp is not included), the same convention as split_803A490.c.
 *
 * Both are the same shape as sub_8036BFC/sub_8036CB4 (split_8036B7C.c,
 * same batch): an index derived from an a0-relative field, scaled by
 * `(unsigned char)idx * 0x20` into gUnknown_0300345C's table, then
 * sub_8028C2E on the resulting slot. gUnknown_0300345C has to be its own
 * statement before the field it is added to, or tcc schedules the field
 * read first and misses the ROM's reg+reg addressing.
 *
 * `a0` is a Default* (include/Default.hpp); Default.hpp is a C++ class
 * header this .c unit cannot include (tcc, not tcpp), so it reaches
 * Default::flags.unk0C through include/GameObj.h; 0xb0/0xb4 are Boss-only
 * scratch past Default's own 0xa0
 * (docs/decisions/drafts/2026-09-27-object-types.md), not Default fields, so
 * those two stay raw offset casts.
 */

#include "GameObj.h"

extern void sub_8028C2E(void *a0);
extern void TakeDamage__7DefaultFv(void *a0);
extern void *gUnknown_0300345C;
extern int *gUnknown_03003E98;

void Boss__50(struct GameObj *a0)
{
    unsigned int v;
    void *base;
    unsigned int idx;

    v = *(unsigned int *)((char *)gUnknown_03003E98 + 8) & 3;
    if (v < 2) {
        base = gUnknown_0300345C;
        idx = (*(unsigned int *)((char *)a0 + 0xb0) >> 19) & 0xff;
        sub_8028C2E((char *)base + (unsigned char)(idx + v) * 0x20);
    }
}

void Boss__TakeDamage(struct GameObj *a0)
{
    void *base;
    unsigned int idx;

    a0->flags.unk0C = (a0->flags.unk0C & 0x8007FFFF) + (0xf << 0x15);
    base = gUnknown_0300345C;
    idx = (*(unsigned int *)((char *)a0 + 0xb4) + 2) & 0xff;
    sub_8028C2E((char *)base + idx * 0x20);
    TakeDamage__7DefaultFv(a0);
}

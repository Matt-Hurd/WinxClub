/* Two of split_8030EEC's four functions; Monster__Intersect is out of scope
 * for this batch and stays assembly in asm/nonmatching/split_8030EEC/.
 * Monster__50 is the vtable's working label -- Monster::m50() -- and shares
 * its shape byte-for-byte with sub_8036CB4 (split_8036B7C, same batch): both
 * gate a call to sub_8028C2E on gUnknown_03003E98[2] & 1. Monster_TakeDamage
 * is a plain working label, not a slot; it also calls Default::TakeDamage()
 * directly (non-virtually) as split_803A490.c's ScannerScriptGroup__Intersect
 * does through the mangled name in its .c translation.
 *
 * Both need `gUnknown_0300345C` read into its own local *before* the field
 * it is added to: written inline in the call expression, tcc schedules the
 * field read first and the instruction order (sub_8036CB4/Monster__50) or
 * the addressing mode (sub_8036BFC) misses; hoisted to its own statement,
 * both match. See split_8036B7C.c, same batch.
 *
 * Structs over casts (winx-qhyt.17): the 0x8c access is Default::flags.unk0C
 * and is now a field. The 0xb0 accesses are past Default (sizeof 0xa0) --
 * a derived-class field with no header yet (same one left as a cast in
 * split_8036B7C.c/split_8034D2C.c) -- and stay casts, as do gUnknown_03003E98
 * and `base`, which are not GameObj at all.
 */
#include "Default.hpp"
#include "Monster.hpp"

extern "C" void sub_8028C2E(void *a0);
extern "C" void *gUnknown_0300345C;
extern "C" int *gUnknown_03003E98;

void Monster::m50()
{
    if (*(int *)((char *)gUnknown_03003E98 + 8) & 1) {
        void *base = gUnknown_0300345C;
        unsigned int idx = (*(unsigned int *)((char *)this + 0x80 + 0x30) >> 19) & 0xff;
        sub_8028C2E((char *)base + idx * 0x20);
    }
}

extern "C" void Monster_TakeDamage(void *a0)
{
    Default *self = (Default *)a0;
    void *base;
    unsigned int idx;

    self->flags.unk0C = (self->flags.unk0C & 0x8007ffff) + (0xf << 0x15);

    base = gUnknown_0300345C;
    idx = (*(unsigned int *)((char *)a0 + 0x80 + 0x30) >> 19) & 0xff;
    sub_8028C2E((char *)base + (unsigned char)(idx + 1) * 0x20);

    self->Default::TakeDamage();
}

/* Two of split_8036B7C's four functions; sub_8036C24 is parked (see
 * notes/parked.md, winx-78k.45) and sub_8036B7C is parked below (this
 * batch, winx-iez.53) -- both stay assembly in
 * asm/nonmatching/split_8036B7C/. `a0` is a Default* (see split_803A490.c
 * and split_80296E0.c for the same raw-offset convention, no Default.hpp
 * include -- these are plain working labels, not vtable slots).
 *
 * sub_8036CB4 is byte-for-byte the same shape as Monster__50
 * (split_8030EEC.cpp, same batch): both gate a call to sub_8028C2E on
 * gUnknown_03003E98[2] & 1. Both need `gUnknown_0300345C` read into its own
 * local *before* the field read: written inline in the call expression, tcc
 * schedules the field read first and never reaches the ROM's reg+reg
 * addressing for the a0-relative load; hoisted to its own statement, both
 * the instruction order and (for sub_8036BFC) the addressing mode match.
 * New quirk filed for this (`gUnknown-0300345c-must-be-loaded-in-its-own-
 * statement-before-the-field-it-is-added-to.md`).
 */

extern void sub_8028C2E(void *a0);
extern void TakeDamage__7DefaultFv(void *a0);
extern void *gUnknown_0300345C;
extern int *gUnknown_03003E98;

void sub_8036BFC(void *a0)
{
    void *base = gUnknown_0300345C;
    unsigned int idx = (*(unsigned int *)((char *)a0 + 0xb0) >> 19) & 0xff;

    sub_8028C2E((char *)base + (unsigned char)(idx + 2) * 0x20);
    TakeDamage__7DefaultFv(a0);
}

void sub_8036CB4(void *a0)
{
    if (*(int *)((char *)gUnknown_03003E98 + 8) & 1) {
        void *base = gUnknown_0300345C;
        unsigned int idx = (*(unsigned int *)((char *)a0 + 0x80 + 0x30) >> 19) & 0xff;
        sub_8028C2E((char *)base + idx * 0x20);
    }
}

#ifndef UNKNOWN_03003448_H
#define UNKNOWN_03003448_H

/* gUnknown_03003448, the level-state object g3003448__Init constructs
 * (operator new(0x1BE0) when placed with a0 == 0). Evidence for the fields
 * below is entirely in partial/split_8000D64.cpp (g3003448__Init,
 * sub_8000E6C, sub_8000FCE, sub_8000EF6 the destructor),
 * partial/split_800105C.cpp (sub_80011CA), partial/split_80012F0.c
 * (sub_80015E6) and partial/split_80017E4.c (sub_80019A6, sub_8001A10,
 * sub_8001A26). Nothing past field_19e8 is in the matched tree:
 * sub_80019B4 reaches +0x1ad4 and sub_80019C4/D4/E8/FC reach +0x19ec, both
 * through opaque helper calls, so the struct stops there rather than
 * guessing the rest of the 0x1BE0 allocation.
 *
 * NOT this object, despite the offset survey grouping them here (winx-qhyt.13):
 * their asm call sites pass a different pointer.
 *
 *   - sub_800B7DC, sub_800B8CE, sub_800CADA, sub_800CD28, sub_800CD58,
 *     sub_800C0EC and sub_800CD04 all take *gUnknown_03003EA0
 *     (include/Singleton_3EA0.hpp) -- confirmed from the literal pools in
 *     asm/nonmatching/split_8000914/sub_8000948.s, split_803FF24/sub_803FF64.s
 *     and split_80296E0/sub_8029B18.s (`ldr r0, [gUnknown_03003EA0]`).
 *     g3003448__Init calls sub_800B7DC(this + 4), which is that same
 *     function's own placement-ctor path (it sets gUnknown_03003EA0 = a0),
 *     so *while this level is active* the camera singleton happens to live
 *     at this + 4 -- but it is a distinct type, addressed through its own
 *     global, not a member of this struct. This resolves the offset
 *     conflict the survey found at 0x54/0x70/0x74/0x78: those all belong to
 *     Singleton_3EA0, not here.
 *   - sub_8010234, sub_801029A, sub_80102D8, sub_8010344, sub_80103EC,
 *     sub_80104BC, sub_80105AE, sub_80109EC, sub_80109DE, sub_8010B3E,
 *     sub_8010B6C, sub_8010ED2, sub_8010F10, sub_8011106 and sub_801114E
 *     all belong to dword_803EC98 (derives from dword_803E684, see
 *     config/vtables.yml), a wholly separate 0x1730-byte object
 *     (`operator new(0x1730)` in split_8010234.cpp's sub_8010234) that only
 *     PlayMovie (asm/nonmatching/split_800ED7C/PlayMovie.s) constructs. This
 *     accounts for the survey's "0x64c..0x70c" and "0x13xx..0x17xx" blocks
 *     and the rest of the 0x54/0x70/0x74 conflict -- none of it is
 *     gUnknown_03003448.
 *   - sub_800C0EC and sub_800CD04 (the "0x3a0/0x3c0" block) are the same
 *     Singleton_3EA0 as the first group, not a third object.
 *   - sub_803EF1C takes *gUnknown_03003458 (include/winxclub.h's
 *     struct Unknown_03003458), per split_80296E0's literal pool
 *     (`gUnknown_03003458`, not gUnknown_03003448).
 *
 * Left unresolved rather than declared: sub_8000FCE reads this object's own
 * a0 directly (confirmed by its shared use of field_19e4 with
 * g3003448__Init) at +0x54 and +0x7a -- offsets that fall inside where
 * sub_800B7DC's Singleton_3EA0 construction (this + 4, size 0x19b0) would
 * also write, since that spans this object's own bytes 4..0x19b4. Whether
 * that is real, deliberate byte-for-byte reuse of the embedded camera's
 * padding, or a sign that sub_8000FCE's a0 is not what it looks like, is
 * not decidable from the matched tree; no field_54 or field_7a is declared
 * here. See docs/decisions/drafts/2026-09-27-object-types.md, type 13.
 */
struct Unknown_03003448 {
  char gap_00[0x19b4]; /* 0x00: vtable, two-step ctor (g3003448__Init writes
                         * __VTABLE__14Singleton_3EB8 then
                         * __VTABLE__350dword_803EC78; also aliased as
                         * gUnknown_03003EB8, same instance -- reconciling
                         * that with include/Singleton_3EB8.hpp's own field
                         * list is not attempted here). 0x04: see the note
                         * above the struct -- NOT declared as an embedded
                         * type, since sub_8000FCE's field_54/field_7a
                         * (below) already conflict with treating it as a
                         * clean sub-object. */
  int field_19b4;      /* sub_80015E6's a1 (rec = a0 + 0x1980, p = rec + 0x34);
                         * zeroed by g3003448__Init */
  int field_19b8;      /* sub_80015E6's a2; zeroed by g3003448__Init */
  unsigned short field_19bc; /* loop bound in sub_8000E6C (elements 1..field_19bc
                               * of field_19c0's array); zeroed by
                               * g3003448__Init and sub_8000E6C */
  unsigned short field_19be; /* zeroed by g3003448__Init and sub_8000E6C only;
                               * not read anywhere in the matched tree */
  void *field_19c0;    /* array of 0x60-byte records: sub_8000E6C indexes it
                         * from 1 through field_19bc and tests ->0x14 as a
                         * nonzero/used flag before calling the still-asm
                         * sub_8000DE6; freed with delete[] in sub_8000E6C
                         * and in the destructor sub_8000EF6 */
  unsigned short field_19c4;
  unsigned short field_19c6;
  unsigned short field_19c8;
  unsigned short field_19ca;
  unsigned short field_19cc;
  unsigned short field_19ce; /* field_19c4..field_19ce: zeroed together by
                               * g3003448__Init and sub_8000E6C; not read
                               * anywhere in the matched tree */
  void *field_19d0;    /* freed with delete[] in sub_8000E6C; not read
                         * anywhere in the matched tree */
  int field_19d4;      /* zeroed by g3003448__Init only */
  unsigned int field_19d8;    /* a free-list count for field_19dc:
                                * g3003448__Init sets 0xFFFF, sub_8000F4C
                                * resets it to 0 when it rebuilds the list */
  unsigned short *field_19dc; /* self-linked free index chain sub_8000F4C
                                * allocates with sub_803DA9C(a2 * 2,
                                * GetEWRAMStart(), 0, 0), each slot pointing
                                * to the next and the last set to -1; freed
                                * with delete[] in sub_8000F4C and (directly,
                                * not through it) in the destructor
                                * sub_8000EF6 */
  unsigned int field_19e0;    /* same shape as field_19d8, for field_19e4:
                                * g3003448__Init sets 0xFFFF, sub_8000FCE
                                * resets it from its own field_54/field_7a
                                * reads (see the note above the struct) */
  unsigned short *field_19e4; /* same shape as field_19dc, built by
                                * sub_8000FCE; freed with delete[] in
                                * sub_8000FCE and in sub_8000EF6 */
  unsigned int field_19e8;    /* flags: g3003448__Init clears bits 0-18 then
                                * sets bits 19 and 20; sub_8000E6C sets bit 18
                                * for the duration of a callback, then clears
                                * bits 0-15 and bit 18; sub_80019A6 tests bit
                                * 19; sub_8001A10 sets/clears bit 20 from its
                                * argument; sub_8001A26 tests bit 20;
                                * sub_80011CA returns its low 16 bits */
};

#endif /* UNKNOWN_03003448_H */

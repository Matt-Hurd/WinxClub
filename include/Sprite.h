#ifndef SPRITE_H
#define SPRITE_H

/* The object Default::field_2c and Default::field_30 point at: the a0 of
 * sub_800069A, sub_8000914, sub_803F6B4, sub_803FA3C, sub_803FC14 and
 * sub_803F6E0. Layout, widths and the reasons are in
 * docs/decisions/drafts/2026-09-27-object-types.md (type 2). Size unknown,
 * at least 0x4c. "Sprite" is a proposed working name, not a ROM name.
 *
 * Only the fields the tree reaches are declared. field_10 is stored through
 * as a pointer by sub_803FA3C and Kiko::m10 subtracts Singleton_3EA0_Data's
 * field_20 from it and shifts by 3, the shape of a pointer difference over
 * 8-byte FrameEntry tables; it stays a word here until field_20 and field_24
 * of Singleton_3EA0_Data are retyped with it. */

/* One 8-byte entry of the two tables Singleton_3EA0_Data.field_20 and
 * field_24 point at. */
struct FrameEntry {
  unsigned int field_00;
  unsigned int field_04;
};

struct Sprite {
  unsigned int field_00;       /* flags; sub_803FC14 also writes byte 3 as a signed char */
  char gap_04[4];
  int field_08;
  int field_0c;
  unsigned int field_10;       /* see the note above: a FrameEntry pointer in fact */
  char gap_14[4];
  void *field_18;              /* a 20-byte record at Singleton_3EA0 + 0x18 + n * 20, or 0 */
  char gap_1c[0xa];
  unsigned short field_26;     /* OAM attribute 0 shape */
  unsigned short field_28;     /* OAM attribute 1 shape */
  char gap_2a[2];
  int field_2c;                /* x, 16.16 */
  int field_30;                /* y, 16.16 */
  int field_34;
  int field_38;
  int field_3c;
  int field_40;
  struct FrameEntry *field_44;
  unsigned int field_48;       /* Singleton_3EA0_Data.field_28 + (field_44->field_04 << 16 >> 14) */
};

#endif /* SPRITE_H */

#ifndef SPRITE_RECORD_H
#define SPRITE_RECORD_H

/* The 0x1c-byte node sub_803DA80 hands to Bird::m20, Critter::m20,
 * WallObject::m20, WallObject::m38, sub_801DA46 (partial/split_801D9B0.c)
 * and sub_801FEFE (partial/split_801FE90.cpp): type 4 in
 * docs/decisions/drafts/2026-09-27-object-types.md. sub_803DA80 is an
 * allocator, so this is only one of the shapes it returns -- do not put
 * sub_8036E04's 0x28-byte record of words here.
 *
 * Ten halfwords at 0x00..0x12, grouped as two 4-entry runs because
 * sub_801DA46 and sub_801FEFE fill them in a `for (i = 0; i < 4; i++)` loop
 * over each run; a byte at 0x14; a pointer at 0x18 (the callers push the
 * node onto a list through it). Bird::m20 and WallObject::m20/m38 read the
 * halfwords signed; sub_801DA46, sub_801FEFE and Critter::m20 read them
 * unsigned. "SpriteRecord" is a proposed working name, not a ROM name. */
struct SpriteRecord {
  unsigned short field_00[4];
  unsigned short field_08[4];
  unsigned short field_10;
  unsigned short field_12;
  unsigned char field_14;
  char gap_15[3];
  void *field_18;
};

#endif /* SPRITE_RECORD_H */

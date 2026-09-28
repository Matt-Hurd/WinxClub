#ifndef SOUNDDRIVER_H
#define SOUNDDRIVER_H

/* The sound driver's 0x30-byte global state, gUnknown_03003BC8. Layout and
 * widths come from partial/split_8011A80.c, partial/split_80120BC.c,
 * src/split_8040978.c and src/split_8040C38.c (python3 scripts/field_access.py
 * --base gUnknown_03003BC8; see docs/decisions/drafts/2026-09-27-object-types.md
 * type 11). gUnknown_03003530/_030037A0 (a related count/array pair) and the
 * offsets only still-assembly code reaches (0x1c's target array, 0x20, 0x2c,
 * 0x68+7 -- see notes/parked.md) are out of scope here.
 *
 * field_12 and field_16 are read signed in split_8011A80.c's sub_8011E52 but
 * unsigned by one other caller each (sub_8011E22 for field_12,
 * src/split_8040978.c's sub_8040978 for field_16); declared signed for the
 * majority, the unsigned reads still work via the implicit conversion.
 *
 * Working names only: field_XX is the offset, nothing else is claimed. */
struct SoundDriver {
  unsigned short field_00; /* flags: bit 1 (sub_8011E3C/sub_8011DB2), bit 8 (sub_8011E46) */
  char gap_02[5];
  unsigned char field_07;  /* a running index against the field_08 limit (sub_8040C38) */
  unsigned char field_08;  /* limit compared against field_07 */
  unsigned char field_09;  /* reload value for field_07 */
  unsigned char field_0a;  /* a counter, incremented on overflow */
  char gap_0b;
  unsigned short field_0c; /* write-only (sub_8040C38) */
  char gap_0e[4];
  unsigned short field_12; /* only read unsigned (sub_8011E22) */
  short field_14;          /* write-only */
  short field_16;          /* read signed by sub_8011E52, unsigned by sub_8040978 --
                             * the latter casts the field's address explicitly */
  unsigned char *field_18; /* base of a byte-indexed table (sub_8040C38) */
  void *field_1c;          /* base of a 4-byte-entry array (sub_80120BC) */
  char gap_20[4];
  unsigned int *field_24;  /* array sub_8040C38 indexes by a field_18[] byte */
  unsigned int field_28;   /* write-only (sub_8040C38) */
  char gap_2c[4];
};

#endif /* SOUNDDRIVER_H */

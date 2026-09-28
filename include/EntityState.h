#ifndef ENTITY_STATE_H
#define ENTITY_STATE_H

/* The object split_80142D0's sub_80143E0/sub_8014436, split_8014738's
 * sub_8014B02/sub_8014B58/sub_8014B66, split_8014DD4's sub_8014E04/
 * sub_8014E76 and split_803F72C's sub_803F774 all reach. Layout, widths
 * and the reasons are in docs/decisions/drafts/2026-09-27-object-types.md
 * (type 12). "EntityState" is a proposed working name, not a ROM name;
 * sub_80143E0 installs __VTABLE__321dword_803E700 at field_00, so the
 * class the ROM built this from is more likely named after that symbol.
 *
 * field_54 is a pointer in sub_8014E76 and sub_803F774
 * (asm/nonmatching/split_8014DD4/sub_8014E76.s and
 * asm/nonmatching/split_803F72C/sub_803F774.s: a single `ldr` of the field
 * followed by an index scaled by #2, i.e. an array of pointers read
 * through it, size field_6e * field_6f) and a plain word everywhere else --
 * sub_80143E0, sub_8014436, sub_8014B02, sub_8014B58 and sub_8014E04 only
 * ever zero it or test it against 0, which is well-defined on a pointer
 * too, so one field serves both and only the two array readers need the
 * pointer type. */

struct EntityState {
  void *field_00;        /* vtable pointer */
  char gap_04[8];
  unsigned char field_0c;
  char gap_0d[0xb];
  short field_18;
  short field_1a;
  char gap_1c[0x12];
  unsigned char field_2e;
  char gap_2f[0x11];
  int field_40;
  char gap_44[0x10];
  void **field_54;        /* array of object pointers, field_6e * field_6f entries */
  int field_58;
  int field_5c;
  int field_60;
  int field_64;
  int field_68;
  unsigned char field_6c;
  unsigned char field_6d;
  unsigned char field_6e; /* row count of the field_54 array */
  unsigned char field_6f; /* column count of the field_54 array */
  int field_70;
  unsigned char field_74;
  unsigned char field_75;
};

#endif /* ENTITY_STATE_H */

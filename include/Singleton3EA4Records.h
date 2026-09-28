#ifndef SINGLETON3EA4RECORDS_H
#define SINGLETON3EA4RECORDS_H

/* Plain structs, no vtable, so a plain C translation unit can use them too
 * (partial/split_800065C.c is a .c file and cannot include Singleton_3EA4.hpp's
 * class, the same restriction noted there for Singleton_3EA0.hpp).
 *
 * Working names only, from docs/decisions/drafts/2026-09-27-object-types.md
 * type 8. Each is the record a Singleton_3EA4 pointer field reaches;
 * fields past the ones evidenced are unknown, not claimed to be absent. */

/* ->0x9a0. sub_800069A (partial/split_800065C.c) and sub_80023BA
 * (partial/split_800212C.c) both read 0x38/0x3c -- the bounds a Sprite's
 * 0x34..0x40 (x/y in 16.16) is compared against. */
struct Singleton3EA4LevelBounds {
  char gap_00[0x38];
  int field_38;
  int field_3c;
};

/* ->0x870[a1]->[a2] (24 bytes each). sub_80020F8 (partial/split_8002004.c)
 * reaches this through a pointer at Singleton_3EA4::field_870 + a1 * 88,
 * then indexes it by a2 * 24. */
struct Singleton3EA4Entry870 {
  char gap_00[0x2];
  unsigned short field_02;
  char gap_04[0x8];
  int field_0c;
  char gap_10[0x4];
  int field_14;
};

/* ->0x890[a1] (the pointer array target, not the 88-byte a1 slot itself).
 * sub_8002548 (partial/split_800242C.c) reads a pointer at 0x20 to a
 * further pointer array, indexed by the caller's a2. */
struct Singleton3EA4Entry890 {
  char gap_00[0x20];
  void **field_20;
};

#endif /* SINGLETON3EA4RECORDS_H */

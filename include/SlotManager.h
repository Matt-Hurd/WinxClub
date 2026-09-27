#ifndef SLOTMANAGER_H
#define SLOTMANAGER_H

/* The 64-slot object manager behind gUnknown_03003E88 and the list node it
 * strings into each slot. Layout and widths come from the matched code in
 * src/split_803FC68.c, split_803FB58.c, split_803FB24.c, the assembly of
 * sub_803FBBC, and partial/split_80177D8.c / split_8017474.cpp.
 *
 * The same object is class Singleton_3E88 in include/Singleton_3E88.hpp
 * (virtual destructor at 0x00, hence gap_00). That header's field_18..field_20
 * fall inside field_18[] here; reconciling the two is the owner's call.
 *
 * Working names only: field_XX is the offset, nothing else is claimed. */

/* One node, 0x1c bytes: sub_803F72C(gUnknown_03003E88, 0x1c, idx) allocates one. */
struct Slot {
  unsigned int field_00;
  unsigned char field_04;
  char gap_05[3];
  unsigned int field_08;
  unsigned short field_0c;
  unsigned short field_0e;
  unsigned short field_10; /* bits 0-5: slot index; bits 6-15: see sub_803FB58 */
  char gap_12[2];
  struct Slot *field_14;   /* the node sub_8017862 walks to next */
  struct Slot *field_18;
};

struct SlotManager {
  char gap_00[0x14];              /* 0x00 vtable, 0x0c a pointer (split_8017474.cpp) */
  unsigned char field_14;         /* default slot index for a3 == 0xff */
  char gap_15[3];
  void *field_18[0x40];           /* per-slot buffer; slot 0 never claimed */
  unsigned short field_118[0x40];
  unsigned short field_198[0x40]; /* buffer size in bytes */
  unsigned short field_218[0x40]; /* running sum of Slot::field_10 >> 6 */
  struct Slot *field_298[0x40];   /* list head, walked via Slot::field_14 */
  struct Slot *field_398[0x40];   /* list tail */
  unsigned int field_498[0x40];
  unsigned short field_598[0x40]; /* bit 0: claimed as a special slot */
  unsigned char field_618;        /* count of claims */
  /* 0x61c: a further pointer table, indexed by a Slot's caller (sub_80177D8) */
};

#endif /* SLOTMANAGER_H */

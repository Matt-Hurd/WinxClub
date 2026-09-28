#ifndef SINGLETON_3EA0_HPP
#define SINGLETON_3EA0_HPP

// Singleton_3EA0
// gUnknown_03003EA0 stores a pointer to this instance in IWRAM.
// sub_8000D5A(ptr) returns ptr+4 (skips vtable), returning a
// pointer to the data portion (Singleton_3EA0_Data).

struct FrameEntry;

struct Singleton_3EA0_Data {
  // 0x00
  unsigned int field_00;
  // 0x04
  unsigned int field_04;
  // 0x08
  unsigned int field_08;
  // 0x0c
  unsigned int field_0c;
  // 0x10
  unsigned int field_10;
  // 0x14
  unsigned int field_14;
  // 0x18
  unsigned int field_18;
  // 0x1c
  unsigned int field_1c;
  // 0x20
  struct FrameEntry *field_20;
  // 0x24
  struct FrameEntry *field_24;
  // 0x28
  unsigned int field_28;
  // 0x2c
  unsigned int field_2c;
  // 0x30
  unsigned int field_30;
  // 0x34
  unsigned int field_34;
  // 0x38
  unsigned int field_38;
  // 0x3c
  unsigned int field_3c;
  // 0x40
  unsigned int field_40;
  // 0x44
  char gap_44[0x10];
  // 0x54
  unsigned int field_54;
  // 0x58
  char gap_58[0x14];
  // 0x6c
  unsigned int field_6c;
  // 0x70
  char gap_70[0x8];
  // 0x78 -- sub_800CADA (partial/split_800BBF4.c) reads bit 0
  unsigned int field_78;
  // 0x7c
  char gap_7c[0x324];
  // 0x3a0 -- halfword table, indexed by a variable index (sub_800C0EC and
  // sub_800CD04, partial/split_800BBF4.c and split_800CD04.c); extent is
  // not proven, so only the element width and base offset are named here.
  unsigned short field_3a0;
  // 0x3a2
  char gap_3a2[0x1e];
  // 0x3c0 -- a head/index byte, walked together with field_3a0's table by
  // sub_800C0EC (partial/split_800BBF4.c)
  unsigned char field_3c0;
  // 0x3c1 -- a count, decremented by sub_800C0EC (partial/split_800BBF4.c)
  unsigned char field_3c1;
  // 0x3c2
  char gap_3c2[0xf56];
  // 0x1318 -- halfword table, stride 10, indexed by a variable index
  // (sub_800CD28 and sub_800CD58, partial/split_800CD04.c); extent is not
  // proven, so only the element width and base offset are named here.
  unsigned short field_1318;
  // 0x131a
  char gap_131a[0x4fe];
  // 0x1818 -- flag, set to 1 (sub_800CD28 and sub_800CD58,
  // partial/split_800CD04.c)
  unsigned int field_1818;
};

#ifdef __cplusplus

class Singleton_3EA0 {
public:
  virtual ~Singleton_3EA0();

  Singleton_3EA0_Data data;
};

extern Singleton_3EA0 *gUnknown_03003EA0;

#else

/* A plain C translation unit cannot declare the class above (it has a
 * vtable), so it sees only the raw pointer -- sub_8000D5A(gUnknown_03003EA0)
 * skips the vtable slot and returns a struct Singleton_3EA0_Data *, which a
 * .c file can use directly since that struct has no vtable of its own. */
extern void *gUnknown_03003EA0;

#endif // __cplusplus

#endif // SINGLETON_3EA0_HPP

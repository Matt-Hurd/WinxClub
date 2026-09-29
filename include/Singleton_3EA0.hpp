#ifndef SINGLETON_3EA0_HPP
#define SINGLETON_3EA0_HPP

// Singleton_3EA0
// gUnknown_03003EA0 stores a pointer to this instance in IWRAM.
// sub_8000D5A(ptr) returns ptr+4 (skips vtable), returning a
// pointer to the data portion (Singleton_3EA0_Data).

struct FrameEntry;

// one entry of Singleton_3EA0_Data::field_1820, 0xc bytes -- sub_800B8CE
// (partial/split_800B6E0.cpp, winx-qhyt.26) walks this array with a pointer,
// not an index, so the element type needs a name to declare that pointer.
struct Singleton_3EA0_Entry_1820 {
  char gap_00[0xb];
  unsigned char field_0b;
};

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
  // 0x44..0x50 -- sub_800B7DC (winx-qhyt.26) zeroes all four
  unsigned int field_44;
  unsigned int field_48;
  unsigned int field_4c;
  unsigned int field_50;
  // 0x54
  unsigned int field_54;
  // 0x58..0x68 -- sub_800B7DC (winx-qhyt.26) zeroes all five
  unsigned int field_58;
  unsigned int field_5c;
  unsigned int field_60;
  unsigned int field_64;
  unsigned int field_68;
  // 0x6c, 0x6e -- sub_800B7DC (winx-qhyt.26) zeroes both halfwords
  unsigned short field_6c;
  unsigned short field_6e;
  // 0x70, 0x72 -- sub_800B7DC (winx-qhyt.26) zeroes both halfwords
  unsigned short field_70;
  unsigned short field_72;
  // 0x74 -- sub_800B7DC (winx-qhyt.26) clears bit 0
  unsigned int field_74;
  // 0x78 -- sub_800CADA (partial/split_800BBF4.c) reads bit 0;
  // sub_800B7DC (winx-qhyt.26) zeroes it at construction
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
  char gap_3c2[0xf4a];
  // 0x130c, 0x1310 -- sub_800B7DC (winx-qhyt.26) zeroes both at construction;
  // sub_800B8CE later points them at the two memset'd buffers its own
  // caller's raw offsets 0xbd0 and 0xc50 name (Data-relative 0xbcc, 0xc4c)
  void *field_130c;
  void *field_1310;
  // 0x1314
  char gap_1314[4];
  // 0x1318 -- halfword table, stride 10, indexed by a variable index
  // (sub_800CD28 and sub_800CD58, partial/split_800CD04.c); extent is not
  // proven, so only the element width and base offset are named here.
  unsigned short field_1318;
  // 0x131a
  char gap_131a[0x4fa];
  // 0x1814 -- sub_800B8CE (winx-qhyt.26) zeroes it
  int field_1814;
  // 0x1818 -- flag, set to 1 (sub_800CD28 and sub_800CD58,
  // partial/split_800CD04.c)
  unsigned int field_1818;
  // 0x181c
  char gap_181c[4];
  // 0x1820, 0x20 entries -- sub_800B8CE (winx-qhyt.26) clears the flag byte
  // at +0xb of each entry; count is exact (a compile-time do/while loop)
  struct Singleton_3EA0_Entry_1820 field_1820[0x20];
  // 0x19a0 -- sub_800B8CE (winx-qhyt.26) zeroes it
  int field_19a0;
  // 0x19a4
  char gap_19a4[5];
  // 0x19a9 -- sub_800B8CE (winx-qhyt.26) tests it != 0
  unsigned char field_19a9;
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

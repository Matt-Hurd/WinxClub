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

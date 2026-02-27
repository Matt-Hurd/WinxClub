// Singleton_3EA0 — camera/world state singleton
// gUnknown_03003EA0 stores a pointer to this instance in IWRAM.
// sub_8000D5A(ptr) returns ptr+4 (skips vtable), so offsets after
// that call are relative to field_04.

class Singleton_3EA0 {
public:
  virtual ~Singleton_3EA0();

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
  unsigned int field_20;
  // 0x24 — camera x position (accessed via sub_8000D5A + 0x20)
  unsigned int camera_x;
  // 0x28
  unsigned int field_28;
  // 0x2c — camera y position (accessed via sub_8000D5A + 0x28)
  unsigned int camera_y;
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
  unsigned int field_44;
  // 0x48
  char gap_48[0x10];
  // 0x58
  unsigned int field_58;
  // 0x5c
  char gap_5c[0x14];
  // 0x70
  unsigned int field_70;
};

extern Singleton_3EA0 *gUnknown_03003EA0;

Singleton_3EA0::~Singleton_3EA0() { gUnknown_03003EA0 = 0; }

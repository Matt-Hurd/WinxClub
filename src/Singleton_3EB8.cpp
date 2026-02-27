// Singleton_3EB8
// gUnknown_03003EB8 stores a pointer to this instance in IWRAM.
// Very heavily referenced (~65 asm refs) — used in Default destructor,
// entity management, combat, level loading, and many ScriptGroup files.

class Singleton_3EB8 {
public:
  virtual ~Singleton_3EB8();

  // 0x04
  char gap_04[0x6];
  // 0x0a
  unsigned short field_0a;
  // 0x0c
  unsigned short field_0c;
  // 0x0e
  unsigned short field_0e;
  // 0x10
  unsigned int field_10;
  // 0x14
  unsigned int field_14;
  // 0x18
  char gap_18[0x4];
  // 0x1c
  unsigned short field_1c;
  // 0x1e
  unsigned short field_1e;
  // 0x20
  unsigned int field_20;
  // 0x24
  unsigned int field_24;
  // 0x28
  unsigned short field_28;
  // 0x2a
  unsigned short field_2a;
  // 0x2c
  unsigned int field_2c;
  // 0x30
  unsigned int field_30;
  // 0x34
  unsigned int field_34;
  // 0x38
  unsigned int field_38;
};

extern Singleton_3EB8 *gUnknown_03003EB8;

Singleton_3EB8::~Singleton_3EB8() { gUnknown_03003EB8 = 0; }

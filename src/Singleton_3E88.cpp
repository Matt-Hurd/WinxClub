// Singleton_3E88
// gUnknown_03003E88 stores a pointer to this instance in IWRAM.
// Used by split_801D564.s (Default constructor), split_80177D8.s, etc.

class Singleton_3E88 {
public:
  virtual ~Singleton_3E88();

  // 0x04
  char gap_04[0x6];
  // 0x0a
  unsigned short field_0a;
  // 0x0c
  unsigned int field_0c;
  // 0x10
  unsigned int field_10;
  // 0x14
  unsigned int field_14;
  // 0x18
  unsigned int field_18;
  // 0x1c
  unsigned short field_1c;
  // 0x1e
  unsigned short field_1e;
  // 0x20
  unsigned int field_20;
};

extern Singleton_3E88 *gUnknown_03003E88;

Singleton_3E88::~Singleton_3E88() { gUnknown_03003E88 = 0; }

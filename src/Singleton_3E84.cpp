// Singleton_3E84
// gUnknown_03003E84 stores a pointer to this instance in IWRAM.
// Used heavily by split_8000C7C.s (sub_8000C7C etc.)

class Singleton_3E84 {
public:
  virtual ~Singleton_3E84();

  // 0x04
  char gap_04[0x8];
  // 0x0c
  unsigned int field_0c;
  // 0x10
  char gap_10[0x4];
  // 0x14
  unsigned int field_14;
  // 0x18
  char gap_18[0x10];
  // 0x28
  unsigned int field_28;
};

extern Singleton_3E84 *gUnknown_03003E84;

Singleton_3E84::~Singleton_3E84() { gUnknown_03003E84 = 0; }

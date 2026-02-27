// Singleton_3EA8
// gUnknown_03003EA8 stores a pointer to this instance in IWRAM.

class Singleton_3EA8 {
public:
  virtual ~Singleton_3EA8();

  // 0x04
  char gap_04[0x10];
  // 0x14
  unsigned int field_14;
};

extern Singleton_3EA8 *gUnknown_03003EA8;

Singleton_3EA8::~Singleton_3EA8() { gUnknown_03003EA8 = 0; }

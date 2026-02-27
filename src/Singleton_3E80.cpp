// Singleton_3E80
// gUnknown_03003E80 stores a pointer to this instance in IWRAM.

class Singleton_3E80 {
public:
  virtual ~Singleton_3E80();

  // 0x04
  char gap_04[0x10];
  // 0x14
  unsigned int field_14;
  // 0x18
  char gap_18[0x8];
  // 0x20
  unsigned int field_20;
};

extern Singleton_3E80 *gUnknown_03003E80;

Singleton_3E80::~Singleton_3E80() { gUnknown_03003E80 = 0; }

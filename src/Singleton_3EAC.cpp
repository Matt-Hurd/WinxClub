// Singleton_3EAC
// gUnknown_03003EAC stores a pointer to this instance in IWRAM.

class Singleton_3EAC {
public:
  virtual ~Singleton_3EAC();

  // 0x04
  char gap_04[0x6];
  // 0x0a
  unsigned short field_0a;
};

extern Singleton_3EAC *gUnknown_03003EAC;

Singleton_3EAC::~Singleton_3EAC() { gUnknown_03003EAC = 0; }

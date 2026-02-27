// Singleton_3EBC
// gUnknown_03003EBC stores a pointer to this instance in IWRAM.

class Singleton_3EBC {
public:
  virtual ~Singleton_3EBC();

  // 0x04
  char gap_04[0x8];
  // 0x0c
  unsigned int field_0c;
};

extern Singleton_3EBC *gUnknown_03003EBC;

Singleton_3EBC::~Singleton_3EBC() { gUnknown_03003EBC = 0; }

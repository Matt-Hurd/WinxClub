extern unsigned int gUnknown_03003E80;

class Singleton_3E80 {
public:
  virtual ~Singleton_3E80();
};

Singleton_3E80::~Singleton_3E80() { gUnknown_03003E80 = 0; }

extern unsigned int gUnknown_03003EAC;

class Singleton_3EAC {
public:
  virtual ~Singleton_3EAC();
};

Singleton_3EAC::~Singleton_3EAC() { gUnknown_03003EAC = 0; }

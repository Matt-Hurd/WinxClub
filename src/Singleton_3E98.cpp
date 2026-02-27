extern unsigned int gUnknown_03003E98;

class Singleton_3E98 {
public:
  virtual ~Singleton_3E98();
};

Singleton_3E98::~Singleton_3E98() { gUnknown_03003E98 = 0; }

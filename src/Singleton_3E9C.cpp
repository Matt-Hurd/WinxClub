extern unsigned int gUnknown_03003E9C;

class Singleton_3E9C {
public:
  virtual ~Singleton_3E9C();
};

Singleton_3E9C::~Singleton_3E9C() { gUnknown_03003E9C = 0; }

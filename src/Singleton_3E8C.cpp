extern unsigned int gUnknown_03003E8C;

class Singleton_3E8C {
public:
  virtual ~Singleton_3E8C();
};

Singleton_3E8C::~Singleton_3E8C() { gUnknown_03003E8C = 0; }

extern unsigned int gUnknown_03003E88;

class Singleton_3E88 {
public:
  virtual ~Singleton_3E88();
};

Singleton_3E88::~Singleton_3E88() { gUnknown_03003E88 = 0; }

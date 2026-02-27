extern unsigned int gUnknown_03003E94;

class Singleton_3E94 {
public:
  virtual ~Singleton_3E94();
};

Singleton_3E94::~Singleton_3E94() { gUnknown_03003E94 = 0; }

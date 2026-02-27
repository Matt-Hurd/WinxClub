extern unsigned int gUnknown_03003E84;

class Singleton_3E84 {
public:
  virtual ~Singleton_3E84();
};

Singleton_3E84::~Singleton_3E84() { gUnknown_03003E84 = 0; }

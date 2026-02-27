extern unsigned int gUnknown_03003E90;

class Singleton_3E90 {
public:
  virtual ~Singleton_3E90();
};

Singleton_3E90::~Singleton_3E90() { gUnknown_03003E90 = 0; }

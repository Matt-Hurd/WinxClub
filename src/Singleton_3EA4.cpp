extern unsigned int gUnknown_03003EA4;

class Singleton_3EA4 {
public:
  virtual ~Singleton_3EA4();
};

Singleton_3EA4::~Singleton_3EA4() { gUnknown_03003EA4 = 0; }

extern unsigned int gUnknown_03003EBC;

class Singleton_3EBC {
public:
  virtual ~Singleton_3EBC();
};

Singleton_3EBC::~Singleton_3EBC() { gUnknown_03003EBC = 0; }

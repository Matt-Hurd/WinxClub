// Singleton_3E9C
// gUnknown_03003E9C stores a pointer to this instance in IWRAM.
// Minimal assembly references — no field offsets identifiable.

class Singleton_3E9C {
public:
  virtual ~Singleton_3E9C();
};

extern Singleton_3E9C *gUnknown_03003E9C;

Singleton_3E9C::~Singleton_3E9C() { gUnknown_03003E9C = 0; }

// Singleton_3E8C
// gUnknown_03003E8C stores a pointer to this instance in IWRAM.
// Minimal assembly references — no field offsets identifiable.

class Singleton_3E8C {
public:
  virtual ~Singleton_3E8C();
};

extern Singleton_3E8C *gUnknown_03003E8C;

Singleton_3E8C::~Singleton_3E8C() { gUnknown_03003E8C = 0; }

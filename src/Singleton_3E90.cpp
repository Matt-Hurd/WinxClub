// Singleton_3E90
// gUnknown_03003E90 stores a pointer to this instance in IWRAM.
// Minimal assembly references — no field offsets identifiable.

class Singleton_3E90 {
public:
  virtual ~Singleton_3E90();
};

extern Singleton_3E90 *gUnknown_03003E90;

Singleton_3E90::~Singleton_3E90() { gUnknown_03003E90 = 0; }

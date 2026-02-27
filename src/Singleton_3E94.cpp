// Singleton_3E94
// gUnknown_03003E94 stores a pointer to this instance in IWRAM.
// Minimal assembly references — no field offsets identifiable.

class Singleton_3E94 {
public:
  virtual ~Singleton_3E94();
};

extern Singleton_3E94 *gUnknown_03003E94;

Singleton_3E94::~Singleton_3E94() { gUnknown_03003E94 = 0; }

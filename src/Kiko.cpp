// Kiko ScriptGroup — derived from Default
// Stub constructor triggers vtable emission; real constructor stays in assembly.

#include "Default.hpp"

class Kiko : public Default {
public:
  Kiko();
  virtual void m00();   // override slot 0
  virtual void m04();   // override slot 1
  virtual void m08();   // override slot 2
  virtual void m10();   // override slot 4
};

Kiko::Kiko() {}

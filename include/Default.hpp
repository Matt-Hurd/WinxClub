#ifndef DEFAULT_HPP
#define DEFAULT_HPP

// Default ScriptGroup base class
// Virtual method names preserve decomp-discovered names where known.

class Default {
public:
  Default();
  virtual void m00();          // slot 0  (0x00)
  virtual void m04();          // slot 1  (0x04)
  virtual void m08();          // slot 2  (0x08)
  virtual void m0C();          // slot 3  (0x0C)
  virtual void m10();          // slot 4  (0x10)
  virtual void m14();          // slot 5  (0x14)
  virtual void m18();          // slot 6  (0x18)
  virtual void m1C();          // slot 7  (0x1C)
  virtual void m20();          // slot 8  (0x20)
  virtual void DamagePlayer(); // slot 9  (0x24)
  virtual void PlayerIframe(); // slot 10 (0x28)
  virtual void Attack();       // slot 11 (0x2C)
  virtual void TakeDamage();   // slot 12 (0x30)
  virtual void Intersect();    // slot 13 (0x34)
  virtual void m38();          // slot 14 (0x38)
  virtual void m3C();          // slot 15 (0x3C)
  virtual void m40();          // slot 16 (0x40)
  virtual void m44();          // slot 17 (0x44)
  virtual void Dying();        // slot 18 (0x48)
  virtual void Dead();         // slot 19 (0x4C)
};

#endif // DEFAULT_HPP

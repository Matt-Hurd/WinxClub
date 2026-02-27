#ifndef DEFAULT_HPP
#define DEFAULT_HPP

#include "winxclub.h"

// Default (GameObj) ScriptGroup base class
// sizeof(Default) = 0xa0 (160 bytes)
// Member layout derived from GameObj.hpp and Init_and_add_some_object analysis

class Default {
public:
  Default();
  virtual ~Default();          // slot 0 — destructor (m00 in original asm)
  virtual void m04();          // slot 1
  virtual void m08();          // slot 2
  virtual void m0C();          // slot 3
  virtual void m10();          // slot 4
  virtual void m14();          // slot 5
  virtual void m18();          // slot 6
  virtual void m1C();          // slot 7
  virtual void m20();          // slot 8
  virtual void DamagePlayer(); // slot 9
  virtual void PlayerIframe(); // slot 10
  virtual void Attack();       // slot 11
  virtual void TakeDamage();   // slot 12
  virtual void Intersect();    // slot 13
  virtual void m38();          // slot 14
  virtual void m3C();          // slot 15
  virtual void m40();          // slot 16
  virtual void m44();          // slot 17
  virtual void Dying();        // slot 18
  virtual void Dead();         // slot 19

  // 0x04
  short field_04;
  char gap_06[2];
  // 0x08
  unsigned short sprite_08;
  unsigned short sprite_0a;
  unsigned short sprite_0c;
  unsigned short sprite_0e;
  // 0x10
  char gap_10[8];
  // 0x18
  unsigned short sprite_18;
  unsigned short sprite_1a;
  unsigned short sprite_1c;
  unsigned short sprite_1e;
  // 0x20
  unsigned short field_20;
  unsigned short field_22;
  unsigned short field_24;
  unsigned short field_26;
  // 0x28
  unsigned int field_28;
  unsigned int field_2c;
  unsigned int field_30;
  unsigned int field_34;
  // 0x38
  unsigned int field_38[5];
  // 0x4c
  const char *name;
  // 0x50
  char gap_50[8];
  // 0x58
  int x_pos;
  int y_pos;
  int x_speed;
  int y_speed;
  int field_68;
  int field_6c;
  // 0x70
  int field_70;
  int field_74;
  int field_78;
  // 0x7c
  union GameObjDirectionAndMoreUnion directionAndMore;
  // 0x80
  struct GameObjUnknown flags;
};

#endif // DEFAULT_HPP

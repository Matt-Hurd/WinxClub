#ifndef GAMEOBJ_H
#define GAMEOBJ_H

#include "winxclub.h"

/* The C-includable mirror of include/Default.hpp's layout: a plain struct at
 * Default's offsets (0x00 the vtable pointer, then Default.hpp's members
 * verbatim, field_XX names, gap_ padding) for .c units that cannot include
 * Default.hpp (it is a C++ class) and .cpp units that hand-declare Default's
 * mangled slot names (a `struct Default` here would collide with those).
 * Keep the two in sync by hand -- gen.py does not derive one from the other. */

struct Sprite;
struct SpriteRecord;

struct GameObj {
  // 0x00
  void *vtable;
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
  struct SpriteRecord *field_28;
  struct Sprite *field_2c;
  struct Sprite *field_30;
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

#endif // GAMEOBJ_H

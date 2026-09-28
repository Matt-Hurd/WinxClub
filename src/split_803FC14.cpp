#include "Singleton_3EA0.hpp"
#include "Sprite.h"

extern "C" Singleton_3EA0_Data *sub_8000D5A(void *ptr);

extern "C" void sub_803FC14(struct Sprite *a0) {
  Singleton_3EA0_Data *cam = sub_8000D5A(gUnknown_03003EA0);
  unsigned int cam_y = cam->field_28;
  unsigned int field4 = a0->field_44->field_04;
  field4 = (field4 << 16) >> 14;
  cam_y += field4;
  a0->field_48 = cam_y;

  int val_c = a0->field_0c;
  a0->field_08 = val_c;
  long long v = (long long)val_c << 16;
  int q = (int)(v / 0x10BE20);
  *((signed char *)&a0->field_00 + 3) = (signed char)(q / 0x10000);

  a0->field_00 |= 0x20;
}

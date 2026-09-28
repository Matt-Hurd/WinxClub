#include "Singleton_3EA0.hpp"
#include "Sprite.h"

extern "C" Singleton_3EA0_Data *sub_8000D5A(void *ptr);

extern "C" int sub_803F6E0(struct Sprite *a0) {
  Singleton_3EA0_Data *cam = sub_8000D5A(gUnknown_03003EA0);
  unsigned int cam_y = cam->field_28;
  unsigned int field4 = a0->field_44->field_04;
  field4 = (field4 << 16) >> 14;
  cam_y += field4;
  return (int)(a0->field_48 - cam_y) >> 2;
}

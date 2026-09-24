#include "Singleton_3EA0.hpp"

extern "C" Singleton_3EA0_Data *sub_8000D5A(void *ptr);

extern "C" int sub_803F6E0(void *a0) {
  Singleton_3EA0_Data *cam = sub_8000D5A(gUnknown_03003EA0);
  unsigned int p44_val = *(unsigned int *)((char *)a0 + 0x44);
  unsigned int cam_y = cam->field_28;
  unsigned int field4 = *(unsigned int *)(p44_val + 4);
  field4 = (field4 << 16) >> 14;
  cam_y += field4;
  unsigned int p48_val = *(unsigned int *)((char *)a0 + 0x48);
  return (int)(p48_val - cam_y) >> 2;
}

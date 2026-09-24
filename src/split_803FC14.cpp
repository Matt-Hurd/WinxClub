#include "Singleton_3EA0.hpp"

extern "C" Singleton_3EA0_Data *sub_8000D5A(void *ptr);

extern "C" void sub_803FC14(void *a0) {
  Singleton_3EA0_Data *cam = sub_8000D5A(gUnknown_03003EA0);
  unsigned int p44_val = *(unsigned int *)((char *)a0 + 0x44);
  unsigned int cam_y = cam->field_28;
  unsigned int field4 = *(unsigned int *)(p44_val + 4);
  field4 = (field4 << 16) >> 14;
  cam_y += field4;
  *(unsigned int *)((char *)a0 + 0x48) = cam_y;

  int val_c = *(int *)((char *)a0 + 0xc);
  *(int *)((char *)a0 + 8) = val_c;
  long long v = (long long)val_c << 16;
  int q = (int)(v / 0x10BE20);
  *(signed char *)((char *)a0 + 3) = (signed char)(q / 0x10000);

  *(unsigned int *)a0 |= 0x20;
}

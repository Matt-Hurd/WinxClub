#include "Singleton_3E88.hpp"

extern "C" void sub_803FB24(void *a0, unsigned int a1, unsigned char a2,
                             unsigned char a3) {
  unsigned short half;
  *(unsigned int *)a0 = a1;
  if (a3 == 0xff) {
    a3 = *((unsigned char *)gUnknown_03003E88 + 0x14);
  }
  half = *(unsigned short *)((char *)a0 + 0x10);
  half = ((half >> 6) << 6) | (a3 & 0x3F);
  *(unsigned short *)((char *)a0 + 0x10) = half;
  *(unsigned char *)((char *)a0 + 4) = a2;
  *(unsigned int *)((char *)a0 + 8) = 0;
  *(unsigned short *)((char *)a0 + 0xc) = 0xFFFE;
  *(unsigned short *)((char *)a0 + 0xe) = 0xFFFE;
  *(unsigned int *)((char *)a0 + 0x14) = 0;
  *(unsigned int *)((char *)a0 + 0x18) = 0;
}

#include "Singleton_3EA0.hpp"
#include "generated/functions.h"

extern "C" void sub_803FA3C(void *a0, void *a1, void *a2, int a3) {
  unsigned int flags;
  unsigned short half;
  void *tmp;
  int cond;

  flags = *(unsigned int *)a0;
  if (flags & 0x1000) {
    sub_800C1CA(gUnknown_03003EA0, a0);
  }
  *(void **)((char *)a0 + 0x10) = a2;
  tmp = 0;
  if (a3 != 0) {
    tmp = a1;
  }
  *(void **)((char *)a0 + 0x18) = tmp;
  sub_80003F4(a0);
  sub_8000324(a0);
  cond = 1;
  if ((*(unsigned int *)((char *)a1 + 4) & 0xF) != 9) {
    cond = 0;
  }
  half = *(unsigned short *)((char *)a0 + 0x26);
  half = (half & ~0x2000) | ((unsigned int)(cond << 31) >> 18);
  *(unsigned short *)((char *)a0 + 0x26) = half;
  flags = *(unsigned int *)a0;
  if ((flags & 0x200) == 0) {
    sub_800BE0E(gUnknown_03003EA0, a0);
    flags = *(unsigned int *)a0;
    flags |= 0x20;
    flags |= 0x40;
    flags |= 0x80;
    *(unsigned int *)a0 = flags;
  }
}

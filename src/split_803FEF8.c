#include "generated/globals.h"

void sub_803FEF8(unsigned int a0, int a1) {
  unsigned int mask;
  unsigned int idx;
  if (a0 == 0) return;
  mask = 1 << (a0 & 0x1F);
  idx = a0 >> 5;
  if (a1 != 0) {
    gUnknown_03003478[idx] |= mask;
    return;
  }
  gUnknown_03003478[idx] &= ~mask;
}

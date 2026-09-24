#include "generated/globals.h"

int sub_803F708(unsigned int a0) {
  unsigned int mask = 1 << (a0 & 0x1F);
  return a0 == 0 || (gUnknown_03003478[a0 >> 5] & mask) != 0;
}

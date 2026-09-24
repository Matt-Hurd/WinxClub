#include "generated/globals.h"

void sub_8040C38(unsigned short a0) {
  unsigned char v;
  unsigned char lim;
  v = gUnknown_03003BC8[7] + 1;
  gUnknown_03003BC8[7] = v;
  lim = gUnknown_03003BC8[8];
  if (v > lim) {
    unsigned short flags = *(unsigned short *)gUnknown_03003BC8;
    if (!(flags & 0x100)) {
      gUnknown_03003BC8[0xa]++;
      gUnknown_03003BC8[7] = gUnknown_03003BC8[9];
    } else {
      flags |= 8;
      *(unsigned short *)gUnknown_03003BC8 = flags;
    }
  }
  *(unsigned short *)(gUnknown_03003BC8 + 0xc) = a0;
  {
    unsigned char *p = *(unsigned char **)(gUnknown_03003BC8 + 0x18);
    unsigned char idx = gUnknown_03003BC8[7];
    unsigned int val = p[idx];
    unsigned int *arr = *(unsigned int **)(gUnknown_03003BC8 + 0x24);
    *(unsigned int *)(gUnknown_03003BC8 + 0x28) = arr[val];
  }
}

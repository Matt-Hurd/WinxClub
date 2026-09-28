#include "generated/globals.h"
#include "SoundDriver.h"

void sub_8040C38(unsigned short a0) {
  unsigned char v;
  unsigned char lim;
  v = gUnknown_03003BC8.field_07 + 1;
  gUnknown_03003BC8.field_07 = v;
  lim = gUnknown_03003BC8.field_08;
  if (v > lim) {
    unsigned short flags = gUnknown_03003BC8.field_00;
    if (!(flags & 0x100)) {
      gUnknown_03003BC8.field_0a++;
      gUnknown_03003BC8.field_07 = gUnknown_03003BC8.field_09;
    } else {
      flags |= 8;
      gUnknown_03003BC8.field_00 = flags;
    }
  }
  gUnknown_03003BC8.field_0c = a0;
  {
    unsigned char *p = gUnknown_03003BC8.field_18;
    unsigned char idx = gUnknown_03003BC8.field_07;
    unsigned int val = p[idx];
    unsigned int *arr = gUnknown_03003BC8.field_24;
    gUnknown_03003BC8.field_28 = arr[val];
  }
}

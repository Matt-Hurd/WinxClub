#include "generated/globals.h"

void sub_8040978(void *a0) {
  unsigned short flags = *(unsigned short *)((char *)a0 + 4);
  unsigned int idx;
  unsigned int val;
  unsigned int scale;
  unsigned int t;
  unsigned int u;

  if (flags & 8) {
    idx = (*(unsigned char *)((char *)a0 + 0xc) +
           *(signed char *)((char *)a0 + 0xe)) *
              128 +
          *(short *)((char *)a0 + 0x12) + *(short *)((char *)a0 + 0x14);
    val = gUnknown_0804AF2C[idx];
    scale = *(unsigned short *)(gUnknown_03003520 + 0x1a);
    *(unsigned int *)((char *)a0 + 0x44) = scale * val >> 8;
  }
  if (flags & 0x10) {
    u = *(unsigned short *)((char *)a0 + 0x22);
    t = (int)(*(signed char *)((char *)a0 + 0xf) *
              *(unsigned short *)(gUnknown_03003BC8 + 0x16)) >>
        8;
    if (flags & 4) {
      *(unsigned int *)((char *)a0 + 0x38) =
          t * u * *(unsigned int *)((char *)a0 + 0x1c) >> 0x16;
    } else {
      *(unsigned int *)((char *)a0 + 0x38) = t * u >> 6;
    }
  }
  *(unsigned short *)((char *)a0 + 4) = flags & ~0x18;
}

#include "generated/globals.h"
#include "SoundDriver.h"

/* The sound channel this function reaches, survey type 10
 * (docs/decisions/drafts/2026-09-27-object-types.md); local to this file
 * per winx-qhyt.23, not include/ -- sub_8040978 is the only function that
 * reaches it in the tree so far. Working names only: field_XX is the
 * offset, nothing else is claimed. */
struct SoundChannel {
  char gap_00[4];
  unsigned short field_04;
  char gap_06[6];
  unsigned char field_0c;
  char gap_0d[1];
  signed char field_0e;
  signed char field_0f;
  char gap_10[2];
  short field_12;
  short field_14;
  char gap_16[6];
  unsigned int field_1c;
  char gap_20[2];
  unsigned short field_22;
  char gap_24[0x14];
  unsigned int field_38;
  char gap_3c[8];
  unsigned int field_44;
};

void sub_8040978(void *a0) {
  struct SoundChannel *chan = (struct SoundChannel *)a0;
  unsigned short flags = chan->field_04;
  unsigned int idx;
  unsigned int val;
  unsigned int scale;
  unsigned int t;
  unsigned int u;

  if (flags & 8) {
    idx = (chan->field_0c + chan->field_0e) * 128 + chan->field_12 +
          chan->field_14;
    val = gUnknown_0804AF2C[idx];
    scale = *(unsigned short *)(gUnknown_03003520 + 0x1a);
    chan->field_44 = scale * val >> 8;
  }
  if (flags & 0x10) {
    u = chan->field_22;
    t = (int)(chan->field_0f *
              *(unsigned short *)&gUnknown_03003BC8.field_16) >>
        8;
    if (flags & 4) {
      chan->field_38 = t * u * chan->field_1c >> 0x16;
    } else {
      chan->field_38 = t * u >> 6;
    }
  }
  chan->field_04 = flags & ~0x18;
}

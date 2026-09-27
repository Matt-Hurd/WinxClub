#include "SlotManager.h"
#include "generated/globals.h"

void sub_803FB24(struct Slot *a0, unsigned int a1, unsigned char a2,
                 unsigned char a3) {
  unsigned short half;
  a0->field_00 = a1;
  if (a3 == 0xff) {
    a3 = gUnknown_03003E88->field_14;
  }
  half = a0->field_10;
  half = ((half >> 6) << 6) | (a3 & 0x3F);
  a0->field_10 = half;
  a0->field_04 = a2;
  a0->field_08 = 0;
  a0->field_0c = 0xFFFE;
  a0->field_0e = 0xFFFE;
  a0->field_14 = 0;
  a0->field_18 = 0;
}

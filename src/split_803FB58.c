#include "SlotManager.h"
#include "generated/globals.h"

void sub_803FB58(struct Slot *a0, struct Slot *a1) {
  struct SlotManager *base = gUnknown_03003E88;
  unsigned short packed = a0->field_10;
  unsigned int idx = packed & 0x3F;
  struct Slot **slot298 = &base->field_298[idx];
  struct Slot **slot398 = &base->field_398[idx];
  unsigned short *counter;

  if (a1 == 0) {
    a1 = *slot298;
  }
  if (a1 == 0) {
    a0->field_14 = a1;
    a0->field_18 = a1;
    *slot298 = a0;
    *slot398 = a0;
  } else {
    struct Slot *tmp;
    a0->field_18 = a1;
    tmp = a1->field_14;
    a0->field_14 = tmp;
    a1->field_14 = a0;
    tmp = a0->field_14;
    if (tmp != 0) {
      tmp->field_18 = a0;
    }
    if (*slot398 == a1) {
      *slot398 = a0;
    }
  }

  packed = a0->field_10;
  counter = &base->field_218[packed & 0x3F];
  *counter += packed >> 6;
}

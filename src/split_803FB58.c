#include "generated/globals.h"

void sub_803FB58(void *a0, void *a1) {
  void *base = gUnknown_03003E88;
  unsigned short packed = *(unsigned short *)((char *)a0 + 0x10);
  unsigned int idx = packed & 0x3F;
  void **slot298 = (void **)((char *)base + idx * 4 + 0x298);
  void **slot398 = (void **)((char *)base + idx * 4 + 0x398);
  unsigned short *counter;

  if (a1 == 0) {
    a1 = *slot298;
  }
  if (a1 == 0) {
    *(void **)((char *)a0 + 0x14) = a1;
    *(void **)((char *)a0 + 0x18) = a1;
    *slot298 = a0;
    *slot398 = a0;
  } else {
    void *tmp;
    *(void **)((char *)a0 + 0x18) = a1;
    tmp = *(void **)((char *)a1 + 0x14);
    *(void **)((char *)a0 + 0x14) = tmp;
    *(void **)((char *)a1 + 0x14) = a0;
    tmp = *(void **)((char *)a0 + 0x14);
    if (tmp != 0) {
      *(void **)((char *)tmp + 0x18) = a0;
    }
    if (*slot398 == a1) {
      *slot398 = a0;
    }
  }

  packed = *(unsigned short *)((char *)a0 + 0x10);
  counter = (unsigned short *)((char *)base + (packed & 0x3F) * 2 + 0x218);
  *counter += packed >> 6;
}

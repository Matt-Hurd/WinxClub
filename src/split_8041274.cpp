#include "generated/globals.h"
#include "generated/functions.h"

extern "C" void sub_8041274(void *a0, void *a1) {
  int word;
  if (a1 == 0) return;
  gUnknown_030033E8 = a0;
  word = *(int *)((char *)a1 - 4);
  if ((unsigned char)word == 2) {
    operator delete[](a1);
  } else {
    sub_803DA18(a1);
  }
  gUnknown_030033E8 = 0;
}

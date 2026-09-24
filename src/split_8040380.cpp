#include "generated/functions.h"
extern "C" int __VTABLE__14Singleton_3E90;
extern "C" int gUnknown_03003E90;

extern "C" void sub_8040380(int *obj, int del_flag) {
  *obj = (int)&__VTABLE__14Singleton_3E90;
  gUnknown_03003E90 = 0;
  if (del_flag) {
    sub_803DA18(obj);
  }
}

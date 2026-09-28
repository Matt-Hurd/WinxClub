#ifndef SINGLETON_3EA4_HPP
#define SINGLETON_3EA4_HPP

#include "Singleton3EA4Records.h"

class Singleton_3EA4 {
public:
  virtual ~Singleton_3EA4();

  // 0x04
  char gap_04[0x4];
  // 0x08
  void *field_08;
  // 0x0c
  unsigned char *field_0c;
  // 0x10
  unsigned int field_10;
  // 0x14
  char gap_14[0xc];
  // 0x20
  unsigned int field_20;
  // 0x24
  char gap_24[0x4];
  // 0x28
  unsigned int field_28;
  // 0x2c
  char gap_2c[0x8];
  // 0x34
  unsigned int field_34;
  // 0x38
  unsigned int field_38;
  // 0x3c
  unsigned int field_3c;
  // 0x40
  unsigned int field_40;
  // 0x44
  char gap_44[0x4];
  // 0x48
  unsigned int field_48;
  // 0x4c
  char gap_4c[0x4];
  // 0x50
  unsigned int field_50;
  // 0x54
  unsigned int field_54;
  // 0x58
  char gap_58[0x818];
  // 0x870 -- a1-indexed, stride 88; the rest of each 88-byte record is
  // unknown (sub_80020F8 only reaches this one field of it), so only
  // element 0's field is named here.
  Singleton3EA4Entry870 *field_870;
  char gap_874[0x1c];
  // 0x890 -- same shape as field_870: a1-indexed, stride 88, only this
  // field of the 88-byte record is evidenced (sub_8002548).
  Singleton3EA4Entry890 *field_890;
  char gap_894[0x10c];
  // 0x9a0
  Singleton3EA4LevelBounds *field_9a0;
  char gap_9a4[0x28];
  // 0x9cc -- sub_801DB80 (partial/split_801D9B0.c) writes this same offset
  // through gUnknown_03003450 instead of gUnknown_03003EA4; probably the
  // same object reached through another global, not retyped here.
  void *field_9cc;
  char gap_9d0[0x8];
  // 0x9d8
  unsigned int field_9d8;
};

extern Singleton_3EA4 *gUnknown_03003EA4;

#endif // SINGLETON_3EA4_HPP

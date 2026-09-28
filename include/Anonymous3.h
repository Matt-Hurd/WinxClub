#ifndef ANONYMOUS3_H
#define ANONYMOUS3_H

/* The C-includable mirror of include/Anonymous3.hpp's layout, same
 * offsets and field_XX names, for .c units that cannot include the
 * C++ class header. Keep the two in sync by hand. */

struct Anonymous3 {
  // 0x00
  void *vtable;
  char gap_04[0x38];
  // 0x3c
  void *field_3c;
  char gap_40[0xb8];
  // 0xf8
  unsigned char field_f8;
  char gap_f9[1];
  unsigned short field_fa;
  char gap_fc[4];
  // 0x100
  void *field_100;
  char gap_104[0x78];
  // 0x17c
  unsigned short field_17c;
  unsigned short field_17e;
  char gap_180[0x168];
  // 0x2e8
  char field_2e8;
  char gap_2e9[0x7a];
  // 0x363
  unsigned char field_363;
  char gap_364[4];
};

#endif // ANONYMOUS3_H

#ifndef SINGLETON_3EA4_HPP
#define SINGLETON_3EA4_HPP

class Singleton_3EA4 {
public:
  virtual ~Singleton_3EA4();

  // 0x04
  char gap_04[0x8];
  // 0x0c
  unsigned int field_0c;
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
};

extern Singleton_3EA4 *gUnknown_03003EA4;

#endif // SINGLETON_3EA4_HPP

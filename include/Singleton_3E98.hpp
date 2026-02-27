#ifndef SINGLETON_3E98_HPP
#define SINGLETON_3E98_HPP

class Singleton_3E98 {
public:
  virtual ~Singleton_3E98();

  // 0x04
  char gap_04[0x1a];
  // 0x1e
  unsigned short field_1e;
  // 0x20
  char gap_20[0x8];
  // 0x28
  unsigned int field_28;
  // 0x2c
  char gap_2c[0x4];
  // 0x30
  unsigned int field_30;
};

extern Singleton_3E98 *gUnknown_03003E98;

#endif // SINGLETON_3E98_HPP

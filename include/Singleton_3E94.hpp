#ifndef SINGLETON_3E94_HPP
#define SINGLETON_3E94_HPP

class Singleton_3E94 {
public:
  virtual ~Singleton_3E94();

  // 0x04
  void *field_04;
  // 0x08 -- flags bitfield; sub_800B464/sub_800B496 clear/set bits per cmd
  unsigned int field_08;
  // 0x0c
  void *field_0c;
  // 0x10 -- unclaimed
  char gap_10[0x4];
};

extern Singleton_3E94 *gUnknown_03003E94;

#endif // SINGLETON_3E94_HPP

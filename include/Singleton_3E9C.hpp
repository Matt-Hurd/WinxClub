#ifndef SINGLETON_3E9C_HPP
#define SINGLETON_3E9C_HPP

class Singleton_3E9C {
public:
  virtual ~Singleton_3E9C();

  // 0x04 -- source buffer; sub_8031622 reads it back as char *
  char *field_04;
  // 0x08 -- record count; sub_80315CE sizes/re-sizes field_0c as field_08 << 4
  int field_08;
  // 0x0c -- heap array of field_08 four-int records, indexed idx << 4;
  // reallocated with sub_803DA9C and freed with operator delete[] in
  // sub_80315CE
  int *field_0c;
};

extern Singleton_3E9C *gUnknown_03003E9C;

#endif // SINGLETON_3E9C_HPP

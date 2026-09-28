#ifndef SINGLETON_3E9C_HPP
#define SINGLETON_3E9C_HPP

// One 0x10-byte record of the heap array Singleton_3E9C::field_0c points at.
struct Singleton3E9CRecord {
  int field_00;
  int field_04;
  int field_08;
  int field_0c;
};

class Singleton_3E9C {
public:
  virtual ~Singleton_3E9C();

  // 0x04 -- source buffer; sub_8031622 reads it back as char *
  char *field_04;
  // 0x08 -- record count; sub_80315CE sizes/re-sizes field_0c as field_08 << 4
  int field_08;
  // 0x0c -- heap array of field_08 records, reallocated with sub_803DA9C and
  // freed with operator delete[] in sub_80315CE
  struct Singleton3E9CRecord *field_0c;
};

extern Singleton_3E9C *gUnknown_03003E9C;

#endif // SINGLETON_3E9C_HPP

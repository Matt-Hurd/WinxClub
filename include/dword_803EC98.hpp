#ifndef DWORD_803EC98_HPP_
#define DWORD_803EC98_HPP_

// dword_803EC98, derives from dword_803E684; only PlayMovie constructs it, via
// operator new(0x1730) in partial/split_8010234.cpp's sub_8010234.
//
// Field layout below is proven by partial/split_801099C.c, split_8010D60.c
// and split_8011040.c (winx-qhyt.29) -- sub_80109DE, sub_80109EC, sub_8010B3E,
// sub_8010B6C, sub_8010ED2, sub_8010F10, sub_8011106 and sub_801114E. Fields
// past field_6fc are proven by split_8010234.cpp and split_80103C8.cpp
// (winx-qhyt.26) -- sub_8010278, sub_8010234, sub_801029A, sub_80102D8,
// sub_8010344, sub_801053C, sub_8010574, sub_80105AE, sub_80103EC,
// sub_80104BC and sub_8010604.
//
// dword_803EC98_Data below is a plain-C duplicate of the class's own fields,
// in the shape of include/SlotManager.h's struct: a .c file cannot see a
// virtual-method class, and unlike include/Singleton_3EA0.hpp there is no
// adjustor call here to hide a "+4" behind -- the still-assembly siblings of
// these units address a0 directly at these same absolute offsets, so the
// vtable is named here rather than skipped. Keep both declarations in sync.
struct dword_803EC98_Data {
  void *vtable;
  // 0x04 -- sub_80104BC zeroes it (winx-qhyt.26)
  int field_04;
  // 0x08
  char gap_08[4];
  // 0x0c -- sub_8010B6C: (field_0c >> 4) & 0xff is a divisor
  unsigned int field_0c;
  // 0x10 -- sub_80109DE reads the low 16 bits only (narrowed to unsigned short)
  int field_10;
  // 0x14
  char gap_14[0x40];
  // 0x54 -- current-record index, 0..0xa, sentinel 0xb: sub_80109EC reads it
  unsigned char field_54;
  char gap_55[3];
  // 0x58 -- sub_8010B3E: prod = field_58 * a1
  int field_58;
  // 0x5c -- sub_80109DE, sub_801114E (<= 0 test)
  int field_5c;
  // 0x60 -- sub_80109EC, sub_8010B3E (-= a1)
  int field_60;
  // 0x64 -- sub_8010B6C, sub_8010B3E (+= a1)
  int field_64;
  // 0x68 -- sub_8010B6C
  int field_68;
  // 0x6c -- sub_80104BC zeroes it (winx-qhyt.26)
  int field_6c;
  // 0x70 -- sub_80104BC zeroes it, sub_80105AE frees it if non-null
  // (sub_803D9A8) (winx-qhyt.26)
  void *field_70;
  // 0x74 -- sub_80104BC zeroes it (winx-qhyt.26)
  int field_74;
  // 0x78 -- sub_80104BC allocates it (sub_803D9C4) or zeroes it, sub_80105AE
  // frees it and clears it (winx-qhyt.26)
  void *field_78;
  // 0x7c -- sub_8010B3E
  int field_7c;
  // 0x80 -- sub_8010B3E, mask ANDed onto field_7c
  int field_80;
  // 0x84..0x90 -- sub_80104BC zeroes all four; sub_8010604 also writes
  // field_90 (winx-qhyt.26)
  int field_84;
  int field_88;
  int field_8c;
  int field_90;
  // 0x94 -- an embedded object with a vtable of its own: sub_801053C/
  // sub_8010574 construct it (gUnknown_03000000), sub_80105AE tears it down
  // (gUnknown_03000058), sub_8010604 reads its first word (its vtable
  // pointer) to make a virtual call through it (winx-qhyt.26)
  void *field_94;
  // 0x98
  char gap_98[0x58];
  // 0xf0 -- second embedded object, same shape as field_94 (winx-qhyt.26)
  void *field_f0;
  // 0xf4
  char gap_f4[0x558];
  // 0x64c, 11 entries -- sub_8010ED2 bounds its index a1 to < 0xb
  struct {
    unsigned int field_00; // tested != 0 by sub_8010ED2
    unsigned int field_04; // high 16 bits read by sub_80109EC via field_54's entry
    char gap_08[4];
  } field_64c[11];
  // 0x6d0 -- sub_8010ED2: current index, compared against a1
  unsigned char field_6d0;
  // 0x6d1 -- sub_8011106 (rec2[1])
  char field_6d1;
  char gap_6d2[2];
  // 0x6d4 -- sub_8011106 (rec + 0x14)
  int field_6d4;
  // 0x6d8 -- sub_8010ED2 (== 0 test), sub_8011106 (rec + 0x18)
  int field_6d8;
  // 0x6dc -- sub_8010F10, boolean-ish
  unsigned char field_6dc;
  // 0x6dd -- sub_8010F10, cycles 0..0xa then wraps to 0 at 0xb
  unsigned char field_6dd;
  // 0x6de -- sub_80103EC sets it to 0xff (winx-qhyt.26)
  unsigned char field_6de;
  // 0x6df -- sub_8010F10 (same cycling shape as field_6dd); sub_8011106 reads
  // it as rec2[0xf] and passes it to sub_8010ED2 as the record index
  unsigned char field_6df;
  // 0x6e0 -- sub_8010F10: bitmask indexed by field_6dd; sub_8011106: rec + 0x20
  unsigned int field_6e0;
  // 0x6e4 -- sub_80104BC allocates it (sub_803D9C4) or zeroes it, sub_80105AE
  // frees it (winx-qhyt.26)
  void *field_6e4;
  // 0x6e8 -- sub_8010F10
  unsigned int field_6e8;
  // 0x6ec -- sub_8010F10
  unsigned int field_6ec;
  // 0x6f0 -- sub_80103EC: sentinel 0xb, same shape as field_54 (winx-qhyt.26)
  unsigned char field_6f0;
  char gap_6f1[3];
  // 0x6f4 -- sub_80103EC: copy of field_5c at reset time (winx-qhyt.26)
  int field_6f4;
  // 0x6f8 -- sub_80103EC zeroes it (winx-qhyt.26)
  int field_6f8;
  // 0x6fc -- sub_8010B3E accumulates into it; sub_8011106 reads rec + 0x3c
  int field_6fc;
  // 0x700..0x70f -- sub_80103EC zeroes all four (winx-qhyt.26)
  int field_700;
  int field_704;
  int field_708;
  int field_70c;
  // 0x710, 0x1000 bytes -- a per-(row,value) threshold table sub_80104BC
  // fills via sub_801047C (16 rows x 256 columns), partial/split_80103C8.cpp
  // (winx-qhyt.26)
  unsigned char field_710[0x1000];
  // 0x1710, 0x1c bytes -- sub_801053C/sub_8010574 zero the whole span;
  // sub_8010604 (partial/split_80103C8.cpp) memcpy's a 0x1a-byte caller
  // record over the first part of it and reads the two pointers and the
  // flags word back afterward; the trailing bytes are never read here
  // (winx-qhyt.26)
  struct {
    char gap_00[8];
    void *field_08;
    void *field_0c;
    int field_10;
    unsigned char field_14;
    unsigned char field_15;
    char gap_16[6];
  } field_1710;
  // 0x172c -- allocate-time "needs setup" flag: sub_8010234 clears it,
  // sub_801029A sets it conditionally, sub_8010344 reads and clears it
  // (winx-qhyt.26)
  unsigned char field_172c;
};

#ifdef __cplusplus

class dword_803EC98 {
public:
    dword_803EC98();
    virtual void m00();
    virtual void m04();
    virtual void m08();
    virtual void m0C();
    virtual void m10();
    virtual void m14();
    virtual void m18();

    // Same fields as dword_803EC98_Data, past the implicit vtable slot; see
    // that struct's comment for evidence and per-field citations.
    int field_04;
    char gap_08[4];
    unsigned int field_0c;
    int field_10;
    char gap_14[0x40];
    unsigned char field_54;
    char gap_55[3];
    int field_58;
    int field_5c;
    int field_60;
    int field_64;
    int field_68;
    int field_6c;
    void *field_70;
    int field_74;
    void *field_78;
    int field_7c;
    int field_80;
    int field_84;
    int field_88;
    int field_8c;
    int field_90;
    void *field_94;
    char gap_98[0x58];
    void *field_f0;
    char gap_f4[0x558];
    struct {
        unsigned int field_00;
        unsigned int field_04;
        char gap_08[4];
    } field_64c[11];
    unsigned char field_6d0;
    char field_6d1;
    char gap_6d2[2];
    int field_6d4;
    int field_6d8;
    unsigned char field_6dc;
    unsigned char field_6dd;
    unsigned char field_6de;
    unsigned char field_6df;
    unsigned int field_6e0;
    void *field_6e4;
    unsigned int field_6e8;
    unsigned int field_6ec;
    unsigned char field_6f0;
    char gap_6f1[3];
    int field_6f4;
    int field_6f8;
    int field_6fc;
    int field_700;
    int field_704;
    int field_708;
    int field_70c;
    unsigned char field_710[0x1000];
    struct {
        char gap_00[8];
        void *field_08;
        void *field_0c;
        int field_10;
        unsigned char field_14;
        unsigned char field_15;
        char gap_16[6];
    } field_1710;
    unsigned char field_172c;
};

#endif // __cplusplus

#endif // DWORD_803EC98_HPP_

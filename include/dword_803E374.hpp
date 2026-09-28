#ifndef DWORD_803E374_HPP_
#define DWORD_803E374_HPP_

// The 0x58-byte vtable object surveyed as type 9 in
// docs/decisions/drafts/2026-09-27-object-types.md: constructed by
// sub_80134B8 (partial/split_80134B8.cpp), operated on by
// split_8013B64.cpp's nine functions and sub_8040104
// (partial/split_8040104.cpp), and dispatched through by sub_80402F8
// (src/split_80402F8.cpp), which calls vtable slots 0x4c/0x50/0x54/0x58 --
// exactly m4C/m50/m54/m58 below.
//
// Not Singleton_3E90: sub_804036C/sub_8040380 (which allocate 0x58 bytes
// and install __VTABLE__14Singleton_3E90) are unrelated -- sub_8040380 is
// itself a vtable slot of a different class, dword_803E86C (see
// config/vtables.yml), not a caller of this object's constructor. The
// actual constructor, sub_80134B8, installs __VTABLE__306dword_803E374
// (config/symbols.yml, config/vtables.yml) -- this class -- whose slots
// 0x4c/0x50/0x54/0x58 are real, named entries (sub_3001E8C, sub_8013B0A,
// sub_8013B64, sub_300215C), unlike Singleton_3E90's single-slot,
// four-byte vtable which cannot supply them. sub_8013FF8/sub_801402C
// (partial/split_8013FF4.cpp) construct a 0x60-byte sibling that
// re-stamps __VTABLE__320dword_803E6A0 (include/dword_803E6A0.hpp) over
// the same base layout after calling sub_80134B8 -- a derived class, out
// of scope here.
//
// Field widths from sub_80134B8 (the constructor, which sets 0x0e..0x50)
// and the field_access.py survey; no width conflicts. Only the fields the
// tree reaches are declared.

class dword_803E374 {
public:
    dword_803E374();
    virtual void m00();
    virtual void m04();
    virtual void m08();
    virtual void m0C();
    virtual void m10();
    virtual void m14();
    virtual void m18();
    virtual void m1C();
    virtual void m20();
    virtual void m24();
    virtual void m28();
    virtual void m2C();
    virtual void m30();
    virtual void m34();
    virtual void m38();
    virtual void m3C();
    virtual void m40();
    virtual void m44();
    virtual void m48();
    virtual void m4C();
    virtual void m50();
    virtual void m54();
    virtual void m58();
    virtual void m5C() = 0;

    // 0x04 -- unclaimed
    char gap_04[8];
    // 0x0c
    unsigned char field_0c;
    char gap_0d[1];
    // 0x0e
    unsigned short field_0e; // flags, bits 0..3; sub_8040104 does |= 1
    // 0x10
    unsigned char field_10;
    char gap_11[3];
    // 0x14
    void *field_14; // freed with operator delete[] in sub_801352C
    // 0x18
    unsigned short field_18;
    unsigned short field_1a;
    // 0x1c
    unsigned char field_1c;
    char gap_1d[1];
    // 0x1e
    short field_1e;
    short field_20;
    unsigned short field_22;
    // 0x24
    int field_24;
    short field_28;
    short field_2a;
    // 0x2c
    unsigned char field_2c;
    unsigned char field_2d;
    unsigned char field_2e;
    char gap_2f[1];
    // 0x30
    int field_30;
    // 0x34
    void *field_34; // freed with operator delete[] in sub_801352C
    // 0x38
    unsigned char field_38;
    char gap_39[1];
    // 0x3a
    unsigned short field_3a;
    unsigned short field_3c;
    char gap_3e[2];
    // 0x40
    unsigned int field_40;
    // 0x44
    void *field_44;
    // 0x48
    void *field_48; // heap buffer; freed by operator delete[] or sub_8041274
                     // in sub_8040104/sub_801352C
    // 0x4c
    void *field_4c; // freed with sub_803DA18 in sub_801352C
    // 0x50
    void *field_50;
    // 0x54 -- unclaimed
    char gap_54[4];
    // 0x58
};

#endif // DWORD_803E374_HPP_

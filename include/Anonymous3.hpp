#ifndef ANONYMOUS3_HPP_
#define ANONYMOUS3_HPP_

/* Residue family G (docs/decisions/drafts/2026-09-27-object-types-residue.md):
 * fields proven by partial/split_80154DC.cpp (sub_80154DC, the
 * allocate-or-reuse ctor, operator new(0x368)), partial/split_80163D4.cpp
 * (sub_80163D4, sub_801642C), partial/split_80158E0.c (sub_80158E0, confirms
 * field_f8 read as a byte) and partial/split_8016108.c (sub_801613E).
 * Working names only: field_XX is the offset, nothing else is claimed. Gaps
 * are unread by any matched function, not proven padding. */
class Anonymous3 {
public:
    Anonymous3();
    virtual void m00(int a0);
    virtual void m04();
    virtual void m08();

    char gap_04[0xf4];
    unsigned char field_f8;  /* sub_80158E0, sub_80163D4, sub_801613E */
    char gap_f9[1];
    unsigned short field_fa; /* sub_80163D4, sub_801613E */
    char gap_fc[4];
    void *field_100;         /* array freed with operator delete[] in
                               * sub_801642C, guarded by field_17e == 0xffff
                               * or field_363 == 0xff */
    char gap_104[0x78];
    unsigned short field_17c;
    unsigned short field_17e; /* sub_801642C tests == 0xffff */
    char gap_180[0x168];
    char field_2e8;          /* the target of sub_8015588's (Anonymous3::m00)
                               * __vecmap1ci__FPvT1iPFPvi_v((char *)this +
                               * 0x2e8, (char *)this + 0x108, -120,
                               * sub_8014436) call; only the address is
                               * proven here, not a width -- see the
                               * ticket's own scope note */
    char gap_2e9[0x7a];
    unsigned char field_363; /* sub_801642C tests == 0xff */
    char gap_364[4];         /* pads to sizeof == 0x368, per sub_80154DC's
                               * operator new(0x368) */
};

#endif // ANONYMOUS3_HPP_

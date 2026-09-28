/* Three functions of split_800FB18; the rest of the unit is still assembly in
 * asm/nonmatching/split_800FB18/. cpp_evidence.py: C++ likely (vtable
 * reference); none of these three are vtable slots (no Class__NN label), so
 * they stay free functions in this .cpp (tcpp).
 *
 * sub_800FB18's two memset calls: the first clears a pointer read out of
 * *(a0+4), typed void* (BL __rt_memclr); the second clears a0+0x14, typed
 * int* (BL __rt_memclr_w) --
 * notes/quirks/a-thumb-bl-to-__rt_memclr_w-lands-on-__16__rt_memclr_w.md.
 *
 * sub_800FCF0 parks -- see notes/parked.md -- it calls sub_800FB18 and then
 * two more functions through a vtable_base+offset function pointer, and
 * stays assembly in asm/nonmatching/split_800FB18/sub_800FCF0.s.
 */
#include "Obj.h"

extern "C" void *memset(void *, int, unsigned int);

extern "C" void sub_800FB18(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    void *p = (void *)a0->field_04;

    if (p) {
        memset(p, 0, (1 << a0->field_08) + 0x10);
    }
    a0->field_0c = 0;
    a0->field_10 = 0;
    {
        /* pointer arithmetic on a plain int* (not a cast at the call site)
         * is what makes tcpp reach __rt_memclr_w for this one. */
        int *ip = (int *)a0;
        memset(ip + 5, 0, 0x48);
    }
    a0->field_5c = 8;
}

extern "C" void sub_800FC6C(void *a0v, int a1, int a2)
{
    Obj *a0 = (Obj *)a0v;
    a0->field_04 = a1;
    a0->field_08 = a2;
}

extern "C" int sub_800FD2C(void)
{
    return 0;
}

extern "C" void sub_800FB9E(void)
{
}

extern "C" void sub_800FD2A(void)
{
}

extern "C" int sub_800FC72(void)
{
    return 0;
}

/* Same 4-bit-field-at-bit-6 accessor shape as sub_800FBA0, sub_800FC76 and
 * sub_800FBC0 below -- an unsigned shift-shift, not an AND, is what keeps
 * this an `lsrs` rather than an `asrs`. */
extern "C" int sub_800FB96(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    unsigned int v = a0->field_18;
    return (v << 0x16) >> 0x1c;
}

extern "C" void *sub_800FD48(void *a0);
extern "C" int __VTABLE__313dword_803E59C;
extern "C" int __VTABLE__354dword_803ECB8;
extern "C" void *gUnknown_03003E7C;
extern "C" void *gUnknown_03003E84;

extern "C" void sub_800FB72(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    /* routed through a function pointer, not a plain call -- tcpp otherwise
     * inlines sub_800FB18's whole body here instead of a `bl`; see
     * notes/quirks/a-function-pointer-variable-defeats-same-tu-inlining.md */
    void (*fn)(void *) = sub_800FB18;

    a0->field_00 = (unsigned int)&__VTABLE__313dword_803E59C;
    sub_800FD48(a0);
    fn(a0);
    a0->field_00 = (unsigned int)&__VTABLE__354dword_803ECB8;
    gUnknown_03003E7C = 0;
}

extern "C" void *sub_800FB48(void *a0v)
{
    Obj *a0 = (Obj *)a0v;
    void (*fn)(void *) = sub_800FB18;

    a0->field_00 = (unsigned int)&__VTABLE__354dword_803ECB8;
    gUnknown_03003E7C = a0;
    a0->field_00 = (unsigned int)&__VTABLE__313dword_803E59C;
    a0->field_04 = 0;
    a0->field_08 = 0;
    a0->field_60 = 0;
    a0->field_64 = 0;
    a0->field_68 = 0;
    fn(a0);
    return a0;
}

/* sub_800FBA0 parks -- see notes/parked.md. Register/layout park: the ROM
 * branches to the body and returns inline for the a0==0 case; every source
 * shape tried keeps the body inline and branches around it instead. */

/* sub_800FC76 parks -- see notes/parked.md. Straight translation compiles
 * the 64-bit division by the unit's pool constant (0x01012B00, matching
 * _0800FD40/_0800FD44) as a DCQ; the splicer only matches plain words in
 * the unit's own pool and refuses it. */

/* sub_800FBC0 parks -- see notes/parked.md. Its switch on the 4-bit type
 * field compiles to a jump table that tcpp emits as a literal byte string
 * in the pool; the splicer only places whole words there and refuses it. */

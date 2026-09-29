/* Seven functions of split_8013024; the rest of the unit is still assembly
 * in asm/nonmatching/split_8013024/. sub_80133AE is parked -- see
 * notes/parked.md.
 */
#include "generated/functions.h"

extern "C" void sub_8013318(void *a0, int a1)
{
    if (*(void **)((char *)a0 + 0x14) != *(void **)((char *)a0 + 0x10)) {
        operator delete[](*(void **)((char *)a0 + 0x10));
        *(void **)((char *)a0 + 0x10) = *(void **)((char *)a0 + 0x14);
    }
    if (a1) {
        sub_803DA18(a0);
    }
}

extern void *gUnknown_03003C3C;

/* sub_8013318 above is gUnknown_03003C3C's element destructor, so a
 * destroy-in-place call reaches the ARM C++ runtime's vector-destructor
 * helper directly, with the deallocator argument NULL: the elements are
 * torn down but the block itself (allocated by sub_803DA9C, not operator
 * new[]) is not freed here. */
extern "C" void __vec_dtor__FPvUiPFPvi_vPFPv_v(void *array, unsigned int elem_size,
                                                void (*dtor)(void *, int),
                                                void (*dealloc)(void *));

extern "C" void sub_8013386(void)
{
    if (gUnknown_03003C3C)
        __vec_dtor__FPvUiPFPvi_vPFPv_v(gUnknown_03003C3C, 0x1c, sub_8013318, 0);
}

/* The construction counterpart of sub_8013386: the buffer itself comes from
 * the game's own allocator (sub_803DA9C), so this is placement construction
 * over it, not operator new[]. A NULL constructor pointer -- the elements
 * are POD here, nothing to run per-element. */
extern "C" void *__vec_ctor_p__FPvUiT2bPFPv_v(void *array, unsigned int count,
                                               unsigned int elem_size, int flag,
                                               void (*ctor)(void *));

extern "C" void sub_801333E(unsigned int a0)
{
    if (gUnknown_03003C3C)
        __vec_dtor__FPvUiPFPvi_vPFPv_v(gUnknown_03003C3C, 0x1c, sub_8013318, 0);

    gUnknown_03003C3C = __vec_ctor_p__FPvUiT2bPFPv_v(
        sub_803DA9C(a0 * 0x1c + 4, GetEWRAMStart(), 0, 0),
        a0, 0x1c, 1, 0);
}

extern "C" void *sub_80133A0(unsigned int a0)
{
    return (char *)gUnknown_03003C3C + a0 * 0x1c;
}

/* sub_80133AE was attempted and parked: comes down to a
 * register-allocation/operand-order difference only, see notes/parked.md. */
extern "C" int sub_80133AE(unsigned int a0, void *a1);
extern "C" void *sub_8004FFC(void *a0);
extern void *gUnknown_03003EA8;

extern "C" void sub_80133F0(unsigned int a0)
{
    sub_80133AE(a0, sub_8004FFC(gUnknown_03003EA8));
}

/* Byte-sums a table lookup over a NUL-terminated string, table[c] the top
 * byte of a word: `register` on `table` -- not `result` or the parameters --
 * is what gives it its own dead register instead of sharing one with the
 * loop character (winx-aif3.10, notes/quirks/register-storage-class-moves-
 * tccs-register-allocation.md). */
extern "C" unsigned short sub_801340A(void *a0, unsigned char *a1)
{
    register unsigned int *table;
    unsigned short result = 0;

    if (*a1 == 0) return result;
    table = *(unsigned int **)((char *)a0 + 8);
    do {
        result += table[*a1] >> 24;
        a1++;
    } while (*a1);
    return result;
}

extern "C" void *memset(void *, int, unsigned int);

/* int * rather than void *: that is what makes tcpp call __rt_memclr_w
 * (word variant) and not __rt_memclr; armlink lands the Thumb BL on
 * __16__rt_memclr_w. */
extern "C" void sub_80132F4(int *a0)
{
    memset(a0, 0, 0x218);
    *((unsigned char *)a0 + 0x214) = 0x80;
    *((unsigned char *)a0 + 0x173) = 0;
}

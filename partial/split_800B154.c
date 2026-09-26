#include "generated/functions.h"

/* SoftReset is AgbSysArmSoftReset.o out of lib/libagbsyscall_arm.alf, not a
 * ROM function, so config/symbols.yml has nothing to declare it from. */
extern void SoftReset(int resetFlags);

void CallSoftReset(void)
{
    SoftReset(0xFB);
}

int sub_800B2A4(void)
{
    return (*(volatile unsigned short *)0x4000200 >> 12) & 1;
}

void nullsub_4(void)
{
}

void nullsub_9(void)
{
}

void nullsub_10(void)
{
}

void nullsub_11(void)
{
}

void nullsub_12(void)
{
}

void nullsub_13(void)
{
}

void nullsub_14(void)
{
}

void nullsub_15(void)
{
}

void nullsub_16(void)
{
}

void nullsub_17(void)
{
}

void nullsub_18(void)
{
}

void nullsub_19(void)
{
}

void nullsub_30(void)
{
}

void nullsub_31(void)
{
}

int sub_800B2AE(void)
{
    return 0;
}

/* Reuses Singleton_3EAC's vtable and gUnknown_03003EAC pointer (see
 * include/Singleton_3EAC.hpp) but is not one of its methods -- a free
 * function that placement-constructs *obj as a Singleton_3EAC-shaped object
 * and clears the global instance pointer, deleting the previous one first
 * when del_flag is set. Modelled on src/split_8040380.cpp's sub_8040380,
 * which is the same shape against a different singleton (gUnknown_03003E90). */
void sub_800B286(int *obj, int del_flag)
{
    extern int __VTABLE__14Singleton_3EAC;
    extern int gUnknown_03003EAC;

    *obj = (int)&__VTABLE__14Singleton_3EAC;
    gUnknown_03003EAC = 0;
    if (del_flag) {
        sub_803DA18(obj);
    }
}

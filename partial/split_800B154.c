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

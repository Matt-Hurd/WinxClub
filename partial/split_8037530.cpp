/* Three functions of split_8037530; the rest of the unit is still assembly
 * in asm/nonmatching/split_8037530/. sub_8037530 is slot +0x2C of the class
 * labelled Static2. sub_803766A and sub_8037534 are parked -- see
 * notes/parked.md.
 */
#include "Static2.hpp"
#include "Default.hpp"

int Static2::m2C()
{
    return 0;
}

extern "C" void sub_8028C2E(void *a0);
extern "C" void *gUnknown_0300345C;
extern "C" int *gUnknown_03003E98;

/* a0+0xb0 is past Default's documented sizeof (0xa0) -- a derived-class
 * field with no header yet, the same one split_8030EEC.cpp's Monster
 * methods leave as a cast -- and stays a cast here too. */
extern "C" void sub_8037642(Default *a0)
{
    void *base = gUnknown_0300345C;
    unsigned int flags = *(unsigned int *)((char *)a0 + 0xb0);
    unsigned int idx = ((flags << 5) >> 24) + 2;
    sub_8028C2E((char *)base + ((idx << 24) >> 19));
    a0->Default::TakeDamage();
}

extern "C" void sub_80376F8(void *a0)
{
    if (*(int *)((char *)gUnknown_03003E98 + 8) & 1) {
        void *base = gUnknown_0300345C;
        unsigned int idx = (*(unsigned int *)((char *)a0 + 0x80 + 0x30) >> 19) & 0xff;
        sub_8028C2E((char *)base + idx * 0x20);
    }
}

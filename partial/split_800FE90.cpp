/* One function of split_800FE90; the rest of the unit is still assembly in
 * asm/nonmatching/split_800FE90/.
 */

struct Struct800FE90 {
    int f0, f4, f8, fc, f10, f14;
    unsigned short f18, f1a;
    int f1c;
};

extern "C" void *sub_800FE90(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x20);
        if (a0 == 0)
            return a0;
    }

    Struct800FE90 *p = (Struct800FE90 *)a0;
    volatile int zero = 0;
    p->f0 = zero;
    p->f4 = zero;
    p->f8 = zero;
    p->fc = zero;
    p->f10 = zero;
    p->f14 = zero;
    p->f1c = zero;
    zero = ~zero;
    p->f18 = zero;
    p->f1a = zero;
    return a0;
}

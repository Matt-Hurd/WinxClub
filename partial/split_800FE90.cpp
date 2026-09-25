/* One function of split_800FE90; the rest of the unit is still assembly in
 * asm/nonmatching/split_800FE90/.
 */

struct Struct800FE90 {
    int f0, f4, f8, fc, f10, f14;
    short f18, f1a;
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
    p->f0 = 0;
    p->f4 = 0;
    p->f8 = 0;
    p->fc = 0;
    p->f10 = 0;
    p->f14 = 0;
    p->f1c = 0;
    p->f18 = -1;
    p->f1a = -1;
    return a0;
}

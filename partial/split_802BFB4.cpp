/* One function of split_802BFB4; the rest of the unit is still assembly in
 * asm/nonmatching/split_802BFB4/. cpp_evidence.py proves this unit C++ (an
 * __nw__FUi operator-new call), so it is spliced as .cpp; sub_802BFB4 is a
 * plain sub_ label, not a vtable slot, so it is an unmangled `extern "C"`
 * free function.
 *
 * The ROM adds 0x30 to the pointer and then loads at +0xc, rather than one
 * ldrb at +0x3c, so the two offsets are written separately to keep that.
 */

extern "C" unsigned char sub_802BFB4(void *a0)
{
    return *((unsigned char *)((char *)a0 + 0x30) + 0xc);
}

/* One function of split_8024E54; sub_8024E8A and sub_8024EBC were
 * attempted and parked (see notes/parked.md), and the rest of the unit,
 * including sub_8024F08, is still assembly in asm/nonmatching/split_8024E54/.
 * cpp_evidence.py proves the unit C++ via __nw__FUi (operator new).
 *
 * sub_8024E54 is dword_803ECF8's constructor, the same allocate-if-null
 * shape as sub_803772C (partial/split_803772C.cpp); it also clears its
 * field at +0x40's low bit and the top 15 bits in one read-shift-shift-and
 * expression, which is how it is written below rather than folded to a
 * single mask -- the ROM's two separate operations (`lsrs`/`lsls` then a
 * distinct `ands`) are exactly the shift-then-mask source shape.
 */

extern "C" void *sub_802E418(void *a0);
extern "C" int __VTABLE__370dword_803ECF8;

extern "C" void *sub_8024E54(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x44);
        if (a0 == 0) {
            return a0;
        }
    }
    sub_802E418(a0);
    *(int *)a0 = (int)&__VTABLE__370dword_803ECF8;
    *(int *)((char *)a0 + 0x3c) = 0;
    *(unsigned int *)((char *)a0 + 0x40) =
        ((*(unsigned int *)((char *)a0 + 0x40) >> 1) << 1) & 0xFFFE0001;
    return a0;
}

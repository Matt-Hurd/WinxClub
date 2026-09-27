/* One function of split_80268AC; the rest of the unit is still assembly in
 * asm/nonmatching/split_80268AC/. cpp_evidence.py proves this unit C++
 * (__nw__FUi and __vecmap1c__ runtime calls), so it is spliced as .cpp;
 * sub_80268AC is a plain sub_ label, not a vtable slot, so it is an
 * unmangled `extern "C"` free function.
 *
 * The other five candidates in this batch are parked -- see notes/parked.md:
 * sub_8026908 and sub_802693A each load a function pointer (sub_80268C8,
 * sub_80403A4) the unit's pool.s has no word for; sub_8028B2C and sub_8028A7C
 * are switches whose jump table the compiler emits as its own pool entry --
 * a byte string, not a word -- which the splicer's by-value pool lookup
 * cannot place; sub_80268C8 matches instruction-for-instruction but loads a
 * pool word (0x2b11) that exists twice in the ROM -- once close by (inside
 * still-assembly sub_8026962's own trailing pool) and once far away in this
 * unit's pool.s, which is the only copy the splicer can see, and the
 * assembler cannot reach it from here (`Data transfer offset out of range`).
 *
 * config/symbols.yml is out of scope here, so sub_8012334 is declared
 * locally rather than via generated/functions.h -- same as
 * partial/split_80403A4.c, whose sub_80403A4 has this identical body.
 */

extern "C" void sub_8012334(void *a0);
extern "C" void sub_801228C(void *a0);

extern "C" void sub_80268AC(void *a0)
{
    sub_8012334((char *)a0 + 4);
}

extern "C" void sub_80268BA(void *a0)
{
    sub_801228C((char *)a0 + 4);
}

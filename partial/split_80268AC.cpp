/* One function of split_80268AC; the rest of the unit is still assembly in
 * asm/nonmatching/split_80268AC/. cpp_evidence.py proves this unit C++
 * (__nw__FUi and __vecmap1c__ runtime calls), so it is spliced as .cpp;
 * sub_80268AC is a plain sub_ label, not a vtable slot, so it is an
 * unmangled `extern "C"` free function.
 *
 * config/symbols.yml is out of scope here, so sub_8012334 is declared
 * locally rather than via generated/functions.h -- same as
 * partial/split_80403A4.c, whose sub_80403A4 has this identical body.
 */

extern "C" void sub_8012334(void *a0);

extern "C" void sub_80268AC(void *a0)
{
    sub_8012334((char *)a0 + 4);
}

/* One function of split_80103C8; the rest of the unit is still assembly in
 * asm/nonmatching/split_80103C8/. A trivial placement `operator new` gets
 * this to construct straight into the caller's a0/freshly-allocated block:
 * writing the zero-initialization as plain field stores through a0 produces
 * individual STRs, but `new(a0) Foo()` value-initializes the whole object in
 * one go, which is what the ROM's STM bursts are.
 */
inline void *operator new(unsigned int, void *p) { return p; }

struct Foo { int a, b, c, d, e, f, g; };

extern "C" void *sub_80103C8(void *a0)
{
    if (a0 == 0) {
        a0 = operator new(0x1c);
        if (a0 == 0)
            return a0;
    }
    return new (a0) Foo();
}

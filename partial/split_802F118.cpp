/* Two functions of split_802F118; the rest of the unit is still assembly in
 * asm/nonmatching/split_802F118/ -- including sub_802F818, parked (see
 * notes/parked.md). cpp_evidence.py: C++ proven (__nw__FUi in the unit's
 * IMPORT list). Neither of these two are vtable slots themselves (no vtable
 * references sub_802F1F0/sub_802F210), so they stay plain functions;
 * m04__7DefaultFv/m08__7DefaultFv are declared locally with the raw
 * two-argument signature these call sites actually use, not Default.hpp's
 * simplified stub.
 */

extern "C" int m04__7DefaultFv(void *a0, void *a1);
extern "C" int m08__7DefaultFv(void *a0, void *a1);

extern "C" int sub_802F1F0(void *a0, void *a1)
{
    unsigned char type = *(unsigned char *)(*(void **)a1);

    if (type == 0x22) {
        char *vt = *(char **)a0;
        int (*fn)(void *, void *) = (int (*)(void *, void *))(vt + *(int *)(vt + 0x48));
        return fn(a0, a1);
    }

    return m04__7DefaultFv(a0, a1);
}

extern "C" int sub_802F210(void *a0, void *a1)
{
    unsigned char type = *(unsigned char *)(*(void **)a1);

    if (type == 0x22) {
        return 1;
    }

    return m08__7DefaultFv(a0, a1);
}

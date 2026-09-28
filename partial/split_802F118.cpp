/* Three functions of split_802F118; the rest of the unit is still assembly in
 * asm/nonmatching/split_802F118/ -- including sub_802F818, Anonymous18__ctor,
 * sub_802F228, Anonymous18__Create and sub_802F6F4, all parked (see
 * notes/parked.md). cpp_evidence.py: C++ proven (__nw__FUi in the unit's
 * IMPORT list). Neither sub_802F1F0 nor sub_802F210 are vtable slots
 * themselves (no vtable references them), so they stay plain functions;
 * m04__7DefaultFv/m08__7DefaultFv are declared locally with the raw
 * two-argument signature these call sites actually use, not Default.hpp's
 * simplified stub.
 */

extern "C" int m04__7DefaultFv(void *a0, void *a1);
extern "C" int m08__7DefaultFv(void *a0, void *a1);
extern "C" void CollectPickup(void *a0);
extern void *gPlayerEntity;

extern "C" void sub_802F6BA(void *a0)
{
    unsigned char *flags = (unsigned char *)a0 + 0x70;
    /* 0xa0 is one byte past sizeof(Default) -- the survey (type 1 in
     * docs/decisions/drafts/2026-09-27-object-types.md) has no header for
     * whatever derived class a0 actually is here, only the unrelated
     * 0xac..0xb0 bytes of struct Player past its declared end; keep the
     * cast rather than guess a field into a struct that isn't Default's. */
    unsigned short *type = (unsigned short *)((char *)a0 + 0xa0);

    if (*type == 0x2710) {
        unsigned char *p = (unsigned char *)gPlayerEntity + 0xa0;
        if (p[0xc] == p[0xf]) {
            flags[0xd] = 0xa;
            goto done;
        }
    }
    CollectPickup(a0);
done:
    if (*type == 0x2712) {
        flags[0xd] = 0xa;
    }
}

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

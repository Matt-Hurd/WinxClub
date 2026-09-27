/* One function of split_8012468; the rest of the unit is still assembly in
 * asm/nonmatching/split_8012468/.
 */

extern void gUnknown_03002F48(void *a0, void *a1, unsigned int a2);
extern void sub_80124C8(void *a0);

void sub_8012468(void *a0, void *a1, int a2)
{
    unsigned char *dest = a1;
    unsigned int remaining = a2;
    unsigned int avail = *(unsigned int *)((char *)a0 + 0x34);

    if (avail >= remaining) {
        gUnknown_03002F48(a0, dest, remaining);
        return;
    }

    if (avail != 0) {
        unsigned char *p = dest;
        dest += (avail >> 1) << 1;
        remaining -= avail;
        gUnknown_03002F48(a0, p, avail);
    }

    for (;;) {
        unsigned char *p;

        sub_80124C8(a0);
        avail = *(unsigned int *)((char *)a0 + 0x34);
        if (avail >= remaining) {
            gUnknown_03002F48(a0, dest, remaining);
            return;
        }
        p = dest;
        dest += (avail >> 1) << 1;
        remaining -= avail;
        gUnknown_03002F48(a0, p, avail);
        if (remaining == 0)
            return;
    }
}

#include "generated/functions.h"

/* Adler-32-style running checksum: splits `adler` into its two 16-bit
 * halves, folds `len` bytes from `buf` into them in NMAX-sized chunks
 * (reducing mod 65521 via sub_80406E4 after each chunk so the running
 * sums never overflow), and repacks the halves into the return value. */
unsigned int sub_80052C0(unsigned int adler, unsigned char *buf, unsigned int len)
{
    unsigned int s1 = adler & 0xFFFF;
    unsigned int sum2 = adler >> 16;
    unsigned int n = len;

    if (buf == 0)
        return 1;

    if (n != 0) {
        do {
            int k = n < 0x15B0 ? n : 0x15B0;
            n -= k;
            if (k >= 16) {
                do {
                    s1 += buf[0]; sum2 += s1;
                    s1 += buf[1]; sum2 += s1;
                    s1 += buf[2]; sum2 += s1;
                    s1 += buf[3]; sum2 += s1;
                    s1 += buf[4]; sum2 += s1;
                    s1 += buf[5]; sum2 += s1;
                    s1 += buf[6]; sum2 += s1;
                    s1 += buf[7]; sum2 += s1;
                    s1 += buf[8]; sum2 += s1;
                    s1 += buf[9]; sum2 += s1;
                    s1 += buf[10]; sum2 += s1;
                    s1 += buf[11]; sum2 += s1;
                    s1 += buf[12]; sum2 += s1;
                    s1 += buf[13]; sum2 += s1;
                    s1 += buf[14]; sum2 += s1;
                    s1 += buf[15]; sum2 += s1;
                    buf += 16;
                    k -= 16;
                } while (k >= 16);
            }
            while (k != 0) {
                s1 += *buf++;
                sum2 += s1;
                k--;
            }
            s1 = sub_80406E4(s1);
            sum2 = sub_80406E4(sum2);
        } while (n != 0);
    }

    return (sum2 << 16) | s1;
}

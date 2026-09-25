/* Three functions of split_8000210; the rest of the unit is still assembly in
 * asm/nonmatching/split_8000210/.
 */

int strStartsWith(const char *a, const char *b)
{
    goto test;
next:
    a++;
    b++;
test:
    if (*a) {
        if (*b == 0 || *a != *b)
            goto fail;
        goto next;
    }
    if (*b != 0)
        goto fail;
    return 1;
fail:
    return 0;
}

void strToLower(char *s)
{
    while (*s) {
        signed char c = s[0];
        if ((unsigned int)(c - 'A') <= 25)
            *s = c + 0x20;
        s++;
    }
}

char *strchr(const char *s, int c)
{
    while (*s) {
        signed char ch = s[0];
        if (ch == c)
            return (char *)s;
        s++;
    }
    return 0;
}

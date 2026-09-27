#include "winxclub.h"

extern int gUnknown_03003464;
extern struct PlayerPointer gPlayerPointer;

extern void sub_803F464(char *, int, int);
extern int sub_800B314(int, int, unsigned int, char *, int);

void sub_80235E4(void)
{
	int buf[8];
	unsigned char i;
	int checksum;
	char *p;

	p = (char *)buf;
	checksum = 0;
	sub_803F464(p, 0x20, 0);
	buf[0] = 0xF0F0F022;
	buf[1] = gPlayerPointer.field_8[0];
	buf[2] = gPlayerPointer.field_8[1];
	buf[3] = gPlayerPointer.field_8[3];
	buf[4] = gPlayerPointer.field_8[2];

	for (i = 0; i < 7; i++) {
		checksum ^= buf[i];
	}
	buf[7] = checksum;

	sub_800B314(gUnknown_03003464, 1, 0, (char *)buf, 0x20);
}

/* sub_80237DA, sub_802363C, sub_80236D4: attempted and parked, see notes/parked.md. */

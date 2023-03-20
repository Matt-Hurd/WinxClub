#include "iwram.h"
#include "global.h"
#include "gba/m4a_internal.h"

/*

sub_803E24C ;@ 0x0803E24C
	LDR ip, _0803E254 ;@ =sub_803D2A0
	bx ip
	ALIGN
_0803E254 DCDU sub_803D2A0

*/
extern void sub_803D2A0();

void sub_803E24C() {
    sub_803D2A0();
}

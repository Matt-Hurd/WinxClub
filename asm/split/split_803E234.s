    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803D0A4

	arm_func_start sub_803E234
sub_803E234 ;@ 0x0803E234
	LDR ip, _0803E23C ;@ =sub_803D0A4
	bx ip
	ALIGN
_0803E23C DCDU sub_803D0A4
	END
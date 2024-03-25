    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803D9A8

	arm_func_start sub_803E164
sub_803E164 ;@ 0x0803E164
	LDR ip, _0803E16C ;@ =sub_803D9A8
	bx ip
	ALIGN

_0803E16C DCDU sub_803D9A8
	END
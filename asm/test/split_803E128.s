    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803DA18

	arm_func_start sub_803E128
sub_803E128 ;@ 0x0803E128
	LDR ip, _0803E130 ;@ =sub_803DA18
	bx ip
	ALIGN
_0803E130 DCDU sub_803DA18
	END
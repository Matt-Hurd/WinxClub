    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_8008008

	arm_func_start sub_803E170
sub_803E170 ;@ 0x0803E170
	LDR ip, _0803E178 ;@ =sub_8008008
	bx ip
	ALIGN
_0803E178 DCDU sub_8008008
	END
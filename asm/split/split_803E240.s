    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803D142

	arm_func_start sub_803E240
sub_803E240 ;@ 0x0803E240
	LDR ip, _0803E248 ;@ =sub_803D142
	bx ip
	ALIGN
_0803E248 DCDU sub_803D142
	END
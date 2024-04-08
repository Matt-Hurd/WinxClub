    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803D9F8

	arm_func_start sub_803E104
sub_803E104 ;@ 0x0803E104
	LDR ip, _0803E10C ;@ =sub_803D9F8
	bx ip
	ALIGN
_0803E10C DCDU sub_803D9F8
	END
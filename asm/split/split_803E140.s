    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_80081B6

	arm_func_start sub_803E140
sub_803E140 ;@ 0x0803E140
	LDR ip, _0803E148 ;@ =sub_80081B6
	bx ip
	ALIGN
_0803E148 DCDU sub_80081B6
	END
    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_800802E

	arm_func_start sub_803E110
sub_803E110 ;@ 0x0803E110
	LDR ip, _0803E118 ;@ =sub_800802E
	bx ip
	ALIGN
_0803E118 DCDU sub_800802E
	END
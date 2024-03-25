    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_80132F4

	arm_func_start sub_803E228
sub_803E228 ;@ 0x0803E228
	LDR ip, _0803E230 ;@ =sub_80132F4
	bx ip
	ALIGN
_0803E230 DCDU sub_80132F4
	END
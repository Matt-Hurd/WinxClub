    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803D984

	arm_func_start sub_803E158
sub_803E158 ;@ 0x0803E158
	LDR ip, _0803E160 ;@ =sub_803D984
	bx ip
	ALIGN
_0803E160 DCDU sub_803D984

    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803D468

	arm_func_start sub_803E14C
sub_803E14C ;@ 0x0803E14C
	LDR ip, _0803E154 ;@ =sub_803D468
	bx ip
	ALIGN
_0803E154 DCDU sub_803D468

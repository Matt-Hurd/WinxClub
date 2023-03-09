    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_800805E

	arm_func_start sub_803E11C
sub_803E11C ;@ 0x0803E11C
	LDR ip, _0803E124 ;@ =sub_800805E
	bx ip
	ALIGN
_0803E124 DCDU sub_800805E

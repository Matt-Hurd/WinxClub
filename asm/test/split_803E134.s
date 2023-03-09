    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_800808E

	arm_func_start sub_803E134
sub_803E134 ;@ 0x0803E134
	LDR ip, _0803E13C ;@ =sub_800808E
	bx ip
	ALIGN
_0803E13C DCDU sub_800808E

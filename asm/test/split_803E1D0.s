    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03000308

	thumb_func_start sub_803E1D0
sub_803E1D0 ;@ 0x0803E1D0
	bx pc
	nop

	arm_func_start sub_803E1D4
sub_803E1D4 ;@ 0x0803E1D4
	LDR pc, _0803E1D8 ;@ =gUnknown_03000308
	ALIGN
_0803E1D8 DCDU gUnknown_03000308

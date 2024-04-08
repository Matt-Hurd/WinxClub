    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03000190

	thumb_func_start sub_803E1AC
sub_803E1AC ;@ 0x0803E1AC
	bx pc
	nop

	arm_func_start sub_803E1B0
sub_803E1B0 ;@ 0x0803E1B0
	LDR pc, _0803E1B4 ;@ =gUnknown_03000190
	ALIGN
_0803E1B4 DCDU gUnknown_03000190
	END
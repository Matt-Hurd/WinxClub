    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03000090

	thumb_func_start sub_803E1B8
sub_803E1B8 ;@ 0x0803E1B8
	bx pc
	nop

	arm_func_start sub_803E1BC
sub_803E1BC ;@ 0x0803E1BC
	LDR pc, _0803E1C0 ;@ =gUnknown_03000090
	ALIGN
_0803E1C0 DCDU gUnknown_03000090
	END
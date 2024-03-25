    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030001E0

	thumb_func_start sub_803E1C4
sub_803E1C4 ;@ 0x0803E1C4
	bx pc
	nop

	arm_func_start sub_803E1C8
sub_803E1C8 ;@ 0x0803E1C8
	LDR pc, _0803E1CC ;@ =gUnknown_030001E0
	ALIGN
_0803E1CC DCDU gUnknown_030001E0
	END
    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03000058

	thumb_func_start sub_803E1A0
sub_803E1A0 ;@ 0x0803E1A0
	bx pc
	nop

	arm_func_start sub_803E1A4
sub_803E1A4 ;@ 0x0803E1A4
	LDR pc, _0803E1A8 ;@ =gUnknown_03000058
	ALIGN
_0803E1A8 DCDU gUnknown_03000058
	END
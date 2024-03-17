    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03002F48

	thumb_func_start sub_803E21C
sub_803E21C ;@ 0x0803E21C
	bx pc
	nop

	arm_func_start sub_803E220
sub_803E220 ;@ 0x0803E220
	LDR pc, _0803E224 ;@ =gUnknown_03002F48
	ALIGN
_0803E224 DCDU gUnknown_03002F48
	END
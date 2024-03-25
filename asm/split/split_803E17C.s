    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03000000

	thumb_func_start sub_803E17C
sub_803E17C ;@ 0x0803E17C
	bx pc
	nop

	arm_func_start sub_803E180
sub_803E180 ;@ 0x0803E180
	LDR pc, _0803E184 ;@ =gUnknown_03000000
	ALIGN
_0803E184 DCDU gUnknown_03000000
	END
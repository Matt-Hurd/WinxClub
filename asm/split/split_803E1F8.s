    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03001C24

	thumb_func_start sub_803E1F8
sub_803E1F8 ;@ 0x0803E1F8
	bx pc
	nop

	arm_func_start sub_803E1FC
sub_803E1FC ;@ 0x0803E1FC
	LDR pc, _0803E200 ;@ =gUnknown_03001C24
	ALIGN
_0803E200 DCDU gUnknown_03001C24
	END
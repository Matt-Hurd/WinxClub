    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03001A54

	thumb_func_start sub_803E204
sub_803E204 ;@ 0x0803E204
	bx pc
	nop

	arm_func_start sub_803E208
sub_803E208 ;@ 0x0803E208
	LDR pc, _0803E20C ;@ =gUnknown_03001A54
	ALIGN
_0803E20C DCDU gUnknown_03001A54
	END
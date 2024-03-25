    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03001444

	thumb_func_start sub_803E210
sub_803E210 ;@ 0x0803E210
	bx pc
	nop

	arm_func_start sub_803E214
sub_803E214 ;@ 0x0803E214
	LDR pc, _0803E218 ;@ =gUnknown_03001444
	ALIGN
_0803E218 DCDU gUnknown_03001444
	END
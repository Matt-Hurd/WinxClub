    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03000284

	thumb_func_start sub_803E194
sub_803E194 ;@ 0x0803E194
	bx pc
	nop

	arm_func_start sub_803E198
sub_803E198 ;@ 0x0803E198
	LDR pc, _0803E19C ;@ =gUnknown_03000284
	ALIGN
_0803E19C DCDU gUnknown_03000284
	END
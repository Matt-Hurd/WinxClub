    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03001BBC
	IMPORT sub_8004C44
	IMPORT sub_80130DC

	thumb_func_start sub_803E1DC
sub_803E1DC ;@ 0x0803E1DC
	bx pc
	nop

	arm_func_start sub_803E1E0
sub_803E1E0 ;@ 0x0803E1E0
	b sub_8004C44

	thumb_func_start sub_803E1E4
sub_803E1E4 ;@ 0x0803E1E4
	bx pc
	nop

	arm_func_start sub_803E1E8
sub_803E1E8 ;@ 0x0803E1E8
	b sub_80130DC

	thumb_func_start sub_803E1EC
sub_803E1EC ;@ 0x0803E1EC
	bx pc
	nop

	arm_func_start sub_803E1F0
sub_803E1F0 ;@ 0x0803E1F0
	LDR pc, _0803E1F4 ;@ =gUnknown_03001BBC
	ALIGN
_0803E1F4 DCDU gUnknown_03001BBC
	END
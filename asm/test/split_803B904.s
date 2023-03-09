    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003D38

	thumb_func_start sub_803B904
sub_803B904 ;@ 0x0803B904
	bx pc
	ALIGN

	arm_func_start sub_803B908
sub_803B908 ;@ 0x0803B908
	LDR r0, _0803B910 ;@ =gUnknown_03003D38
	bx lr
	ALIGN
_0803B910 DCDU gUnknown_03003D38

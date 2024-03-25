    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300028C

	thumb_func_start sub_803E188
sub_803E188 ;@ 0x0803E188
	bx pc
	nop

	arm_func_start sub_803E18C
sub_803E18C ;@ 0x0803E18C
	LDR pc, _0803E190 ;@ =gUnknown_0300028C
	ALIGN
_0803E190 DCDU gUnknown_0300028C
	END
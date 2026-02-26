	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_080497F0
	IMPORT gUnknown_0804A7F0

	arm_func_start sub_8007ED8

sub_8007ED8
	mov ip, #9
	STR ip, [r0]
	mov r0, #5
	STR r0, [r1]
	LDR r0, _08007F10
	STR r0, [r2]
	LDR r0, _08007F14
	STR r0, [r3]
	mov r0, #0
	bx lr
	ALIGN

	ALIGN
_08007F10 DCDU gUnknown_080497F0
_08007F14 DCDU gUnknown_0804A7F0

	END

	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_80406E4
sub_80406E4
	bx pc
	ALIGN

	arm_func_start sub_80406E8
sub_80406E8
	LDR r3, _08040700
	umull r1, r2, r3, r0
	LDR r3, _08040704
	MOV r1, r2, LSR #0xf
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_08040700 DCDU 0x80078071
_08040704 DCDU 0xFFFF000F
	END
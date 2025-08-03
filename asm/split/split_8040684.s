	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_8040684
sub_8040684
	bx pc
	ALIGN

	arm_func_start sub_8040688
sub_8040688
	LDR r3, _080406A0
	umull r1, r2, r3, r0
	mvn r3, #4
	MOV r1, r2, LSR #2
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_080406A0 DCDU 0xCCCCCCCD
	END

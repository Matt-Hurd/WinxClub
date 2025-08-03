	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_80406C4
sub_80406C4
	bx pc
	ALIGN

	arm_func_start sub_80406C8
sub_80406C8
	LDR r3, _080406E0
	umull r1, r2, r3, r0
	mvn r3, #0x3b
	MOV r1, r2, LSR #5
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_080406E0 DCDU 0x88888889
	END
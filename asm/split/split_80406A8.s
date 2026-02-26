	INCLUDE asm/macros.inc
	AREA text, CODE


	arm_func_start sub_80406A8

sub_80406A8
	LDR r3, _080406C0
	umull r1, r2, r3, r0
	mvn r3, #5
	MOV r1, r2, LSR #2
	mla r0, r3, r1, r0
	bx lr
	ALIGN

	ALIGN
_080406C0 DCDU 0xAAAAAAAB

	END

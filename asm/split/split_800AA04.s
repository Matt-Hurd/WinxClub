	INCLUDE asm/macros.inc
	AREA text, CODE

	arm_func_start sub_800AA04

sub_800AA04
	LDR r0, [r1]
	MOV r0, r0, LSR #8
	bx lr

	END

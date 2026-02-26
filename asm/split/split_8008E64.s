	INCLUDE asm/macros.inc
	AREA text, CODE

	arm_func_start sub_8008E64

sub_8008E64
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne %21
	LDR r1, [r0, #0x24]
	LDR r0, [r0, #0x2c]
	cmp r1, r0
	movlo r0, #0
	movhs r0, #1
	bx lr
21
	LDR r0, [r0, #0x30]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr

	END

	arm_func_start sub_800A7A0
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne %37
	LDR r1, [r0, #0x24]
	LDR r0, [r0, #0x2c]
	cmp r1, r0
	movlo r0, #0
	movhs r0, #1
	bx lr
37
	LDR r0, [r0, #0x30]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr
	arm_func_end sub_800A7A0


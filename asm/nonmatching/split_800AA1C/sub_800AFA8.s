	arm_func_start sub_800AFA8
sub_800AFA8
	LDR r0, [r0, #0x3c]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr


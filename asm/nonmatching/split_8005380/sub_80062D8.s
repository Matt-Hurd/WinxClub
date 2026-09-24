	arm_func_start sub_80062D8
sub_80062D8
	LDRB r0, [r0]
	cmp r0, #1
	movne r0, #0
	moveq r0, #1
	bx lr

	arm_func_start sub_80077C0
	cmp r0, #0
	LDRNE r0, [r0, #0x18]
	cmpne r0, #0
	LDRNE r0, [r0, #0x14]
	cmpne r0, #0
	bne sub_80062D8
	mvn r0, #1
	bx lr
	arm_func_end sub_80077C0

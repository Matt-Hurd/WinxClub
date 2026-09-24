	arm_func_start sub_8040578
	LDR r3, _08040590
	umull r1, r2, r3, r0
	mvn r3, #9
	MOV r1, r2, LSR #3
	mla r0, r3, r1, r0
	bx lr
	arm_func_end sub_8040578

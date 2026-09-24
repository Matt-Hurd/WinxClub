	arm_func_start sub_80405DC
sub_80405DC
	LDR r3, _080405F4
	umull r1, r2, r3, r0
	mvn r3, #0xb
	MOV r1, r2, LSR #3
	mla r0, r3, r1, r0
	bx lr

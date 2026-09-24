	arm_func_start sub_80405B8
sub_80405B8
	LDR r3, _080405D0
	umull r1, r2, r3, r0
	LDR r3, _080405D4
	MOV r1, r2, LSR #6
	mla r0, r3, r1, r0
	bx lr

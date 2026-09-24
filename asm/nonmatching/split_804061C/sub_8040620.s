	arm_func_start sub_8040620
sub_8040620
	LDR r3, _08040638
	umull r1, r2, r3, r0
	LDR r3, _0804063C
	MOV r1, r2, LSR #0xe
	mla r0, r3, r1, r0
	bx lr

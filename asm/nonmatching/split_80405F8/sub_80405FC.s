	arm_func_start sub_80405FC
	LDR r3, _08040614
	umull r1, r2, r3, r0
	LDR r3, _08040618
	MOV r1, r2, LSR #0xe
	mla r0, r3, r1, r0
	bx lr
	arm_func_end sub_80405FC

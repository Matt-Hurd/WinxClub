	arm_func_start sub_80404B8
	LDR r3, _080404D4
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #2
	rsb r1, r2, r1
	mla r0, r3, r1, r0
	bx lr
	arm_func_end sub_80404B8

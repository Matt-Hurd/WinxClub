	arm_func_start sub_804052C
	LDR r3, _0804054C
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x59
	add r1, r1, r0
	rsb r1, r2, r1, asr #6
	mla r0, r3, r1, r0
	bx lr
	arm_func_end sub_804052C

	arm_func_start sub_800904C
	STR r1, [r0, #0x20]
	MOV r1, r2, LSR #1
	STR r1, [r0, #0x24]
	bx lr
	arm_func_end sub_800904C


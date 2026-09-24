	arm_func_start sub_8008B04
	STR r1, [r0, #0x44]
	MOV r1, r2, LSR #1
	STR r1, [r0, #0x48]
	bx lr
	arm_func_end sub_8008B04


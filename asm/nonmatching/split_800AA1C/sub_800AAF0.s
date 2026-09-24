	arm_func_start sub_800AAF0
	mov r1, #0
	add r0, r0, r2, lsl #2
	STR r1, [r0, #0x58]
	bx lr
	arm_func_end sub_800AAF0


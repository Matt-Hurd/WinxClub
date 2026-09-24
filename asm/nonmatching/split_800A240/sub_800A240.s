	arm_func_start sub_800A240
	STMFD SP!, {r3, lr}
	mov r2, r1
	add r1, r0, #0x30
	bl sub_80095B8
	LDMFD SP!, {r3, lr}
	mov r0, #0
	bx lr
	arm_func_end sub_800A240


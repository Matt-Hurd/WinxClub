	arm_func_start sub_80062AC
sub_80062AC
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	mov r5, r2
	bl __rt_memcpy
	LDR r0, [r4, #0x28]
	add r0, r0, r5
	STR r0, [r4, #0x34]
	STR r0, [r4, #0x30]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr


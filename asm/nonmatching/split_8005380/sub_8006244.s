	arm_func_start sub_8006244
sub_8006244
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #0
	bl sub_8005380
	LDR r1, [r5, #0x28]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #3
	mov lr, pc
	bx r3
	LDR r1, [r5, #0x24]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #2
	mov lr, pc
	bx r3
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, lr}
	mov r0, #0
	bx lr


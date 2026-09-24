	arm_func_start sub_8006F90
sub_8006F90
	STMFD SP!, {r3, lr}
	movs r1, r0
	LDRNE r0, [r1, #0x18]
	cmpne r0, #0
	LDMEQFD SP!, {r3, lr}
	mvneq r0, #1
	bxeq lr
	mov r2, #0
	STR r2, [r1, #0x14]
	STR r2, [r1, #8]
	LDR r2, [r0, #0xc]
	cmp r2, #0
	movne r2, #7
	STRB r2, [r0]
	LDR r0, [r1, #0x18]
	mov r2, #0
	LDR r0, [r0, #0x14]
	bl sub_8005380
	LDMFD SP!, {r3, lr}
	mov r0, #0
	bx lr


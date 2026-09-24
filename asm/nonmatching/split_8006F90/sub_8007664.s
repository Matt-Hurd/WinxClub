	arm_func_start sub_8007664
sub_8007664
	STMFD SP!, {r4, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	mov ip, r2
	cmpne r0, #0
	beq %23
	LDRB r3, [r0]
	cmp r3, #6
	beq %24
23
	LDMFD SP!, {r4, lr}
	mvn r0, #1
	bx lr
24
	LDR lr, [r0, #0x10]
	mov r3, #1
	MOV r3, r3, LSL lr
	cmp r3, r2
	subls r2, r3, #1
	subls r3, ip, r2
	addls r1, r3, r1
	LDR r0, [r0, #0x14]
	bl sub_80062AC
	LDR r1, [r4, #0x18]
	mov r0, #7
	STRB r0, [r1]
	LDMFD SP!, {r4, lr}
	mov r0, #0
	bx lr


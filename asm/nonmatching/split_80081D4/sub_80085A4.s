	arm_func_start sub_80085A4
sub_80085A4
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	LDR r0, [r0, #0x50]
	add r8, r4, #0x20
	mov sl, #0
	mov sb, #8
	cmp r0, #0
	bne %19
	mov r1, #0x10
	mov r0, r8
	bl sub_803F4CC
	STR r0, [r4, #0x50]
	LDR r0, [r4, #0x24]
	cmp r0, #8
	blo %18
	LDR r2, [r4, #0x20]
	sub r0, r0, #8
	STR r0, [r4, #0x24]
	MOV r0, r2, LSL #8
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0xc]
	MOV r1, r2, LSR #0x18
	add r2, r0, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r1, [r2, r0]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
	LDR r0, [r4, #0x50]
	sub r0, r0, #1
	STR r0, [r4, #0x50]
	LDR r0, [r4, #0x1c]
	sub r0, r0, #1
	STR r0, [r4, #0x1c]
18
	LDR r0, [r4, #0x24]
	STR sl, [r4, #0x24]
	LDR r1, [r4, #0x20]
	MOV r0, r1, LSL r0
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	LDMLEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
19
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x50]
	cmp r0, r1
	bge %20
	bic r1, r0, #1
	ands r0, r0, #1
	movne r0, #2
	add r1, r1, r0
20
	bic r2, r1, #1
	mov r5, r1
	LDR r0, [r4, #0xc]
	LDR r1, [r4, #0x10]
	add r3, r0, r2
	add r1, r1, #1
	cmp r3, r1
	mov r7, r2
	bls %23
	sub r6, r1, r0
	LDR r2, [r4, #8]
	LDR r1, [r4, #0x28]
	add r0, r2, r0
	mov r2, r6
	bl __rt_memcpy
	LDR r0, [r4, #0x28]
	MOV r1, r6, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	tst r6, #1
	beq %21
	LDRB r1, [r0, #1]
	add r0, r0, #2
	STR r0, [r4, #0x28]
	add r0, r4, #0x20
	MOV r1, r1, LSL #0x18
	STMIA r0, {r1, sb}
21
	sub r6, r7, r6
	LDR r0, [r4, #8]
	LDR r1, [r4, #0x28]
	mov r2, r6
	bl __rt_memcpy
	LDR r0, [r4, #0x28]
	MOV r1, r6, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	tst r6, #1
	beq %22
	LDRB r1, [r0, #1]
	add r0, r0, #2
	STR r0, [r4, #0x28]
	add r0, r4, #0x20
	MOV r1, r1, LSL #0x18
	STMIA r0, {r1, sb}
22
	STR r6, [r4, #0xc]
	b %24
23
	LDR r3, [r4, #8]
	LDR r1, [r4, #0x28]
	add r0, r3, r0
	bl __rt_memcpy
	LDR r0, [r4, #0x28]
	MOV r1, r7, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	LDR r0, [r4, #0xc]
	add r0, r0, r7
	STR r0, [r4, #0xc]
24
	tst r5, #1
	beq %25
	mov r1, #8
	mov r0, r8
	bl sub_803F4CC
	LDR r1, [r4, #0xc]
	add r2, r1, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r0, [r2, r1]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
25
	LDR r0, [r4, #0x1c]
	sub r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r0, [r4, #0x50]
	subs r0, r0, r5
	STR r0, [r4, #0x50]
	STREQ sl, [r4, #0x4c]
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr


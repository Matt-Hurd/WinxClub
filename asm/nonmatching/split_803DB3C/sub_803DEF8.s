	arm_func_start sub_803DEF8
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	stmdb sp!, {r0}
	LDR r5, [r0, #8]
	LDR r6, [r0, #0xc]
	MOV r6, r6, LSL #0x11
	LDR r7, _0803E0FC
	LDR r8, [r0, #0x38]
	LDR sb, [r0, #0x2c]
	LDR sl, [r0, #0x20]
	LDR fp, [r0, #0x24]
	LDR ip, [r0, #0x28]
	LDR lr, [r0, #0x1c]
	cmp lr, #0
	ble %41
30
	LDR r4, _0803E100
	LDR r4, [r4]
	cmp r4, #1
	beq %41
	cmp fp, #0xf
	bhs %31
	ldrh r0, [ip], #2
	rsb r1, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r0, lsl r1
31
	MOV r0, sl, LSR #0x18
	add r0, sb, r0, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
	cmp r3, #0x10
	blo %32
	MOV r1, sl, LSL #8
	sub r1, r2, r1, lsr r3
	add r0, r0, r1, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
32
	sub fp, fp, r3
	MOV sl, sl, LSL r3
	cmp r2, #0x100
	bhs %33
	STRB r2, [r5, r6, lsr #17]
	add r6, r6, #0x20000
	subs lr, lr, #1
	bne %30
	b %41
33
	subs r2, r2, #0x100
	beq %42
	add r0, r7, r2, lsl #3
	ldrh r1, [r0, #6]
	ldrh r4, [r0, #4]
	cmp r1, #0
	beq %35
	cmp fp, r1
	bhs %34
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
34
	rsb r2, r1, #0x20
	add r4, r4, sl, lsr r2
	sub fp, fp, r1
	MOV sl, sl, LSL r1
35
	cmp fp, #0xf
	bhs %36
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
36
	MOV r0, sl, LSR #0x18
	add r0, r8, r0, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
	cmp r3, #0x10
	blo %37
	MOV r1, sl, LSL #8
	sub r1, r2, r1, lsr r3
	add r0, r0, r1, lsl #1
	ldrh r3, [r0]
	bic r2, r3, #0xfe00
	MOV r3, r3, LSR #9
37
	sub fp, fp, r3
	MOV sl, sl, LSL r3
	add r0, r7, r2, lsl #3
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq %39
	cmp fp, r0
	bhs %38
	ldrh r2, [ip], #2
	rsb r3, fp, #0x10
	add fp, fp, #0x10
	orr sl, sl, r2, lsl r3
38
	rsb r2, r0, #0x20
	add r1, r1, sl, lsr r2
	sub fp, fp, r0
	MOV sl, sl, LSL r0
39
	sub lr, lr, r4
	sub r1, r6, r1, lsl #17
40
	LDRB r2, [r5, r1, lsr #17]
	STRB r2, [r5, r6, lsr #17]
	add r6, r6, #0x20000
	add r1, r1, #0x20000
	subs r4, r4, #1
	bne %40
	cmp lr, #0
	bgt %30
41
	MOV r6, r6, LSR #0x11
	LDMIA sp!, {r0}
	STR sl, [r0, #0x20]
	STR fp, [r0, #0x24]
	STR ip, [r0, #0x28]
	STR r6, [r0, #0xc]
	STR lr, [r0, #0x1c]
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
42
	MOV r6, r6, LSR #0x11
	LDMIA sp!, {r0}
	STR sl, [r0, #0x20]
	STR fp, [r0, #0x24]
	STR ip, [r0, #0x28]
	STR r6, [r0, #0xc]
	STR lr, [r0, #0x1c]
	mov r1, #0
	STR r1, [r0, #0x4c]
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
	arm_func_end sub_803DEF8

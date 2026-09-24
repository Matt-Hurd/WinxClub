	arm_func_start sub_8009270
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	LDR sb, [sp, #0x3c]
	LDR fp, [sp, #0x38]
	ldmib sb, {r4, r6}
	LDR r5, [sb]
	mov r8, r1
	mov r1, #0
	mov r7, r2
25
	cmp r4, #4
	bge %27
26
	LDRB r2, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r2, r2, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r2, lsl r3
	blt %26
27
	add r3, r8, r1
	MOV r2, r5, LSR #0x1c
	add r1, r1, #1
	cmp r1, #0x14
	STRB r2, [r3, #0x104]
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	blo %25
	add r3, r8, #0x34
	mov sl, r3
	STR r3, [sp]
	add r3, r8, #0x104
	mov r2, #6
	mov r1, #0x14
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x14
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r0, [sp, #0x10]
	cmp r0, fp
	bhs %50
	mov r2, #0
28
	cmp r4, #0x10
	bge %30
29
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r3
	blt %29
30
	MOV r1, r5, LSR #0x1a
	add r1, sl, r1, lsl #1
	ldrh r3, [r1]
	cmp r3, #0x14
	blo %32
	mov r1, #0x4000000
31
	MOV r1, r1, LSR #1
	MOV ip, r3, LSL #1
	ands r3, r5, r1
	movne r3, #1
	cmp r1, #0
	addeq sp, sp, #0x14
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r3, r3, ip
	bxeq lr
	add r3, sl, r3, lsl #1
	ldrh r3, [r3]
	cmp r3, #0x14
	bhs %31
32
	add r1, r3, r8
	LDRB r1, [r1, #0x104]
	cmp r3, #0x11
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	bne %36
	cmp r4, #4
	bge %34
33
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r1, lsl r3
	blt %33
34
	MOV r1, r5, LSR #0x1c
	add r3, r1, #3
	cmn r3, #1
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	beq %49
35
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs %35
	b %49
36
	cmp r3, #0x12
	bne %40
	cmp r4, #5
	bge %38
37
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #5
	orr r5, r5, r1, lsl r3
	blt %37
38
	MOV r1, r5, LSR #0x1b
	add r3, r1, #0x13
	cmn r3, #1
	MOV r5, r5, LSL #5
	sub r4, r4, #5
	beq %49
39
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs %39
	b %49
40
	cmp r3, #0x13
	bne %48
	cmp r4, #1
	bge %42
41
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #1
	orr r5, r5, r1, lsl r3
	blt %41
42
	MOV r1, r5, LSR #0x1f
	sub r3, r4, #1
	cmp r3, #0x10
	add r1, r1, #4
	MOV ip, r5, LSL #1
	bge %44
43
	LDRB lr, [r6]
	LDRB r4, [r6, #1]
	add r6, r6, #2
	orr lr, lr, r4, lsl #8
	rsb r4, r3, #0x10
	add r3, r3, #0x10
	cmp r3, #0x10
	orr ip, ip, lr, lsl r4
	blt %43
44
	MOV lr, ip, LSR #0x1a
	add lr, sl, lr, lsl #1
	ldrh r4, [lr]
	cmp r4, #0x14
	blo %46
	mov lr, #0x4000000
45
	MOV lr, lr, LSR #1
	MOV r5, r4, LSL #1
	ands r4, ip, lr
	movne r4, #1
	cmp lr, #0
	addeq sp, sp, #0x14
	orr r4, r4, r5
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	bxeq lr
	add r4, sl, r4, lsl #1
	ldrh r4, [r4]
	cmp r4, #0x14
	bhs %45
46
	mov lr, r4
	add r4, r4, r8
	LDRB r4, [r4, #0x104]
	MOV r5, ip, LSL r4
	sub r4, r3, r4
	LDRB r3, [r7, r0]
	sub ip, r3, lr
	cmp ip, #0
	addlt ip, ip, #0x11
	subs r3, r1, #1
	blo %49
	and ip, ip, #0xff
47
	mov r1, r0
	STRB ip, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs %47
	b %49
48
	LDRB r1, [r7, r0]
	sub r3, r1, r3
	cmp r3, #0
	mov r1, r0
	addlt r3, r3, #0x11
	STRB r3, [r7, r1]
	add r0, r0, #1
49
	cmp r0, fp
	blo %28
50
	STR r5, [sb], #4
	STMIA sb, {r4, r6}
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
	arm_func_end sub_8009270


	arm_func_start sub_80130DC
sub_80130DC
4
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x144
	LDR r5, [sp, #0x168]
	mov r8, r1
	mov r6, r0
	LDRB r1, [r6, #0x173]
	mov r0, #0
	mov sl, r2
	mov r4, r3
	cmp r1, #0
	beq %8
	b %6
5
	add r1, r0, r0, lsr #31
	MOV r1, r1, ASR #1
	add r1, r6, r1, lsl #1
	add r1, r1, #0x100
	ldrh r1, [r1, #0x74]
	and r2, r4, sl
	MOV r2, r2, LSR #1
	add r2, r8, r2, lsl #1
	strh r1, [r2]
	LDRB r1, [r6, #0x173]
	add r4, r4, #2
	add r0, r0, #2
	sub r1, r1, #2
	ands r1, r1, #0xff
	STRB r1, [r6, #0x173]
	sub r5, r5, #2
	beq %7
6
	cmp r5, #0
	bne %5
7
	and r4, r4, sl
8
	cmp r5, #0
	beq %16
	LDRSH r7, [r6]
	add fp, sl, #1
	cmp r5, #0xa0
	blo %12
9
	mov r1, sp
	mov r0, r6
	bl sub_8012BA0
	add r0, r4, #0xa0
	STR r0, [sp, #0x140]
	cmp r0, fp
	bls %10
	sub sb, fp, r4
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r4, sp
	mov r3, sb
	mov r2, r7
	mov r1, sp
	bl sub_8013024
	mov r2, r0
	mov r0, r8
	rsb r3, sb, #0xa0
	add r1, r4, sb, lsl #1
	bl sub_8013024
	mov r7, r0
	b %11
10
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, #0xa0
	mov r2, r7
	mov r1, sp
	bl sub_8013024
	mov r7, r0
11
	LDR r0, [sp, #0x140]
	sub r5, r5, #0xa0
	cmp r5, #0xa0
	and r4, r0, sl
	bhs %9
	cmp r5, #0
	beq %15
12
	mov sb, sp
	mov r1, sp
	mov r0, r6
	bl sub_8012BA0
	add r0, r5, r4
	cmp r0, fp
	bls %13
	sub fp, fp, r4
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, fp
	mov r2, r7
	mov r1, sb
	bl sub_8013024
	mov r2, r0
	mov r0, r8
	sub r3, r5, fp
	add r1, sb, fp, lsl #1
	bl sub_8013024
	b %14
13
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, r5
	mov r2, r7
	mov r1, sb
	bl sub_8013024
14
	add r1, r4, r5
	and r4, r1, sl
	rsb r8, r5, #0xa0
	mov r2, r0
	add r0, r6, #0x174
	mov r3, r8
	add r1, sb, r5, lsl #1
	bl sub_8013024
	mov r7, r0
	STRB r8, [r6, #0x173]
15
	strh r7, [r6]
	b %18
16
	LDRB r1, [r6, #0x173]
	cmp r1, #0
	movne r1, #0
	bls %18
17
	add r2, r0, r0, lsr #31
	MOV r2, r2, ASR #1
	add r2, r6, r2, lsl #1
	add r2, r2, #0x100
	ldrh r2, [r2, #0x74]
	MOV r3, r1, LSR #1
	add r3, r6, r3, lsl #1
	add r3, r3, #0x100
	strh r2, [r3, #0x74]
	LDRB r2, [r6, #0x173]
	add r1, r1, #2
	add r0, r0, #2
	cmp r2, r1
	bhi %17
18
	mov r0, r4
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr


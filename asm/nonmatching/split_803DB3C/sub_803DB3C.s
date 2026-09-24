	arm_func_start sub_803DB3C
sub_803DB3C
	STMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	mov r3, r2
	LDR r8, [r0, #0x38]
	LDR r5, [r0, #0x20]
	LDR r4, [r0, #0x24]
	LDR r6, [r0, #0x28]
1
	cmp r4, #0xf
	bhs %2
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
2
	MOV sb, r5, LSR #0x18
	add sb, r8, sb, lsl #1
	ldrh sl, [sb]
	bic fp, sl, #0xfe00
	MOV sl, sl, LSR #9
	cmp sl, #0x10
	blo %3
	MOV ip, r5, LSL #8
	sub ip, fp, ip, lsr sl
	add sb, sb, ip, lsl #1
	ldrh sl, [sb]
	bic fp, sl, #0xfe00
	MOV sl, sl, LSR #9
3
	sub r4, r4, sl
	MOV r5, r5, LSL sl
	cmp fp, #0x10
	bhs %4
	STRB fp, [r3], #1
	subs r1, r1, #1
	bne %1
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
4
	bgt %7
	cmp r4, #2
	bhs %5
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
5
	MOV r2, r5, LSR #0x1e
	add r2, r2, #3
	sub r4, r4, #2
	MOV r5, r5, LSL #2
	sub r1, r1, r2
6
	LDRB sb, [r3, #-1]
	STRB sb, [r3], #1
	subs r2, r2, #1
	bne %6
	cmp r1, #0
	bne %1
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
7
	cmp fp, #0x11
	bgt %10
	cmp r4, #3
	bhs %8
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
8
	MOV r2, r5, LSR #0x1d
	add r2, r2, #3
	sub r4, r4, #3
	MOV r5, r5, LSL #3
	sub r1, r1, r2
	mov sb, #0
9
	STRB sb, [r3], #1
	subs r2, r2, #1
	bne %9
	cmp r1, #0
	bne %1
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
10
	cmp r4, #7
	bhs %11
	ldrh sb, [r6], #2
	rsb sl, r4, #0x10
	add r4, r4, #0x10
	orr r5, r5, sb, lsl sl
11
	MOV r2, r5, LSR #0x19
	add r2, r2, #0xb
	sub r4, r4, #7
	MOV r5, r5, LSL #7
	sub r1, r1, r2
	mov sb, #0
12
	STRB sb, [r3], #1
	subs r2, r2, #1
	bne %12
	cmp r1, #0
	bne %1
	STR r5, [r0, #0x20]
	STR r4, [r0, #0x24]
	STR r6, [r0, #0x28]
	LDMFD SP!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr


	arm_func_start sub_803DCE4
sub_803DCE4
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x294
	add r3, sp, #0x280
	mov sb, #0
	mov sl, #0
	mov fp, #0
	mov ip, #0
	STMIA r3, {sb, sl, fp, ip}
	sub lr, r1, #1
	add r4, r2, lr
13
	LDRB r8, [r4], #-1
	LDRB sb, [r3, r8]
	add sb, sb, #1
	STRB sb, [r3, r8]
	subs lr, lr, #1
	bpl %13
	add r5, sp, #0x40
	add r6, sp, #0
	mov r7, r5
	mov r8, #0x1000000
	mov sb, #0
	mov lr, #1
14
	STR r7, [r6, lr, lsl #2]
	LDRB sl, [r3, lr]
	add r7, r7, sl, lsl #1
	cmp sl, #0
	beq %15
	cmp lr, r8
	movlo r8, lr
	cmp lr, sb
	movgt sb, lr
15
	add lr, lr, #1
	cmp lr, #0x10
	blo %14
	STR r8, [r0, #4]
	STR sb, [r0, #8]
	mov lr, #0
	add r4, r4, #1
16
	LDRB ip, [r4], #1
	cmp ip, #0
	beq %17
	LDR sl, [r6, ip, lsl #2]
	orr fp, lr, ip, lsl #9
	strh fp, [sl], #2
	STR sl, [r6, ip, lsl #2]
17
	add lr, lr, #1
	cmp lr, r1
	blo %16
	LDR sl, [r6, #0x3c]
	sub sl, sl, r5
	STR sl, [sp, #0x290]
	mov r1, sb
	cmp r1, #8
	movhi r1, #8
	mov ip, #1
	rsb r2, r8, #8
	MOV r2, ip, LSL r2
	LDR r4, [r0]
	add r6, r3, sb
	add r3, r3, r8
18
	LDRB r7, [r3], #1
	cmp r7, #0
	beq %21
19
	mov lr, r2
	ldrh fp, [r5], #2
20
	strh fp, [r4], #2
	subs lr, lr, #1
	bne %20
	subs r7, r7, #1
	bne %19
21
	cmp r3, r6
	bgt %22
	MOVS r2, r2, LSR #1
	bne %18
22
	cmp sb, #8
	bgt %23
	add sp, sp, #0x294
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0x100
	bx lr
23
	sub r1, sb, #8
	mov r8, r1
	add r3, sp, #0x280
	add r3, r3, sb
	mov r6, #1
	MOV r6, r6, LSL sb
	sub r6, r6, #1
	mov r2, #1
	LDR sl, [sp, #0x290]
	add r5, sp, #0x40
	add r5, r5, sl
	sub r5, r5, #2
	LDR sb, [r0]
	add sb, sb, #0x200
	mov r4, sb
24
	LDRB r7, [r3], #-1
	cmp r7, #0
	beq %27
25
	mov sl, r2
	ldrh fp, [r5], #-2
26
	strh fp, [sb], #2
	subs sl, sl, #1
	bne %26
	MOV sl, r6, LSR r1
	sub r6, r6, #1
	teq sl, r6, lsr r1
	bne %28
	subs r7, r7, #1
	bne %25
27
	MOV r6, r6, LSR #1
	MOV r2, r2, LSL #1
	subs r1, r1, #1
	bne %24
	b %29
28
	rsb sl, r8, #0x20
	sub fp, sb, r4
	MOV fp, fp, LSR #1
	orr fp, fp, sl, lsl #9
	strh fp, [r4, #-2]!
	subs r7, r7, #1
	mov r2, #1
	movne r8, r1
	bne %25
	MOV r6, r6, LSR #1
	subs r1, r1, #1
	mov r8, r1
	bne %24
29
	LDR r0, [r0]
	sub r0, sb, r0
	MOV r0, r0, LSR #1
	add sp, sp, #0x294
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr


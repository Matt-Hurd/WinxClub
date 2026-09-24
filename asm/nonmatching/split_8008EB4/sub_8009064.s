	arm_func_start sub_8009064
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDR lr, [sp, #8]
	mov r2, #1
	MOV r8, r2, LSL lr
	MOV sb, r8, LSR #1
	mov r5, sb
	LDR r4, [sp, #0x34]
	mov r0, #1
	mov ip, #0
	cmp lr, #1
	blo %12
7
	mov r2, #0
	cmp r1, #0
	bls %11
	sub sl, sb, #1
8
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne %10
	mov lr, ip
	add ip, ip, sb
	cmp ip, r8
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
	mov r7, sl
	cmn sl, #1
	beq %10
9
	mov r6, lr
	add r6, r4, r6, lsl #1
	strh r2, [r6]
	add lr, lr, #1
	subs r7, r7, #1
	bhs %9
10
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo %8
11
	add r0, r0, #1
	LDR r2, [sp, #8]
	and r0, r0, #0xff
	cmp r0, r2
	MOV sb, sb, LSR #1
	bls %7
12
	cmp ip, r8
	beq %22
	MOV r2, ip, LSL #0x10
	MOV r2, r2, LSR #0x10
	cmp r2, r8
	mov sb, #0
	bhs %14
13
	add lr, r4, r2, lsl #1
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r8
	strh sb, [lr]
	blo %13
14
	MOV ip, ip, LSL #0x10
	MOV r8, r8, LSL #0x10
	mov fp, #0x8000
	cmp r0, #0x10
	bhi %22
15
	mov r2, #0
	cmp r1, #0
	bls %21
	LDR lr, [sp, #8]
	sub sl, r0, lr
16
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne %20
	MOV r6, ip, LSR #0x10
	mov lr, #0
	cmp sl, #0
	bls %19
17
	add r6, r4, r6, lsl #1
	ldrh r7, [r6]
	cmp r7, #0
	bne %18
	add r7, r4, r5, lsl #2
	strh sb, [r7]
	strh sb, [r7, #2]
	mov r7, r5
	strh r7, [r6]
	add r5, r5, #1
18
	rsb r7, lr, #0xf
	ldrh r6, [r6]
	MOV r7, ip, LSR r7
	tst r7, #1
	MOV r6, r6, LSL #1
	addne r6, r6, #1
	add lr, lr, #1
	cmp sl, lr
	bhi %17
19
	add lr, r4, r6, lsl #1
	add ip, ip, fp
	cmp ip, r8
	strh r2, [lr]
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
20
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo %16
21
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	MOV fp, fp, LSR #1
	bls %15
22
	cmp ip, r8
	addeq sp, sp, #0x10
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bxeq lr
	cmp r1, #0
	bls %24
23
	LDRB r2, [r3, r0]
	cmp r2, #0
	addne sp, sp, #0x10
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #1
	bxne lr
	add r0, r0, #1
	bic r0, r0, #0x10000
	cmp r0, r1
	blo %23
24
	add sp, sp, #0x10
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
	arm_func_end sub_8009064


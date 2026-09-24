	arm_func_start sub_8007104
sub_8007104
	STMFD SP!, {r4, r5, r6, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r0, [r4]
	cmpne r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #1
	bxeq lr
	cmp r1, #4
	movne r6, #0
	mvneq r6, #4
	mvn r5, #4
3
	LDR r0, [r4, #0x18]
	LDRB r0, [r0]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
jmpt_08007148
	b %22
jmpt_0800714C
	b %4
jmpt_08007150
	b %7
jmpt_08007154
	b %9
jmpt_08007158
	b %10
jmpt_0800715C
	b %11
jmpt_08007160
	b %12
jmpt_08007164
	b %13
jmpt_08007168
	b %14
jmpt_0800716C
	b %16
jmpt_08007170
	b %17
jmpt_08007174
	b %18
jmpt_08007178
	b %19
jmpt_0800717C
	b %20
jmpt_08007180
	b %21
4
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	mov r5, r6
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	add r1, r0, #1
	STR r1, [r4]
	LDRB r1, [r0]
	LDR r0, [r4, #0x18]
	STR r1, [r0, #4]
	and r0, r1, #0xf
	cmp r0, #8
	beq %5
	LDR r1, [r4, #0x18]
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STR r0, [r1, #4]
	b %3
5
	mov r2, #8
	LDR r0, [r4, #0x18]
	add r1, r2, r1, lsr #4
	LDR r2, [r0, #0x10]
	cmp r1, r2
	bls %6
	mov r1, #0xd
	STRB r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STR r0, [r1, #4]
	b %3
6
	mov r1, #1
	STRB r1, [r0]
7
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	LDR r3, _080077E0
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	mov ip, #0
	add r1, r0, #1
	STR r1, [r4]
	LDR r1, [r4, #0x18]
	LDRB r0, [r0]
	LDR r2, [r1, #4]
	mov r5, r6
	add r2, r0, r2, lsl #8
	umlal r3, ip, r2, r3
	MOV r3, ip, LSR #3
	sub r3, r3, r3, lsl #5
	adds r2, r3, r2
	beq %8
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STR r0, [r1, #4]
	b %3
8
	tst r0, #0x20
	moveq r0, #7
	STREQB r0, [r1]
	beq %3
	LDR r1, [r4, #0x18]
	mov r0, #2
	STRB r0, [r1]
9
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	mov r5, r6
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	add r1, r0, #1
	STR r1, [r4]
	LDRB r0, [r0]
	LDR r1, [r4, #0x18]
	MOV r0, r0, LSL #0x18
	STR r0, [r1, #8]
	LDR r1, [r4, #0x18]
	mov r0, #3
	STRB r0, [r1]
10
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #16
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #4
	STRB r0, [r1]
11
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #8
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STRB r0, [r1]
12
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r1, r1, #1
	LDR r0, [r4, #0x18]
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0, #8]!
	add r1, r1, r2
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #6
	STRB r0, [r1]
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #2
	bx lr
13
	LDR r1, [r4, #0x18]
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #0
	STR r0, [r1, #4]
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #1
	bx lr
14
	LDR r0, [r4, #0x18]
	mov r2, r5
	mov r1, r4
	LDR r0, [r0, #0x14]
	bl sub_8005504
	mov r5, r0
	cmn r0, #3
	bne %15
	LDR r1, [r4, #0x18]
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #0
	STR r0, [r1, #4]
	b %3
15
	cmp r5, #0
	moveq r5, r6
	cmp r5, #1
	movne r0, r5
	LDMNEFD SP!, {r4, r5, r6, lr}
	bxne lr
	LDR r0, [r4, #0x18]
	mov r5, r6
	add r2, r0, #4
	LDR r0, [r0, #0x14]
	mov r1, r4
	bl sub_8005380
	LDR r0, [r4, #0x18]
	LDR r1, [r0, #0xc]
	cmp r1, #0
	movne r1, #0xc
	STRNEB r1, [r0]
	bne %3
	LDR r1, [r4, #0x18]
	mov r0, #8
	STRB r0, [r1]
16
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	mov r5, r6
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	add r1, r0, #1
	STR r1, [r4]
	LDRB r0, [r0]
	LDR r1, [r4, #0x18]
	MOV r0, r0, LSL #0x18
	STR r0, [r1, #8]
	LDR r1, [r4, #0x18]
	mov r0, #9
	STRB r0, [r1]
17
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #16
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0xa
	STRB r0, [r1]
18
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #8
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0xb
	STRB r0, [r1]
19
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r1, r1, #1
	LDR r0, [r4, #0x18]
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0, #8]!
	add r1, r1, r2
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0xc
	STRB r0, [r1]
20
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #1
	bx lr
21
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #2
	bx lr
22
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #1
	bx lr


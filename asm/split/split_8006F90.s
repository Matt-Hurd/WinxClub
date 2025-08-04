	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_08049604
	IMPORT sub_8005380
	IMPORT sub_80053F8
	IMPORT sub_8005504
	IMPORT sub_8006244
	IMPORT sub_80062AC
	IMPORT sub_80062D8

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

	arm_func_start sub_8006FE4
sub_8006FE4
	STMFD SP!, {r4, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r1, [r4, #0x20]
	cmpne r1, #0
	LDMEQFD SP!, {r4, lr}
	mvneq r0, #1
	bxeq lr
	LDR r0, [r0, #0x14]
	cmp r0, #0
	movne r1, r4
	blne sub_8006244
	LDR r0, [r4, #0x24]
	LDR r1, [r4, #0x18]
	LDR r3, [r4, #0x20]
	mov r2, #6
	mov lr, pc
	bx r3
	mov r0, #0
	STR r0, [r4, #0x18]
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_8007040
sub_8007040
	STMFD SP!, {r4, r5, r6, lr}
	LDR r3, [r0, #0x1c]
	mov r4, r0
	LDR r0, [r0, #0x24]
	add lr, pc, #0xC
	mov r5, #0xf
	mov r2, #6
	mov r1, #0x18
	bx r3
loc_08007064
	STR r0, [r4, #0x18]
	cmp r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #3
	bxeq lr
	mov r6, #0
	STR r6, [r0, #0x14]
	LDR r0, [r4, #0x18]
	mov r2, #0x8000
	STR r6, [r0, #0xc]
	LDR r0, [r4, #0x18]
	mov r1, #0
	STR r5, [r0, #0x10]
	mov r0, r4
	bl sub_80053F8
	LDR r1, [r4, #0x18]
	cmp r0, #0
	STR r0, [r1, #0x14]
	bne %2
	cmp r4, #0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r0, [r4, #0x20]
	cmpne r0, #0
	beq %1
	LDR r0, [r4, #0x24]
	LDR r1, [r4, #0x18]
	LDR r3, [r4, #0x20]
	mov r2, #6
	mov lr, pc
	bx r3
	STR r6, [r4, #0x18]
1
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #3
	bx lr
2
	mov r0, r4
	bl sub_8006F90
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #0
	bx lr

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

	arm_func_start sub_80076D0
sub_80076D0
	STMFD SP!, {r4, r5, r6, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #1
	bxeq lr
	LDRB r1, [r0]
	cmp r1, #0xd
	beq %25
	mov r1, #0xd
	STRB r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0
	STR r0, [r1, #4]
25
	LDR r2, [r4, #4]
	cmp r2, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #4
	bxeq lr
	LDR r1, [r4]
	LDR r5, [r4, #0x18]
	mov lr, r1
	LDR ip, _080077E4
	LDR r0, [r5, #4]
	b %28
26
	LDRB r3, [r1]
	LDRB r6, [ip, r0]
	cmp r3, r6
	addeq r0, r0, #1
	beq %27
	cmp r3, #0
	rsbeq r0, r0, #4
	movne r0, #0
27
	add r1, r1, #1
	subs r2, r2, #1
	beq %29
28
	cmp r0, #4
	blo %26
29
	LDR r3, [r4, #8]
	sub ip, r1, lr
	add r3, r3, ip
	STMIA r4, {r1, r2, r3}
	STR r0, [r5, #4]
	cmp r0, #4
	LDMNEFD SP!, {r4, r5, r6, lr}
	mvnne r0, #2
	bxne lr
	LDR r5, [r4, #8]
	LDR r6, [r4, #0x14]
	mov r0, r4
	bl sub_8006F90
	STR r5, [r4, #8]
	STR r6, [r4, #0x14]
	LDR r1, [r4, #0x18]
	mov r0, #7
	STRB r0, [r1]
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_80077C0
sub_80077C0
	cmp r0, #0
	LDRNE r0, [r0, #0x18]
	cmpne r0, #0
	LDRNE r0, [r0, #0x14]
	cmpne r0, #0
	bne sub_80062D8
	mvn r0, #1
	bx lr
	ALIGN
_080077E0 DCDU 0x42108421
_080077E4 DCDU gUnknown_08049604
	END

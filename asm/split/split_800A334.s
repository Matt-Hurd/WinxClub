	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT CpuSet
	IMPORT gUnknown_03003EB4

	arm_func_start sub_800A334

sub_800A334
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r0, #4]
	mov r5, r1
	LDR r1, [r4, #0x2c]
	cmp r0, #1
	bne %5
	LDR r0, [r4, #0x28]
	add r0, r0, r5
	STR r0, [r4, #0x28]
	cmp r0, r1
	STRHI r1, [r4, #0x28]
	b %12
5
	LDR ip, [r4, #0x24]
	sub r0, ip, r1
	cmp r0, #0x10000
	blt %10
	add r0, r1, #0x8000
	sub r2, ip, r0
	add ip, r2, #4
	mov r2, r1
	mov r3, r0
	cmp r0, r1
	mov lr, #0
	bhs %6
	add r6, r3, ip
	cmp r6, r2
	movhi r3, r6
	addhi r2, r2, ip
	movhi lr, #0xa00000
6
	LDR r6, _0800A9B8
	LDR r6, [r6]
	cmp r6, #0
	beq %7
	MOV r2, ip, LSL #9
	mov r3, #0x4000000
	orr r2, r3, r2, lsr #11
	bl CpuSet
	b %9
7
	orr r0, r2, r3
	mov r1, #0x4000000
	add r1, r1, #0xd4
	orr r0, r0, ip
	tst r0, #2
	STR r3, [r1]
	STR r2, [r1, #4]
	beq %8
	orr r0, lr, ip, lsr #1
	orr r0, r0, #0x80000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
	b %9
8
	orr r0, lr, ip, lsr #2
	orr r0, r0, #0x84000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
9
	LDR r0, [r4, #0x28]
	sub r0, r0, #0x8000
	STR r0, [r4, #0x28]
	LDR r0, [r4, #0x24]
	sub r0, r0, #0x8000
	STR r0, [r4, #0x24]
10
	LDR r0, [r4, #0x30]
	cmp r0, r5
	bhs %11
	LDR r1, [r4, #0x24]
	add r0, r1, r0
	STR r0, [r4, #0x28]
	mov r0, #0
	STR r0, [r4, #0x30]
	b %12
11
	LDR r1, [r4, #0x28]
	add r1, r1, r5
	STR r1, [r4, #0x28]
	LDR r2, [r4, #0x24]
	sub r1, r1, r2
	sub r0, r0, r1
	STR r0, [r4, #0x30]
12
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	cmp r0, r1
	bhs %35
	mov lr, #3
	mov ip, #1
13
	LDR r0, [r4, #0x34]
	tst r0, #0x7f
	MOVNE r0, r0, LSL #1
	bne %14
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
14
	STR r0, [r4, #0x34]
	MOVS r0, r0, LSL #0x17
	bpl %17
15
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r1, [r0]
	LDR r0, [r4, #0x24]
	add r2, r0, #1
	STR r2, [r4, #0x24]
	STRB r1, [r0]
	LDR r0, [r4, #0x34]
	tst r0, #0x7f
	MOVNE r0, r0, LSL #1
	bne %16
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
16
	STR r0, [r4, #0x34]
	MOVS r0, r0, LSL #0x17
	bmi %15
17
	mov r0, #1
18
	LDR r1, [r4, #0x34]
	tst r1, #0x7f
	MOVNE r1, r1, LSL #1
	bne %19
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r1, ip, r1, lsl #1
19
	MOV r2, r1, LSL #0x17
	MOV r2, r2, LSR #0x1f
	add r0, r2, r0, lsl #1
	tst r1, #0x7f
	MOVNE r2, r1, LSL #1
	STR r1, [r4, #0x34]
	bne %20
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r2, ip, r1, lsl #1
20
	STR r2, [r4, #0x34]
	MOVS r1, r2, LSL #0x17
	bmi %22
	tst r2, #0x7f
	MOVNE r1, r2, LSL #1
	bne %21
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r1, ip, r1, lsl #1
21
	STR r1, [r4, #0x34]
	MOV r1, r1, LSL #0x17
	MOV r1, r1, LSR #0x1f
	add r0, r1, r0, lsl #1
	sub r0, r0, #2
	b %18
22
	cmp r0, #2
	bne %24
	add r1, r4, #0x34
	LDMIA r1, {r0, r1}
	tst r0, #0x7f
	MOVNE r0, r2, LSL #1
	bne %23
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
23
	STR r0, [r4, #0x34]
	MOV r0, r0, LSL #0x17
	MOV r0, r0, LSR #0x1f
	b %25
24
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r0, r1, r0, lsl #8
	sub r1, r0, #0x300
	cmn r1, #1
	beq %35
	bic r0, ip, r1
	MOV r1, r1, LSR #1
	add r1, r1, #1
	STR r1, [r4, #0x38]
25
	cmp r0, #0
	LDR r0, [r4, #0x34]
	and r2, r0, #0x7f
	beq %27
	cmp r2, #0
	MOVNE r0, r0, LSL #1
	bne %26
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
26
	STR r0, [r4, #0x34]
	MOV r0, r0, LSL #0x17
	add r0, ip, r0, lsr #31
	b %33
27
	cmp r2, #0
	MOVNE r0, r0, LSL #1
	bne %28
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
28
	MOV r2, r0, LSL #0x17
	cmp r2, #0
	STR r0, [r4, #0x34]
	movge r0, #1
	bge %30
	tst r0, #0x7f
	MOVNE r0, r0, LSL #1
	bne %29
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
29
	STR r0, [r4, #0x34]
	MOV r0, r0, LSL #0x17
	add r0, lr, r0, lsr #31
	b %33
30
	LDR r2, [r4, #0x34]
	tst r2, #0x7f
	MOVNE r2, r2, LSL #1
	bne %31
	LDR r2, [r4, #0x20]
	add r3, r2, #1
	STR r3, [r4, #0x20]
	LDRB r2, [r2]
	add r2, ip, r2, lsl #1
31
	MOV r3, r2, LSL #0x17
	MOV r3, r3, LSR #0x1f
	STR r2, [r4, #0x34]
	tst r2, #0x7f
	MOVNE r2, r2, LSL #1
	add r0, r3, r0, lsl #1
	bne %32
	LDR r2, [r4, #0x20]
	add r3, r2, #1
	STR r3, [r4, #0x20]
	LDRB r2, [r2]
	add r2, ip, r2, lsl #1
32
	STR r2, [r4, #0x34]
	MOVS r2, r2, LSL #0x17
	bpl %30
	add r0, r0, #3
33
	cmp r1, #0x500
	movls r2, #0
	movhi r2, #1
	add r0, r2, r0
	LDR r2, [r4, #0x24]
	sub r1, r2, r1
	LDRB r3, [r1], #1
	add r6, r2, #1
	STR r6, [r4, #0x24]
	STRB r3, [r2]
34
	LDR r2, [r4, #0x24]
	LDRB r3, [r1], #1
	add r6, r2, #1
	STR r6, [r4, #0x24]
	STRB r3, [r2]
	subs r0, r0, #1
	bne %34
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	cmp r0, r1
	blo %13
35
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq %36
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	sub r0, r0, r1
	LDR r1, [r4, #0x30]
	sub r0, r1, r0
	STR r0, [r4, #0x30]
36
	LDR r0, [r4, #0x28]
	sub r0, r0, r5
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	ALIGN
_0800A9B8 DCDU gUnknown_03003EB4

	END

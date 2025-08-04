	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB4
	IMPORT __VTABLE__379off_803EE14
	IMPORT sub_80095B8
	IMPORT __nw__FUi
	IMPORT sub_800802E
	IMPORT sub_800808E
	IMPORT CpuSet

	arm_func_start sub_800A240
sub_800A240
	STMFD SP!, {r3, lr}
	mov r2, r1
	add r1, r0, #0x30
	bl sub_80095B8
	LDMFD SP!, {r3, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_800A25C
sub_800A25C
	LDR r0, [r1]
	bic r0, r0, #0xf8000000
	bx lr

	arm_func_start sub_800A268
sub_800A268
	mov r0, #4
	bx lr
	
	arm_func_start sub_800A270
sub_800A270
1
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %2
	mov r0, #0x3c
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
2
	mov r0, r4
	bl sub_800802E
	LDR r0, _0800A9B4
	STR r0, [r4]
	mov r0, #4
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_800A2B8
sub_800A2B8
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl sub_800808E
	LDR r0, [r5]
	mov r1, #0
	add r0, r0, #4
	STR r0, [r4, #0x20]
	LDR r0, [r5, #8]
	STR r0, [r4, #0x24]
	LDR r0, [r5, #8]
	STR r0, [r4, #0x28]
	LDRB r0, [r5, #0xc]
	cmp r0, #2
	LDR r0, [r5, #8]
	bne %3
	STR r0, [r4, #0x2c]
	LDR r0, [r5]
	LDR r0, [r0]
	STR r0, [r4, #0x30]
	b %4
3
	LDR r2, [r5]
	LDR r2, [r2]
	add r0, r0, r2
	add r2, r4, #0x2c
	STMIA r2, {r0, r1}
4
	mov r0, #1
	STR r1, [r4, #0x34]!
	STR r0, [r4, #4]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

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

	arm_func_start sub_800A7A0
sub_800A7A0
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne %37
	LDR r1, [r0, #0x24]
	LDR r0, [r0, #0x2c]
	cmp r1, r0
	movlo r0, #0
	movhs r0, #1
	bx lr
37
	LDR r0, [r0, #0x30]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr

	arm_func_start sub_800A7D4
sub_800A7D4
	STMFD SP!, {r4, r5, r6, lr}
	mov lr, #1
	mov r5, #1
	mov r4, #3
	add r0, r0, #4
	mov r2, #0
38
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r3, r2, LSL #0x17
	bpl %40
39
	LDRB r3, [r0], #1
	tst r2, #0x7f
	STRB r3, [r1], #1
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r3, r2, LSL #0x17
	bmi %39
40
	mov r3, #1
41
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV ip, r2, LSL #0x17
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	add r3, r3, ip, lsr #31
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS ip, r2, LSL #0x17
	bmi %42
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV ip, r2, LSL #0x17
	add r3, r3, ip, lsr #31
	sub r3, r3, #2
	b %41
42
	cmp r3, #2
	bne %43
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	mov ip, r5
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r3, r2, LSL #0x17
	MOV r3, r3, LSR #0x1f
	b %44
43
	LDRB ip, [r0], #1
	add r3, ip, r3, lsl #8
	sub ip, r3, #0x300
	cmn ip, #1
	bicne r3, lr, ip
	MOVNE ip, ip, LSR #1
	addne ip, ip, #1
	movne r5, ip
	bne %44
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #1
	bx lr
44
	cmp r3, #0
	and r3, r2, #0x7f
	beq %45
	cmp r3, #0
	LDREQB r2, [r0], #1
	MOVNE r2, r2, LSL #1
	addeq r2, lr, r2, lsl #1
	MOV r3, r2, LSL #0x17
	add r3, lr, r3, lsr #31
	b %47
45
	cmp r3, #0
	LDREQB r2, [r0], #1
	MOVNE r2, r2, LSL #1
	addeq r2, lr, r2, lsl #1
	MOV r3, r2, LSL #0x17
	cmp r3, #0
	movge r3, #1
	bge %46
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r3, r2, LSL #0x17
	add r3, r4, r3, lsr #31
	b %47
46
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r6, r2, LSL #0x17
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	add r3, r3, r6, lsr #31
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r6, r2, LSL #0x17
	bpl %46
	add r3, r3, #3
47
	cmp ip, #0x500
	movls r6, #0
	movhi r6, #1
	add r3, r6, r3
	sub ip, r1, ip
	LDRB r6, [ip], #1
	STRB r6, [r1], #1
48
	LDRB r6, [ip], #1
	subs r3, r3, #1
	STRB r6, [r1], #1
	bne %48
	b %38

	arm_func_start sub_800A9A4
sub_800A9A4
	LDR r0, [r1]
	bx lr

	arm_func_start sub_800A9AC
sub_800A9AC
	mov r0, #4
	bx lr
	ALIGN
_0800A9B4 DCDU __VTABLE__379off_803EE14
_0800A9B8 DCDU gUnknown_03003EB4
	END

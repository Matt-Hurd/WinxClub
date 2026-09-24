	arm_func_start sub_8004C44
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r4, #0x10000
	LDR r0, _08004DBC
	blo %14
	cmp r4, #0x1000000
	blo %11
	cmp r4, #0x10000000
	blo %9
	cmp r4, #0x40000000
	LDRCCB r0, [r0, r4, lsr #22]
	MOVCC r5, r0, LSL #7
	LDRCSB r0, [r0, r4, lsr #24]
	MOVCS r5, r0, LSL #8
	b %10
9
	cmp r4, #0x4000000
	LDRCCB r0, [r0, r4, lsr #18]
	MOVCC r5, r0, LSL #5
	LDRCSB r0, [r0, r4, lsr #20]
	MOVCS r5, r0, LSL #6
10
	mov r1, r4
	mov r0, r5
	bl __rt_udiv
	add r0, r0, r5
	add r0, r0, #1
	MOV r5, r0, LSR #1
	mov r0, r5
	mov r1, r4
	bl __rt_udiv
	add r0, r0, r5
	add r0, r0, #1
	MOV r0, r0, LSR #1
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr
11
	cmp r4, #0x100000
	blo %12
	cmp r4, #0x400000
	LDRCCB r0, [r0, r4, lsr #14]
	MOVCC r5, r0, LSL #3
	LDRCSB r0, [r0, r4, lsr #16]
	MOVCS r5, r0, LSL #4
	b %13
12
	cmp r4, #0x40000
	LDRCCB r0, [r0, r4, lsr #10]
	MOVCC r5, r0, LSL #1
	LDRCSB r0, [r0, r4, lsr #12]
	MOVCS r5, r0, LSL #2
13
	mov r1, r4
	mov r0, r5
	bl __rt_udiv
	add r0, r0, r5
	add r0, r0, #1
	MOV r0, r0, LSR #1
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr
14
	cmp r4, #0x100
	LDRCCB r0, [r0, r4]
	LDMLOFD SP!, {r3, r4, r5, lr}
	MOVCC r0, r0, LSR #4
	bxlo lr
	mov r1, #1
	cmp r4, #0x1000
	blo %15
	cmp r4, #0x4000
	LDRCCB r0, [r0, r4, lsr #6]
	addlo r0, r1, r0, lsr #1
	LDRCSB r0, [r0, r4, lsr #8]
	addhs r0, r0, #1
	b %16
15
	cmp r4, #0x400
	LDRCCB r0, [r0, r4, lsr #2]
	addlo r0, r1, r0, lsr #3
	LDRCSB r0, [r0, r4, lsr #4]
	addhs r0, r1, r0, lsr #2
16
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr
	arm_func_end sub_8004C44


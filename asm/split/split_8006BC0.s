	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0804A8F0

	arm_func_start sub_8006BC0
sub_8006BC0
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	LDR r7, [sp, #0x3c]
	LDR r8, [sp, #0x38]
	LDR fp, _08006F8C
	LDR r2, [r8, #0x34]
	LDR r3, [r8, #0x30]
	LDR r5, [r7, #4]
	cmp r3, r2
	LDRLS r3, [r8, #0x2c]
	LDR r6, [r7]
	LDR r4, [r8, #0x20]
	LDR lr, [r8, #0x1c]
	LDR r0, [fp, r0, lsl #2]
	subls sb, r3, r2
	STR r0, [sp]
	LDR r0, [fp, r1, lsl #2]
	subhi r3, r3, r2
	subhi sb, r3, #1
1
	cmp lr, #0x14
	bhs %3
2
	LDRB r1, [r6], #1
	sub r5, r5, #1
	orr r4, r4, r1, lsl lr
	add lr, lr, #8
	cmp lr, #0x14
	blo %2
3
	LDR r1, [sp]
	LDR r3, [sp, #0xc]
	and r1, r4, r1
	add r3, r3, r1, lsl #3
	LDRB r1, [r3]
	cmp r1, #0
	LDRNE fp, _08006F8C
	bne %4
	LDRB r1, [r3, #1]
	sub sb, sb, #1
	MOV r4, r4, LSR r1
	sub lr, lr, r1
	LDR r1, [r3, #4]
	STRB r1, [r2], #1
	b %20
4
	LDRB ip, [r3, #1]
	tst r1, #0x10
	MOV r4, r4, LSR ip
	sub lr, lr, ip
	beq %19
	and r1, r1, #0xf
	LDR r3, [r3, #4]
	LDR ip, [fp, r1, lsl #2]
	and ip, ip, r4
	add r3, r3, ip
	MOV ip, r4, LSR r1
	sub r1, lr, r1
	cmp r1, #0xf
	bhs %6
5
	LDRB lr, [r6], #1
	sub r5, r5, #1
	orr ip, ip, lr, lsl r1
	add r1, r1, #8
	cmp r1, #0xf
	blo %5
6
	LDR r4, [sp, #0x10]
	and lr, ip, r0
	add lr, r4, lr, lsl #3
	LDRB r4, [lr]
7
	LDRB sl, [lr, #1]
	tst r4, #0x10
	MOV ip, ip, LSR sl
	sub r1, r1, sl
	beq %17
	and sl, r4, #0xf
	cmp r1, sl
	bhs %9
8
	LDRB r4, [r6], #1
	sub r5, r5, #1
	orr ip, ip, r4, lsl r1
	add r1, r1, #8
	cmp r1, sl
	blo %8
9
	LDR r4, [fp, sl, lsl #2]
	LDR lr, [lr, #4]
	and r4, r4, ip
	add fp, lr, r4
	MOV r4, ip, LSR sl
	LDR ip, [r8, #0x28]
	sub lr, r1, sl
	sub r1, r2, fp
	cmp ip, r1
	sub sb, sb, r3
	bls %15
	LDR fp, [r8, #0x2c]
	sub sl, fp, ip
10
	add r1, sl, r1
	cmp ip, r1
	bhi %10
	sub ip, fp, r1
	cmp r3, ip
	bls %13
	sub r3, r3, ip
11
	LDRB sl, [r1], #1
	subs ip, ip, #1
	STRB sl, [r2], #1
	bne %11
	LDR r1, [r8, #0x28]
12
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne %12
	b %20
13
	LDRB ip, [r1], #1
	sub r3, r3, #2
	STRB ip, [r2], #1
	LDRB ip, [r1], #1
	STRB ip, [r2], #1
14
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne %14
	b %20
15
	LDRB ip, [r1], #1
	sub r3, r3, #2
	STRB ip, [r2], #1
	LDRB ip, [r1], #1
	STRB ip, [r2], #1
16
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne %16
	b %20
17
	tst r4, #0x40
	bne %18
	LDR sl, [lr, #4]
	LDR r4, [fp, r4, lsl #2]
	add lr, lr, sl, lsl #3
	and r4, r4, ip
	add lr, lr, r4, lsl #3
	LDRB r4, [lr]
	b %7
18
	LDR r0, [r7, #4]
	sub r0, r0, r5
	cmp r0, r1, lsr #3
	MOVHI r0, r1, LSR #3
	add r3, r5, r0
	sub lr, r6, r0
	sub r0, r1, r0, lsl #3
	add r1, r8, #0x1c
	STMIA r1, {r0, ip}
	STR r3, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, lr, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR lr, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r0, #2
	bx lr
19
	tst r1, #0x40
	bne %21
	LDR ip, [r3, #4]
	LDR r1, [fp, r1, lsl #2]
	add r3, r3, ip, lsl #3
	and r1, r1, r4
	add r3, r3, r1, lsl #3
	LDRB r1, [r3]
	cmp r1, #0
	bne %4
	LDRB r1, [r3, #1]
	sub sb, sb, #1
	MOV r4, r4, LSR r1
	sub lr, lr, r1
	LDR r1, [r3, #4]
	STRB r1, [r2], #1
20
	subs ip, sb, #0x100
	subhss ip, ip, #2
	cmphs r5, #0xa
	bhs %1
	LDR r0, [r7, #4]
	sub r0, r0, r5
	cmp r0, lr, lsr #3
	MOVHI r0, lr, LSR #3
	add r1, r5, r0
	sub r3, r6, r0
	sub r0, lr, r0, lsl #3
	add r5, r8, #0x1c
	STMIA r5, {r0, r4}
	STR r1, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, r3, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR r3, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
21
	LDR r0, [r7, #4]
	tst r1, #0x20
	sub r0, r0, r5
	beq %22
	cmp r0, lr, lsr #3
	MOVHI r0, lr, LSR #3
	add r1, r5, r0
	sub r3, r6, r0
	sub r0, lr, r0, lsl #3
	add r5, r8, #0x1c
	STMIA r5, {r0, r4}
	STR r1, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, r3, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR r3, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #1
	bx lr
22
	cmp r0, lr, lsr #3
	MOVHI r0, lr, LSR #3
	add r1, r5, r0
	sub r3, r6, r0
	sub r0, lr, r0, lsl #3
	add r5, r8, #0x1c
	STMIA r5, {r0, r4}
	STR r1, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, r3, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR r3, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r0, #2
	bx lr
	ALIGN
_08006F8C DCDU gUnknown_0804A8F0
	END

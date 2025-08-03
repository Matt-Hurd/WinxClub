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
_08006C0C
	cmp lr, #0x14
	bhs _08006C2C
_08006C14
	LDRB r1, [r6], #1
	sub r5, r5, #1
	orr r4, r4, r1, lsl lr
	add lr, lr, #8
	cmp lr, #0x14
	blo _08006C14
_08006C2C
	LDR r1, [sp]
	LDR r3, [sp, #0xc]
	and r1, r4, r1
	add r3, r3, r1, lsl #3
	LDRB r1, [r3]
	cmp r1, #0
	LDRNE fp, _08006F8C
	bne _08006C68
	LDRB r1, [r3, #1]
	sub sb, sb, #1
	MOV r4, r4, LSR r1
	sub lr, lr, r1
	LDR r1, [r3, #4]
	STRB r1, [r2], #1
	b _08006E80
_08006C68
	LDRB ip, [r3, #1]
	tst r1, #0x10
	MOV r4, r4, LSR ip
	sub lr, lr, ip
	beq _08006E40
	and r1, r1, #0xf
	LDR r3, [r3, #4]
	LDR ip, [fp, r1, lsl #2]
	and ip, ip, r4
	add r3, r3, ip
	MOV ip, r4, LSR r1
	sub r1, lr, r1
	cmp r1, #0xf
	bhs _08006CB8
_08006CA0
	LDRB lr, [r6], #1
	sub r5, r5, #1
	orr ip, ip, lr, lsl r1
	add r1, r1, #8
	cmp r1, #0xf
	blo _08006CA0
_08006CB8
	LDR r4, [sp, #0x10]
	and lr, ip, r0
	add lr, r4, lr, lsl #3
	LDRB r4, [lr]
_08006CC8
	LDRB sl, [lr, #1]
	tst r4, #0x10
	MOV ip, ip, LSR sl
	sub r1, r1, sl
	beq _08006DC8
	and sl, r4, #0xf
	cmp r1, sl
	bhs _08006D00
_08006CE8
	LDRB r4, [r6], #1
	sub r5, r5, #1
	orr ip, ip, r4, lsl r1
	add r1, r1, #8
	cmp r1, sl
	blo _08006CE8
_08006D00
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
	bls _08006DA0
	LDR fp, [r8, #0x2c]
	sub sl, fp, ip
_08006D34
	add r1, sl, r1
	cmp ip, r1
	bhi _08006D34
	sub ip, fp, r1
	cmp r3, ip
	bls _08006D78
	sub r3, r3, ip
_08006D50
	LDRB sl, [r1], #1
	subs ip, ip, #1
	STRB sl, [r2], #1
	bne _08006D50
	LDR r1, [r8, #0x28]
_08006D64
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne _08006D64
	b _08006E80
_08006D78
	LDRB ip, [r1], #1
	sub r3, r3, #2
	STRB ip, [r2], #1
	LDRB ip, [r1], #1
	STRB ip, [r2], #1
_08006D8C
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne _08006D8C
	b _08006E80
_08006DA0
	LDRB ip, [r1], #1
	sub r3, r3, #2
	STRB ip, [r2], #1
	LDRB ip, [r1], #1
	STRB ip, [r2], #1
_08006DB4
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne _08006DB4
	b _08006E80
_08006DC8
	tst r4, #0x40
	bne _08006DEC
	LDR sl, [lr, #4]
	LDR r4, [fp, r4, lsl #2]
	add lr, lr, sl, lsl #3
	and r4, r4, ip
	add lr, lr, r4, lsl #3
	LDRB r4, [lr]
	b _08006CC8
_08006DEC
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
_08006E40
	tst r1, #0x40
	bne _08006EE4
	LDR ip, [r3, #4]
	LDR r1, [fp, r1, lsl #2]
	add r3, r3, ip, lsl #3
	and r1, r1, r4
	add r3, r3, r1, lsl #3
	LDRB r1, [r3]
	cmp r1, #0
	bne _08006C68
	LDRB r1, [r3, #1]
	sub sb, sb, #1
	MOV r4, r4, LSR r1
	sub lr, lr, r1
	LDR r1, [r3, #4]
	STRB r1, [r2], #1
_08006E80
	subs ip, sb, #0x100
	subhss ip, ip, #2
	cmphs r5, #0xa
	bhs _08006C0C
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
_08006EE4
	LDR r0, [r7, #4]
	tst r1, #0x20
	sub r0, r0, r5
	beq _08006F40
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
_08006F40
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

	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __rt_memcpy
	IMPORT gUnknown_080503FE
	IMPORT sub_8012674

	arm_func_start sub_80127C0

sub_80127C0
	STMFD SP!, {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r1
	LDRB r1, [r0, #0x172]
	sub sp, sp, #0x58
	add r4, r0, #0x100
	add r2, r0, r1, lsl #4
	add r2, r2, #0x100
	add r2, r2, #0x52
	STR r2, [sp, #0x4c]
	eor r1, r1, #1
	STRB r1, [r0, #0x172]
	add r1, r0, r1, lsl #4
	add r2, r1, #0x100
	add r4, r4, #2
	add r7, r0, #2
	sub r0, r4, #0xf0
	sub r1, r4, #0xa0
	add r2, r2, #0x52
	STR r2, [sp, #0x48]
	STR r1, [sp, #0x50]
	STR r0, [sp, #0x54]
	mov r6, #0
2
	LDRSH r3, [r5, #4]
	LDRSH r0, [r5]
	LDRSH r8, [r5, #6]
	LDRSH r2, [r5, #2]
	add ip, r5, #8
	cmp r3, #0xf
	rsb r1, r0, #0
	ble %3
	MOV r0, r3, ASR #3
	sub r3, r3, r0, lsl #3
	LDR lr, _0801301C
	sub r0, r0, #1
	add r3, lr, r3, lsl #1
	LDRSH r3, [r3]
	b %6
3
	cmp r3, #0
	LDREQ lr, _0801301C
	mvneq r0, #3
	LDREQSH r3, [lr, #0xe]
	beq %6
	mov r0, #0
	cmp r3, #7
	bgt %5
	mov lr, #1
4
	add r3, lr, r3, lsl #1
	cmp r3, #7
	sub r0, r0, #1
	ble %4
5
	LDR lr, _0801301C
	sub r3, r3, #8
	add r3, lr, r3, lsl #1
	LDRSH r3, [r3]
6
	rsb sl, r0, #9
	rsb r0, r0, #8
	mov lr, #1
	MOV sb, lr, LSL r0
	mov lr, #0xd
	mov r0, #0
	STR sl, [sp, #4]
	cmp r8, #0
	beq %9
	cmp r8, #1
	beq %8
	cmp r8, #2
	beq %7
	cmp r8, #3
	bne %10
	add r0, r4, r1, lsl #1
	LDRSH r0, [r0]
	mul r0, r2, r0
	MOV r0, r0, ASR #0xf
	strh r0, [r4]
	mov r0, #1
7
	add sl, r0, r1
	add sl, r4, sl, lsl #1
	LDRSH sl, [sl]
	add fp, r4, r0, lsl #1
	add r0, r0, #1
	mul sl, r2, sl
	MOV sl, sl, ASR #0xf
	strh sl, [fp]
8
	add sl, r0, r1
	add sl, r4, sl, lsl #1
	LDRSH sl, [sl]
	add fp, r4, r0, lsl #1
	add r0, r0, #1
	mul sl, r2, sl
	MOV sl, sl, ASR #0xf
	strh sl, [fp]
9
	LDRSH sl, [ip], #2
	mvn fp, #6
	subs lr, lr, #1
	add sl, fp, sl, lsl #1
	mla fp, sl, r3, sb
	LDR sl, [sp, #4]
	MOV sl, fp, ASR sl
	add fp, r0, r1
	add fp, r4, fp, lsl #1
	LDRSH fp, [fp]
	mul fp, r2, fp
	add sl, sl, fp, asr #15
	add fp, r4, r0, lsl #1
	strh sl, [fp]
	add r0, r0, #1
	bne %7
10
	add r3, r8, #1
	cmp r3, #4
	bge %12
11
	add ip, r0, r1
	add ip, r4, ip, lsl #1
	LDRSH ip, [ip]
	add lr, r4, r0, lsl #1
	add r3, r3, #1
	mul ip, r2, ip
	MOV ip, ip, ASR #0xf
	strh ip, [lr]
	cmp r3, #4
	add r0, r0, #1
	blt %11
12
	mov r2, #0xf0
	LDR r0, [sp, #0x54]
	LDR r1, [sp, #0x50]
	bl __rt_memcpy
	LDR r1, [sp, #0x60]
	add r0, r6, r6, lsl #2
	add r0, r1, r0, lsl #4
	mov r1, r4
	mov r2, #0x50
	bl __rt_memcpy
	add r6, r6, #1
	cmp r6, #4
	add r5, r5, #0x22
	blt %2
	mov r0, #0
	add r1, sp, #0x38
	add r4, sp, #0x28
	add r5, sp, #0x18
	mov sl, #0x6600
13
	LDR r2, [sp, #0x48]
	add r2, r2, r0, lsl #1
	LDRSH r3, [r2]
	LDR r2, [sp, #0x4c]
	add sb, r2, r0, lsl #1
	LDRSH r2, [sb]
	MOV ip, r3, ASR #2
	MOV r6, r3, ASR #1
	add lr, ip, r2, asr #2
	add r3, lr, r6
	cmp r3, #0
	MOV r8, r2, ASR #1
	rsblt r2, r3, #0
	movge r2, r3
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge %14
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
14
	cmp r3, #0
	rsblt r2, r2, #0
	add r3, r1, r0, lsl #1
	strh r2, [r3]
	add r2, r6, r8
	MOV r3, r2, LSL #0x10
	MOV r3, r3, ASR #0x10
	cmp r3, #0
	movge r2, r3
	rsblt r2, r3, #0
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge %15
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
15
	cmp r3, #0
	rsblt r2, r2, #0
	add r3, r4, r0, lsl #1
	strh r2, [r3]
	add r2, lr, r8
	MOV r3, r2, LSL #0x10
	MOV r3, r3, ASR #0x10
	cmp r3, #0
	movge r2, r3
	rsblt r2, r3, #0
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge %16
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
16
	cmp r3, #0
	rsblt r2, r2, #0
	add r3, r5, r0, lsl #1
	strh r2, [r3]
	LDRSH r3, [sb]
	cmp r3, #0
	movge r2, r3
	rsblt r2, r3, #0
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge %17
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
17
	cmp r3, #0
	add r3, sp, #8
	add r3, r3, r0, lsl #1
	rsblt r2, r2, #0
	add r0, r0, #1
	cmp r0, #8
	strh r2, [r3]
	blt %13
	mov r2, #0xd
	mov r0, r7
	LDR r3, [sp, #0x60]
	bl sub_8012674
	mov r3, r0
	mov r0, r7
	mov r2, #0xe
	mov r1, r4
	bl sub_8012674
	mov r3, r0
	mov r0, r7
	mov r2, #0xd
	mov r1, r5
	bl sub_8012674
	mov r3, r0
	mov r0, r7
	mov r2, #0x78
	add r1, sp, #8
	bl sub_8012674
	add sp, sp, #0x64
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	ALIGN
_0801301C DCDU gUnknown_080503FE

	END

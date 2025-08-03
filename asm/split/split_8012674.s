	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_080503F6
	IMPORT gUnknown_080503FE
	IMPORT __rt_memcpy
	IMPORT sub_80132F4

	arm_func_start sub_8012674
sub_8012674
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDRSH r2, [r0]
	LDRSH ip, [r0, #2]
	LDRSH lr, [r0, #4]
	LDRSH r4, [r0, #6]
	LDRSH r5, [r0, #8]
	LDRSH r6, [r0, #0xa]
	LDRSH r7, [r0, #0xc]
	LDRSH r8, [r0, #0xe]
	LDRSH sb, [r1]
	sub sp, sp, #0x18
	STR sb, [sp, #0x14]
	LDRSH sb, [r1, #2]
	STR sb, [sp, #0x10]
	LDRSH sb, [r1, #4]
	STR sb, [sp, #0xc]
	LDRSH sb, [r1, #6]
	STR sb, [sp, #8]
	LDRSH sb, [r1, #8]
	LDRSH sl, [r1, #0xa]
	LDRSH fp, [r1, #0xc]
	LDRSH r1, [r1, #0xe]
	STR r1, [sp, #4]
_080126D0
	LDRSH r1, [r3]
	STR r1, [sp]
	LDR r1, [sp, #4]
	mul r1, r8, r1
	LDR r8, [sp]
	sub r1, r8, r1, asr #15
	mul r8, r7, fp
	sub r1, r1, r8, asr #15
	mul r8, r1, fp
	add r8, r7, r8, asr #15
	mul r7, r6, sl
	sub r1, r1, r7, asr #15
	mul r7, r1, sl
	add r7, r6, r7, asr #15
	mul r6, r5, sb
	sub r1, r1, r6, asr #15
	mul r6, r1, sb
	add r6, r5, r6, asr #15
	LDR r5, [sp, #8]
	mul r5, r4, r5
	sub r1, r1, r5, asr #15
	LDR r5, [sp, #8]
	mul r5, r1, r5
	add r5, r4, r5, asr #15
	LDR r4, [sp, #0xc]
	mul r4, lr, r4
	sub r1, r1, r4, asr #15
	LDR r4, [sp, #0xc]
	mul r4, r1, r4
	add r4, lr, r4, asr #15
	LDR lr, [sp, #0x10]
	mul lr, ip, lr
	sub r1, r1, lr, asr #15
	LDR lr, [sp, #0x10]
	mul lr, r1, lr
	add lr, ip, lr, asr #15
	LDR ip, [sp, #0x14]
	mul ip, r2, ip
	sub r1, r1, ip, asr #15
	LDR ip, [sp, #0x14]
	strh r1, [r3], #2
	mul ip, r1, ip
	add ip, r2, ip, asr #15
	mov r2, r1
	LDR r1, [sp, #0x20]
	subs r1, r1, #1
	STR r1, [sp, #0x20]
	bne _080126D0
	strh r2, [r0]
	strh ip, [r0, #2]
	strh lr, [r0, #4]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	strh r7, [r0, #0xc]
	strh r8, [r0, #0xe]
	add sp, sp, #0x28
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, r3
	bx lr

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
_08012818
	LDRSH r3, [r5, #4]
	LDRSH r0, [r5]
	LDRSH r8, [r5, #6]
	LDRSH r2, [r5, #2]
	add ip, r5, #8
	cmp r3, #0xf
	rsb r1, r0, #0
	ble _08012854
	MOV r0, r3, ASR #3
	sub r3, r3, r0, lsl #3
	LDR lr, _0801301C
	sub r0, r0, #1
	add r3, lr, r3, lsl #1
	LDRSH r3, [r3]
	b _08012898
_08012854
	cmp r3, #0
	LDREQ lr, _0801301C
	mvneq r0, #3
	LDREQSH r3, [lr, #0xe]
	beq _08012898
	mov r0, #0
	cmp r3, #7
	bgt _08012888
	mov lr, #1
_08012878
	add r3, lr, r3, lsl #1
	cmp r3, #7
	sub r0, r0, #1
	ble _08012878
_08012888
	LDR lr, _0801301C
	sub r3, r3, #8
	add r3, lr, r3, lsl #1
	LDRSH r3, [r3]
_08012898
	rsb sl, r0, #9
	rsb r0, r0, #8
	mov lr, #1
	MOV sb, lr, LSL r0
	mov lr, #0xd
	mov r0, #0
	STR sl, [sp, #4]
	cmp r8, #0
	beq _0801292C
	cmp r8, #1
	beq _0801290C
	cmp r8, #2
	beq _080128EC
	cmp r8, #3
	bne _0801296C
	add r0, r4, r1, lsl #1
	LDRSH r0, [r0]
	mul r0, r2, r0
	MOV r0, r0, ASR #0xf
	strh r0, [r4]
	mov r0, #1
_080128EC
	add sl, r0, r1
	add sl, r4, sl, lsl #1
	LDRSH sl, [sl]
	add fp, r4, r0, lsl #1
	add r0, r0, #1
	mul sl, r2, sl
	MOV sl, sl, ASR #0xf
	strh sl, [fp]
_0801290C
	add sl, r0, r1
	add sl, r4, sl, lsl #1
	LDRSH sl, [sl]
	add fp, r4, r0, lsl #1
	add r0, r0, #1
	mul sl, r2, sl
	MOV sl, sl, ASR #0xf
	strh sl, [fp]
_0801292C
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
	bne _080128EC
_0801296C
	add r3, r8, #1
	cmp r3, #4
	bge _080129A4
_08012978
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
	blt _08012978
_080129A4
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
	blt _08012818
	mov r0, #0
	add r1, sp, #0x38
	add r4, sp, #0x28
	add r5, sp, #0x18
	mov sl, #0x6600
_080129F0
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
	bge _08012A4C
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012A4C
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
	bge _08012A98
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012A98
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
	bge _08012AE4
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012AE4
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
	bge _08012B28
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012B28
	cmp r3, #0
	add r3, sp, #8
	add r3, r3, r0, lsl #1
	rsblt r2, r2, #0
	add r0, r0, #1
	cmp r0, #8
	strh r2, [r3]
	blt _080129F0
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

	arm_func_start sub_8012BA0
sub_8012BA0
	STMFD SP!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	add r4, r0, #0x218
	LDRB r0, [r0, #0x172]
	sub sp, sp, #0x88
	mov r7, r1
	add r0, r6, r0, lsl #4
	add r5, r0, #0x100
	LDRB r0, [r6, #0x214]
	add r5, r5, #0x52
	cmp r0, #0
	moveq r0, r6
	bleq sub_80132F4
	LDR r0, [r4, #4]
	cmp r0, #0x18
	bhs _08012C14
_08012BE0
	LDR r0, [r4, #8]
	add r1, r0, #1
	STR r1, [r4, #8]
	LDRB r0, [r0]
	LDR r1, [r4, #4]
	LDR r2, [r4]
	rsb r3, r1, #0x18
	orr r0, r2, r0, lsl r3
	STR r0, [r4]
	add r0, r1, #8
	STR r0, [r4, #4]
	cmp r0, #0x18
	blo _08012BE0
_08012C14
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1a
	MOV r1, r1, LSL #6
	sub r2, r2, #6
	STMIA r4, {r1, r2}
	strh r0, [r5]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1a
	MOV r1, r1, LSL #6
	sub r2, r2, #6
	STMIA r4, {r1, r2}
	strh r0, [r5, #2]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1b
	MOV r1, r1, LSL #5
	sub r2, r2, #5
	STMIA r4, {r1, r2}
	strh r0, [r5, #4]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1b
	MOV r1, r1, LSL #5
	sub r2, r2, #5
	STMIA r4, {r1, r2}
	strh r0, [r5, #6]
	LDR r1, [r4, #8]
	LDR r8, _08013020
	add r0, r1, #1
	STR r0, [r4, #8]
	LDRB r1, [r1]
	add r2, r0, #1
	STR r2, [r4, #8]
	LDRB r0, [r0]
	LDR r2, [r4]
	mov ip, #0
	orr r1, r0, r1, lsl #8
	LDR r0, [r4, #4]
	rsb r3, r0, #0x10
	orr r1, r2, r1, lsl r3
	add r2, r0, #0x10
	MOV r0, r1, LSR #0x1c
	MOV r1, r1, LSL #4
	sub r2, r2, #4
	STMIA r4, {r1, r2}
	strh r0, [r5, #8]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1c
	MOV r1, r1, LSL #4
	sub r2, r2, #4
	STMIA r4, {r1, r2}
	strh r0, [r5, #0xa]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1d
	MOV r1, r1, LSL #3
	sub r2, r2, #3
	STMIA r4, {r1, r2}
	strh r0, [r5, #0xc]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1d
	MOV r1, r1, LSL #3
	sub r2, r2, #3
	STMIA r4, {r1, r2}
	strh r0, [r5, #0xe]
	LDRSH r0, [r5]
	mov r2, #0x17
	add r2, r2, #0x4b00
	MOV r0, r0, LSL #0xa
	sub r0, r0, #0x8000
	add r0, r0, r0, lsl #4
	add r0, r0, r0, lsl #1
	add r0, r0, r0, lsl #8
	MOV r0, r0, ASR #0xf
	MOV r0, r0, LSL #1
	strh r0, [r5]
	LDRSH r1, [r5, #2]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x8000
	add r1, r1, r1, lsl #4
	add r1, r1, r1, lsl #1
	add r1, r1, r1, lsl #8
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #2]
	LDRSH r1, [r5, #4]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x5000
	add r1, r1, r1, lsl #4
	add r1, r1, r1, lsl #1
	add r1, r1, r1, lsl #8
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #4]
	LDRSH r1, [r5, #6]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x2c00
	add r1, r1, r1, lsl #4
	add r1, r1, r1, lsl #1
	add r1, r1, r1, lsl #8
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #6]
	LDRSH r1, [r5, #8]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x2000
	sub r1, r1, #0xbc
	mul r1, r2, r1
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #8]
	LDRSH r1, [r5, #0xa]
	mov r2, #0xde
	add r2, r2, #0x7a00
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x1200
	add r1, r1, r1, lsl #8
	add r1, r1, r1, lsl #4
	MOV r1, r1, LSL #2
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #0xa]
	LDRSH r1, [r5, #0xc]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0xd00
	sub r1, r1, #0x56
	mul r1, r2, r1
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #0xc]
	LDRSH r1, [r5, #0xe]
	mov r2, #0xc
	add r2, r2, #0x7400
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x710
	mul r1, r2, r1
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #0xe]
	mov r1, sp
_08012E54
	LDR r2, [r4, #8]
	add r0, r2, #1
	STR r0, [r4, #8]
	LDRB r2, [r2]
	add r3, r0, #1
	STR r3, [r4, #8]
	LDRB r0, [r0]
	LDR r3, [r4]
	orr r2, r0, r2, lsl #8
	LDR r0, [r4, #4]
	rsb lr, r0, #0x10
	orr r2, r3, r2, lsl lr
	add r3, r0, #0x10
	MOV r0, r2, LSR #0x19
	MOV r2, r2, LSL #7
	sub r3, r3, #7
	STMIA r4, {r2, r3}
	mov r2, r0
	add r0, ip, ip, lsl #4
	add r0, r1, r0, lsl #1
	strh r2, [r0]
	LDR r3, [r4]
	LDR lr, [r4, #4]
	MOV r2, r3, LSR #0x1e
	MOV r3, r3, LSL #2
	sub lr, lr, #2
	STMIA r4, {r3, lr}
	add r2, r8, r2, lsl #1
	ldrh r2, [r2]
	strh r2, [r0, #2]
	LDR r3, [r4]
	LDR lr, [r4, #4]
	MOV r2, r3, LSR #0x1e
	MOV r3, r3, LSL #2
	sub lr, lr, #2
	STMIA r4, {r3, lr}
	strh r2, [r0, #6]
	LDR r3, [r4]
	LDR lr, [r4, #4]
	MOV r2, r3, LSR #0x1a
	MOV r3, r3, LSL #6
	sub lr, lr, #6
	STMIA r4, {r3, lr}
	strh r2, [r0, #4]
	LDR r2, [r4, #8]
	add r3, r2, #1
	STR r3, [r4, #8]
	LDRB r3, [r2]
	LDR r2, [r4, #4]
	rsb lr, r2, #0x18
	MOV r3, r3, LSL lr
	LDR lr, [r4]
	add r2, r2, #8
	STR r2, [r4, #4]
	orr r3, r3, lr
	STR r3, [r4]
	mov r2, #0
_08012F38
	LDR r3, [r4, #8]
	add lr, r3, #1
	STR lr, [r4, #8]
	LDRB r3, [r3]
	LDR lr, [r4, #4]
	rsb r5, lr, #0x18
	MOV r3, r3, LSL r5
	LDR r5, [r4]
	orr r3, r3, r5
	add r5, lr, #8
	MOV lr, r3, LSR #0x1d
	MOV r3, r3, LSL #3
	sub r5, r5, #3
	STMIA r4, {r3, r5}
	add r3, r2, #1
	add r2, r0, r2, lsl #1
	strh lr, [r2, #8]
	LDR lr, [r4]
	LDR r5, [r4, #4]
	MOV r2, lr, LSR #0x1d
	MOV lr, lr, LSL #3
	STR lr, [r4]
	add lr, r3, #1
	sub r5, r5, #3
	STR r5, [r4, #4]
	add r3, r0, r3, lsl #1
	strh r2, [r3, #8]
	LDR r3, [r4]
	LDR r5, [r4, #4]
	MOV r2, r3, LSR #0x1d
	MOV r3, r3, LSL #3
	sub r5, r5, #3
	STMIA r4, {r3, r5}
	mov r3, r2
	add r2, lr, #1
	add lr, r0, lr, lsl #1
	strh r3, [lr, #8]
	cmp r2, #0xc
	blt _08012F38
	LDR lr, [r4]
	LDR r5, [r4, #4]
	MOV r3, lr, LSR #0x1d
	sub r5, r5, #3
	STR r5, [r4, #4]
	MOV lr, lr, LSL #3
	STR lr, [r4]
	add r0, r0, r2, lsl #1
	add ip, ip, #1
	cmp ip, #4
	strh r3, [r0, #8]
	blt _08012E54
	mov r2, r7
	mov r0, r6
	bl sub_80127C0
	add sp, sp, #0x88
	LDMFD SP!, {r4, r5, r6, r7, r8, lr}
	bx lr
	ALIGN
_0801301C DCDU gUnknown_080503FE
_08013020 DCDU gUnknown_080503F6
	END

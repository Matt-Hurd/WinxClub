	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_080503F6
	IMPORT sub_80127C0
	IMPORT sub_80132F4

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
	bhs %19
18
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
	blo %18
19
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
20
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
21
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
	blt %21
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
	blt %20
	mov r2, r7
	mov r0, r6
	bl sub_80127C0
	add sp, sp, #0x88
	LDMFD SP!, {r4, r5, r6, r7, r8, lr}
	bx lr
	ALIGN

	ALIGN
_08013020 DCDU gUnknown_080503F6

	END

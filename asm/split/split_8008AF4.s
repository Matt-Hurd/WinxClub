	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB4
	IMPORT __VTABLE__381off_803EE6C
	IMPORT __nw__FUi
	IMPORT sub_800802E
	IMPORT CpuSet

	arm_func_start sub_8008AF4
sub_8008AF4
	LDR r0, [r1]
	bx lr

	arm_func_start sub_8008AFC
sub_8008AFC
	mov r0, #4
	bx lr

	arm_func_start sub_8008B04
sub_8008B04
	STR r1, [r0, #0x44]
	MOV r1, r2, LSR #1
	STR r1, [r0, #0x48]
	bx lr

	arm_func_start sub_8008B14
sub_8008B14
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %1
	mov r0, #0x3c
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
1
	mov r0, r4
	bl sub_800802E
	LDR r0, _08008EAC
	STR r0, [r4]
	mov r0, #2
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_8008B5C
sub_8008B5C
	STR lr, [sp, #-4]!
	LDR r2, [r1]
	LDR r3, [r2]
	and ip, r3, #0xf0
	cmp ip, #0x10
	tsteq r3, #0xf
	bne %2
	bics r3, r3, #0xff
	bne %3
2
	DCB 0x04, 0xE0, 0x9D, 0xE4 ; LDMFD SP!, {lr}
	mov r0, #0
	bx lr
3
	LDRB r3, [r1, #0xc]
	mov ip, #0
	strh r3, [r0, #4]
	LDR r3, [r1]
	add r3, r3, #4
	STR r3, [r0, #0x20]
	LDR r3, [r1, #8]
	STR r3, [r0, #0x24]
	LDR r3, [r1, #8]
	STR r3, [r0, #0x28]
	LDRB r3, [r1, #0xc]
	LDR r1, [r1, #8]
	cmp r3, #2
	bne %4
	STR r1, [r0, #0x2c]
	LDR r1, [r2]
	MOV r1, r1, LSR #8
	STR r1, [r0, #0x30]
	b %5
4
	LDR r2, [r2]
	add r1, r1, r2, lsr #8
	add r2, r0, #0x2c
	STMIA r2, {r1, ip}
5
	STR ip, [r0, #0x34]
	STR ip, [r0, #0x38]
	DCB 0x04, 0xE0, 0x9D, 0xE4 ; LDMFD SP!, {lr}
	mov r0, #1
	bx lr

	arm_func_start sub_8008BFC
sub_8008BFC
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r0, #4]
	mov r5, r1
	LDR r1, [r4, #0x2c]
	sub sp, sp, #8
	cmp r0, #1
	bne %6
	LDR r0, [r4, #0x28]
	add r0, r0, r5
	STR r0, [r4, #0x28]
	cmp r0, r1
	STRHI r1, [r4, #0x28]
	b %13
6
	LDR ip, [r4, #0x24]
	sub r0, ip, r1
	cmp r0, #0x2000
	blt %11
	add r0, r1, #0x1000
	sub r2, ip, r0
	add ip, r2, #4
	mov r2, r1
	mov r3, r0
	cmp r0, r1
	mov lr, #0
	bhs %7
	add r6, r3, ip
	cmp r6, r2
	movhi r3, r6
	addhi r2, r2, ip
	movhi lr, #0xa00000
7
	LDR r6, _08008EB0
	LDR r6, [r6]
	cmp r6, #0
	beq %8
	MOV r2, ip, LSL #9
	mov r3, #0x4000000
	orr r2, r3, r2, lsr #11
	bl CpuSet
	b %10
8
	orr r0, r2, r3
	mov r1, #0x4000000
	add r1, r1, #0xd4
	orr r0, r0, ip
	tst r0, #2
	STR r3, [r1]
	STR r2, [r1, #4]
	beq %9
	orr r0, lr, ip, lsr #1
	orr r0, r0, #0x80000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
	b %10
9
	orr r0, lr, ip, lsr #2
	orr r0, r0, #0x84000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
10
	LDR r0, [r4, #0x28]
	sub r0, r0, #0x1000
	STR r0, [r4, #0x28]
	LDR r0, [r4, #0x24]
	sub r0, r0, #0x1000
	STR r0, [r4, #0x24]
11
	LDR r0, [r4, #0x30]
	cmp r0, r5
	bhs %12
	LDR r1, [r4, #0x24]
	add r0, r1, r0
	STR r0, [r4, #0x28]
	mov r0, #0
	STR r0, [r4, #0x30]
	b %13
12
	LDR r1, [r4, #0x28]
	add r1, r1, r5
	STR r1, [r4, #0x28]
	LDR r2, [r4, #0x24]
	sub r1, r1, r2
	sub r0, r0, r1
	STR r0, [r4, #0x30]
13
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	cmp r0, r1
	bhs %19
	mov lr, #8
	mov r6, #3
14
	LDR r0, [r4, #0x38]
	cmp r0, #0
	bne %15
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r0, [r0]
	add r1, r4, #0x34
	STMIA r1, {r0, lr}
15
	LDR r0, [r4, #0x34]
	tst r0, #0x80
	LDR r0, [r4, #0x20]
	beq %17
	LDRB r1, [r0, #1]
	LDRB r0, [r0]
	orr r0, r1, r0, lsl #8
	strh r0, [sp, #4]
	ldrh r1, [sp, #4]
	LDR r0, [r4, #0x24]
	bic r1, r1, #0xf000
	sub r0, r0, r1
	sub r1, r0, #1
	LDR r0, [r4, #0x20]
	add r0, r0, #2
	STR r0, [r4, #0x20]
	ldrh r0, [sp, #4]
	add r0, r6, r0, lsr #12
	cmp r0, #0
	ble %18
16
	LDR r2, [r4, #0x24]
	LDRB r3, [r1], #1
	add ip, r2, #1
	STR ip, [r4, #0x24]
	sub r0, r0, #1
	cmp r0, #0
	STRB r3, [r2]
	bgt %16
	b %18
17
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r1, [r0]
	LDR r0, [r4, #0x24]
	add r2, r0, #1
	STR r2, [r4, #0x24]
	STRB r1, [r0]
18
	LDR r0, [r4, #0x34]
	add r1, r4, #0x24
	MOV r0, r0, LSL #1
	STR r0, [r4, #0x34]
	LDR r0, [r4, #0x38]
	sub r0, r0, #1
	STR r0, [r4, #0x38]
	LDMIA r1, {r0, r1}
	cmp r0, r1
	blo %14
19
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq %20
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	sub r0, r0, r1
	LDR r1, [r4, #0x30]
	sub r0, r1, r0
	STR r0, [r4, #0x30]
20
	LDR r0, [r4, #0x28]
	add sp, sp, #8
	sub r0, r0, r5
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	arm_func_start sub_8008E64
sub_8008E64
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne %21
	LDR r1, [r0, #0x24]
	LDR r0, [r0, #0x2c]
	cmp r1, r0
	movlo r0, #0
	movhs r0, #1
	bx lr
21
	LDR r0, [r0, #0x30]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr

	arm_func_start sub_8008E98
sub_8008E98
	LDR r0, [r1]
	MOV r0, r0, LSR #8
	bx lr

	arm_func_start sub_8008EA4
sub_8008EA4
	mov r0, #4
	bx lr
	ALIGN
_08008EAC DCDU __VTABLE__381off_803EE6C
_08008EB0 DCDU gUnknown_03003EB4
	END

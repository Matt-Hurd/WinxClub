	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0804AE80
	IMPORT gUnknown_0804AE90
	IMPORT gUnknown_0804AEA0
	IMPORT sub_8000D5A
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT sub_800802E
	IMPORT sub_800805E
	IMPORT sub_800808E
	IMPORT sub_800B09A
	IMPORT sub_801145E
	IMPORT sub_80133A0
	IMPORT sub_802F04E
	IMPORT __rt_memclr
	IMPORT __rt_memclr_w
	IMPORT __rt_memcpy
	IMPORT __rt_sdiv
	IMPORT __rt_udiv
	IMPORT strcmp
	IMPORT CpuSet
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA9C

	arm_func_start sub_80517C8
sub_80517C8
	STMFD SP!, {r4, r5, r6, lr}
	LDR r2, [r0, #4]
	mvn lr, #0
	LDRB r3, [r2]
	mov r4, #1
	cmp r3, #0xff
	bne %1
	LDRB r2, [r2, #1]
	cmp r2, #0xd0
	blo %1
	cmp r2, #0xd7
	bhi %1
	LDR r2, [r0, #8]
	LDR r3, [r0, #0xc]
	MOV r2, r4, LSL r2
	sub r2, r2, #1
	bics r2, r2, r3
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #1
	bxeq lr
1
	mov ip, #0
	mov r3, #1
	mov r5, #7
2
	LDR r2, [r0, #8]
	cmp r2, #0
	subne r2, r2, #1
	STRNE r2, [r0, #8]
	bne %3
	STR r5, [r0, #8]
	LDR r2, [r0, #4]
	add r6, r2, #1
	STR r6, [r0, #4]
	LDRB r2, [r2, #1]
	STR r2, [r0, #0xc]
	cmp r2, #0xff
	addeq r2, r6, #1
	STREQ r2, [r0, #4]
3
	LDR r2, [r0, #0xc]
	LDR r6, [r0, #8]
	ands r2, r2, r4, lsl r6
	movne r2, #1
	orr ip, r2, ip, lsl #1
	mov r2, #0
4
	add r6, r1, r2, lsl #3
	LDRB r6, [r6, #5]
	cmp r6, r3
	bgt %5
	LDREQ r6, [r1, r2, lsl #3]
	cmpeq r6, ip
	moveq lr, r2
	beq %5
	add r2, r2, #1
	cmp r2, #0x100
	blt %4
5
	cmn lr, #1
	bgt %6
	add r3, r3, #1
	cmp r3, #0x10
	ble %2
	cmn lr, #1
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #0
	bxeq lr
6
	add r0, r1, lr, lsl #3
	LDRB r0, [r0, #4]
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	arm_func_start sub_80518D4
sub_80518D4
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	add r0, r0, r2, lsl #11
	mov r5, r1
	add r1, r0, #0x1c
	add r0, r7, r3, lsl #11
	add sl, r0, #0x1000
	sub sp, sp, #0x144
	LDR r4, [sp, #0x16c]
	LDR fp, [sp, #0x168]
	add sl, sl, #0x1c
	mov r0, r7
	bl sub_80517C8
	LDR r6, _08052324
	LDR r1, [r6, #0x10]
	add r1, r1, #1
	STR r1, [r6, #0x10]
	and r1, r0, #0xf
	mov r0, r7
	bl sub_8052A70
	LDR r1, [r4]
	add r0, r0, r1
	STR r0, [r4]
	STR r0, [r5]
	mov r4, #1
7
	mov r1, sl
	mov r0, r7
	bl sub_80517C8
	LDR r6, _08052324
	cmn r0, #2
	LDR r1, [r6, #0x14]
	moveq r0, #0
	add r1, r1, #1
	STR r1, [r6, #0x14]
	beq %11
	cmn r0, #1
	bne %11
	mov r0, #0
	mov r1, #0
8
	STR r1, [r5, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #0x40
	blt %8
	mov r0, #0
	mov r1, #0xff
9
	orr r2, r0, r0, lsl #3
	add r0, r0, #1
	cmp r0, #8
	STR r1, [r5, r2, lsl #2]
	blt %9
	mov r0, #0
10
	rsb r2, r0, #7
	orr r2, r2, r0, lsl #3
	add r0, r0, #1
	cmp r0, #8
	STR r1, [r5, r2, lsl #2]
	blt %10
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #1
	bx lr
11
	and r8, r0, #0xf
	MOV r6, r0, ASR #4
	mov r0, r7
	mov r1, r8
	bl sub_8052A70
	mov sb, r0
	orrs r0, r6, r8
	bne %12
	rsb r0, r4, #0x40
	MOV r1, r0, LSL #2
	add r0, r5, r4, lsl #2
	bl sub_8052A10
	b %16
12
	cmp r6, #0xf
	cmpeq r8, #0
	bne %13
	add r0, r5, r4, lsl #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	STMIA r0!, {r1, r2, r3, ip}
	STMIA r0!, {r1, r2, r3, ip}
	STMIA r0!, {r1, r2, r3, ip}
	STMIA r0, {r1, r2, r3, ip}
	add r4, r4, #0x10
	b %15
13
	add r8, r4, r6
	cmp r8, #0x40
	blt %14
	rsb r0, r4, #0x40
	MOV r1, r0, LSL #2
	add r0, r5, r4, lsl #2
	bl sub_8052A10
	b %16
14
	MOV r1, r6, LSL #2
	add r0, r5, r4, lsl #2
	bl sub_8052A10
	add r4, r8, #1
	STR sb, [r5, r8, lsl #2]
15
	cmp r4, #0x40
	blt %7
16
	add r6, sp, #0x44
	add r8, sp, #4
	mov r0, r8
	mov r4, r6
	mov r2, #0x40
	LDR r1, _08052328
	bl sub_8052A18
	mov r0, #0x40
17
	LDRB r1, [r8], #1
	sub r0, r0, #1
	cmp r0, #0
	LDR r1, [r5, r1, lsl #2]
	STR r1, [r4], #4
	bgt %17
	add r0, r7, fp, lsl #8
	add r1, r0, #0x2000
	add r1, r1, #0x1c
	mov r0, r6
	mov r2, r5
	bl sub_8052570
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8051AD0
sub_8051AD0
	STMFD SP!, {r0, r1, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x400
	mov r1, #0x244
	mov r5, r0
	mov r0, #1
	add r1, r1, #0x2000
	sub sp, sp, #0x374
	mov r3, #0
	mov r2, #0
	bl sub_8052A20
	mov r4, r0
	mov r0, r5
	bl sub_8052A2C
	add r0, r0, r5
	STR r0, [r4]
	LDR fp, _08052328
	STR r0, [r4, #4]
	add r5, r4, #0x2000
18
	LDR r1, [r4, #4]
	add r0, r1, #1
	STR r0, [r4, #4]
	LDRB r1, [r1]
	cmp r1, #0xff
	bne %42
	LDRB r1, [r0]
	cmp r1, #0xda
	beq %30
	bgt %19
	cmp r1, #0xc0
	cmpne r1, #0xc1
	beq %20
	cmp r1, #0xc4
	beq %24
	cmp r1, #0xd8
	bne %45
	LDR r1, [r5, #0x240]
	add r0, r0, #1
	orr r1, r1, #4
	STR r1, [r5, #0x240]
	STR r0, [r4, #4]
	b %42
19
	cmp r1, #0xdb
	beq %36
	cmp r1, #0xdd
	beq %40
	cmp r1, #0xe0
	beq %41
	cmp r1, #0xfe
	bne %45
	add r0, r0, #1
	STR r0, [r4, #4]
	LDRB r1, [r0, #1]
	LDRB r2, [r0]
	orr r1, r1, r2, lsl #8
	add r0, r0, r1
	STR r0, [r4, #4]
	b %42
20
	LDR r1, [r5, #0x240]
	add r0, r0, #3
	orr r1, r1, #1
	STR r1, [r5, #0x240]
	STR r0, [r4, #4]
	LDRB r1, [r0]
	cmp r1, #8
	addne sp, sp, #0x400
	addne sp, sp, #0x37c
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #0
	bxne lr
	add r0, r0, #1
	STR r0, [r4, #4]
	LDRB r1, [r0, #1]
	LDRB r2, [r0], #2
	STR r0, [r4, #4]
	orr r1, r1, r2, lsl #8
	STR r1, [r4, #0x14]
	LDRB r1, [r0, #1]
	LDRB r2, [r0], #2
	orr r1, r1, r2, lsl #8
	STR r1, [r4, #0x10]
	add r1, r0, #1
	STR r1, [r4, #4]
	LDRB r2, [r0]
	mov r0, #0
	cmp r2, #0
	ble %42
21
	LDR r3, [r4, #4]
	LDRB r1, [r3]
	cmp r1, #1
	beq %23
	cmp r1, #2
	cmpne r1, #3
	bne %22
	add r1, r3, #2
	add r3, r1, #1
	STR r3, [r4, #4]
	LDRB r1, [r1]
	STR r1, [r5, #0x22c]
22
	add r0, r0, #1
	cmp r0, r2
	blt %21
	b %42
23
	add r1, r3, #1
	STR r1, [r4, #4]
	LDRB r3, [r3, #1]
	add r1, r1, #1
	and ip, r3, #0xf
	MOV r3, r3, LSR #4
	mul ip, r3, ip
	STR ip, [r5, #0x224]
	add r3, r1, #1
	STR r3, [r4, #4]
	LDRB r1, [r1]
	STR r1, [r5, #0x228]
	b %22
24
	LDR r0, [r5, #0x240]
	add sl, sp, #0x104
	orr r0, r0, #2
	STR r0, [r5, #0x240]
	LDR r0, [r4, #4]
	add r0, r0, #1
	STR r0, [r4, #4]
	LDRB r1, [r0, #1]
	LDRB r2, [r0], #2
	STR r0, [r4, #4]
	orr sb, r1, r2, lsl #8
	mov r1, #2
25
	LDR r0, [r4, #4]
	add r1, r1, #1
	LDRB r2, [r0], #1
	STR r0, [r4, #4]
	mov r0, #0
	and r3, r2, #1
	MOV r2, r2, LSL #0x1b
	MOV r2, r2, LSR #0x1f
	MOV r2, r2, LSL #9
	orr r8, r2, r3, lsl #8
26
	LDR r2, [r4, #4]
	add r1, r1, #1
	add r3, r2, #1
	STR r3, [r4, #4]
	LDRB r2, [r2]
	STR r2, [sl, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #0x10
	blt %26
	mov r0, #0
	mvn ip, #0
	mov r2, #0
27
	LDR lr, [sl, r2, lsl #2]
	mov r3, #0
	cmp lr, #0
	ble %29
	add lr, r2, #1
	and r7, lr, #0xff
28
	LDR lr, [r4, #4]
	add ip, ip, #1
	add r6, lr, #1
	STR r6, [r4, #4]
	LDRB r6, [lr]
	orr lr, r8, ip
	add lr, r4, lr, lsl #3
	STRB r6, [lr, #0x20]
	STR r0, [lr, #0x1c]
	STRB r7, [lr, #0x21]
	LDR lr, [sl, r2, lsl #2]
	add r3, r3, #1
	cmp lr, r3
	add r0, r0, #1
	add r1, r1, #1
	bgt %28
29
	add r2, r2, #1
	cmp r2, #0x10
	MOV r0, r0, LSL #1
	blt %27
	cmp r1, sb
	blo %25
	b %42
30
	LDR r1, [r5, #0x240]
	add r0, r0, #3
	orr r1, r1, #8
	STR r1, [r5, #0x240]
	add r1, r0, #1
	STR r1, [r4, #4]
	LDRB r3, [r0]
	cmp r3, #1
	cmpne r3, #3
	STR r3, [r4, #0x18]
	bne %35
	mov r1, #0
	cmp r3, #0
	ble %34
31
	LDR r2, [r4, #4]
	LDRB r0, [r2]
	cmp r0, #1
	beq %32
	cmp r0, #2
	cmpne r0, #3
	bne %35
	add r0, r2, #1
	STR r0, [r4, #4]
	LDRB r2, [r2, #1]
	and r2, r2, #0xf
	STR r2, [r5, #0x234]
	LDRB r2, [r0], #1
	MOV r2, r2, LSR #4
	STR r2, [r5, #0x23c]
	STR r0, [r4, #4]
	b %33
32
	add r0, r2, #1
	STR r0, [r4, #4]
	LDRB r2, [r2, #1]
	and r2, r2, #0xf
	STR r2, [r5, #0x230]
	LDRB r2, [r0], #1
	MOV r2, r2, LSR #4
	STR r2, [r5, #0x238]
	STR r0, [r4, #4]
33
	add r1, r1, #1
	cmp r3, r1
	bgt %31
34
	LDR r0, [r4, #4]
	add r0, r0, #3
	STR r0, [r4, #4]
	b %42
35
	add sp, sp, #0x400
	add sp, sp, #0x37c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
36
	LDR r0, [r5, #0x240]
	mov r6, #2
	orr r0, r0, #0x10
	STR r0, [r5, #0x240]
	LDR r0, [r4, #4]
	add sb, sp, #4
	add r0, r0, #1
	STR r0, [r4, #4]
	LDRB r1, [r0, #1]
	LDRB r2, [r0], #2
	STR r0, [r4, #4]
	add r8, sp, #0x44
	orr sl, r1, r2, lsl #8
37
	LDR r0, [r4, #4]
	LDRB r2, [r0]
	and r1, r2, #0xf
	cmp r1, #1
	tstle r2, #0xf0
	addeq r0, r0, #1
	STREQ r0, [r4, #4]
	moveq r0, #0
	addeq r6, r6, #1
	beq %38
	add sp, sp, #0x400
	add sp, sp, #0x37c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
38
	LDR r2, [r4, #4]
	add r6, r6, #1
	add r3, r2, #1
	STR r3, [r4, #4]
	LDRB r2, [r2]
	STR r2, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #0x40
	blt %38
	add r0, r4, r1, lsl #8
	add r7, r0, #0x2000
	add r7, r7, #0x1c
	mov r0, sb
	mov r1, fp
	mov r2, #0x40
	bl sub_8052A18
	mov r0, #0x40
	mov r1, sb
39
	LDRB r2, [r1], #1
	sub r0, r0, #1
	cmp r0, #0
	LDR r2, [r8, r2, lsl #2]
	STR r2, [r7], #4
	bgt %39
	cmp r6, sl
	blo %37
	b %42
40
	LDR r1, [r5, #0x240]
	add r0, r0, #5
	orr r1, r1, #0x40
	STR r1, [r5, #0x240]
	STR r0, [r4, #4]
	b %42
41
	LDR r1, [r5, #0x240]
	add r0, r0, #1
	orr r1, r1, #0x20
	STR r1, [r5, #0x240]
	STR r0, [r4, #4]
	LDRB r1, [r0, #1]
	LDRB r2, [r0]
	orr r1, r1, r2, lsl #8
	cmp r1, #0x10
	blo %44
	add r0, r0, #2
	STR r0, [r4, #4]
	add r1, pc, #0x398
	bl sub_8052A38
	cmp r0, #0
	bne %44
	LDR r0, [r4, #4]
	add r0, r0, #5
	STR r0, [r4, #4]
	LDRB r1, [r0]
	cmp r1, #1
	bne %44
	add r0, r0, #7
	STR r0, [r4, #4]
	LDRB r1, [r0]
	LDRB r2, [r0, #1]
	mul r1, r2, r1
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	add r0, r0, #2
	STR r0, [r4, #4]
42
	LDR r1, [r4]
	LDR r0, [r4, #4]
	add r1, r1, #0x2000
	add r1, r1, #0x710
	cmp r0, r1
	LDRLS r0, [r5, #0x240]
	tstls r0, #8
	beq %18
	LDR r0, [r5, #0x240]
	mov r1, #0x3f
	bics r0, r1, r0
	addne sp, sp, #0x400
	addne sp, sp, #0x37c
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #0
	bxne lr
	LDR r1, [r4, #0x10]
	tst r1, #0xf
	andne r0, r1, #0xf
	rsbne r0, r0, #0x10
	LDR sb, _08052324
	addne r1, r1, r0
	STR r1, [sb, #4]
	LDR r0, [r4, #0x14]
	tst r0, #0xf
	andne r2, r0, #0xf
	rsbne r2, r2, #0x10
	addne r0, r0, r2
	STR r0, [sb, #8]
	MOV r0, r1, LSL #1
	STR r0, [sb, #0xc]
	LDR r0, [sp, #0x778]
	cmp r0, #0
	LDRNE r0, [sp, #0x778]
	STRNE r0, [sb]
	bne %43
	bl sub_8052A40
	mov r1, r0
	LDR r0, [sb, #0xc]
	LDR r2, [sb, #8]
	mov r3, #0
	mul r0, r2, r0
	MOV r0, r0, LSL #1
	mov r2, #0
	bl sub_8052A4C
	STR r0, [sb]
	cmp r0, #0
	addeq sp, sp, #0x400
	addeq sp, sp, #0x37c
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
43
	LDR sb, _08052324
	add r7, sp, #0x400
	LDR r0, [sb, #4]
	add r7, r7, #0x258
	sub r1, r0, #8
	mov r0, #0
	STR r0, [sp, #0x144]
	STR r0, [sp, #0x148]
	STR r0, [sp, #0x14c]
	STR r0, [sp, #0x150]
	STR r0, [sp, #0x154]
	mov r0, #8
	STR r1, [sp, #0x13c]
	STR r0, [r4, #8]
	LDR r0, [r4, #4]
	add r6, sp, #0x154
	LDRB r0, [r0]
	STR r0, [r4, #0xc]
	LDR r0, [r4, #0x18]
	cmp r0, #1
	LDREQ sb, _08052324
	moveq r8, #0
	beq %52
	cmp r0, #3
	bne %57
	LDR r0, [r5, #0x224]
	cmp r0, #1
	cmpne r0, #2
	beq %57
	cmp r0, #4
	bne %57
	b %46
44
	add sp, sp, #0x400
	add sp, sp, #0x37c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
45
	add sp, sp, #0x400
	add sp, sp, #0x37c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
46
	LDR r2, [r5, #0x228]
	add r7, sp, #0x154
	STMIA sp, {r2, r7}
	LDR r2, [r5, #0x238]
	add r1, sp, #0x400
	add r1, r1, #0x258
	LDR r3, [r5, #0x230]
	mov r0, r4
	bl sub_80518D4
	LDR r2, [r5, #0x228]
	add r6, sp, #0x400
	STMIA sp, {r2, r7}
	LDR r2, [r5, #0x238]
	add r6, r6, #0x158
	mov r1, r6
	LDR r3, [r5, #0x230]
	mov r0, r4
	bl sub_80518D4
	LDR r2, [r5, #0x228]
	add r1, sp, #0x400
	STMIA sp, {r2, r7}
	LDR r2, [r5, #0x238]
	LDR r3, [r5, #0x230]
	add r1, r1, #0x58
	mov r0, r4
	bl sub_80518D4
	LDR r2, [r5, #0x228]
	mov r0, r4
	STMIA sp, {r2, r7}
	LDR r2, [r5, #0x238]
	add r7, sp, #0x358
	mov r1, r7
	LDR r3, [r5, #0x230]
	bl sub_80518D4
	LDR r2, [r5, #0x22c]
	add r3, sp, #0x150
	STMIA sp, {r2, r3}
	LDR r2, [r5, #0x23c]
	LDR r3, [r5, #0x234]
	add r1, sp, #0x258
	mov r0, r4
	bl sub_80518D4
	LDR r2, [r5, #0x22c]
	add r3, sp, #0x14c
	STMIA sp, {r2, r3}
	LDR r2, [r5, #0x23c]
	LDR r3, [r5, #0x234]
	add r1, sp, #0x158
	mov r0, r4
	bl sub_80518D4
	LDR r3, _08052324
	LDR r0, [sp, #0x148]
	LDR r2, [sp, #0x144]
	LDR r1, [r3, #4]
	mov r8, #0
	mla r0, r1, r2, r0
	LDR r2, [r3]
	add r0, r2, r0, lsl #1
	add sb, r0, r1, lsl #4
	add fp, sb, #0x10
	STR r0, [sp, #0x140]
	add sl, r0, #0x10
47
	mov r0, #4
	add r1, r0, r8, asr #1
	MOV r0, r1, LSL #3
	STR r0, [sp, #0x770]
	LDR r0, [sp, #0x148]
	STR r1, [sp, #0x76c]
	add r0, r0, r8
	MOV r7, r0, LSL #0x10
	MOV r1, r8, ASR #1
	MOV r0, r1, LSL #3
	STR r0, [sp, #0x768]
	STR r1, [sp, #0x764]
	MOV r7, r7, LSR #0x10
	mov r6, #0
48
	LDR r0, [sp, #0x144]
	add r1, sp, #0x158
	add r0, r0, r6
	MOV r3, r0, LSL #0x10
	MOV r3, r3, LSR #0x10
	LDR r0, [sp, #0x768]
	STR r3, [sp, #0x760]
	STR r7, [sp]
	STR r3, [sp, #4]
	orr r0, r0, r6, asr #1
	LDR r3, [r1, r0, lsl #2]
	add r1, sp, #0x258
	LDR r2, [r1, r0, lsl #2]
	add r1, sp, #0x400
	orr r0, r6, r8, lsl #3
	STR r0, [sp, #0x75c]
	add r1, r1, #0x258
	LDR r1, [r1, r0, lsl #2]
	LDR r0, [sp, #0x140]
	bl sub_8052B08
	LDR r3, [sp, #0x760]
	LDR r0, [sp, #0x770]
	STR r7, [sp]
	add r1, sp, #0x158
	STR r3, [sp, #4]
	orr r0, r0, r6, asr #1
	LDR r3, [r1, r0, lsl #2]
	add r1, sp, #0x258
	LDR r2, [r1, r0, lsl #2]
	LDR r0, [sp, #0x75c]
	add r1, sp, #0x400
	add r1, r1, #0x58
	LDR r1, [r1, r0, lsl #2]
	mov r0, sb
	bl sub_8052B08
	LDR r3, [sp, #0x760]
	mov r0, #4
	add r0, r0, r6, asr #1
	STR r0, [sp, #0x758]
	STR r7, [sp]
	STR r3, [sp, #4]
	b %50
	ALIGN
_08052324 DCDU 0x0300142C
_08052328 DCDU 0x030013EC
49
	DCB 0x4A, 0x46, 0x49, 0x46
	DCB 0x00, 0x00, 0x00, 0x00
50
	LDR r1, [sp, #0x764]
	orr r0, r0, r1, lsl #3
	add r1, sp, #0x158
	LDR r3, [r1, r0, lsl #2]
	add r1, sp, #0x258
	LDR r2, [r1, r0, lsl #2]
	LDR r0, [sp, #0x75c]
	add r1, sp, #0x400
	add r1, r1, #0x158
	LDR r1, [r1, r0, lsl #2]
	mov r0, sl
	bl sub_8052B08
	LDR r0, [sp, #0x758]
	LDR r1, [sp, #0x76c]
	LDR r3, [sp, #0x760]
	orr r0, r0, r1, lsl #3
	add r1, sp, #0x158
	STR r7, [sp]
	STR r3, [sp, #4]
	LDR r3, [r1, r0, lsl #2]
	add r1, sp, #0x258
	LDR r2, [r1, r0, lsl #2]
	LDR r0, [sp, #0x75c]
	add r1, sp, #0x358
	LDR r1, [r1, r0, lsl #2]
	mov r0, fp
	bl sub_8052B08
	LDR r0, [sp, #0x140]
	add r6, r6, #1
	add r0, r0, #2
	STR r0, [sp, #0x140]
	cmp r6, #8
	add sb, sb, #2
	add sl, sl, #2
	add fp, fp, #2
	blt %48
	LDR r1, [sp, #0x13c]
	LDR r0, [sp, #0x140]
	add r8, r8, #1
	add r0, r0, r1, lsl #1
	STR r0, [sp, #0x140]
	cmp r8, #8
	add sb, sb, r1, lsl #1
	add sl, sl, r1, lsl #1
	add fp, fp, r1, lsl #1
	blt %47
	LDR r0, [sp, #0x148]
	add r0, r0, #0x10
	STR r0, [sp, #0x148]
	LDR r0, [r4, #0x10]
	LDR ip, [sp, #0x148]
	cmp r0, ip
	bgt %51
	mov r0, #0
	STR r0, [sp, #0x148]
	LDR r0, [sp, #0x144]
	add r0, r0, #0x10
	STR r0, [sp, #0x144]
	LDR r0, [r5, #0x240]
	tst r0, #0x40
	beq %51
	mov r0, #0
	STR r0, [sp, #0x14c]
	STR r0, [sp, #0x150]
	STR r0, [sp, #0x154]
	LDR r0, [r4, #4]
	add r0, r0, #2
	STR r0, [r4, #4]
	mov r0, #0
	STR r0, [r4, #8]
51
	LDR r0, [r4, #0x14]
	LDR r2, [sp, #0x144]
	cmp r0, r2
	bgt %46
	b %57
52
	LDR r2, [r5, #0x228]
	mov r1, r7
	STMIA sp, {r2, r6}
	LDR r2, [r5, #0x238]
	LDR r3, [r5, #0x230]
	mov r0, r4
	bl sub_80518D4
	mov r1, #0
53
	LDR r2, [sp, #0x144]
	mov r0, #0
	add r3, r2, r1
54
	orr r2, r0, r1, lsl #3
	LDR r2, [r7, r2, lsl #2]
	cmp r2, #0
	movlt r2, #0
	blt %55
	cmp r2, #0xff
	movgt r2, #0xff
55
	MOV ip, r2, LSL #0x10
	add ip, ip, r2, lsl #8
	add r2, ip, r2
	LDR ip, [sp, #0x148]
	LDR lr, [sb, #0xc]
	add ip, ip, r0
	mla ip, lr, r3, ip
	LDR lr, [sb]
	add r0, r0, #1
	add ip, lr, ip, lsl #1
	strh r2, [ip]
	cmp r0, #8
	blt %54
	add r1, r1, #1
	cmp r1, #8
	blt %53
	LDR r0, [sp, #0x148]
	add r0, r0, #8
	STR r0, [sp, #0x148]
	LDR r0, [r4, #0x10]
	LDR ip, [sp, #0x148]
	cmp r0, ip
	bgt %56
	mov r0, #0
	STR r0, [sp, #0x148]
	LDR r0, [sp, #0x144]
	add r0, r0, #8
	STR r0, [sp, #0x144]
	LDR r0, [r5, #0x240]
	tst r0, #0x40
	beq %56
	mov r0, #0
	STR r0, [sp, #0x154]
	LDR r0, [r4, #4]
	add r0, r0, #2
	stmib r4, {r0, r8}
56
	LDR r0, [r4, #0x14]
	LDR r2, [sp, #0x144]
	cmp r0, r2
	bgt %52
57
	mov r2, #0
	mov r1, #0
	mov r0, r4
	bl sub_8052A58
	LDR sb, _08052324
	LDR r0, [sb]
	add sp, sp, #0x400
	add sp, sp, #0x37c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_8052570
sub_8052570
	STMFD SP!, {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x11c
	mov r3, r0
	mov r0, sp
	mov lr, #8
58
	LDR r2, [r3, #0x20]
	cmp r2, #0
	LDREQ ip, [r3, #0x40]
	cmpeq ip, #0
	LDREQ ip, [r3, #0x60]
	cmpeq ip, #0
	LDREQ ip, [r3, #0x80]
	cmpeq ip, #0
	bne %59
	LDR ip, [r3, #0xa0]
	cmp ip, #0
	LDREQ ip, [r3, #0xc0]
	cmpeq ip, #0
	LDREQ ip, [r3, #0xe0]
	cmpeq ip, #0
	bne %59
	LDR r2, [r3]
	LDR ip, [r1]
	add r1, r1, #4
	mul r2, ip, r2
	MOV r2, r2, LSL #2
	STR r2, [r0]
	STR r2, [r0, #0x20]
	STR r2, [r0, #0x40]
	STR r2, [r0, #0x60]
	STR r2, [r0, #0x80]
	STR r2, [r0, #0xa0]
	STR r2, [r0, #0xc0]
	STR r2, [r0, #0xe0]
	add r0, r0, #4
	add r3, r3, #4
	b %60
59
	LDR r4, [r3, #0x40]
	LDR ip, [r1, #0x40]
	LDR r7, [r3, #0x80]
	mul r6, ip, r4
	LDR r4, [r3, #0xc0]
	LDR ip, [r1, #0xc0]
	mov fp, #0xa1
	mul r4, ip, r4
	add r5, r6, r4
	rsb ip, r5, r5, lsl #4
	add r5, ip, r5, lsl #7
	LDR ip, _08052A08
	rsb r5, r5, r5, lsl #5
	mla r4, ip, r4, r5
	rsb ip, r6, r6, lsl #5
	add ip, ip, r6, lsl #6
	add ip, ip, ip, lsl #5
	add r5, r5, ip, lsl #1
	LDR ip, [r1]
	LDR r6, [r3]
	add fp, fp, #0x2500
	mul r6, ip, r6
	LDR ip, [r1, #0x80]
	mul r7, ip, r7
	add ip, r6, r7
	sub r6, r6, r7
	MOV r7, r6, LSL #0xd
	MOV ip, ip, LSL #0xd
	add r6, ip, r5
	sub r5, ip, r5
	add ip, r7, r4
	STR ip, [sp, #0x108]
	STR r6, [sp, #0x10c]
	LDR r6, [r3, #0xe0]
	LDR ip, [r1, #0xe0]
	sub r4, r7, r4
	mul sl, ip, r6
	LDR r6, [r3, #0xa0]
	LDR ip, [r1, #0xa0]
	mul r7, ip, r6
	LDR r6, [r3, #0x60]
	LDR ip, [r1, #0x60]
	LDR r8, [r1, #0x20]
	mul r6, ip, r6
	mul ip, r8, r2
	add r2, sl, ip
	STR r2, [sp, #0x104]
	add r2, r7, r6
	STR r2, [sp, #0x100]
	add r2, sl, r6
	add r8, r7, ip
	add sb, r2, r8
	mul sb, fp, sb
	mov fp, #0x8e
	add fp, fp, #0x900
	mul fp, sl, fp
	mov sl, #0xb3
	add sl, sl, #0x4100
	mul r7, sl, r7
	STR r7, [sp, #0x118]
	mov r7, #0x254
	add r7, r7, #0x6000
	mul r6, r7, r6
	STR r6, [sp, #0x114]
	mov r6, #0xb
	add r6, r6, #0x3000
	mul ip, r6, ip
	STR ip, [sp, #0x110]
	LDR ip, _08052A0C
	LDR r6, [sp, #0x104]
	mvn sl, #2
	mul r6, ip, r6
	LDR ip, [sp, #0x100]
	sub sl, sl, #0x5200
	mul r7, sl, ip
	sub ip, r2, r2, lsl #8
	rsb ip, ip, ip, lsl #6
	sub r2, ip, r2, lsl #2
	mov sl, #0x384
	sub sl, sl, #0x1000
	mla ip, sl, r8, sb
	add r2, r2, sb
	add r8, r6, r2
	add r6, r6, ip
	add sb, r7, ip
	LDR ip, [sp, #0x110]
	add r2, r7, r2
	add ip, r6, ip
	LDR r6, [sp, #0x10c]
	LDR r7, [sp, #0x114]
	add r6, r6, ip
	add r6, r6, #0x400
	MOV r6, r6, ASR #0xb
	LDR sl, [sp, #0x118]
	STR r6, [r0]
	LDR r6, [sp, #0x10c]
	add r2, r2, r7
	sub ip, r6, ip
	add ip, ip, #0x400
	MOV ip, ip, ASR #0xb
	STR ip, [r0, #0xe0]
	LDR ip, [sp, #0x108]
	add sb, sb, sl
	add ip, ip, r2
	add ip, ip, #0x400
	MOV ip, ip, ASR #0xb
	STR ip, [r0, #0x20]
	LDR ip, [sp, #0x108]
	add r8, r8, fp
	sub r2, ip, r2
	add r2, r2, #0x400
	MOV r2, r2, ASR #0xb
	STR r2, [r0, #0xc0]
	add r2, r4, sb
	add r2, r2, #0x400
	MOV r2, r2, ASR #0xb
	STR r2, [r0, #0x40]
	sub r2, r4, sb
	add r2, r2, #0x400
	MOV r2, r2, ASR #0xb
	STR r2, [r0, #0xa0]
	add r2, r5, r8
	add r2, r2, #0x400
	MOV r2, r2, ASR #0xb
	STR r2, [r0, #0x60]
	sub r2, r5, r8
	add r2, r2, #0x400
	MOV r2, r2, ASR #0xb
	STR r2, [r0, #0x80]
	add r0, r0, #4
	add r1, r1, #4
	add r3, r3, #4
60
	sub lr, lr, #1
	cmp lr, #0
	bgt %58
	LDR r2, [sp, #0x124]
	mov r0, sp
	mov r1, #0
61
	LDR r4, [r0, #8]
	LDR lr, [r0, #0x18]
	LDR r5, [r0, #0x10]
	add r3, r4, lr
	rsb ip, r3, r3, lsl #4
	add r3, ip, r3, lsl #7
	LDR ip, _08052A08
	rsb r3, r3, r3, lsl #5
	mla lr, ip, lr, r3
	rsb ip, r4, r4, lsl #5
	add ip, ip, r4, lsl #6
	add ip, ip, ip, lsl #5
	add r4, r3, ip, lsl #1
	LDR ip, [r0]
	mov fp, #0xa1
	add r3, ip, r5
	MOV r3, r3, LSL #0xd
	add r6, r3, r4
	sub ip, ip, r5
	STR r6, [sp, #0x10c]
	LDR r5, [r0, #4]
	LDR sl, [r0, #0x1c]
	LDR r6, [r0, #0xc]
	MOV ip, ip, LSL #0xd
	sub r4, r3, r4
	add r3, ip, lr
	LDR sb, [r0, #0x14]
	sub lr, ip, lr
	add ip, sl, r5
	STR ip, [sp, #0x104]
	add ip, sb, r6
	STR ip, [sp, #0x100]
	add ip, sl, r6
	add r7, sb, r5
	add r8, ip, r7
	add fp, fp, #0x2500
	mul r8, fp, r8
	mov fp, #0x8e
	add fp, fp, #0x900
	mul fp, sl, fp
	mov sl, #0xb3
	add sl, sl, #0x4100
	mul sb, sl, sb
	STR sb, [sp, #0x118]
	mov sb, #0x254
	add sb, sb, #0x6000
	mul r6, sb, r6
	STR r6, [sp, #0x114]
	mov r6, #0xb
	add r6, r6, #0x3000
	mul sb, r6, r5
	LDR r5, [sp, #0x104]
	LDR r6, _08052A0C
	mvn sl, #2
	mul r5, r6, r5
	LDR r6, [sp, #0x100]
	sub sl, sl, #0x5200
	mul r6, sl, r6
	mov sl, ip
	sub ip, sl, sl, lsl #8
	rsb ip, ip, ip, lsl #6
	sub ip, ip, sl, lsl #2
	mov sl, #0x384
	sub sl, sl, #0x1000
	mla r7, sl, r7, r8
	add ip, ip, r8
	add r8, r5, ip
	add ip, r6, ip
	add sl, r6, r7
	LDR r6, [sp, #0x114]
	add r5, r5, r7
	add ip, ip, r6
	LDR r6, [sp, #0x10c]
	add r5, r5, sb
	add r6, r6, r5
	add r6, r6, #0x20000
	mov r7, #0x80
	add r8, r8, fp
	LDR fp, [sp, #0x118]
	add r6, r7, r6, asr #18
	STR r6, [r2]
	LDR r6, [sp, #0x10c]
	add sl, sl, fp
	sub r5, r6, r5
	add r5, r5, #0x20000
	add r5, r7, r5, asr #18
	STR r5, [r2, #0x1c]
	add r5, r3, ip
	sub r3, r3, ip
	add r3, r3, #0x20000
	add r3, r7, r3, asr #18
	STR r3, [r2, #0x18]
	add r3, lr, sl
	add r3, r3, #0x20000
	add r3, r7, r3, asr #18
	STR r3, [r2, #8]
	sub r3, lr, sl
	add r3, r3, #0x20000
	add r3, r7, r3, asr #18
	STR r3, [r2, #0x14]
	add r3, r4, r8
	add r3, r3, #0x20000
	add r3, r7, r3, asr #18
	STR r3, [r2, #0xc]
	sub r3, r4, r8
	add r5, r5, #0x20000
	add r5, r7, r5, asr #18
	add r3, r3, #0x20000
	add r3, r7, r3, asr #18
	STR r5, [r2, #4]!
	STR r3, [r2, #0xc]!
	add r1, r1, #1
	cmp r1, #8
	add r2, r2, #0x10
	add r0, r0, #0x20
	blt %61
	add sp, sp, #0x128
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	ALIGN
_08052A08 DCDU 0xFFFFC4DF
_08052A0C DCDU 0xFFFFE333

	arm_func_start sub_8052A10
sub_8052A10
	LDR pc, _08052A14
	ALIGN
_08052A14 DCDU __rt_memclr_w

	arm_func_start sub_8052A18
sub_8052A18
	LDR pc, _08052A1C
	ALIGN
_08052A1C DCDU __rt_memcpy

	arm_func_start sub_8052A20
sub_8052A20
	LDR ip, _08052A28
	bx ip
	ALIGN
_08052A28 DCDU sub_803D9C4

	arm_func_start sub_8052A2C
sub_8052A2C
	LDR ip, _08052A34
	bx ip
	ALIGN
_08052A34 DCDU sub_802F04E

	arm_func_start sub_8052A38
sub_8052A38
	LDR pc, _08052A3C
	ALIGN
_08052A3C DCDU strcmp

	arm_func_start sub_8052A40
sub_8052A40
	LDR ip, _08052A48
	bx ip
	ALIGN
_08052A48 DCDU GetEWRAMStart

	arm_func_start sub_8052A4C
sub_8052A4C
	LDR ip, _08052A54
	bx ip
	ALIGN
_08052A54 DCDU sub_803DA9C

	arm_func_start sub_8052A58
sub_8052A58
	LDR ip, _08052A60
	bx ip
	ALIGN
_08052A60 DCDU sub_803D9A8

	arm_func_start sub_8052A64
sub_8052A64
	LDR ip, _08052A6C
	bx ip
	ALIGN
_08052A6C DCDU sub_801145E

	arm_func_start sub_8052A70
sub_8052A70
	STMFD SP!, {r4, r5, lr}
	mov r4, #1
	mov r2, #0
	mov r3, #0
	cmp r1, #0
	ble %64
	mov r5, #7
62
	LDR ip, [r0, #8]
	cmp ip, #0
	subne ip, ip, #1
	STRNE ip, [r0, #8]
	bne %63
	STR r5, [r0, #8]
	LDR ip, [r0, #4]
	add lr, ip, #1
	STR lr, [r0, #4]
	LDRB ip, [ip, #1]
	STR ip, [r0, #0xc]
	cmp ip, #0xff
	addeq ip, lr, #1
	STREQ ip, [r0, #4]
63
	LDR ip, [r0, #0xc]
	LDR lr, [r0, #8]
	add r3, r3, #1
	ands ip, ip, r4, lsl lr
	movne ip, #1
	orr r2, ip, r2, lsl #1
	cmp r3, r1
	blt %62
64
	sub r0, r1, #1
	MOV r0, r4, LSL r0
	cmp r0, r2
	MOVGT r0, r4, LSL r1
	subgt r0, r0, #1
	subgt r0, r2, r0
	LDMFD SP!, {r4, r5, lr}
	movle r0, r2
	bx lr

	arm_func_start sub_8052B08
sub_8052B08
	STMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	sub r0, r2, #0x80
	sub r2, r3, #0x80
	LDR r3, _08052BB0
	sub sp, sp, #0xc
	mul ip, r3, r2
	mov r3, #0x19
	add r3, r3, #0x5800
	add r6, r1, ip, asr #16
	mul ip, r3, r0
	mov r3, #0xd1
	add r3, r3, #0xb600
	mla r2, r3, r2, ip
	sub r7, r1, r2, asr #16
	mov r2, #0xd4
	add r2, r2, #0x1b800
	add r5, sp, #0x28
	LDMIA r5, {r4, r5}
	mul r0, r2, r0
	add r0, r1, r0, asr #16
	strh r4, [sp, #8]
	strh r5, [sp, #0xa]
	add r1, sp, #8
	bl sub_8052A64
	MOV r8, r0, LSL #0xa
	strh r4, [sp, #4]
	strh r5, [sp, #6]
	mov r0, r7
	add r1, sp, #4
	bl sub_8052A64
	orr r7, r8, r0, lsl #5
	strh r4, [sp]
	strh r5, [sp, #2]
	mov r0, r6
	mov r1, sp
	bl sub_8052A64
	orr r0, r7, r0
	strh r0, [sb]
	add sp, sp, #0xc
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	ALIGN
_08052BB0 DCDU 0x000166E9
65
	DCB 0x00, 0x01, 0x05, 0x06, 0x0E, 0x0F, 0x1B, 0x1C, 0x02, 0x04, 0x07, 0x0D
	DCB 0x10, 0x1A, 0x1D, 0x2A, 0x03, 0x08, 0x0C, 0x11, 0x19, 0x1E, 0x29, 0x2B, 0x09, 0x0B, 0x12, 0x18
	DCB 0x1F, 0x28, 0x2C, 0x35, 0x0A, 0x13, 0x17, 0x20, 0x27, 0x2D, 0x34, 0x36, 0x14, 0x16, 0x21, 0x26
	DCB 0x2E, 0x33, 0x37, 0x3C, 0x15, 0x22, 0x25, 0x2F, 0x32, 0x38, 0x3B, 0x3D, 0x23, 0x24, 0x30, 0x31
	DCB 0x39, 0x3A, 0x3E, 0x3F

	arm_func_start sub_8052BF4
sub_8052BF4
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %66
	mov r0, #0x5c
	bl sub_8053CCC
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
66
	mov r0, r4
	bl sub_8053CD8
	LDR r0, _08052E88
	STR r0, [r4]
	mov r0, #7
	strh r0, [r4, #6]
	mov r0, #0
	STR r0, [r4, #0x20]
	STR r0, [r4, #0x24]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr
67
	DCB 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start sub_8052C4C
sub_8052C4C
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, _08052E88
	mov r5, r1
	STR r0, [r4]
	mov r0, r4
	mov r1, #0
	bl sub_8053CE4
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne %88
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8052C84
sub_8052C84
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl sub_8053CFC
	LDR r0, [r5]
	LDR r3, [r4, #0x20]
	LDR r1, [r0, #4]
	add ip, r0, #8
	MOV r2, r1, LSL #0x16
	MOV r2, r2, LSR #0x1c
	MOV r1, r1, LSL #0x1a
	add r1, r2, r1, lsr #29
	mov r2, #0x300
	MOV r1, r2, LSL r1
	mov r2, #1
	STR r2, [r4, #0x38]
	STR r2, [r4, #0x3c]
	STR r2, [r4, #0x40]
	STR r2, [r4, #0x44]
	LDR r2, [r0, #4]
	mov lr, #0
	MOV r2, r2, LSL #0x16
	MOV r2, r2, LSR #0x1c
	STR r2, [r4, #0x48]
	LDR r2, [r0, #4]
	add r1, r1, #0x700
	MOV r2, r2, LSL #0x1a
	MOV r2, r2, LSR #0x1d
	STR r2, [r4, #0x4c]
	LDR r0, [r0, #4]
	add r2, r4, #0x50
	and r0, r0, #7
	STMIA r2, {r0, lr}
	STRB lr, [r4, #0x58]
	add r1, r1, #0x36
	cmp r1, #0
	STRB lr, [r4, #0x59]
	mov r0, #0
	bls %69
	mov r2, #0x400
68
	add r5, r3, r0, lsl #1
	add r0, r0, #1
	cmp r0, r1
	strh r2, [r5]
	blo %68
69
	STR ip, [r4, #0x28]
	mvn r0, #0
	add r1, r4, #0x30
	STMIA r1, {r0, lr}
	STR ip, [r4, #0x2c]
	mov r0, #0
70
	LDR r1, [r4, #0x28]
	add r0, r0, #1
	add r2, r1, #1
	STR r2, [r4, #0x28]
	LDRB r1, [r1]
	LDR r2, [r4, #0x34]
	cmp r0, #5
	orr r1, r1, r2, lsl #8
	STR r1, [r4, #0x34]
	blt %70
	LDMFD SP!, {r3, r4, r5, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8052D84
sub_8052D84
	STR r1, [r0, #0x20]
	MOV r1, r2, LSR #1
	STR r1, [r0, #0x24]
	bx lr

	arm_func_start sub_8052D94
sub_8052D94
	LDR r0, [r1, #4]
	MOV r1, r0, LSL #0x16
	MOV r1, r1, LSR #0x1c
	MOV r0, r0, LSL #0x1a
	add r0, r1, r0, lsr #29
	mov r1, #0x300
	MOV r0, r1, LSL r0
	add r0, r0, #0x700
	add r0, r0, #0x36
	MOV r0, r0, LSL #1
	bx lr

	arm_func_start sub_8052DC0
sub_8052DC0
	LDR r0, [r0, #0x28]
	bx lr

	arm_func_start sub_8052DC8
sub_8052DC8
	STR r1, [r0, #0x28]
	STR r1, [r0, #0x2c]
	bx lr

	arm_func_start sub_8052DD4
sub_8052DD4
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r3, [r4, #0x18]
	LDR r0, [r0, #0x1c]
	cmp r1, #0
	sub ip, r3, r0
	moveq r1, ip
	cmp ip, r1
	movle r1, ip
	LDR ip, [r4, #0xc]
	LDR lr, [r4, #0x10]
	add ip, ip, r0
	and ip, ip, lr
	LDR lr, [r4, #8]
	cmp r1, #0
	add r5, ip, lr
	ble %71
	LDR ip, _08052E8C
	LDR ip, [ip]
	cmp ip, #0
	beq %72
71
	mov r0, r5
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr
72
	add r0, r0, r1
	STR r0, [r4, #0x1c]
	sub r0, r3, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, r2
	bl sub_8052E90
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	cmp r0, #0
	add r1, r1, r0
	STR r1, [r4, #0x18]
	movgt r0, #0
	STRGT r0, [r4, #0x1c]
	mov r0, r5
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8052E78
sub_8052E78
	LDR r0, [r1]
	bx lr

	arm_func_start sub_8052E80
sub_8052E80
	mov r0, #8
	bx lr
	ALIGN
_08052E88 DCDU 0x03001114
_08052E8C DCDU 0x030033F4

	arm_func_start sub_8052E90
sub_8052E90
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	sub sp, sp, #8
	STR r0, [sp]
	LDR lr, [r0, #0x1c]
	cmp lr, #0
	ble %87
	orr lr, lr, #0x80000
	MOV r2, lr, LSL #0xc
	MOV lr, r2, LSR #0xc
	LDR r6, [r0, #8]
	LDR r7, [r0, #0xc]
	MOV r7, r7, LSL #0xf
	orr r7, r7, #0x2000
	LDR sl, [r0, #0x28]
	LDR fp, [r0, #0x30]
	LDR ip, [r0, #0x34]
	LDRB r2, [r0, #0x58]
	cmp r2, #0
	orrne r7, r7, #0x1000
	add sb, r0, #0x3c
	LDR r5, [r0, #0x38]
	LDRB r2, [r0, #0x59]
	add lr, lr, r2, lsl #20
	LDR r2, [r0, #0x54]
	add lr, lr, r2, lsl #28
	LDR r8, [r0, #0x20]
	add r2, sl, r1
	STR r2, [sp, #4]
73
	LDR r0, _08053CC8
	LDR r0, [r0]
	cmp r0, #1
	beq %86
	LDR r0, [sp, #4]
	cmp sl, r0
	bhs %86
	MOV r1, lr, LSR #0x1c
	add r1, r8, r1, lsl #5
	and r0, r7, #0x18000
	add r0, r1, r0, lsr #14
	ldrh r3, [r0]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	bhs %77
	add r0, r8, #0x26c
	add r0, r0, #0xc00
	cmp lr, #0x40000000
	biclo lr, lr, #0xf0000000
	blo %74
	cmp lr, #-0x60000000
	sublo lr, lr, #0x30000000
	blo %74
	sub lr, lr, #0x60000000
74
	tst r7, #0x1000
	beq %75
	sub r4, r7, r5, lsl #15
	LDRB r4, [r6, r4, lsr #15]
	mov r1, #1
	MOV r1, r1, LSL #1
	and r3, r4, #0x80
	add r3, r3, #0x80
	MOV r4, r4, LSL #1
	add r1, r1, r3, lsl #2
	bic r4, r4, #0x80000000
	orr r4, r4, r3, lsl #23
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	bic r1, r1, #0x600
	adc r1, r1, #0
	eor r3, r1, r4, lsr #31
	tst r3, #1
	addeq pc, pc, #0x78
	cmp r1, #0x100
	addcs pc, pc, #0x78
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	sub pc, pc, #0x80
	cmp r1, #0x100
	sublo pc, pc, #0x120
	and r1, r1, #0xff
	bic r7, r7, #0x1000
	b %76
75
	mov r1, #1
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	cmp r1, #0x100
	sublo pc, pc, #0x7c
	bic r1, r1, #0x100
76
	bic lr, lr, #0xff00000
	orr lr, lr, r1, lsl #20
	STRB r1, [r6, r7, lsr #15]
	add r7, r7, #0x8000
	subs lr, lr, #1
	MOVS r1, lr, LSL #0xd
	bgt %73
	b %86
77
	orr r7, r7, #0x1000
	MOV r0, lr, LSR #0x1c
	add r0, r8, r0, lsl #1
	add r1, r0, #0x180
	ldrh r3, [r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	blo %82
	add r1, r0, #0x198
	ldrh r3, [r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	bhs %78
	MOV r1, lr, LSR #0x1c
	add r1, r8, r1, lsl #5
	and r0, r7, #0x18000
	add r0, r1, r0, lsr #14
	add r0, r0, #0x1e0
	ldrh r3, [r0]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	bhs %81
	cmp lr, #0x70000000
	bic lr, lr, #0xf0000000
	addlo lr, lr, #-0x70000000
	addhs lr, lr, #-0x50000000
	sub r0, r7, r5, lsl #15
	LDRB r0, [r6, r0, lsr #15]
	bic lr, lr, #0xff00000
	orr lr, lr, r0, lsl #20
	STRB r0, [r6, r7, lsr #15]
	add r7, r7, #0x8000
	subs lr, lr, #1
	MOVS r1, lr, LSL #0xd
	bgt %73
	b %86
78
	add r1, r0, #0x1b0
	ldrh r3, [r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	bhs %79
	LDR r0, [sb]
	STR r5, [sb]
	mov r5, r0
	b %81
79
	add r1, r0, #0x1c8
	ldrh r3, [r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	bhs %80
	LDMIA sb, {r1, r2}
	mov r0, r5
	STMIA sb, {r0, r1}
	mov r5, r2
	b %81
80
	LDMIA sb, {r1, r2, r3}
	mov r0, r5
	STMIA sb, {r0, r1, r2}
	mov r5, r3
81
	add r0, r8, #0xa00
	add r0, r0, #0x68
	ldrh r3, [r0]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	addcs pc, pc, #0x90
	and r3, r7, #0x18000
	MOV r3, r3, LSR #0xf
	add r0, r0, r3, lsl #4
	add r0, r0, #4
	mov r1, #1
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	cmp r1, #8
	sublo pc, pc, #0x7c
	bic r1, r1, #8
	add pc, pc, #0x188
	ldrh r3, [r0, #2]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, #2]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, #2]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	addcs pc, pc, #0x94
	and r3, r7, #0x18000
	MOV r3, r3, LSR #0xf
	add r0, r0, r3, lsl #4
	add r0, r0, #0x104
	mov r1, #1
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	cmp r1, #8
	sublo pc, pc, #0x7c
	bic r1, r1, #8
	add r1, r1, #8
	add pc, pc, #0x84
	add r0, r0, #0x204
	mov r1, #1
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	cmp r1, #0x100
	sublo pc, pc, #0x7c
	bic r1, r1, #0x100
	add r1, r1, #0x10
	cmp lr, #0x70000000
	bic lr, lr, #0xf0000000
	addlo lr, lr, #-0x80000000
	addhs lr, lr, #-0x50000000
	b %85
82
	LDMIA sb, {r1, r2}
	mov r0, r5
	STMIA sb, {r0, r1, r2}
	mov r5, #0
	cmp lr, #0x70000000
	bic lr, lr, #0xf0000000
	addlo lr, lr, #0x70000000
	addhs lr, lr, #-0x60000000
	add r0, r8, #0x660
	add r0, r0, #4
	ldrh r3, [r0]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	addcs pc, pc, #0x90
	and r3, r7, #0x18000
	MOV r3, r3, LSR #0xf
	add r0, r0, r3, lsl #4
	add r0, r0, #4
	mov r1, #1
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	cmp r1, #8
	sublo pc, pc, #0x7c
	bic r1, r1, #8
	add pc, pc, #0x188
	ldrh r3, [r0, #2]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, #2]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, #2]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	addcs pc, pc, #0x94
	and r3, r7, #0x18000
	MOV r3, r3, LSR #0xf
	add r0, r0, r3, lsl #4
	add r0, r0, #0x104
	mov r1, #1
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	cmp r1, #8
	sublo pc, pc, #0x7c
	bic r1, r1, #8
	add r1, r1, #8
	add pc, pc, #0x84
	add r0, r0, #0x204
	mov r1, #1
	MOV r1, r1, LSL #1
	ldrh r3, [r0, r1]
	MOV r2, fp, LSR #0xb
	mul r2, r3, r2
	cmp ip, r2
	addcs pc, pc, #0x28
	mov fp, r2
	rsb r2, r3, #0x800
	add r3, r3, r2, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmn r3, #0
	add pc, pc, #0x24
	sub fp, fp, r2
	sub ip, ip, r2
	sub r3, r3, r3, lsr #5
	strh r3, [r0, r1]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r3, [sl], #1
	add ip, r3, ip, lsl #8
	cmp r3, #0
	adc r1, r1, #0
	cmp r1, #0x100
	sublo pc, pc, #0x7c
	bic r1, r1, #0x100
	add r1, r1, #0x10
	add r0, r8, #0x360
	cmp r1, #4
	addlo r0, r0, r1, lsl #7
	addhs r0, r0, #0x180
	mov r2, #1
	MOV r2, r2, LSL #1
	ldrh r4, [r0, r2]
	MOV r3, fp, LSR #0xb
	mul r3, r4, r3
	cmp ip, r3
	addcs pc, pc, #0x28
	mov fp, r3
	rsb r3, r4, #0x800
	add r4, r4, r3, lsr #5
	strh r4, [r0, r2]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r4, [sl], #1
	add ip, r4, ip, lsl #8
	cmn r4, #0
	add pc, pc, #0x24
	sub fp, fp, r3
	sub ip, ip, r3
	sub r4, r4, r4, lsr #5
	strh r4, [r0, r2]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r4, [sl], #1
	add ip, r4, ip, lsl #8
	cmp r4, #0
	adc r2, r2, #0
	cmp r2, #0x40
	sublo pc, pc, #0x7c
	bic r2, r2, #0x40
	cmp r2, #4
	blo %84
	add r7, r7, r1
	mov r0, #1
	rsb r4, r0, r2, lsr #1
	and r3, r2, #1
	add r3, r3, #2
	add r3, r0, r3, lsl r4
	add r5, r5, r3
	cmp r2, #0xe
	bhs %83
	mov r0, #0x2b0
	add r0, r0, r3
	sub r0, r0, r2
	sub r0, r0, #2
	add r5, r5, r0, lsl #19
	add r8, r8, r0, lsl #1
	mov r0, #1
	mov r3, #0
	MOV r0, r0, LSL #1
	ldrh r2, [r8, r0]
	MOV r1, fp, LSR #0xb
	mul r1, r2, r1
	cmp ip, r1
	addcs pc, pc, #0x28
	mov fp, r1
	rsb r1, r2, #0x800
	add r2, r2, r1, lsr #5
	strh r2, [r8, r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r2, [sl], #1
	add ip, r2, ip, lsl #8
	cmn r2, #0
	add pc, pc, #0x24
	sub fp, fp, r1
	sub ip, ip, r1
	sub r2, r2, r2, lsr #5
	strh r2, [r8, r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r2, [sl], #1
	add ip, r2, ip, lsl #8
	cmp r2, #0
	adc r0, r0, #0
	MOV R3, R3,RRX
	mov r2, #1
	cmp r0, r2, lsl r4
	sublo pc, pc, #0x84
	rsb r2, r4, #0x20
	MOV r3, r3, LSR r2
	add r5, r5, r3
	sub r8, r8, r5, lsr #18
	MOV r0, r5, LSL #0xe
	MOV r5, r0, LSR #0xe
	MOV r0, r7, LSL #0x17
	MOV r1, r0, LSR #0x17
	MOV r0, r7, LSR #0xb
	MOV r7, r0, LSL #0xb
	b %85
83
	sub r1, r4, #4
	mov r3, #1
	MOV fp, fp, LSR #1
	MOV r3, r3, LSL #1
	cmp ip, fp
	subhs ip, ip, fp
	orrhs r3, r3, #1
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r4, [sl], #1
	add ip, r4, ip, lsl #8
	cmp r3, r0, lsl r1
	sublo pc, pc, #0x34
	bic r3, r3, r0, lsl r1
	add r5, r5, r3, lsl #4
	add r8, r8, #0x640
	add r8, r8, #4
	mov r4, #4
	mov r0, #1
	mov r3, #0
	MOV r0, r0, LSL #1
	ldrh r2, [r8, r0]
	MOV r1, fp, LSR #0xb
	mul r1, r2, r1
	cmp ip, r1
	addcs pc, pc, #0x28
	mov fp, r1
	rsb r1, r2, #0x800
	add r2, r2, r1, lsr #5
	strh r2, [r8, r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r2, [sl], #1
	add ip, r2, ip, lsl #8
	cmn r2, #0
	add pc, pc, #0x24
	sub fp, fp, r1
	sub ip, ip, r1
	sub r2, r2, r2, lsr #5
	strh r2, [r8, r0]
	cmp fp, #0x1000000
	addcs pc, pc, #0x8
	MOV fp, fp, LSL #8
	LDRB r2, [sl], #1
	add ip, r2, ip, lsl #8
	cmp r2, #0
	adc r0, r0, #0
	MOV R3, R3,RRX
	mov r2, #1
	cmp r0, r2, lsl r4
	sublo pc, pc, #0x84
	rsb r2, r4, #0x20
	MOV r3, r3, LSR r2
	add r5, r5, r3
	sub r8, r8, #0x640
	sub r8, r8, #4
	MOV r0, r7, LSL #0x17
	MOV r1, r0, LSR #0x17
	MOV r0, r7, LSR #0xb
	MOV r7, r0, LSL #0xb
	b %85
84
	add r3, r2, #1
	add r5, r5, r3
85
	mov r3, r5
	add r1, r1, #2
	sub lr, lr, r1
	sub r3, r7, r3, lsl #15
	LDRB r2, [r6, r3, lsr #15]
	STRB r2, [r6, r7, lsr #15]
	add r7, r7, #0x8000
	add r3, r3, #0x8000
	subs r1, r1, #1
	subne pc, pc, #0x1c
	bic lr, lr, #0xff00000
	orr lr, lr, r2, lsl #20
	MOVS r1, lr, LSL #0xd
	bgt %73
86
	LDR r0, [sp]
	MOV r1, r7, LSR #0xf
	STR r1, [r0, #0xc]
	STR sl, [r0, #0x28]
	STR fp, [r0, #0x30]
	STR ip, [r0, #0x34]
	MOV r1, lr, LSL #0xd
	MOV r1, r1, ASR #0xd
	STR r1, [r0, #0x1c]
	tst r7, #0x1000
	moveq r1, #0
	movne r1, #1
	STRB r1, [r0, #0x58]
	MOV r1, lr, LSR #0x1c
	STR r1, [r0, #0x54]
	STR r5, [r0, #0x38]
	and r1, lr, #0xff00000
	MOV r1, r1, LSR #0x14
	STRB r1, [r0, #0x59]
87
	add sp, sp, #8
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
	ALIGN
_08053CC8 DCDU 0x030033F4

	arm_func_start sub_8053CCC
sub_8053CCC
	LDR ip, _08053CD4
	bx ip
	ALIGN
_08053CD4 DCDU __nw__FUi

	arm_func_start sub_8053CD8
sub_8053CD8
	LDR ip, _08053CE0
	bx ip
	ALIGN
_08053CE0 DCDU sub_800802E

	arm_func_start sub_8053CE4
sub_8053CE4
	LDR ip, _08053CEC
	bx ip
	ALIGN
_08053CEC DCDU sub_800805E
88
	LDR ip, _08053CF8
	bx ip
	ALIGN
_08053CF8 DCDU sub_803DA18

	arm_func_start sub_8053CFC
sub_8053CFC
	LDR ip, _08053D04
	bx ip
	ALIGN
_08053D04 DCDU sub_800808E
89
	DCB 0x44, 0xEF, 0xFF, 0xFF, 0x40, 0xEF, 0xFF, 0xFF
	DCB 0x7C, 0xEF, 0xFF, 0xFF, 0xCC, 0xF0, 0xFF, 0xFF, 0xED, 0x6F, 0x00, 0x05, 0x70, 0xF1, 0xFF, 0xFF
	DCB 0x78, 0xF1, 0xFF, 0xFF, 0x7C, 0xF0, 0xFF, 0xFF, 0x8C, 0xF0, 0xFF, 0xFF, 0xB8, 0xF0, 0xFF, 0xFF
	DCB 0xC0, 0xF0, 0xFF, 0xFF

	arm_func_start sub_8053D34
sub_8053D34
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDRB r7, [r2]
	sub sp, sp, #8
	add lr, sp, #0x2c
	LDMIA lr, {r5, ip, lr}
	LDRB r8, [r2, #1]
	mul r4, r3, r7
	mul r6, r8, r4
	cmp r7, #1
	cmpeq r8, #1
	LDR r4, _080545D8
	bne %97
	cmp r5, #7
	addls pc, pc, r5, lsl #2
_8053D6C
	b %94
_8053D70
	b %91
_8053D74
	b %91
_8053D78
	b %90
_8053D7C
	b %90
_8053D80
	b %93
_8053D84
	b %93
_8053D88
	b %92
_8053D8C
	b %92
90
	add r6, r3, r3, lsl #1
	MOV r6, r6, LSL #2
	MOV r2, r6, LSR #2
	b %94
91
	MOV r6, r3, LSL #4
	MOV r2, r6, LSR #2
	b %94
92
	MOV r6, r3, LSL #3
	MOV r2, r6, LSR #2
	b %94
93
	add r6, r3, r3, lsl #3
	MOV r2, r3, LSL #1
94
	add r4, r0, r6
	cmp r3, #0
	addeq sp, sp, #8
	add r2, r4, r2
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
95
	LDRB r5, [r0]
	LDRSB r7, [r2]
	add r2, r2, #1
	add r0, r0, #1
	add r6, r5, r7, lsl #1
	LDRB r6, [ip, r6]
	subs r3, r3, #1
	LDRB r8, [lr, r6]
	LDRSB r6, [r4]
	add r4, r4, #1
	sub sb, r5, r6, asr #1
	sub r7, sb, r7
	LDRB r7, [ip, r7]
	add r5, r5, r6, lsl #1
	LDRB r5, [ip, r5]
	LDRB r7, [lr, r7]
	LDRB r5, [lr, r5]
	orr r6, r8, r7, lsl #5
	orr r5, r6, r5, lsl #10
	strh r5, [r1], #2
	bne %95
96
	add sp, sp, #8
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
97
	cmp r5, #7
	addls pc, pc, r5, lsl #2
_8053E40
	b %96
_8053E44
	b %99
_8053E48
	b %99
_8053E4C
	b %98
_8053E50
	b %98
_8053E54
	b %103
_8053E58
	b %103
_8053E5C
	b %99
_8053E60
	b %99
98
	LDR r4, _080545DC
99
	add r5, r0, r6
	STR r3, [sp]
	cmp r3, #0
	addeq sp, sp, #8
	add r6, r5, r6, lsr #2
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
100
	LDRB r3, [r2, #1]
	mov r7, #0
	cmp r3, #0
	bls %102
101
	LDRB r8, [r0]
	LDRSB sl, [r6]
	add r7, r7, #1
	add r3, r8, sl, lsl #1
	LDRB sb, [ip, r3]
	LDRB r3, [r4]
	add sb, sb, r3, lsl #8
	LDRB sb, [lr, sb]
	STR sb, [sp, #4]
	LDRSB sb, [r5]
	sub fp, r8, sb, asr #1
	sub sl, fp, sl
	LDRB sl, [ip, sl]
	add r8, r8, sb, lsl #1
	LDRB r8, [ip, r8]
	add sl, sl, r3, lsl #8
	LDRB sl, [lr, sl]
	add r8, r8, r3, lsl #8
	LDRB r8, [lr, r8]
	LDR sb, [sp, #4]
	add r3, r1, r3, lsl #1
	orr sb, sb, sl, lsl #5
	orr r8, sb, r8, lsl #10
	strh r8, [r3]
	add r8, r4, #1
	LDRB r4, [r0, #1]!
	LDRSB sl, [r6]
	add r3, r4, sl, lsl #1
	LDRB sb, [ip, r3]
	LDRB r3, [r8]
	add sb, sb, r3, lsl #8
	LDRB sb, [lr, sb]
	STR sb, [sp, #4]
	LDRSB sb, [r5]
	sub fp, r4, sb, asr #1
	sub sl, fp, sl
	LDRB sl, [ip, sl]
	add r4, r4, sb, lsl #1
	LDRB r4, [ip, r4]
	add sl, sl, r3, lsl #8
	LDRB sl, [lr, sl]
	add r4, r4, r3, lsl #8
	LDRB r4, [lr, r4]
	LDR sb, [sp, #4]
	add r3, r1, r3, lsl #1
	orr sb, sb, sl, lsl #5
	orr r4, sb, r4, lsl #10
	strh r4, [r3]
	LDRB r4, [r0, #1]!
	LDRSB sl, [r6]
	add r3, r4, sl, lsl #1
	LDRB sb, [ip, r3]
	LDRB r3, [r8, #1]!
	add sb, sb, r3, lsl #8
	LDRB sb, [lr, sb]
	STR sb, [sp, #4]
	LDRSB sb, [r5]
	sub fp, r4, sb, asr #1
	sub sl, fp, sl
	LDRB sl, [ip, sl]
	add r4, r4, sb, lsl #1
	LDRB r4, [ip, r4]
	add sl, sl, r3, lsl #8
	LDRB sl, [lr, sl]
	add r4, r4, r3, lsl #8
	LDRB r4, [lr, r4]
	LDR sb, [sp, #4]
	add r3, r1, r3, lsl #1
	orr sb, sb, sl, lsl #5
	orr r4, sb, r4, lsl #10
	strh r4, [r3]
	add r3, r8, #1
	LDRB r8, [r0, #1]!
	LDRSB sl, [r6]
	add r6, r6, #1
	add r0, r0, #1
	add r4, r8, sl, lsl #1
	LDRB sb, [ip, r4]
	LDRB r4, [r3]
	add sb, sb, r4, lsl #8
	LDRB sb, [lr, sb]
	STR sb, [sp, #4]
	LDRSB sb, [r5]
	add r5, r5, #1
	sub fp, r8, sb, asr #1
	sub sl, fp, sl
	LDRB sl, [ip, sl]
	add r8, r8, sb, lsl #1
	LDRB r8, [ip, r8]
	add sl, sl, r4, lsl #8
	LDRB sl, [lr, sl]
	add r8, r8, r4, lsl #8
	LDRB r8, [lr, r8]
	LDR sb, [sp, #4]
	add r4, r1, r4, lsl #1
	orr sb, sb, sl, lsl #5
	orr r8, sb, r8, lsl #10
	strh r8, [r4]
	add r4, r3, #1
	LDRB r3, [r2, #1]
	cmp r3, r7
	bhi %101
102
	LDRB r3, [r2, #1]
	add r1, r1, #0x20
	sub r4, r4, r3, lsl #2
	LDR r3, [sp]
	subs r3, r3, #1
	STR r3, [sp]
	bne %100
	add sp, sp, #8
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
103
	add r2, r0, r6
	cmp r3, #0
	addeq sp, sp, #8
	add r4, r2, r3, lsl #1
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov sb, #0
104
	LDRB r5, [r0]
	LDRSB r7, [r4]
	subs r3, r3, #1
	add r6, r5, r7, lsl #1
	LDRB r6, [ip, r6]
	LDRB r8, [lr, r6]
	LDRSB r6, [r2]
	sub sl, r5, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r5, r5, r6, lsl #1
	LDRB r5, [ip, r5]
	LDRB r7, [lr, r7]
	LDRB r5, [lr, r5]
	orr r6, r8, r7, lsl #5
	orr r5, r6, r5, lsl #10
	strh r5, [r1]
	add r5, r0, #1
	LDRB r0, [r0, #1]
	LDRSB r7, [r4]
	add r6, r0, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0x100]
	LDRSB r6, [r2]
	sub sl, r0, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r0, r0, r6, lsl #1
	LDRB r0, [ip, r0]
	add r7, r7, lr
	LDRB r7, [r7, #0x100]
	add r0, r0, lr
	LDRB r0, [r0, #0x100]
	orr r6, r8, r7, lsl #5
	orr r0, r6, r0, lsl #10
	strh r0, [r1, #2]
	LDRB r0, [r5, #1]!
	LDRSB r7, [r4]
	add r6, r0, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0x200]
	LDRSB r6, [r2]
	sub sl, r0, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r0, r0, r6, lsl #1
	LDRB r0, [ip, r0]
	add r7, r7, lr
	LDRB r7, [r7, #0x200]
	add r0, r0, lr
	LDRB r0, [r0, #0x200]
	orr r6, r8, r7, lsl #5
	orr r0, r6, r0, lsl #10
	strh r0, [r1, #4]
	LDRB r0, [r5, #1]!
	LDRSB r7, [r4]
	add r6, r0, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0x400]
	LDRSB r6, [r2]
	sub sl, r0, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r0, r0, r6, lsl #1
	LDRB r0, [ip, r0]
	add r7, r7, lr
	LDRB r7, [r7, #0x400]
	add r0, r0, lr
	LDRB r0, [r0, #0x400]
	orr r6, r8, r7, lsl #5
	orr r0, r6, r0, lsl #10
	strh r0, [r1, #6]
	LDRB r0, [r5, #1]!
	LDRSB r7, [r4]
	add r6, r0, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0x500]
	LDRSB r6, [r2]
	sub sl, r0, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r0, r0, r6, lsl #1
	LDRB r0, [ip, r0]
	add r7, r7, lr
	LDRB r7, [r7, #0x500]
	add r0, r0, lr
	LDRB r0, [r0, #0x500]
	orr r6, r8, r7, lsl #5
	orr r0, r6, r0, lsl #10
	strh r0, [r1, #8]
	LDRB r0, [r5, #1]!
	LDRSB r7, [r4]
	add r6, r0, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0x600]
	LDRSB r6, [r2]
	sub sl, r0, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r0, r0, r6, lsl #1
	LDRB r0, [ip, r0]
	add r7, r7, lr
	LDRB r7, [r7, #0x600]
	add r0, r0, lr
	LDRB r0, [r0, #0x600]
	orr r6, r8, r7, lsl #5
	orr r0, r6, r0, lsl #10
	strh r0, [r1, #0xa]
	add r0, r5, #1
	LDRB r5, [r5, #1]
	LDRSB r7, [r4, #1]!
	add r6, r5, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0x800]
	LDRSB r6, [r2, #1]!
	sub sl, r5, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r5, r5, r6, lsl #1
	LDRB r5, [ip, r5]
	add r7, r7, lr
	LDRB r7, [r7, #0x800]
	add r5, r5, lr
	LDRB r5, [r5, #0x800]
	orr r6, r8, r7, lsl #5
	orr r5, r6, r5, lsl #10
	strh r5, [r1, #0xc]
	add r5, r0, #1
	LDRB r0, [r0, #1]
	LDRSB r7, [r4]
	add r6, r0, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0x900]
	LDRSB r6, [r2]
	sub sl, r0, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r0, r0, r6, lsl #1
	LDRB r0, [ip, r0]
	add r7, r7, lr
	LDRB r7, [r7, #0x900]
	add r0, r0, lr
	LDRB r0, [r0, #0x900]
	orr r6, r8, r7, lsl #5
	orr r0, r6, r0, lsl #10
	strh r0, [r1, #0xe]
	LDRB r0, [r5, #1]!
	LDRSB r7, [r4]
	add r4, r4, #1
	add r6, r0, r7, lsl #1
	LDRB r6, [ip, r6]
	add r6, r6, lr
	LDRB r8, [r6, #0xa00]
	LDRSB r6, [r2]
	add r2, r2, #1
	sub sl, r0, r6, asr #1
	sub r7, sl, r7
	LDRB r7, [ip, r7]
	add r0, r0, r6, lsl #1
	LDRB r0, [ip, r0]
	add r7, r7, lr
	LDRB r7, [r7, #0xa00]
	add r0, r0, lr
	LDRB r0, [r0, #0xa00]
	orr r6, r8, r7, lsl #5
	orr r0, r6, r0, lsl #10
	strh r0, [r1, #0x10]
	strh sb, [r1, #0x12]
	add r1, r1, #0x20
	add r0, r5, #1
	bne %104
	add sp, sp, #8
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_8054344
sub_8054344
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDRB r2, [r0, #0x54]
	sub sp, sp, #0xc
	mov r8, r1
	add r2, r2, r2, lsl #1
	add r0, r0, r2, lsl #2
	add r2, r0, #0x650
	LDR r3, [r2]
	MOV r2, r3, LSL #0x10
	and r3, r3, #7
	cmp r3, #7
	MOV r2, r2, LSR #0x16
	addls pc, pc, r3, lsl #2
_8054378
	b %109
_805437C
	b %105
_8054380
	b %105
_8054384
	b %107
_8054388
	b %107
_805438C
	b %108
_8054390
	b %108
_8054394
	b %106
_8054398
	b %106
105
	MOV r5, r2, LSL #4
	MOV r0, r5, LSR #2
	mov r6, #4
	mov sl, #0x10
	b %109
106
	MOV r5, r2, LSL #3
	MOV r0, r5, LSR #2
	mov r6, #2
	mov sl, #8
	b %109
107
	add r5, r2, r2, lsl #1
	MOV r5, r5, LSL #2
	MOV r0, r5, LSR #2
	mov r6, #3
	mov sl, #0xc
	b %109
108
	add r5, r2, r2, lsl #3
	MOV r0, r2, LSL #1
	mov r6, #2
	mov sl, #9
109
	add sb, r8, r5
	STR r2, [sp, #4]
	cmp r2, #0
	addeq sp, sp, #0xc
	add fp, sb, r0
	mov r7, r1
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	add r1, r5, r0
	STR r1, [sp, #8]
110
	mov r1, #0
	movs r0, sl
	beq %112
111
	LDRB r2, [r8], #1
	subs r0, r0, #1
	add r1, r2, r1
	bne %111
112
	mov r0, sl
	bl sub_80557B4
	STRB r0, [r7]
	movs r0, r6
	mov r4, #0
	mov r1, #0
	beq %114
113
	LDRSB r2, [sb], #1
	subs r0, r0, #1
	add r1, r2, r1
	LDRSB r2, [fp], #1
	add r4, r2, r4
	bne %113
114
	mov r0, r6
	bl sub_80557BC
	STR r0, [sp]
	mov r0, r6
	mov r1, r4
	bl sub_80557BC
	LDR r1, [sp]
	STRB r1, [r7, r5]
	LDR r1, [sp, #8]
	STRB r0, [r7, r1]
	LDR r2, [sp, #4]
	add r7, r7, #1
	subs r2, r2, #1
	STR r2, [sp, #4]
	bne %110
	add sp, sp, #0xc
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_80544AC
sub_80544AC
	LDR r3, _080545E0
	add r1, r3, r1, lsl #1
	LDRB r3, [r1]
	LDRB r1, [r1, #1]
	mul r3, r1, r3
	mul r3, r2, r3
	mov r1, r0
	MOVS r0, r3, LSR #2
	mov r2, #0
	bxeq lr
115
	LDRB r3, [r1]
	subs r0, r0, #1
	add r2, r3, r2
	STRB r2, [r1], #1
	LDRB r3, [r1]
	add r2, r3, r2
	STRB r2, [r1], #1
	LDRB r3, [r1]
	add r2, r3, r2
	STRB r2, [r1], #1
	LDRB r3, [r1]
	add r2, r3, r2
	and r2, r2, #0xff
	STRB r2, [r1], #1
	bne %115
	bx lr

	arm_func_start sub_8054514
sub_8054514
	LDR r3, _080545E0
	cmp r1, #7
	add ip, r3, r1, lsl #1
	mov r3, #0
	addls pc, pc, r1, lsl #2
_8054528
	b %121
_805452C
	b %116
_8054530
	b %117
_8054534
	b %116
_8054538
	b %118
_805453C
	b %116
_8054540
	b %119
_8054544
	b %116
_8054548
	b %120
116
	mov r3, #1
	b %121
117
	mov r3, #4
	b %121
118
	mov r3, #3
	b %121
119
	mov r3, #2
	b %121
120
	mov r3, #2
121
	LDRB r1, [ip]
	LDRB ip, [ip, #1]
	MOV r3, r3, LSL #1
	mul r1, ip, r1
	mul r1, r2, r1
	add r0, r0, r1
	mul r2, r3, r2
	MOVS r2, r2, LSR #2
	mov r1, #0
	bxeq lr
122
	LDRB r3, [r0]
	subs r2, r2, #1
	add r1, r3, r1
	STRB r1, [r0], #1
	LDRB r3, [r0]
	add r1, r3, r1
	STRB r1, [r0], #1
	LDRB r3, [r0]
	add r1, r3, r1
	STRB r1, [r0], #1
	LDRB r3, [r0]
	add r1, r3, r1
	and r1, r1, #0xff
	STRB r1, [r0], #1
	bne %122
	bx lr
	ALIGN
_080545D8 DCDU gUnknown_0804AE90
_080545DC DCDU gUnknown_0804AEA0
_080545E0 DCDU gUnknown_0804AE80

	arm_func_start sub_80545E4
sub_80545E4
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	LDR r7, [sp, #0x40]
	mov r4, r0
	LDRB r0, [r0, #0x2d]
	mov r6, r1
	mov r5, r3
	bl sub_80557C4
	LDR r2, [r0, #0xc]
	LDR r1, [sp, #0x14]
	STR r2, [sp, #4]
	cmp r6, r1
	bge %130
123
	LDRB r1, [r4, #0x38]
	cmp r1, r5
	ble %129
	cmp r5, #0
	blt %129
	LDRB r1, [r4, #0x1c]
	tst r1, #2
	beq %124
	LDR r1, [r4, #0x14]
	add r2, r5, r5, lsl #1
	add r1, r1, r2, lsl #1
	ldrh r1, [r1, #4]
	ldrh r2, [r4, #0x20]
	sub ip, r2, r1
	b %125
124
	tst r1, #4
	moveq ip, #0
	beq %125
	LDR r1, [r4, #0x14]
	add r2, r5, r5, lsl #1
	add r1, r1, r2, lsl #1
	ldrh r1, [r1, #4]
	ldrh r2, [r4, #0x20]
	sub r1, r2, r1
	add r1, r1, r1, lsr #31
	MOV ip, r1, ASR #1
125
	LDR r1, [r4, #0x14]
	add r2, r5, r5, lsl #1
	add r2, r1, r2, lsl #1
	ldrh r3, [r2]
	ldrh r2, [r2, #2]
	LDR r1, [r4, #0x30]
	ldrh lr, [r4, #0x3a]
	add r3, r3, r1
	cmp r2, lr
	addls r1, r2, r1
	addhi r1, r1, lr
	STR r1, [sp, #8]
	LDR r1, [sp, #8]
	cmp r3, r1
	bhs %129
126
	LDRB r2, [r3]
	LDR r1, [r0, #8]
	LDR r1, [r1, r2, lsl #2]
	MOV r8, r1, LSR #0x18
	bic r1, r1, #0xff000000
	add r1, r1, #1
	add r2, r1, r8
	sub lr, r2, #1
	ldrh r2, [r0]
	cmp r1, lr
	mla sb, r2, r7, r1
	LDR r2, [sp, #4]
	add r2, sb, r2
	LDR sb, [r4, #0x48]
	ldrh sl, [r4, #0x20]
	mla fp, sl, r6, ip
	add sb, sb, fp
	bhi %128
127
	LDRB sl, [r2], #1
	add r1, r1, #1
	cmp r1, lr
	STRB sl, [sb], #1
	bls %127
128
	LDR r1, [sp, #8]
	add r3, r3, #1
	cmp r3, r1
	add ip, ip, r8
	blo %126
129
	add r1, r6, #1
	MOV r6, r1, LSL #0x10
	add r1, r7, #1
	MOV r7, r1, LSL #0x10
	ldrh r1, [r0, #2]
	MOV r7, r7, ASR #0x10
	MOV r6, r6, ASR #0x10
	cmp r7, r1
	addeq r1, r5, #1
	MOVEQ r5, r1, LSL #0x10
	LDR r1, [sp, #0x14]
	MOVEQ r5, r5, ASR #0x10
	moveq r7, #0
	cmp r6, r1
	blt %123
130
	ldrh r0, [r4, #0x22]
	strh r0, [r4, #0x3c]
	add sp, sp, #0x1c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_805477C
sub_805477C
	STMFD SP!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs fp, r1
	cmpne fp, #1
	mov r4, r0
	bne %141
	mov r8, #0
	mov sb, #0
	mov sl, #0
	LDRB r0, [r4, #0x2d]
	bl sub_80557C4
	LDRB r1, [r4, #0x38]
	ldrh r7, [r0, #2]
	LDRSH r6, [r4, #0x22]
	mul r1, r7, r1
	sub r0, r1, r6
	MOV r5, r0, LSL #0x10
	ldrh r0, [r4, #0x1e]
	LDRB r2, [r4, #0x1c]
	MOV r5, r5, LSR #0x10
	cmp r0, r5
	movlo r5, r0
	tst r2, #0x10
	bne %131
	cmp r1, r0
	blo %136
131
	cmp r6, #0
	blt %132
	mov r1, r6
	mov r0, r7
	bl sub_80557BC
	b %133
132
	rsb r1, r6, #0
	mov r0, r7
	bl sub_80557BC
	sub r1, r7, r1
133
	MOV sl, r1, LSL #0x10
	MOV sl, sl, ASR #0x10
	mov r1, r6
	cmp r6, #0
	mov r0, r7
	blt %134
	bl sub_80557BC
	b %135
134
	bl sub_80557BC
	sub r0, r0, #1
135
	MOV sb, r0, LSL #0x10
	cmp r7, sl
	MOV sb, sb, ASR #0x10
	addeq r0, sb, #1
	MOVEQ sb, r0, LSL #0x10
	MOVEQ sb, sb, ASR #0x10
	moveq sl, #0
	b %138
136
	tst r2, #0x40
	beq %137
	sub r0, r0, r1
	add r0, r0, r0, lsr #31
	MOV r0, r0, ASR #1
	MOV r8, r0, LSL #0x10
	MOV r8, r8, LSR #0x10
	add r0, r5, r8
	bic r5, r0, #0x10000
	b %138
137
	tst r2, #0x20
	beq %138
	sub r0, r0, r1
	MOV r8, r0, LSL #0x10
	MOV r8, r8, LSR #0x10
	add r0, r5, r8
	bic r5, r0, #0x10000
138
	LDR r0, [r4, #0x48]
	cmp r0, #0
	bne %140
	LDR r0, [r4, #0x50]
	cmp r0, #0
	beq %139
	bl sub_80557D0
	mov r6, r0
	LDR r0, [r4, #0x50]
	bl sub_80557DC
	bl sub_80557D0
	mov r1, r0
	ldrh r0, [r4, #0x2a]
	ldrh r2, [r4, #0x28]
	mov r3, #0
	mul r0, r2, r0
	MOV r2, r0, ASR #0x1f
	add r0, r0, r2, lsr #30
	MOV r0, r0, ASR #2
	MOV r0, r0, LSL #2
	mov r2, #0
	bl sub_80557E8
	STR r0, [r4, #0x48]
	mov r0, r6
	bl sub_80557DC
	b %140
139
	bl sub_80557D0
	mov r1, r0
	ldrh r0, [r4, #0x2a]
	ldrh r2, [r4, #0x28]
	mov r3, #0
	mul r0, r2, r0
	MOV r2, r0, ASR #0x1f
	add r0, r0, r2, lsr #30
	MOV r0, r0, ASR #2
	MOV r0, r0, LSL #2
	mov r2, #0
	bl sub_80557E8
	STR r0, [r4, #0x48]
140
	ldrh r1, [r4, #0x2a]
	ldrh r0, [r4, #0x28]
	mul r1, r0, r1
	LDR r0, [r4, #0x48]
	bl sub_80557F4
	MOV r2, r5, LSL #0x10
	MOV r1, r8, LSL #0x10
	MOV r1, r1, ASR #0x10
	MOV r2, r2, ASR #0x10
	mov r3, sb
	mov r0, r4
	STR sl, [sp]
	bl sub_80545E4
	cmp fp, #0
	beq %142
141
	cmp fp, #2
	LDMNEFD SP!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxne lr
142
	LDRB r0, [r4, #0x10]
	cmp r0, #0
	beq %144
	cmp r0, #1
	beq %146
	cmp r0, #2
	bne %143
	LDR r1, [r4]
	mov r0, r4
	LDR r2, [r1, #0x40]
	add lr, pc, #0x4
	add r1, r2, r1
	bx r1
143
	LDR r0, [r4, #0x44]
	cmp r0, #0
	LDMNEFD SP!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxne lr
	LDR r2, [r4, #0x50]
	LDR r0, [r4, #0x48]
	mov r5, #0
	cmp r2, #0
	beq %150
	cmp r0, #0
	beq %151
	LDR r6, _08054CE8
	STR r2, [r6]
	LDR r1, [r0, #-4]
	and r1, r1, #0xff
	cmp r1, #2
	bne %148
	bl sub_80557FC
	b %149
144
	LDR r1, [r4]
	mov r0, r4
	LDR r2, [r1, #0x38]
	add lr, pc, #0x4
	add r1, r2, r1
	bx r1
145
	DCB 0xE5, 0xFF, 0xFF, 0xEA
146
	LDR r1, [r4]
	mov r0, r4
	LDR r2, [r1, #0x3c]
	add lr, pc, #0x4
	add r1, r2, r1
	bx r1
147
	DCB 0xDE, 0xFF, 0xFF, 0xEA
148
	bl sub_8055808
149
	STR r5, [r6]
	b %151
150
	bl sub_80557FC
151
	STR r5, [r4, #0x48]
	LDMFD SP!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_8054A4C
sub_8054A4C
	STMFD SP!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldrh r0, [r0, #0x3c]
	ldrh r1, [r4, #0x22]
	cmp r0, r1
	LDMEQFD SP!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov sb, #0
	LDRB r0, [r4, #0x2d]
	bl sub_80557C4
	mov r5, r0
	LDRSH r0, [r4, #0x3c]
	LDRSH r1, [r4, #0x22]
	mov r2, #0x4000000
	cmp r0, r1
	bge %156
	sub r0, r1, r0
	ldrh r3, [r4, #0x20]
	LDR r1, [r4, #0x48]
	ldrh ip, [r4, #0x1e]
	mul r8, r3, r0
	mul r3, ip, r3
	sub r3, r3, r8
	MOV r3, r3, LSL #9
	orr r2, r2, r3, lsr #11
	add r0, r1, r8
	bl sub_8055814
	LDRB r0, [r4, #0x38]
	ldrh r5, [r5, #2]
	ldrh fp, [r4, #0x1e]
	mul r1, r5, r0
	LDRSH r0, [r4, #0x22]
	sub r1, r1, r0
	MOV r6, r1, LSL #0x10
	MOV r6, r6, ASR #0x10
	cmp fp, r6
	LDRLTSH r6, [r4, #0x1e]
	ldrh r1, [r4, #0x3c]
	sub r1, r0, r1
	sub r1, r6, r1
	MOV sl, r1, LSL #0x10
	MOV sl, sl, ASR #0x10
	adds r7, r0, sl
	bmi %152
	mov r1, r7
	mov r0, r5
	bl sub_80557BC
	b %153
152
	rsb r1, r7, #0
	mov r0, r5
	bl sub_80557BC
	sub r1, r5, r1
153
	MOV sb, r1, LSL #0x10
	MOV sb, sb, ASR #0x10
	mov r1, r7
	cmp r7, #0
	mov r0, r5
	blt %154
	bl sub_80557BC
	b %155
154
	bl sub_80557BC
	sub r0, r0, #1
155
	MOV r7, r0, LSL #0x10
	MOV r7, r7, ASR #0x10
	cmp r5, sb
	addeq r0, r7, #1
	MOVEQ r7, r0, LSL #0x10
	LDR r0, [r4, #0x48]
	ldrh r1, [r4, #0x20]
	MOVEQ r7, r7, ASR #0x10
	moveq sb, #0
	mla r0, fp, r1, r0
	sub r0, r0, r8
	mov r1, r8
	bl sub_80557F4
	cmp r6, #0
	ble %161
	mov r3, r7
	mov r2, r6
	mov r1, sl
	mov r0, r4
	STR sb, [sp]
	bl sub_80545E4
	b %161
156
	ldrh r3, [r4, #0x20]
	sub r0, r0, r1
	mul r7, r3, r0
	LDR r0, [r4, #0x48]
	ldrh ip, [r4, #0x1e]
	add r1, r0, r7
	mul r3, ip, r3
	sub r3, r3, r7
	MOV r3, r3, LSL #9
	orr r2, r2, r3, lsr #11
	bl sub_8055814
	ldrh r0, [r4, #0x3c]
	LDRSH r6, [r4, #0x22]
	sub r0, r0, r6
	MOV sl, r0, LSL #0x10
	MOV sl, sl, ASR #0x10
	cmp r6, #0
	blt %157
	ldrh r0, [r5, #2]
	mov r1, r6
	bl sub_80557BC
	b %158
157
	ldrh r8, [r5, #2]
	rsb r1, r6, #0
	mov r0, r8
	bl sub_80557BC
	sub r1, r8, r1
158
	MOV r8, r1, LSL #0x10
	MOV r8, r8, ASR #0x10
	mov r1, r6
	cmp r6, #0
	ldrh r0, [r5, #2]
	blt %159
	bl sub_80557BC
	b %160
159
	bl sub_80557BC
	sub r0, r0, #1
160
	MOV r6, r0, LSL #0x10
	ldrh r0, [r5, #2]
	MOV r6, r6, ASR #0x10
	mov r1, r7
	cmp r0, r8
	addeq r0, r6, #1
	MOVEQ r6, r0, LSL #0x10
	MOVEQ r6, r6, ASR #0x10
	LDR r0, [r4, #0x48]
	moveq r8, #0
	bl sub_80557F4
	mov r3, r6
	mov r2, sl
	mov r1, sb
	mov r0, r4
	STR r8, [sp]
	bl sub_80545E4
161
	LDRB r0, [r4, #0x10]
	cmp r0, #0
	beq %162
	cmp r0, #1
	beq %163
	cmp r0, #2
	LDMNEFD SP!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxne lr
	LDR r1, [r4]
	mov r0, r4
	LDR r2, [r1, #0x40]
	add sp, sp, #4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r1, r2, r1
	bx r1
162
	LDR r1, [r4]
	mov r0, r4
	LDR r2, [r1, #0x38]
	add sp, sp, #4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r1, r2, r1
	bx r1
163
	LDR r1, [r4]
	mov r0, r4
	LDR r2, [r1, #0x3c]
	add sp, sp, #4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r1, r2, r1
	bx r1
	ALIGN
_08054CE8 DCDU 0x030033E8

	arm_func_start sub_8054CEC
sub_8054CEC
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov r0, #0
	sub sp, sp, #0x44
	STR r0, [sp]
	LDRB r0, [r4, #0x2d]
	bl sub_80557C4
	LDRB r0, [r0, #0x18]
	LDR r1, _0805500C
	add r3, sp, #0x2c
	LDRB r1, [r1, r0]
	LDRB r2, [r4, #0x75]
	sub r5, r0, #1
	MOV r6, r5, LSL #8
	MOV r2, r2, LSL r1
	MOV fp, r2, LSL #8
	STR fp, [sp, #0x34]
	MOV fp, r2, LSL #0x10
	STR r2, [sp, #0x3c]
	MOV lr, r2, LSL #0xc
	STMIA r3, {fp, lr}
	MOV fp, r2, LSL #0x14
	STR fp, [sp, #0x28]
	MOV fp, r2, LSL #0x18
	STR fp, [sp, #0x24]
	MOV lr, r2, LSL #0x1c
	MOV r1, r2, LSL #4
	STR r1, [sp, #0x38]
	STR lr, [sp, #0x20]
	add fp, sp, #0x38
	LDMIA fp, {r1, fp}
	LDR lr, [sp, #0x30]
	orr r1, fp, r1
	LDR fp, [sp, #0x34]
	mov r3, #0
	orr r1, r1, fp
	LDR fp, [sp, #0x2c]
	orr r1, r1, lr
	orr r1, r1, fp
	LDR fp, [sp, #0x28]
	LDR lr, [sp, #0x20]
	orr r1, r1, fp
	LDR fp, [sp, #0x24]
	STR r3, [sp, #0x18]
	orr r1, r1, fp
	orr r1, r1, lr
	STR r1, [sp, #0x1c]
	LDRB r0, [r4, #0x6e]
	MOV r7, r6, LSL #8
	MOV r8, r7, LSL #8
	cmp r0, #0
	addls sp, sp, #0x44
	LDMLSFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxls lr
164
	mov r2, #0
	STR r2, [sp, #4]
	STR r2, [sp, #0x14]
	LDRB r0, [r4, #0x6f]
	cmp r0, #0
	bls %172
165
	add r3, sp, #0x14
	LDRB r1, [r4, #0x6f]
	LDMIA r3, {r2, r3}
	LDR r0, [r4, #0x54]
	mla r2, r1, r3, r2
	LDR sb, [r0, r2, lsl #2]
	LDR r0, [sb, #0x18]
	cmp r0, #0
	bne %166
	LDR r0, _08055010
	LDR r0, [r0]
	bl sub_8055820
	LDR r1, [sb, #0x10]
	LDR r0, [r0, #0x14]
	LDR r1, [r1]
	MOV r1, r1, LSL #0x10
	MOV r1, r1, LSR #0x10
	add r1, r1, r1, lsl #2
	add r0, r0, r1, lsl #2
166
	LDR r1, [r0, #4]
	mov r2, #0x3fc
	and r0, r2, r1, asr #2
	add r0, r0, #4
	and r1, r2, r1, asr #10
	add r1, r1, #4
	strh r0, [sp, #8]
	strh r1, [sp, #0xa]
	and r0, r1, #0xff
	STR r0, [sp, #0x10]
	ldrh r0, [sp, #8]
	mov r1, #0x10000
	add r1, r1, #0x6000000
	and r0, r0, #0xff
	STR r0, [sp, #0xc]
	LDR r0, [sb, #0x14]
	mov sl, #0
	LDR r0, [r0]
	MOV r0, r0, LSR #0x15
	add ip, r1, r0, lsl #5
	LDR r0, [sp, #0x10]
	cmp r0, #0
	bls %171
167
	LDR r0, [sp, #0xc]
	mov sb, #0
	cmp r0, #0
	bls %170
	LDR r0, [sp]
	add r1, r0, sl
	STR r1, [sp, #0x40]
168
	LDR r1, [sp, #0x40]
	ldrh r0, [r4, #0x20]
	LDR r2, [sp, #4]
	mla r1, r0, r1, r2
	add r0, r1, sb
	LDR r1, [r4, #0x48]
	mov r2, #0
	add r3, r0, r1
169
	LDR r0, [r4, #0x40]
	movs r0, r0
	LDRNE r0, [sp, #0x1c]
	LDR r1, [r3]
	ands lr, r1, r5
	LDRNE fp, [sp, #0x3c]
	orrne lr, lr, fp
	orrne r0, lr, r0
	ands lr, r1, r6
	LDRNE fp, [sp, #0x38]
	orrne lr, fp, lr, lsr #4
	orrne r0, lr, r0
	ands lr, r1, r7
	LDRNE fp, [sp, #0x34]
	orrne lr, fp, lr, lsr #8
	orrne r0, lr, r0
	ands r1, r1, r8
	LDRNE lr, [sp, #0x30]
	orrne r1, lr, r1, lsr #12
	orrne r0, r1, r0
	LDR r1, [r3, #4]!
	ands lr, r1, r5
	LDRNE fp, [sp, #0x2c]
	orrne lr, fp, lr, lsl #16
	orrne r0, lr, r0
	ands lr, r1, r6
	LDRNE fp, [sp, #0x28]
	orrne lr, fp, lr, lsl #12
	orrne r0, lr, r0
	ands lr, r1, r7
	LDRNE fp, [sp, #0x24]
	orrne lr, fp, lr, lsl #8
	orrne r0, lr, r0
	ands r1, r1, r8
	LDRNE lr, [sp, #0x20]
	orrne r1, lr, r1, lsl #4
	orrne r0, r1, r0
	STR r0, [ip], #4
	ldrh r0, [r4, #0x20]
	MOV r0, r0, LSR #2
	add r0, r3, r0, lsl #2
	sub r3, r0, #4
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, #8
	blo %169
	add r0, sb, #8
	and sb, r0, #0xff
	LDR r0, [sp, #0xc]
	cmp sb, r0
	blo %168
170
	add r0, sl, #8
	and sl, r0, #0xff
	LDR r0, [sp, #0x10]
	cmp sl, r0
	blo %167
171
	LDR r0, [sp, #0xc]
	LDR r2, [sp, #4]
	add r0, r2, r0
	bic r2, r0, #0x10000
	STR r2, [sp, #4]
	LDR r2, [sp, #0x14]
	add r0, r2, #1
	and r2, r0, #0xff
	STR r2, [sp, #0x14]
	LDRB r0, [r4, #0x6f]
	cmp r0, r2
	bhi %165
172
	LDR r0, [sp]
	LDR r1, [sp, #0x10]
	LDR r3, [sp, #0x18]
	add r0, r0, r1
	bic r0, r0, #0x10000
	STR r0, [sp]
	add r0, r3, #1
	and r3, r0, #0xff
	STR r3, [sp, #0x18]
	LDRB r0, [r4, #0x6e]
	cmp r0, r3
	bhi %164
	add sp, sp, #0x44
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	ALIGN
_0805500C DCDU 0x030031D8
_08055010 DCDU 0x03003EA0

	arm_func_start sub_8055014
sub_8055014
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	LDR r0, [r0, #0x84]
	cmp r0, #0
	LDMNEFD SP!, {r3, r4, r5, r6, r7, lr}
	bxne lr
	LDRB r0, [r4, #0x54]
	add r0, r0, r0, lsl #1
	add r0, r4, r0, lsl #2
	LDR r0, [r0, #0x650]
	and r0, r0, #7
	cmp r0, #7
	addls pc, pc, r0, lsl #2
_8055048
	b %177
_805504C
	b %173
_8055050
	b %173
_8055054
	b %178
_8055058
	b %178
_805505C
	b %185
_8055060
	b %185
_8055064
	b %192
_8055068
	b %192
173
	LDR r0, _080554D0
	LDR r0, [r0]
	bl sub_805582C
	LDR r3, [r4, #0xc]
	mov r1, #0x314
	MOV r2, r3, LSL #0xa
	MOV lr, r3, LSR #0x18
	mov r3, #0xf0
	MOV r6, r2, LSR #0x18
	sub r2, r3, r2, lsr #22
	mov r3, #0x5a0
	add r2, r3, r2, lsl #1
	LDR r3, [r4, #0x90]
	add r1, r1, #0x1400
	LDR r5, [r1, r4]
	MOV r3, r3, LSR #2
	add r0, r0, r3, lsl #2
	LDR r1, [r4, #0x7c]
	cmp lr, #0
	LDMLEFD SP!, {r3, r4, r5, r6, r7, lr}
	bxle lr
	MOV r7, r2, LSR #2
174
	mov r2, r6
	cmp r6, #0
	ble %176
175
	LDR ip, [r4, #0x78]
	add r3, r1, #1
	LDRB r1, [ip, r1]
	sub r2, r2, #1
	cmp r2, #0
	add ip, r5, r1, lsl #5
	MOV r1, r3, LSL #0xf
	LDR r3, [ip]
	MOV r1, r1, LSR #0xf
	STR r3, [r0], #4
	LDR r3, [ip, #4]
	STR r3, [r0], #0x1dc
	LDR r3, [ip, #8]
	STR r3, [r0], #4
	LDR r3, [ip, #0xc]
	STR r3, [r0], #0x1dc
	LDR r3, [ip, #0x10]
	STR r3, [r0], #4
	LDR r3, [ip, #0x14]
	STR r3, [r0], #0x1dc
	LDR r3, [ip, #0x18]
	STR r3, [r0], #4
	LDR r3, [ip, #0x1c]
	STR r3, [r0], #-0x59c
	bgt %175
176
	sub lr, lr, #1
	cmp lr, #0
	add r0, r0, r7, lsl #2
	bgt %174
177
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
178
	LDR r0, _080554D0
	LDR r0, [r0]
	bl sub_805582C
	mov r1, #0x314
	add r1, r1, #0x1400
	LDR r5, [r1, r4]
	LDR r1, [r4, #0xc]
	LDR r3, [r4, #0x7c]
	MOV r2, r1, LSL #0xa
	MOV r6, r2, LSR #0x18
	MOV r2, r1, LSR #0x16
	LDR r1, _080554D4
	umull ip, r2, r1, r2
	LDR r1, [r4, #0x90]
	MOV lr, r2, LSR #1
	MOV r1, r1, LSR #2
	add r1, r0, r1, lsl #2
	cmp lr, #0
	ble %182
179
	mov r2, r6
	cmp r6, #0
	ble %181
180
	LDR ip, [r4, #0x78]
	mov r0, r3
	LDRB r0, [ip, r0]
	add r3, r3, #1
	MOV r3, r3, LSL #0xf
	add ip, r5, r0, lsl #5
	LDR r0, [ip]
	sub r2, r2, #1
	STR r0, [r1]
	LDR r0, [ip, #4]
	cmp r2, #0
	STR r0, [r1, #4]
	LDR r0, [ip, #8]
	MOV r3, r3, LSR #0xf
	STR r0, [r1, #0x1e0]
	LDR r0, [ip, #0xc]
	STR r0, [r1, #0x1e4]
	LDR r0, [ip, #0x10]
	STR r0, [r1, #0x3c0]
	LDR r0, [ip, #0x14]
	STR r0, [r1, #0x3c4]
	add r1, r1, #8
	bgt %180
181
	sub lr, lr, #1
	cmp lr, #0
	add r1, r1, #0x3c0
	bgt %179
182
	LDR r0, _080554D8
	LDR r0, [r0]
	cmp r0, #0
	beq %183
	mov r0, #0
	STR r0, [sp]
	mov r2, #0x5000000
	add r2, r2, #0x78
	mov r0, sp
	bl sub_8055814
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
183
	tst r1, #2
	mov r0, #0
	beq %184
	strh r0, [sp]
	mov r0, #0x4000000
	add r0, r0, #0xd4
	STR sp, [r0]
	STR r1, [r0, #4]
	mov r1, #-0x7f000000
	add r1, r1, #0xf0
	STR r1, [r0, #8]
	LDR r0, [r0, #8]
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
184
	STR r0, [sp]
	mov r0, #0x4000000
	add r0, r0, #0xd4
	STR sp, [r0]
	STR r1, [r0, #4]
	mov r1, #-0x7b000000
	add r1, r1, #0x78
	STR r1, [r0, #8]
	LDR r0, [r0, #8]
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
185
	LDR r0, _080554D0
	LDR r0, [r0]
	bl sub_805582C
	mov r1, #0x314
	add r1, r1, #0x1400
	LDR r6, [r1, r4]
	LDR r1, [r4, #0xc]
	LDR ip, [r4, #0x7c]
	MOV r2, r1, LSL #0xa
	MOV r3, r2, LSR #0x16
	LDR r2, _080554D4
	MOV r1, r1, LSR #0x16
	umull lr, r3, r2, r3
	MOV r7, r3, LSR #1
	umull r3, r1, r2, r1
	MOV r5, r1, LSR #1
	LDR r1, [r4, #0x90]
	cmp r5, #0
	MOV r1, r1, LSR #1
	add r1, r0, r1, lsl #1
	ble %189
186
	mov r3, r7
	cmp r7, #0
	ble %188
187
	LDR r0, [r4, #0x78]
	add r2, ip, #1
	LDRB r0, [r0, ip]
	MOV ip, r2, LSL #0xf
	sub r3, r3, #1
	add r0, r6, r0, lsl #5
	ldrh r2, [r0]
	cmp r3, #0
	MOV ip, ip, LSR #0xf
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r2, [r0, #4]
	strh r2, [r1, #4]
	ldrh lr, [r0, #6]
	add r2, r1, #0x100
	strh lr, [r2, #0xe0]
	ldrh lr, [r0, #8]
	strh lr, [r2, #0xe2]
	ldrh lr, [r0, #0xa]
	strh lr, [r2, #0xe4]
	ldrh lr, [r0, #0xc]
	add r2, r1, #0x300
	add r1, r1, #6
	strh lr, [r2, #0xc0]
	ldrh lr, [r0, #0xe]
	strh lr, [r2, #0xc2]
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xc4]
	bgt %187
188
	sub r5, r5, #1
	cmp r5, #0
	add r1, r1, #0x3c0
	bgt %186
189
	LDR r0, _080554D8
	LDR r0, [r0]
	cmp r0, #0
	beq %190
	mov r0, #0
	STR r0, [sp]
	mov r2, #0x5000000
	add r2, r2, #0x78
	mov r0, sp
	bl sub_8055814
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
190
	tst r1, #2
	mov r0, #0
	beq %191
	strh r0, [sp]
	mov r0, #0x4000000
	add r0, r0, #0xd4
	STR sp, [r0]
	STR r1, [r0, #4]
	mov r1, #-0x7f000000
	add r1, r1, #0xf0
	STR r1, [r0, #8]
	LDR r0, [r0, #8]
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
191
	STR r0, [sp]
	mov r0, #0x4000000
	add r0, r0, #0xd4
	STR sp, [r0]
	STR r1, [r0, #4]
	mov r1, #-0x7b000000
	add r1, r1, #0x78
	STR r1, [r0, #8]
	LDR r0, [r0, #8]
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
192
	LDR r0, _080554D0
	LDR r0, [r0]
	bl sub_805582C
	LDR r2, [r4, #0xc]
	mov r1, #0x314
	MOV r3, r2, LSL #0xa
	MOV lr, r2, LSR #0x17
	LDR r2, [r4, #0x90]
	add r1, r1, #0x1400
	LDR r5, [r1, r4]
	LDR r1, [r4, #0x7c]
	cmp lr, #0
	MOV r6, r3, LSR #0x18
	LDMLEFD SP!, {r3, r4, r5, r6, r7, lr}
	MOV r2, r2, LSR #2
	add r0, r0, r2, lsl #2
	bxle lr
193
	mov r2, r6
	cmp r6, #0
	ble %195
194
	LDR ip, [r4, #0x78]
	add r3, r1, #1
	LDRB r1, [ip, r1]
	sub r2, r2, #1
	cmp r2, #0
	add ip, r5, r1, lsl #5
	MOV r1, r3, LSL #0xf
	LDR r3, [ip]
	MOV r1, r1, LSR #0xf
	STR r3, [r0]
	LDR r3, [ip, #4]
	STR r3, [r0, #4]
	LDR r3, [ip, #8]
	STR r3, [r0, #0x1e0]
	LDR r3, [ip, #0xc]
	STR r3, [r0, #0x1e4]
	add r0, r0, #8
	bgt %194
195
	sub lr, lr, #1
	cmp lr, #0
	add r0, r0, #0x1e0
	bgt %193
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
	ALIGN
_080554D0 DCDU 0x03003E98
_080554D4 DCDU 0xAAAAAAAB
_080554D8 DCDU 0x03003EB4

	arm_func_start sub_80554DC
sub_80554DC
	mov r3, #0x4000000
	add r3, r3, #0x200
	LDR r2, [r3]
	ldrh r1, [r3, #8]
	mrs r0, spsr
	STMFD SP!, {r0, r1, r2, r3, lr}
	mov r0, #1
	strh r0, [r3, #8]
	and r1, r2, r2, lsr #16
	mov ip, #0x1c
	ands r0, r1, #0x80
	bne %196
	mov ip, #8
	ands r0, r1, #4
	bne %196
	mov ip, #0
	ands r0, r1, #1
	bne %196
	add ip, ip, #4
	ands r0, r1, #2
	bne %196
	add ip, ip, #8
	ands r0, r1, #8
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x10
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x20
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x40
	bne %196
	add ip, ip, #8
	ands r0, r1, #0x100
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x200
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x400
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x800
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x1000
	bne %196
	add ip, ip, #4
	ands r0, r1, #0x2000
196
	strh r0, [r3, #2]
	LDR r1, _08055610
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	cmp r0, #0x80
	mrs r3, CPSR
	biceq r3, r3, #0x1f
	bicne r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fsxc, r3
	LDR r1, _08055614
	add r1, r1, ip
	LDR r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0
	bx r0
	LDMIA sp!, {lr}
	mrs r3, CPSR
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fsxc, r3
	LDMFD SP!, {r0, r1, r2, r3, lr}
	strh r2, [r3]
	strh r1, [r3, #8]
	msr spsr_fsxc, r0
	bx lr
	ALIGN
_08055610 DCDU 0x000020D0
_08055614 DCDU 0x030033FC

	arm_func_start nullsub_23
nullsub_23
	bx lr

	arm_func_start sub_805561C
sub_805561C
	STMFD SP!, {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	LDR r1, _080557B0
	mov r7, #1
	LDMIA r1, {r2, r3, r4}
	adds r6, r3, r0
	STR r6, [r1, #4]
	b %198
197
	DCB 0x46, 0x63, 0xD4, 0xE7, 0x01, 0x60, 0xC3, 0xE4
	DCB 0x01, 0x00, 0x50, 0xE2
198
	movne r1, r2
	movne r6, #0
	LDRNE r8, [r1], #0x4c
	bxne r8
	LDMFD SP!, {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr

	arm_func_start sub_805565C
sub_805565C
	add r1, r1, #0x4c
	add r1, r1, #0x4c
	ldmdb r1, {r8, sb, sl, fp, ip}
	add sl, sl, fp
	LDRSB fp, [ip]
	mla r6, fp, r8, r6
	strh sl, [r1, #-0xc]
	add ip, ip, sl, lsr #16
	cmp ip, sb
	LDRGE sb, [r1, #-0x1c]
	subge ip, ip, sb
	STR ip, [r1, #-4]
	LDR r8, [r1], #0x4c
	bx r8

	arm_func_start sub_8055694
sub_8055694
	add r1, r1, #0x4c
	add r1, r1, #0x4c
	ldmdb r1, {r8, sb, sl, fp, ip}
	add sl, sl, fp
	LDRSB fp, [ip]
	mla r6, fp, r8, r6
	strh sl, [r1, #-0xc]
	add ip, ip, sl, lsr #16
	cmp ip, sb
	STRGE pc, [r1, #-0x4c]
	STRGE r7, [r1, #-0x48]
	STRLT ip, [r1, #-4]
	LDR r8, [r1], #0x4c
	bx r8

	arm_func_start sub_80556CC
sub_80556CC
	add r1, r1, #0x4c
	add r1, r1, #0x4c
	LDR r8, [r1], #0x4c
	bx r8

	arm_func_start sub_80556DC
sub_80556DC
	STMFD SP!, {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	LDR r1, _080557B0
	LDMIA r1, {r2, r3, r4, r5}
	adds r6, r3, r0
	STR r6, [r1, #4]
	b %199

	arm_func_start sub_80556F4
sub_80556F4
	LDRB r7, [r4, r7, asr #6]
	LDRB r6, [r4, r6, asr #6]
	STRB r7, [r3, r5]
	STRB r6, [r3], #1
	subs r0, r0, #1
199
	movne r1, r2
	movne r6, #0
	movne r7, #0
	LDRNE r8, [r1], #0x4c
	bxne r8
	LDMFD SP!, {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr

	arm_func_start sub_8055724
sub_8055724
	add r1, r1, #0x4c
	add r1, r1, #0x4c
	ldmdb r1, {r8, sb, sl, fp, ip, lr}
	add fp, fp, ip
	LDRSB ip, [lr]
	mla r6, ip, sb, r6
	mla r7, ip, r8, r7
	strh fp, [r1, #-0xc]
	add lr, lr, fp, lsr #16
	cmp lr, sl
	LDRGE sl, [r1, #-0x1c]
	subge lr, lr, sl
	STR lr, [r1, #-4]
	LDR r8, [r1], #0x4c
	bx r8

	arm_func_start sub_8055760
sub_8055760
	add r1, r1, #0x4c
	add r1, r1, #0x4c
	ldmdb r1, {r8, sb, sl, fp, ip, lr}
	add fp, fp, ip
	LDRSB ip, [lr]
	mla r6, ip, sb, r6
	mla r7, ip, r8, r7
	strh fp, [r1, #-0xc]
	add lr, lr, fp, lsr #16
	cmp lr, sl
	movge sl, #1
	STRGE pc, [r1, #-0x4c]
	STRGE sl, [r1, #-0x48]
	STRLT lr, [r1, #-4]
	LDR r8, [r1], #0x4c
	bx r8

	arm_func_start sub_80557A0
sub_80557A0
	add r1, r1, #0x4c
	add r1, r1, #0x4c
	LDR r8, [r1], #0x4c
	bx r8
	ALIGN
_080557B0 DCDU 0x03003520

	arm_func_start sub_80557B4
sub_80557B4
	LDR pc, _080557B8
	ALIGN
_080557B8 DCDU __rt_udiv

	arm_func_start sub_80557BC
sub_80557BC
	LDR pc, _080557C0
	ALIGN
_080557C0 DCDU __rt_sdiv

	arm_func_start sub_80557C4
sub_80557C4
	LDR ip, _080557CC
	bx ip
	ALIGN
_080557CC DCDU sub_80133A0

	arm_func_start sub_80557D0
sub_80557D0
	LDR ip, _080557D8
	bx ip
	ALIGN
_080557D8 DCDU GetEWRAMStart

	arm_func_start sub_80557DC
sub_80557DC
	LDR ip, _080557E4
	bx ip
	ALIGN
_080557E4 DCDU sub_80050FA

	arm_func_start sub_80557E8
sub_80557E8
	LDR ip, _080557F0
	bx ip
	ALIGN
_080557F0 DCDU sub_803DA9C

	arm_func_start sub_80557F4
sub_80557F4
	LDR pc, _080557F8
	ALIGN
_080557F8 DCDU __rt_memclr

	arm_func_start sub_80557FC
sub_80557FC
	LDR ip, _08055804
	bx ip
	ALIGN
_08055804 DCDU __da__FPv

	arm_func_start sub_8055808
sub_8055808
	LDR ip, _08055810
	bx ip
	ALIGN
_08055810 DCDU sub_803DA18

	arm_func_start sub_8055814
sub_8055814
	LDR ip, _0805581C
	bx ip
	ALIGN
_0805581C DCDU CpuSet

	arm_func_start sub_8055820
sub_8055820
	LDR ip, _08055828
	bx ip
	ALIGN
_08055828 DCDU sub_8000D5A

	arm_func_start sub_805582C
sub_805582C
	LDR ip, _08055834
	bx ip
	ALIGN
_08055834 DCDU sub_800B09A

	arm_func_start sub_8055838
sub_8055838
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	sub sp, sp, #4
	LDR r5, [r0, #0x34]
	rsb r4, r2, r5
	STR r4, [r0, #0x34]
	LDR r5, [r0, #0x10]
	LDR r6, [r0, #0x14]
	LDR r7, [r0, #0x18]
	LDR r3, [r0, #4]
200
	LDR ip, [r0, #0x20]
	cmp ip, #2
	bls %206
	LDR sl, [r0, #0x1c]
201
	LDR r4, _08055ABC
	LDRB sb, [r4, sl, lsr #29]
	and fp, sb, #0xf
	MOV r4, sl, LSL fp
	rsb lr, fp, ip
	LDR fp, [r0, #0x38]
	STR r4, [r0, #0x1c]
	STR lr, [r0, #0x20]
	add lr, r0, fp
	MOV fp, fp, LSL #2
	MOV r4, sb, LSR #3
	LDRB lr, [lr, #0x3c]
	MOV ip, lr, ASR r4
	and lr, fp, #0x3f
	and fp, ip, #3
	LDR ip, [r0]
	orr fp, fp, lr
	tst fp, #1
	STR fp, [r0, #0x38]
	MOV r4, ip, ASR #8
	add r4, r4, #0x74
	addne r4, r4, #0xf9
	and sl, r4, #0x7f
	MOV sb, r4, ASR #7
	and r8, sb, #0xf
	orr sl, sl, #0x80
	MOV sl, sl, LSL #7
	rsb r8, r8, #0xe
	tst fp, #2
	MOV r8, sl, ASR r8
	rsbne r8, r8, #0
	tst fp, #1
	MOV lr, ip, ASR #6
	beq %202
	mov r4, #0x12c0
	rsb sl, lr, #0x36c0
	add fp, r4, #0x20
	add r4, sl, #0x20
	cmp lr, fp
	add fp, lr, r4, asr #5
	movgt fp, #0x1400
	b %203
202
	add r4, lr, #0x2c0
	cmp lr, #0x248
	rsb r4, r4, #0
	add fp, lr, r4, asr #5
	movlt fp, #0x220
203
	rsb sl, ip, #0
	mul lr, r3, r7
	add r4, fp, sl, asr #6
	add r4, ip, r4
	STR r4, [r0]
	LDR sb, [r0, #0xc]
	LDR ip, [r0, #8]
	MOV r4, r6, ASR #2
	mul sl, sb, r4
	MOV sb, r5, ASR #2
	mul sb, ip, sb
	MOV fp, sl, ASR #0xb
	add sl, fp, sb, asr #11
	add sb, sl, lr, asr #11
	adds sl, r8, sb, asr #1
	STR ip, [r0, #0xc]
	moveq sl, #1
	add sb, r8, lr, asr #12
	STR sl, [r0, #8]
	MOV fp, sl, ASR #0x1f
	add r4, sl, fp, lsr #26
	MOV sl, r4, ASR #6
	cmp sl, #0x7f
	movge sl, #0x7f
	mvn r4, #0x7f
	cmp sl, r4
	movlt sl, r4
	and sl, sl, #0xff
	tst r2, #1
	STREQ sl, [sp]
	LDRNE r4, [sp]
	orrne r4, r4, sl, lsl #8
	strneh r4, [r1], #2
	cmp sb, #0
	sub r4, r5, r5, asr #8
	sub r6, r6, r6, asr #7
	mov r5, r4
	MOV ip, sb, LSR #0x1f
	LDRB lr, [r0, #0x7c]
	beq %205
	cmp ip, lr
	addeq r5, r4, #0xc0
	subne r5, r4, #0xc0
	rsbeq r4, r4, #0
	mov fp, #0x4000
	sub fp, fp, #1
	add sb, r4, fp, lsr #1
	cmp sb, fp
	addls r6, r6, r4, asr #5
	LDRB sb, [r0, #0x7d]
	bls %204
	cmp r4, #0
	sublt r6, r6, #0x100
	addge r6, r6, #0xff
204
	cmp ip, sb
	subne r6, r6, #0x80
	addeq r6, r6, #0x80
205
	rsb sb, r6, #0x3c00
	cmp r5, sb
	movgt r5, sb
	sub r7, r7, r7, asr #8
	teq r8, r3
	STRB lr, [r0, #0x7d]
	addpl r7, r7, #0x20
	STRB ip, [r0, #0x7c]
	submi r7, r7, #0x20
	mov r3, r8
	subs r2, r2, #1
	bne %200
	STR r3, [r0, #4]
	STR r5, [r0, #0x10]
	STR r6, [r0, #0x14]
	STR r7, [r0, #0x18]
	add sp, sp, #4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	bx lr
206
	LDR lr, [r0, #0x28]
	LDR sl, [r0, #0x1c]
	cmp lr, #0
	beq %207
	mov sb, ip
	LDR r4, [r0, #0x24]
	rsb fp, ip, #0x20
	MOV fp, r4, LSL fp
	add ip, lr, sb
	cmp ip, #0x20
	sub lr, ip, #0x20
	orr sl, sl, r4, lsr sb
	movhi ip, #0x20
	bhi %208
207
	LDR sb, [r0, #0x2c]
	LDR fp, [sb], #4
	STR sb, [r0, #0x2c]
	mov lr, ip
	rsb sb, ip, #0x20
	orr sl, sl, fp, lsr lr
	MOV fp, fp, LSL sb
	mov ip, #0x20
208
	STR fp, [r0, #0x24]
	STR lr, [r0, #0x28]
	b %201
	ALIGN
_08055ABC DCDU 0x030031D0
	END

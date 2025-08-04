	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT sub_8002004
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT CpuSet
	IMPORT sub_803FF24

	thumb_func_start sub_801C210
sub_801C210
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	movs r4, #0
	add r5, sp, #0x58
	adds r1, r5, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494
	bl CpuSet
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494
	add r1, sp, #8
	bl CpuSet
	ldr r0, _0801C498
	ldr r0, [r0]
	bl sub_8002004
	ldr r3, [r0, #4]
	movs r0, #5
	ldr r6, [sp, #0xa8]
	lsls r0, r0, #8
	adds r2, r6, r0
	ldr r0, [r2, #0x1c]
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %7
	add r0, sp, #8
1
	ldr r6, [sp, #0xa8]
	lsls r5, r1, #2
	adds r5, r5, r6
	ldr r5, [r5, #0x20]
	ldr r6, [r5, #0x2c]
	ldr r6, [r6]
	lsls r6, r6, #0x16
	lsrs r6, r6, #0x1f
	bne %2
	movs r6, #0x8c
	ldr r6, [r6, r5]
	lsls r6, r6, #0x11
	lsrs r6, r6, #0x1f
	beq %2
	ldr r6, [r5, #0x5c]
	ldr r5, [r5, #0x30]
	subs r6, r6, r3
	ldr r5, [r5, #0x10]
	asrs r7, r6, #0x1f
	lsrs r7, r7, #0x10
	ldr r5, [r5]
	adds r6, r7, r6
	lsls r5, r5, #1
	lsrs r5, r5, #0x16
	asrs r6, r6, #0x10
	adds r6, r5, r6
	lsls r5, r4, #2
	add r7, sp, #0x58
	str r6, [r7, r5]
	str r1, [r0, r5]
	adds r4, #1
2
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi %1
	cmp r4, #0
	beq %7
	movs r5, #0
	subs r1, r4, #1
	beq %7
	mov lr, r1
3
	movs r1, #0
	subs r0, r4, r5
	subs r2, r0, #1
	beq %6
	subs r0, #1
	mov ip, r0
4
	lsls r0, r1, #2
	add r7, sp, #0x58
	ldr r2, [r7, r0]
	adds r6, r0, r7
	ldr r3, [r6, #4]
	cmp r2, r3
	bhs %5
	str r3, [r7, r0]
	str r2, [r6, #4]
	add r7, sp, #8
	adds r2, r0, r7
	ldr r6, [r2, #4]
	ldr r3, [r7, r0]
	str r6, [r7, r0]
	str r3, [r2, #4]
5
	adds r1, #1
	cmp ip, r1
	bhi %4
6
	adds r5, #1
	cmp r5, lr
	blo %3
7
	movs r0, #0
	cmp r4, #0
	bls %11
	movs r5, #3
	lsls r5, r5, #0xa
	movs r6, #0x80
8
	lsls r1, r0, #2
	add r2, sp, #8
	ldr r1, [r2, r1]
	ldr r2, [sp, #0xa8]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0x2c]
	ldrb r2, [r1, #5]
	cmp r2, #0x80
	bls %9
	lsls r3, r0, #1
	adds r3, #0x82
	cmp r3, r2
	beq %10
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi %10
	orrs r2, r6
	str r2, [r1]
	b %10
9
	lsls r3, r0, #1
	adds r3, #0x42
	cmp r3, r2
	beq %10
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi %10
	orrs r2, r6
	str r2, [r1]
10
	adds r0, #1
	cmp r0, r4
	blo %8
11
	add sp, #0xac
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801C352
sub_801C352
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #0x20]
	adds r0, #0xff
	adds r0, #0x41
	ldrh r0, [r0, #6]
	cmp r0, #0x3c
	bls %21
	movs r0, #5
	ldr r1, [sp, #0x18]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x1c]
	movs r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #1
	bls %21
12
	ldr r1, [sp, #0x18]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r5, [r0, #0x20]
	ldrh r0, [r5, #4]
	cmp r0, #0x12
	bne %27
	movs r0, #0xa0
	ldrh r0, [r0, r5]
	ldr r1, _0801C49C
	cmp r0, r1
	bne %27
	movs r0, #0x94
	ldr r0, [r0, r5]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1f
	beq %27
	ldr r1, [sp, #0x18]
	ldr r2, [r5, #0x30]
	ldr r0, [r1, #0x20]
	adds r2, #0x2c
	ldr r0, [r0, #0x30]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r3, [r2]
	str r3, [sp, #8]
	ldr r2, [r2, #4]
	cmp r3, #0
	str r2, [sp, #0xc]
	beq %27
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	subs r4, r1, r3
	subs r7, r0, r2
	cmp r4, #0
	bge %13
	NEGS r0, r4
	b %14
13
	adds r0, r4, #0
14
	str r0, [sp, #0x10]
	cmp r7, #0
	bge %15
	NEGS r1, r7
	b %16
15
	adds r1, r7, #0
16
	cmp r0, r1
	ble %18
	adds r0, r7, #0
	asrs r1, r7, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	ldr r3, [sp, #4]
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	cmp r4, #0
	bge %17
	ldr r4, _0801C4A0
	b %26
17
	movs r4, #1
	lsls r4, r4, #0x10
	b %26
18
	cmp r7, #0
	bne %20
	cmp r4, #0
	ble %19
	movs r4, #1
	b %24
19
	cmp r4, #0
	bge %24
	movs r4, #0
	mvns r4, r4
	b %24
20
	adds r0, r4, #0
	asrs r1, r4, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	adds r4, r0, #0
	cmp r7, #0
	str r1, [sp, #4]
	bge %22
	NEGS r0, r7
	b %23
21
	b %30
22
	adds r0, r7, #0
23
	asrs r1, r0, #0x1f
	adds r2, r4, #0
	ldr r3, [sp, #4]
	bl __16_ll_srdv
	adds r4, r0, #0
24
	cmp r7, #0
	bge %25
	ldr r0, _0801C4A0
	b %26
25
	movs r0, #1
	lsls r0, r0, #0x10
26
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r0, r2, r0
	adds r1, r1, r4
	str r0, [r5, #0x5c]
	str r1, [r5, #0x58]
	cmp r1, #0
	bne %27
	cmp r0, #0
	bne %27
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x2c]
	mov r1, sp
	bl sub_803FF24
	b %28
27
	b %29
28
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, sp
	bl sub_803FF24
29
	ldr r0, [sp, #0x14]
	adds r6, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r6
	bls %30
	b %12
30
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801C494 DCDU 0x05000014
_0801C498 DCDU gUnknown_03003450
_0801C49C DCDU 0x00002712
_0801C4A0 DCDU 0xFFFF0000
	END

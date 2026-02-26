	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT sub_803FF24

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

	ALIGN
_0801C49C DCDU 0x00002712
_0801C4A0 DCDU 0xFFFF0000

	END

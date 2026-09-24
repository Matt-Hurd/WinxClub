	non_word_aligned_thumb_func_start sub_800E5EA
sub_800E5EA
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0800E924
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	bne %17
	movs r3, #1
	str r3, [r6, #0x3c]
	ldr r0, [r6, #0x28]
	ldr r7, _0800E928
	cmp r0, #0
	beq %11
	ldr r0, [r7]
	bl sub_800B65E
11
	ldr r0, _0800E92C
	ldr r0, [r0]
	cmp r0, #0
	beq %13
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r1, [r4, #0x28]
	lsls r2, r1, #0xf
	bpl %12
	movs r0, #1
	lsls r0, r0, #0x11
	orrs r0, r1
	str r0, [r4, #0x28]
	b %13
12
	adds r0, #4
	adds r5, r0, #0
	bl sub_800CADA
	cmp r0, #0
	bne %13
	ldr r0, [r4, #0x28]
	lsls r0, r0, #0xd
	bmi %13
	adds r0, r5, #0
	bl sub_800C93A
13
	ldr r0, _0800E930
	ldr r0, [r0]
	cmp r0, #0
	beq %14
	bl sub_800E178
14
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %15
	ldr r0, [r7]
	bl sub_800B708
15
	ldr r2, _0800E934
	ldrh r1, [r2]
	movs r0, #0
	movs r3, #1
	orrs r1, r3
	strh r1, [r2]
	ldr r1, _0800E938
	ldr r1, [r1]
	cmp r1, #0
	beq %16
	adds r1, #8
	ldr r2, [r1]
	adds r2, #1
	str r2, [r1]
16
	str r0, [r6, #0x3c]
17
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3


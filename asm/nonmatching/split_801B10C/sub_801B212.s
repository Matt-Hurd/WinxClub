	non_word_aligned_thumb_func_start sub_801B212
sub_801B212
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	sub sp, #8
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	beq %11
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	beq %11
	ldr r4, [r0, #0x24]
	cmp r4, #0
	beq %11
	ldr r0, [r4]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1f
	bne %11
	lsls r0, r0, #0x1f
	beq %11
	ldr r0, [r4, #0x18]
	ldr r6, _0801B474
	cmp r0, #0
	bne %8
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
8
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r5, [r5, #0x2c]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne %9
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
9
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	ldrh r1, [r3]
	movs r0, #0
	ldrsh r0, [r3, r0]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1d
	adds r0, r1, r0
	movs r1, #2
	ldrsh r1, [r3, r1]
	asrs r0, r0, #3
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1d
	adds r1, r2, r1
	asrs r1, r1, #3
	muls r0, r1
	ldr r1, [r4, #0x14]
	ldr r1, [r1]
	lsrs r1, r1, #0x15
	lsls r2, r1, #5
	ldr r1, _0801B478
	adds r4, r2, r1
	ldr r2, [r5, #0x14]
	ldr r2, [r2]
	lsrs r2, r2, #0x15
	lsls r2, r2, #5
	adds r5, r2, r1
	subs r0, #1
	blo %11
	ldr r1, _0801B47C
	mvns r2, r1
10
	ldm r5!, {r3}
	ands r3, r2
	str r3, [r4]
	adds r3, r4, #4
	adds r4, r5, #0
	ldr r5, [r5]
	adds r4, #4
	ands r5, r1
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r1
	stm r3!, {r5}
	b %12
11
	b %13
12
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r1
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r6}
	adds r5, r4, #0
	ands r6, r1
	stm r3!, {r6}
	adds r4, r3, #0
	subs r0, #1
	bhs %10
13
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3


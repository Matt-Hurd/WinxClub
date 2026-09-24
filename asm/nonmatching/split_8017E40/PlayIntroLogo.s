	non_word_aligned_thumb_func_start PlayIntroLogo
PlayIntroLogo
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #1]
	adds r5, r4, #4
	movs r6, #0
	cmp r0, #0
	sub sp, #0x10
	bne %7
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #3
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	ldrb r0, [r4]
	ldr r1, _0801806C
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl maybeLoadOrRenderBgImage
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
6
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
7
	cmp r0, #1
	bne %8
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq %6
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b %6
8
	cmp r0, #2
	bne %10
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #2]
	cmp r0, #0x3c
	bne %6
	ldrb r0, [r4]
	adds r0, #1
	cmp r0, #5
	bhs %9
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #2
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b %6
9
	strb r0, [r4]
	b %6
10
	cmp r0, #3
	bne %6
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq %6
	strb r6, [r4, #2]
	strb r6, [r4, #1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b %6


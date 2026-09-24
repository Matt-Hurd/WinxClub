	non_word_aligned_thumb_func_start sub_8011596
	push {r4, r5, r6, r7}
	ldr r5, _08011730
	adds r5, #0x34
	ldrb r2, [r5, #0xf]
	cmp r0, #0xe
	bls %9
	movs r0, #0xe
	b %11
9
	ldr r3, _08011730
	ldrb r1, [r5, #0xe]
	adds r3, #0x24
	cmp r1, r0
	bls %11
	ldrh r6, [r3, #0x12]
	adds r1, r2, r0
	cmp r6, r1
	bls %11
	ldr r7, _08011758
	movs r4, #1
10
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r7
	adds r1, #1
	cmp r6, r1
	strh r4, [r3, #4]
	bhi %10
11
	ldr r3, _08011730
	movs r1, #0xe
	subs r1, r1, r2
	adds r3, #0x24
	cmp r1, r0
	bhs %12
	adds r0, r1, #0
12
	strb r0, [r5, #0xe]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x12]
	bne %13
	pop {r4, r5, r6, r7}
	b sub_8011562
13
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_8011596


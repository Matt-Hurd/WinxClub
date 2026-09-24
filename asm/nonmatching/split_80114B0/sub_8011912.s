	non_word_aligned_thumb_func_start sub_8011912
sub_8011912
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	bl sub_8011562
	movs r0, #0xd
	ldr r2, _08011A28
	movs r1, #1
51
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	strh r1, [r3, #4]
	subs r0, #1
	bpl %51
	movs r0, #1
	ldr r1, _08011A50
	lsls r0, r0, #9
	strh r0, [r1, #8]
	ldr r0, _08011A14
	adds r0, #0x24
	strh r4, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_8011898
	adds r0, r6, #0
	bl sub_80117B0
	movs r0, #4
	bl sub_80115EC
	movs r0, #0
	bl sub_80115EC
	movs r0, #0xff
	ldr r1, _08011A14
	adds r0, #1
	adds r1, #0x1c
	str r0, [r1, #4]
	ldr r1, _08011A10
	strh r0, [r1, #0x16]
	pop {r4, r5, r6}
	pop {r3}
	bx r3


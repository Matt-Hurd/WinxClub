	non_word_aligned_thumb_func_start sub_8000DE6
sub_8000DE6
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x67
	adds r4, r1, #0
	lsls r0, r0, #6
	adds r5, r6, r0
	ldr r0, [r5, #0x28]
	movs r1, #1
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x28]
	ldr r0, [r4]
	bl sub_8000532
	ldr r0, [r4]
	movs r2, #0xff
	ldr r0, [r0, #0x14]
	lsls r2, r2, #0xd
	ldr r1, [r0]
	movs r7, #0
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4]
	ldr r2, [r0, #0x14]
	movs r0, #0x1f
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r2]
	ldr r1, [r4]
	ldr r2, _08001054
	ldr r1, [r1, #0x14]
	orrs r0, r2
	str r0, [r1]
	ldr r1, [r4]
	movs r2, #0xff
	ldr r1, [r1, #0x14]
	orrs r0, r2
	str r0, [r1]
	ldr r0, [r4]
	str r7, [r0, #0x14]
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r6, #0x1e]
	ldr r1, [r4]
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, [r5]
	subs r0, r0, r1
	bl sub_8040550
	strh r1, [r6, #0x1e]
	str r7, [r4]
	ldr r0, [r5, #0x28]
	lsrs r1, r0, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #1
	lsls r1, r1, #0x12
	bics r0, r1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3


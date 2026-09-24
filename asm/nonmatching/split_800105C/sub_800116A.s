	non_word_aligned_thumb_func_start sub_800116A
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0xcd
	lsls r1, r1, #5
	adds r6, r0, r1
	ldrh r1, [r6, #0x1e]
	ldrh r2, [r6, #0x1c]
	cmp r1, r2
	bls %5
	movs r0, #0
4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
5
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	movs r2, #1
	ldr r0, [r4, #0x28]
	lsls r2, r2, #0x12
	orrs r0, r2
	str r0, [r4, #0x28]
	lsls r3, r1, #1
	adds r1, r3, r1
	ldr r0, [r4]
	lsls r1, r1, #5
	adds r5, r0, r1
	ldrh r7, [r5]
	adds r0, r5, #0
	bl sub_80004F8
	ldrh r1, [r6, #0x1e]
	ldr r0, [r4, #0x10]
	movs r2, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x14]
	strh r7, [r6, #0x1e]
	ldr r0, [r4, #0x28]
	lsls r2, r2, #0x12
	lsrs r1, r0, #0x10
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	orrs r0, r1
	bics r0, r2
	str r0, [r4, #0x28]
	adds r0, r5, #0
	b %4
	thumb_func_end sub_800116A


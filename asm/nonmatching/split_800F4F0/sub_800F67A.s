	non_word_aligned_thumb_func_start sub_800F67A
sub_800F67A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #4
	bl sub_800FC76
	cmp r0, #0
	bne %14
13
	pop {r3, r4, r5}
	pop {r3}
	bx r3
14
	ldrh r2, [r0, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	strh r2, [r1]
	ldrh r2, [r0, #0xe]
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r1, #2]
	ldrh r2, [r0, #0xe]
	lsls r1, r2, #1
	lsls r3, r2, #1
	adds r2, r3, r2
	ldrh r3, [r0, #0xc]
	lsls r2, r2, #2
	adds r1, #3
	adds r2, r2, r3
	ldr r3, [r4, #0x70]
	subs r2, #0xc
	adds r3, #0x80
	str r2, [r3]
	adds r2, r5, #0
	ldr r3, [r4, #0x70]
	adds r2, #0x10
	adds r3, #0x80
	str r2, [r3, #4]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	ldr r3, [r4, #0x70]
	adds r1, r2, r1
	adds r3, #0x80
	str r1, [r3, #8]
	ldrh r1, [r0, #0xe]
	ldrh r0, [r0, #0xc]
	ldr r2, _0800F728
	ldr r3, _0800F724
	muls r2, r0
	muls r1, r3
	adds r1, r1, r2
	lsrs r0, r0, #1
	adds r0, r1, r0
	NEGS r1, r3
	adds r0, r0, r1
	ldr r1, [r4, #0x70]
	adds r1, #0x80
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x70]
	adds r0, #0x94
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
	adds r0, r4, #0
	bl sub_800F4F0
	movs r0, #1
	b %13


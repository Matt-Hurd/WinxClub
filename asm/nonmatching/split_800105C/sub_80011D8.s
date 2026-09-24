	thumb_func_start sub_80011D8
sub_80011D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0x40
	movs r2, #0
	strh r2, [r0, #0x12]
	ldrh r1, [r4, #6]
	adds r1, #1
	strh r1, [r4, #6]
	ldrh r1, [r4, #4]
	cmp r1, #0
	bne %6
	strh r2, [r0, #0x14]
	b %7
6
	strh r1, [r0, #0x14]
	ldrh r1, [r4, #4]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x12]
7
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #4]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_8001338
sub_8001338
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r3, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r2, [r0, #0x1a]
	cmp r1, r3
	bne %3
	strh r2, [r4, #8]
	b %5
3
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq %4
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x1a]
4
	ldrh r2, [r0, #0x1a]
	cmp r2, #0
	beq %5
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x1c]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x1c]
5
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	pop {r4, r5, r6}
	pop {r3}
	bx r3


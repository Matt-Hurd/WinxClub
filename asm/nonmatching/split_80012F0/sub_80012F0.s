	thumb_func_start sub_80012F0
sub_80012F0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r3, #0x67
	lsls r3, r3, #6
	adds r1, #0x40
	movs r2, #0
	strh r2, [r1, #0x1c]
	adds r4, r0, r3
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne %1
	strh r2, [r1, #0x1a]
	b %2
1
	strh r0, [r1, #0x1a]
	ldrh r1, [r4, #8]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x1c]
2
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3


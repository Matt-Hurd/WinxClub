	thumb_func_start sub_8001710
	adds r2, r0, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r1, r2, r1
	push {r4}
	ldr r3, [r1, #0x20]
	adds r2, #0x60
	ldrh r2, [r2, #0x1a]
	ldr r0, [r0, #0x34]
	lsls r4, r3, #4
	adds r0, r0, r4
	subs r3, r3, r2
	movs r2, #0
	mvns r2, r2
	str r2, [r0, #8]
	ldr r2, [r1, #0x24]
	lsls r3, r3, #1
	ldrh r4, [r2, r3]
	str r4, [r1, #0x20]
	movs r1, #0
	mvns r1, r1
	strh r1, [r2, r3]
	pop {r4}
	bx lr
	thumb_func_end sub_8001710


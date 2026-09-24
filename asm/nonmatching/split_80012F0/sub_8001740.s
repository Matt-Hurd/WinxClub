	thumb_func_start sub_8001740
	push {r4, r5}
	adds r4, r1, #0
	ldr r1, [r1]
	ldr r2, [r0, #0x34]
	subs r1, r1, r2
	movs r2, #0x67
	lsls r2, r2, #6
	adds r2, r0, r2
	adds r0, #0x60
	ldrh r0, [r0, #0x1a]
	asrs r1, r1, #4
	ldr r3, [r2, #0x20]
	ldr r5, [r2, #0x24]
	subs r0, r1, r0
	lsls r0, r0, #1
	strh r3, [r5, r0]
	str r1, [r2, #0x20]
	ldr r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r0, #0
	str r0, [r4]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_8001740


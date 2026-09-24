	thumb_func_start sub_8002548
	push {r4, r5}
	adds r5, r3, #0
	movs r3, #0x58
	muls r1, r3
	movs r3, #0x11
	lsls r3, r3, #7
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r3, [r0, #8]
	ldr r0, [r0, #0xc]
	ldr r4, [r3, #0x10]
	ldrb r0, [r0, r5]
	ldr r1, [r1, #0x10]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r1, #0x20]
	lsls r2, r2, #2
	str r0, [r1, r2]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_8002548

	thumb_func_start sub_800CD58
	push {r4}
	ldrh r2, [r1, #0x26]
	ldr r1, [r1, #0x14]
	movs r4, #3
	ldr r1, [r1]
	lsls r2, r2, #0x16
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	ldr r3, _0800CD94
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsrs r2, r2, #0x1e
	lsls r4, r4, #8
	bics r3, r4
	lsls r2, r2, #8
	orrs r2, r3
	strh r2, [r1]
	lsls r2, r4, #3
	movs r1, #1
	adds r0, r0, r2
	str r1, [r0, #0x18]
	pop {r4}
	bx lr
	thumb_func_end sub_800CD58

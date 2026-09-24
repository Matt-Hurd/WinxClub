	thumb_func_start sub_800CD28
	ldr r1, [r1, #0x14]
	ldr r2, _0800CD94
	ldr r1, [r1]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #8
	bics r2, r3
	subs r3, #0xff
	subs r3, #1
	adds r2, r2, r3
	strh r2, [r1]
	movs r2, #3
	lsls r2, r2, #0xb
	movs r1, #1
	adds r0, r0, r2
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_800CD28


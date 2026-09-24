	thumb_func_start sub_80134B8
	ldr r1, _080137E0
	adds r2, r0, #0
	str r1, [r0]
	adds r2, #0x20
	movs r3, #0xff
	strb r3, [r2, #0xd]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r2, #0xc]
	strb r3, [r2, #0xe]
	strh r1, [r0, #0x22]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x20]
	movs r2, #1
	str r2, [r0, #0x24]
	movs r2, #0x11
	strb r2, [r0, #0x1c]
	str r1, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	strh r1, [r0, #0xe]
	mvns r2, r1
	strh r2, [r0, #0x3a]
	strh r1, [r0, #0x3c]
	bx lr
	thumb_func_end sub_80134B8


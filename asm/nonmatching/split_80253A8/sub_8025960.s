	thumb_func_start sub_8025960
sub_8025960
	movs r3, #6
	strh r3, [r0, #0xe]
	movs r3, #7
	strh r3, [r0, #0xa]
	movs r3, #8
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #3
	strh r3, [r0, #0x1e]
	movs r3, #4
	strh r3, [r0, #0x1a]
	movs r3, #5
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BF4
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BF8
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b %15


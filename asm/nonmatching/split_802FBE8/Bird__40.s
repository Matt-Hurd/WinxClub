	thumb_func_start Bird__40
Bird__40
	adds r2, r1, #0
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xf
	adds r1, #0xa0
	cmp r2, #0x23
	beq %7
	cmp r2, #0x24
	beq %8
	cmp r2, #0x25
	bne %6
	movs r2, #0xff
	adds r2, #0x56
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	subs r2, #1
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
6
	bx lr
7
	movs r2, #0x1f
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	movs r2, #0x1e
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
	bx lr
8
	ldr r2, _0802FFF4
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x18]
	subs r2, #1
	strh r2, [r1, #0x14]
	str r3, [r0, #0x70]
	bx lr


	thumb_func_start Critter__40
	cmp r1, #0x26
	bne %5
	movs r1, #0xf1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #0xf0
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	movs r1, #1
	lsls r1, r1, #0xf
	str r1, [r0, #0x70]
5
	bx lr
	thumb_func_end Critter__40


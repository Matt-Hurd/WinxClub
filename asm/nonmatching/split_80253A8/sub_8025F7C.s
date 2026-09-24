	thumb_func_start sub_8025F7C
	ldr r2, _0802600C
	adds r3, r2, #1
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xa]
	adds r1, r2, #2
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	b %56
	thumb_func_end sub_8025F7C


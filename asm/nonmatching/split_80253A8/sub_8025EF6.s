	non_word_aligned_thumb_func_start sub_8025EF6
	movs r7, #0x85
	strh r7, [r0, #0xe]
	movs r3, #0x86
	strh r3, [r0, #0xa]
	movs r3, #0x87
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x86
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FFC
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08026000
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
	b %55
	thumb_func_end sub_8025EF6


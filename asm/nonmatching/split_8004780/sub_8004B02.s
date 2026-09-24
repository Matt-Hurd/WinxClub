	non_word_aligned_thumb_func_start sub_8004B02
sub_8004B02
	movs r3, #0
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	strh r3, [r0, #4]
	strh r2, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r2, [r1]
	adds r2, #2
	str r2, [r1, #4]
	ldr r1, [r0, #0x10]
	strb r3, [r1, #0xc]
	ldr r1, [r0, #0x10]
	strh r3, [r1, #0xe]
	ldr r1, [r0, #0x10]
	ldrh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, [r0, #0x14]
	movs r2, #1
	orrs r1, r2
	movs r2, #2
	bics r1, r2
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	bx lr


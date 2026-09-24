	non_word_aligned_thumb_func_start WallObjectScriptGroup__4C
WallObjectScriptGroup__4C
	push {r4}
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	str r2, [r0, #0x5c]
	ldrh r2, [r1, #4]
	cmp r2, #0
	bne %17
	ldrh r1, [r1, #6]
	cmp r1, #0
	bne %17
	movs r1, #0x7d
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bge %17
	ldr r1, _0803614C
	movs r2, #3
	ldr r1, [r1]
	lsls r2, r2, #9
	adds r1, #0x10
	adds r1, r1, r2
	adds r0, #0xa0
	ldrh r2, [r0, #0xe]
	ldrh r3, [r0, #0xa]
	ldrh r4, [r0, #0x10]
	ldrh r0, [r0, #0xc]
	ldr r1, [r1, #0x1c]
	strh r4, [r1, #0x26]
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x24]
	strh r3, [r1, #0x20]
17
	pop {r4}
	bx lr


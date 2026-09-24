	non_word_aligned_thumb_func_start maybeCall60IfActive
maybeCall60IfActive
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	bne %132
131
	b %118
132
	ldr r1, _0802AF78
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne %131
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl %131
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl __call_via_r1
	b %118


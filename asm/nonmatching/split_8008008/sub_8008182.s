	non_word_aligned_thumb_func_start sub_8008182
	ldr r2, _080081C8
	movs r0, #0
	strh r0, [r2, #0xa]
	ldr r0, _080081C4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq %13
	adds r1, r0, #0
	b %14
13
	movs r1, #0
14
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr
	thumb_func_end sub_8008182


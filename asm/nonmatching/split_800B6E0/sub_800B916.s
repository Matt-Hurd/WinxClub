	non_word_aligned_thumb_func_start sub_800B916
	push {r4, r5, r6, r7}
	movs r3, #1
	lsls r3, r3, #9
	movs r0, #7
	lsls r0, r0, #0x18
	adds r4, r3, #0
	adds r4, #0xff
	adds r1, r0, #0
	movs r2, #0
	adds r4, #1
	add r5, pc, #0x290
15
	ldm r5!, {r6, r7}
	stm r1!, {r6, r7}
	ldr r6, [r0]
	subs r1, #8
	bics r6, r4
	adds r6, r6, r3
	str r6, [r0]
	adds r0, #8
	adds r1, #8
	subs r5, #8
	adds r2, #1
	cmp r2, #0x80
	blt %15
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_800B916


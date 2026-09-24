	non_word_aligned_thumb_func_start sub_8031622
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	adds r4, r0, #0
	ldr r1, [r0, #4]
	movs r2, #0
	cmp r3, #0
	ldr r0, [r0, #0xc]
	bls %6
5
	lsls r5, r2, #4
	adds r5, r0, r5
	ldr r5, [r5, #4]
	adds r2, #1
	adds r1, r5, r1
	cmp r2, r3
	blo %5
6
	lsls r5, r3, #4
	adds r2, r0, r5
	ldr r2, [r2, #4]
	ldr r0, [r0, r5]
	bl __16__rt_memcpy
	ldr r0, [r4, #0xc]
	adds r0, r0, r5
	adds r0, #8
	ldm r0!, {r0, r1}
	bl __16__rt_memclr
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8031622

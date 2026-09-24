	non_word_aligned_thumb_func_start sub_800F2E2
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r1, r0
	bhs %10
	subs r0, r0, r1
9
	pop {r4}
	pop {r3}
	bx r3
10
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	adds r0, r1, r0
	b %9
	thumb_func_end sub_800F2E2


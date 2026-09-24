	non_word_aligned_thumb_func_start sub_800FB72
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FD38
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FD48
	adds r0, r4, #0
	bl sub_800FB18
	ldr r0, _0800FD30
	ldr r1, _0800FD34
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_800FB72


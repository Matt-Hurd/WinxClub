	non_word_aligned_thumb_func_start sub_800FAD6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800FB14
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_800FAD6


	non_word_aligned_thumb_func_start sub_803ABA6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803AE48
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_803ABA6


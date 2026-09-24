	non_word_aligned_thumb_func_start sub_800F292
sub_800F292
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800F4E8
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq %7
	adds r0, r4, #0
	bl sub_803DA18
7
	pop {r3, r4, r5}
	pop {r3}
	bx r3


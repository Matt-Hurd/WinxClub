	non_word_aligned_thumb_func_start sub_802E47A
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4
	beq %3
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
3
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %4
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
4
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_802E47A


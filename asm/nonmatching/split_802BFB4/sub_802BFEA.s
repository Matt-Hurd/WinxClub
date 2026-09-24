	non_word_aligned_thumb_func_start sub_802BFEA
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802C3BC
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %3
	ldr r0, _0802C3C0
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
3
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %4
	adds r0, r4, #0
	bl sub_803DA18
4
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_802BFEA


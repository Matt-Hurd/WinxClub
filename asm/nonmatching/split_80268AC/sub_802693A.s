	non_word_aligned_thumb_func_start sub_802693A
	push {r3, r4, r5, lr}
	movs r2, #0x1f
	mvns r2, r2
	adds r5, r1, #0
	adds r1, r0, r2
	adds r4, r0, #0
	movs r0, #0x97
	lsls r0, r0, #5
	adds r0, r4, r0
	ldr r3, _08026CE8
	bl __vecmap1ci__FPvT1iPFPvi_v
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_802693A


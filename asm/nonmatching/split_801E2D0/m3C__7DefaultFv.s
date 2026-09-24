	non_word_aligned_thumb_func_start m3C__7DefaultFv
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x58
	adds r5, r1, #0
	ldr r0, [r0, #0x2c]
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %221
	adds r1, r5, #0
	bl sub_803FF24
221
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end m3C__7DefaultFv


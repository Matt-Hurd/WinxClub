	non_word_aligned_thumb_func_start sub_8001B4A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08001E88
	adds r5, r1, #0
	movs r1, #1
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800D912
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x14
	bl sub_8002614
	ldr r0, _08001E80
	ldr r1, _08001E84
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8001B4A


	non_word_aligned_thumb_func_start sub_8032AC2
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08032E8C
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	movs r6, #0
	cmp r0, #0
	ldr r5, _08032E90
	beq %3
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x3c]
3
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq %4
	adds r1, r4, #0
	adds r1, #0x40
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x40]
4
	ldr r0, [r4, #0x4c]
	bl sub_803357C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r7, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8032AC2


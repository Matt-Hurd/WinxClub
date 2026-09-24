	non_word_aligned_thumb_func_start sub_803310E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	movs r6, #0
	cmp r0, #0
	ldr r5, _080332F8
	beq %42
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x3c]
42
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq %43
	adds r1, r4, #0
	adds r1, #0x40
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x40]
43
	ldr r4, _08033300
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %44
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
44
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_803310E


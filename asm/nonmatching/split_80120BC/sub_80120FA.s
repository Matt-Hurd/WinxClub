	non_word_aligned_thumb_func_start sub_80120FA
	push {r3, r4, r5, lr}
	ldr r5, _0801232C
	adds r4, r0, #0
	movs r0, #0x1e
	subs r5, #0x10
	strb r4, [r0, r5]
	ldr r0, _0801232C
	subs r0, #0x18
	str r1, [r0]
	adds r0, r4, #0
	bl sub_8011596
	cmp r4, #0
	beq %4
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x1f
	bmi %4
	bl sub_801197C
4
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_80120FA


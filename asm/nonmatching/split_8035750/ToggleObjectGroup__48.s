	non_word_aligned_thumb_func_start ToggleObjectGroup__48
	push {r4, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x1f
	bne %9
	ldr r1, [r2, #4]
	adds r2, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, #0x70
	strb r1, [r2, #0xd]
	cmp r1, #0
	bge %7
	NEGS r1, r1
7
	adds r0, #0x80
	movs r4, #0xff
	lsls r4, r4, #8
	ldr r3, [r0, #0x28]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	bics r3, r4
	orrs r1, r3
	str r1, [r0, #0x28]
	movs r0, #0
	strb r0, [r2, #0xc]
8
	pop {r4}
	pop {r3}
	bx r3
9
	bl Dying__7DefaultFv
	b %8
	thumb_func_end ToggleObjectGroup__48


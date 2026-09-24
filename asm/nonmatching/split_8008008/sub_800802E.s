	non_word_aligned_thumb_func_start sub_800802E
	push {r3, lr}
	cmp r0, #0
	bne %3
	movs r0, #0x20
	bl __nw__FUi
	cmp r0, #0
	beq %4
3
	ldr r1, _080081C0
	ldr r2, _080081C4
	str r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r2]
4
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_800802E


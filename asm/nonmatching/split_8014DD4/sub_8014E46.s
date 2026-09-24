	non_word_aligned_thumb_func_start sub_8014E46
sub_8014E46
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	ldrh r2, [r0, #0x1e]
	ldrh r1, [r0, #0x20]
	bl __call_via_r3
	ldr r1, [r4]
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	adds r0, r4, #0
	movs r1, #0x2e
	ldrb r1, [r1, r4]
	bl __call_via_r2
	movs r1, #0
	adds r0, r4, #0
	bl sub_80139AC
	pop {r4}
	pop {r3}
	bx r3


	non_word_aligned_thumb_func_start sub_8014E76
sub_8014E76
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x60
	adds r6, r0, #0
	ldrb r0, [r5, #0xe]
	adds r7, r1, #0
	ldrb r1, [r5, #0xf]
	movs r4, #0
	muls r0, r1
	cmp r0, #0
	ble %6
5
	ldr r0, [r6, #0x54]
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl sub_80401E4
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	adds r4, #1
	muls r0, r1
	cmp r0, r4
	bgt %5
6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

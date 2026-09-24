	non_word_aligned_thumb_func_start sub_802B0CA
sub_802B0CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801F65C
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _0802B284
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x1c]
	cmp r1, #9
	bne %174
	ldr r1, [r0, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bmi %174
	ldr r1, _0802B268
	movs r2, #0x29
	ldr r1, [r1]
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r2, [r1, #2]
	adds r2, #0xff
	strb r2, [r1, #2]
174
	movs r1, #0xf
	str r1, [r0, #0x1c]
	pop {r4}
	pop {r3}
	bx r3


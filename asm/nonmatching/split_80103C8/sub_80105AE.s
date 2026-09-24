	non_word_aligned_thumb_func_start sub_80105AE
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080106A0
	str r0, [r4]
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq %15
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
15
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %16
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r4, #0x78]
16
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq %17
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
17
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xf0
	bl gUnknown_03000058
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x94
	bl gUnknown_03000058
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_80105AE


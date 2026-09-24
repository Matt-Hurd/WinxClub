	non_word_aligned_thumb_func_start sub_800FF5E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080101F8
	adds r5, r1, #0
	str r0, [r4]
	ldr r2, [r4, #0x1c]
	ldr r0, _080101FC
	cmp r2, #0
	beq %7
	ldr r1, _08010208
	cmp r2, r1
	beq %7
	movs r3, #1
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B12C
	b %8
7
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B154
8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %9
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
9
	ldr r0, _080101F4
	movs r1, #0
	str r0, [r4]
	ldr r0, _080101E8
	str r1, [r4, #0x10]
	str r1, [r0]
	cmp r5, #0
	beq %10
	adds r0, r4, #0
	bl sub_803DA18
10
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_800FF5E


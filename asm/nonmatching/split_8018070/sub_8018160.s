	thumb_func_start sub_8018160
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %7
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
7
	str r5, [r4, #0x10]
	cmp r6, #0
	beq %8
	adds r0, r4, #0
	bl sub_803DA18
8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_8018160


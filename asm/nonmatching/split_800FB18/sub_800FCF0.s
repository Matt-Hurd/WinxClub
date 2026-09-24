	thumb_func_start sub_800FCF0
sub_800FCF0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, r3, #0
	bl sub_800FB18
	cmp r5, #0
	beq %20
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	adds r2, r7, #0
	adds r1, r5, #0
	bl __call_via_r3
	cmp r6, #0
	beq %20
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
20
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3


	thumb_func_start sub_802B390
sub_802B390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, #0
	beq %10
	adds r0, r4, #0
	bl sub_802B2F8
10
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #0x77
	mvns r2, r2
	adds r5, r1, #0
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r3, _0802B648
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #4
	bl sub_8014436
	cmp r6, #0
	beq %11
	adds r0, r4, #0
	bl sub_803DA18
11
	pop {r4, r5, r6}
	pop {r3}
	bx r3


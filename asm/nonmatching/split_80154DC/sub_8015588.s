	thumb_func_start sub_8015588
sub_8015588
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080158AC
	adds r5, r1, #0
	adds r1, r4, #0
	str r0, [r4]
	movs r0, #0x5d
	adds r1, #0xff
	movs r2, #0x77
	mvns r2, r2
	adds r1, #9
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r3, _080158B8
	bl __vecmap1ci__FPvT1iPFPvi_v
	adds r0, r4, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #5
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3


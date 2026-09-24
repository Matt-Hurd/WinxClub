	thumb_func_start sub_8013480
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080134B4
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	bl __da__FPv
	ldr r0, _080134AC
	ldr r1, _080134B0
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8013480

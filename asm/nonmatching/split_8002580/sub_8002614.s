	thumb_func_start sub_8002614
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08002818
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80025D6
	ldr r0, _08002810
	ldr r1, _08002814
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8002614


	thumb_func_start sub_8013318
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x10
	adds r5, r1, #0
	ldm r0!, {r0, r1}
	cmp r1, r0
	beq %19
	bl __da__FPv
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
19
	cmp r5, #0
	beq %20
	adds r0, r4, #0
	bl sub_803DA18
20
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8013318


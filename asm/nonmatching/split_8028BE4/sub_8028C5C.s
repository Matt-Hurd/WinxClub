	thumb_func_start sub_8028C5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq %7
	adds r0, r4, #4
	bl sub_801230C
	movs r0, #0
	strb r0, [r4]
7
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_8028C5C

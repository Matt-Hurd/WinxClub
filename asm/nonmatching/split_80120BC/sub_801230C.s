	thumb_func_start sub_801230C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq %23
	ldr r1, [r0, #4]
	movs r2, #2
	bics r1, r2
	str r1, [r0, #4]
	str r1, [r4]
23
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_801230C

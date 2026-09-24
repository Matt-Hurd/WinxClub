	thumb_func_start sub_802BA20
	push {r3, lr}
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq %1
	cmp r1, #1
	beq %2
	cmp r1, #2
	beq %3
	cmp r1, #3
	bne %1
	bl sub_802B8B0
1
	add sp, #4
	pop {r3}
	bx r3
2
	bl sub_802B6F4
	b %1
3
	bl sub_802B670
	b %1
	ALIGN
	thumb_func_end sub_802BA20


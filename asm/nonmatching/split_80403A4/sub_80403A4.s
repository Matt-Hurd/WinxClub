	thumb_func_start sub_80403A4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, #4
	bl sub_8012334
	cmp r5, #0
	beq %1
	adds r0, r4, #0
	bl sub_803DA18
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_80403A4


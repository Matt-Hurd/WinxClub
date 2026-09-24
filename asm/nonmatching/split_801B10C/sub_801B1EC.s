	thumb_func_start sub_801B1EC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_801B170
	adds r0, r4, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0xb5
	bl sub_8015588
	cmp r5, #0
	beq %7
	adds r0, r4, #0
	bl sub_803DA18
7
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_801B1EC


	thumb_func_start sub_8024EBC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080250D0
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %4
	ldr r0, _080250D8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
4
	ldr r0, _080250DC
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8024EBC


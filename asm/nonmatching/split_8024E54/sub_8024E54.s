	thumb_func_start sub_8024E54
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x44
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _080250D0
	ldr r1, _080250D4
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ands r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b %1
	thumb_func_end sub_8024E54


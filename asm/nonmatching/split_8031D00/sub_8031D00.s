	thumb_func_start sub_8031D00
sub_8031D00
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x54
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
	ldr r0, _080320FC
	movs r1, #0x1e
	str r0, [r4]
	ldr r0, [r4, #0x4c]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	b %1


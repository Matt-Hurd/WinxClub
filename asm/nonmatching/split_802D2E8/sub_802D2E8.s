	thumb_func_start sub_802D2E8
sub_802D2E8
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x4c
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
	ldr r0, _0802D6C0
	movs r1, #0x1e
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	str r0, [r4, #0x48]
	adds r0, r4, #0
	b %1


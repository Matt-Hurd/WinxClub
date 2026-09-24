	thumb_func_start sub_802DFF4
sub_802DFF4
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x40
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
	ldr r0, _0802E370
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0, #0xc]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	b %1


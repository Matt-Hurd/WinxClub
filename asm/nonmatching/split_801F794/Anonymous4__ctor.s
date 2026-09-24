	thumb_func_start Anonymous4__ctor
Anonymous4__ctor
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, _0801FB98
	adds r5, #0xff
	adds r5, #1
	str r0, [r4]
	ldr r0, [r5, #0x24]
	adds r6, r1, #0
	cmp r0, #0
	beq %4
	ldr r0, _0801FBA8
	adds r1, r5, #0
	adds r1, #0x24
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r5, #0x24]
4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xe0
	bl sub_8024EBC
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xa0
	bl sub_802E02A
	movs r1, #0
	adds r0, r4, #0
	bl m00__7DefaultFv
	cmp r6, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3


	thumb_func_start sub_800F264
	push {r4, lr}
	adds r4, r0, #0
	bne %6
	movs r0, #0x78
	bl __nw__FUi
	adds r4, r0, #0
	bne %6
	adds r0, r4, #0
5
	pop {r4}
	pop {r3}
	bx r3
6
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800F4E8
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	b %5
	thumb_func_end sub_800F264


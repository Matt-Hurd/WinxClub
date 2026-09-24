	thumb_func_start sub_800FAB0
	push {r4, lr}
	adds r4, r0, #0
	bne %5
	movs r0, #0x6c
	bl __nw__FUi
	adds r4, r0, #0
	bne %5
	adds r0, r4, #0
4
	pop {r4}
	pop {r3}
	bx r3
5
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800FB14
	str r0, [r4]
	adds r0, r4, #0
	b %4
	thumb_func_end sub_800FAB0


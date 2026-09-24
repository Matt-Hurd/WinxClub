	thumb_func_start sub_8026908
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne %4
	ldr r0, _08026CE0
	bl __nw__FUi
	adds r4, r0, #0
	bne %4
	adds r0, r4, #0
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3
4
	movs r0, #0x13
	lsls r0, r0, #8
	adds r1, r4, r0
	adds r5, r1, #0
	movs r2, #0x20
	adds r0, r4, #0
	ldr r3, _08026CE4
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #0
	strb r0, [r5, #5]
	adds r0, r4, #0
	b %3
	thumb_func_end sub_8026908


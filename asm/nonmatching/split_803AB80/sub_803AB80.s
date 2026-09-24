	thumb_func_start sub_803AB80
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
	ldr r0, _0803AE48
	str r0, [r4]
	adds r0, r4, #0
	b %1
	thumb_func_end sub_803AB80


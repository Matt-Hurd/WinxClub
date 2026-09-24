	thumb_func_start sub_802C884
sub_802C884
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x48
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
	ldr r0, _0802CC68
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b %1


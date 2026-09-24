	thumb_func_start sub_8038528
	push {r4, lr}
	adds r4, r0, #0
	bl FadeToBlack
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _08038850
	ldr r0, [r0]
	bl sub_8000DE6
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_8038528


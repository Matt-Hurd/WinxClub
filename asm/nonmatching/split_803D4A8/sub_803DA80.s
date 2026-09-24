	thumb_func_start sub_803DA80
	push {r4, lr}
	sub sp, #8
	str r3, [sp]
	adds r3, r2, #0
	adds r4, r0, #0
	adds r0, r1, #0
	movs r2, #1
	adds r1, r4, #0
	bl sub_80051D6
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_803DA80


	thumb_func_start sub_80133F0
sub_80133F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08013438
	ldr r0, [r0]
	bl sub_8004FFC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_80133AE
	pop {r4}
	pop {r3}
	bx r3


	thumb_func_start sub_8014B34
sub_8014B34
	push {r4, lr}
	lsls r3, r1, #0x1d
	beq %41
	lsls r3, r1, #0x1d
	lsrs r3, r3, #0x1d
	movs r4, #8
	subs r3, r4, r3
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
41
	ldr r3, [r0]
	ldr r4, [r3, #0x10]
	adds r3, r4, r3
	bl __call_via_r3
	pop {r4}
	pop {r3}
	bx r3


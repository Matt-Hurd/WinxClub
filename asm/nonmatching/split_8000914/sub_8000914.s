	thumb_func_start sub_8000914
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r0, r0, #0x15
	bmi %1
	ldr r0, _08000B8C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80013D8
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r1, r1, #1
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
1
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_8000914


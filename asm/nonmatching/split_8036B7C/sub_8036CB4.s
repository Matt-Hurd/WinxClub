	thumb_func_start sub_8036CB4
	ldr r1, _08036CE0
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl %12
	ldr r1, _08036CDC
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
12
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8036CB4

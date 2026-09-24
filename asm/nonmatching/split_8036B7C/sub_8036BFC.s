	thumb_func_start sub_8036BFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08036CDC
	movs r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1, r4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_8036BFC


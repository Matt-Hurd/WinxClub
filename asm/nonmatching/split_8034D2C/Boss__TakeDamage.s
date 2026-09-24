	thumb_func_start Boss__TakeDamage
Boss__TakeDamage
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _08034D8C
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08034D90
	ldr r1, [r1]
	ldr r0, [r0, #0x34]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	pop {r4}
	pop {r3}
	bx r3


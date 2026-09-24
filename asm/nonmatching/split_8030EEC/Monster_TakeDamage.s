	thumb_func_start Monster_TakeDamage
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _08031084
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08031080
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	bl TakeDamage__7DefaultFv
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end Monster_TakeDamage


	thumb_func_start sub_80293D0
sub_80293D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, #0x80
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	beq %4
	adds r0, r5, #0
	bl sub_802936C
4
	ldr r1, _080296C8
	ldr r0, [r4, #0x2c]
	movs r2, #7
	ands r0, r1
	lsls r1, r6, #0x17
	lsrs r1, r1, #5
	orrs r1, r0
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	lsls r2, r2, #0x10
	bics r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r5]
	adds r0, r5, #0
	ldr r3, [r2, #0x40]
	lsls r1, r1, #6
	adds r2, r3, r2
	lsrs r1, r1, #0x18
	bl __call_via_r2
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	adds r5, #0xb0
	strb r0, [r5, #6]
	pop {r4, r5, r6}
	pop {r3}
	bx r3


	thumb_func_start sub_803FF24
sub_803FF24
	push {r4, r5}
	ldr r3, [r1]
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	subs r4, r3, r4
	ldr r3, [r1, #4]
	adds r2, r0, #0
	subs r3, r3, r5
	ldr r5, [r0, #0x34]
	adds r2, #0x34
	adds r5, r5, r4
	str r5, [r0, #0x34]
	ldr r5, [r0, #0x38]
	adds r5, r5, r3
	str r5, [r2, #4]
	ldr r5, [r2, #8]
	adds r4, r5, r4
	str r4, [r2, #8]
	ldr r4, [r2, #0xc]
	adds r3, r4, r3
	str r3, [r2, #0xc]
	ldr r3, [r1]
	ldr r1, [r1, #4]
	movs r2, #0xff
	str r1, [r0, #0x30]
	str r3, [r0, #0x2c]
	ldr r1, [r0]
	adds r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r4, r5}
	bx lr


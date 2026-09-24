	thumb_func_start sub_801CAC0
	movs r2, #5
	lsls r2, r2, #8
	adds r2, r0, r2
	push {r4, r5, r6}
	ldr r3, [r2, #0x1c]
	movs r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq %79
	movs r3, #1
	lsls r3, r3, #0xb
	movs r4, #0
77
	lsls r5, r1, #2
	adds r5, r5, r0
	ldr r5, [r5, #0x20]
	ldrh r6, [r5, #4]
	cmp r6, #0xa
	bne %78
	adds r5, #0x80
	ldr r6, [r5, #0x2c]
	lsls r6, r6, #5
	lsrs r6, r6, #0x17
	cmp r6, #0x2c
	bne %78
	ldr r6, [r5, #0x14]
	bics r6, r3
	orrs r6, r4
	str r6, [r5, #0x14]
78
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi %77
79
	pop {r4, r5, r6}
	bx lr
	thumb_func_end sub_801CAC0

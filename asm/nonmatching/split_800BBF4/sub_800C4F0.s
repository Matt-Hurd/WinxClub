	thumb_func_start sub_800C4F0
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r3, _0800C8A4
	adds r2, r2, r0
	adds r2, r2, r3
	push {r4, r5, r6, r7}
	ldrb r3, [r2, #8]
	adds r3, #0xff
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r2, #8]
	bne %74
	movs r3, #0xcd
	lsls r3, r3, #5
	adds r4, r0, r3
	ldrb r3, [r4, #0xb]
	cmp r3, r1
	bne %71
	ldrb r3, [r2, #9]
	strb r3, [r4, #0xb]
71
	ldrb r3, [r2, #9]
	movs r6, #0xc1
	lsls r6, r6, #5
	cmp r3, #0x20
	bhs %72
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #0xa]
	adds r3, r3, r0
	adds r3, r3, r6
	strb r5, [r3, #0xe]
72
	ldrb r3, [r2, #0xa]
	cmp r3, #0x20
	bhs %73
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #9]
	adds r0, r3, r0
	adds r0, r0, r6
	strb r5, [r0, #0xd]
73
	movs r0, #0
	strb r0, [r2, #0xb]
	ldrb r0, [r4, #0xa]
	strb r0, [r2, #9]
	strb r1, [r4, #0xa]
	ldrb r0, [r4, #0xd]
	adds r0, #0xff
	strb r0, [r4, #0xd]
74
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_800C4F0


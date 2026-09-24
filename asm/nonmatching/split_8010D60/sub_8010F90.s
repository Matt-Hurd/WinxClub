	thumb_func_start sub_8010F90
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r5, r0, r1
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq %25
	movs r2, #0x6d
	lsls r2, r2, #4
	adds r4, r0, r2
	ldrb r2, [r4, #1]
	cmp r2, #0
	beq %25
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq %25
	ldrb r2, [r4]
	movs r7, #0
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r0, r2, r0
	movs r2, #0x19
	lsls r2, r2, #6
	adds r6, r0, r2
	str r0, [sp]
	ldr r0, _08011038
	str r1, [r6, #0xc]
	ldr r0, [r0]
	adds r3, r7, #0
	movs r2, #8
	ldr r1, [r5, #0x14]
	bl sub_800529A
	movs r2, #3
	ldr r1, [sp]
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r0, [r1, #0x54]
	str r2, [r1, #0x50]
	ldrb r0, [r4, #1]
	adds r0, #0xff
	strb r0, [r4, #1]
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4]
	cmp r0, #0xb
	blo %21
	strb r7, [r4]
21
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	bne %22
	movs r0, #0xff
	str r7, [r5, #0x14]
	strb r0, [r4]
	b %23
22
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0xc]
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x11
	lsrs r1, r1, #0xd
	lsls r1, r1, #2
	adds r0, r0, r2
	adds r0, r0, r1
	adds r0, #8
	str r0, [r5, #0x14]
23
	movs r0, #1
24
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
25
	movs r0, #0
	b %24
	thumb_func_end sub_8010F90

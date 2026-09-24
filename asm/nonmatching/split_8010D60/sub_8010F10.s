	thumb_func_start sub_8010F10
sub_8010F10
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r5, r6, r0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq %20
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r4, r6, r0
	ldrb r1, [r4, #0xf]
	adds r0, r6, #0
	bl sub_8010ED2
	cmp r0, #0
	beq %20
	ldrb r2, [r4, #0xd]
	movs r1, #1
	ldr r0, [r5, #0x20]
	lsls r1, r2
	ands r0, r1
	movs r7, #0
	cmp r0, #0
	beq %14
	adds r0, r6, #0
	bl sub_8010D60
	b %15
14
	strb r7, [r4, #0xc]
15
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne %18
	ldrb r0, [r4, #0xd]
	movs r2, #1
	adds r3, r2, #0
	ldr r1, [r5, #0x20]
	lsls r3, r0
	bics r1, r3
	str r1, [r5, #0x20]
	ldrb r1, [r4, #0xf]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r4, #0xf]
	cmp r1, #0xb
	blo %16
	strb r7, [r4, #0xf]
16
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0xd]
	cmp r0, #0xb
	blo %17
	strb r7, [r4, #0xd]
17
	strb r2, [r4, #0xc]
	str r7, [r5, #0x28]
	str r7, [r5, #0x2c]
18
	movs r0, #1
19
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	movs r0, #0
	b %19


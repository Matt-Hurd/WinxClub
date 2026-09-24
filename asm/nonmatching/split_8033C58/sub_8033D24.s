	thumb_func_start sub_8033D24
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803405C
	movs r6, #3
	ldr r1, [r0]
	movs r0, #5
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r0, [r5, #0x1c]
	lsls r6, r6, #8
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x19
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0, #0x20]
	str r3, [r4, #0x48]
	ldr r0, [r1, #0x20]
	adds r3, #0xc0
	str r0, [r4, #0x44]
	ldr r5, [r5, #0x1c]
	lsls r5, r5, #5
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r1, r5, r1
	ldr r1, [r1, #0x20]
	adds r5, r4, #0
	str r1, [r4, #0x40]
	ldr r1, [r3, #0x3c]
	adds r5, #0x40
	ldrh r3, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	bics r3, r6
	lsls r1, r1, #8
	orrs r1, r3
	ldr r3, [r4, #0x34]
	movs r6, #0xf
	lsls r6, r6, #0x16
	bics r3, r6
	lsls r6, r2, #0x1a
	lsrs r6, r6, #0x1c
	lsls r6, r6, #0x16
	orrs r3, r6
	str r3, [r4, #0x34]
	movs r3, #0xc0
	bics r1, r3
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x18
	orrs r1, r2
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x1e
	lsls r2, r2, #1
	adds r2, #3
	lsls r2, r2, #0x1c
	movs r3, #0x3c
	bics r1, r3
	lsrs r2, r2, #0x1a
	orrs r1, r2
	strh r1, [r5, #0xc]
	ldr r0, [r0, #0x30]
	adds r6, r4, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, #0x1c
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x44]
	movs r2, #0xff
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0xb
	ldrb r0, [r0, #5]
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	movs r0, #0
	strh r0, [r5, #0x12]
	ldr r0, _08034054
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	lsls r7, r2, #7
	bics r1, r7
	str r1, [r0]
	ldr r0, _08034054
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldrh r0, [r5, #0xc]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bne %7
	movs r2, #0
	movs r1, #0x31
	ldr r0, [r4, #4]
	bl sub_80007A0
	movs r2, #0
	movs r1, #0x13
	lsls r1, r1, #5
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	b %8
7
	movs r3, #0x16
	ldr r7, _08034060
	muls r1, r3
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	adds r1, r1, r7
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r7
	lsls r0, r0, #1
	adds r0, r1, r0
	ldrh r1, [r0, #2]
	ldr r0, [r4, #0x3c]
	movs r2, #0
	bl sub_80007A0
8
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	adds r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1c
	cmp r1, #1
	ldr r0, _08034058
	bne %10
	ldr r1, [r0]
	movs r0, #0x45
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
9
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
10
	ldr r0, [r0]
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	b %9
	thumb_func_end sub_8033D24


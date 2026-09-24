	thumb_func_start sub_80007A0
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r6, _08000900
	adds r4, r0, #0
	ldr r0, [r6]
	lsls r7, r1, #3
	ldr r2, [r0, #0x28]
	ldr r1, [r4]
	adds r5, r2, r7
	lsls r1, r1, #0x13
	bpl %6
	adds r1, r4, #0
	bl sub_800C1CA
6
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %8
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq %8
	ldr r1, [r6]
	ldr r0, [r0, #4]
	ldr r2, [r1, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r2, r0
	ldr r2, [r4, #0x48]
	subs r0, r2, r0
	ldr r2, [r5]
	asrs r0, r0, #2
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	str r5, [r4, #0x44]
	bhi %7
	ldr r0, [r1, #0x2c]
	ldr r1, [r5, #4]
	ldr r3, _08000908
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r5]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	ldr r1, [r5]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1a
	strb r1, [r4, #3]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	b %9
7
	ldr r2, [r5, #4]
	ldr r1, [r1, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r1, r1, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [r4, #0x48]
	ldr r0, [r5]
	ldr r3, _08000908
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	b %9
8
	ldr r0, [r6]
	ldr r3, _08000908
	ldr r1, [r0, #0x28]
	adds r1, r1, r7
	str r1, [r4, #0x44]
	ldr r2, [r1, #4]
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r0, r0, r2
	str r0, [r4, #0x48]
	ldr r0, [r1]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	ldr r1, [r1]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1a
	strb r1, [r4, #3]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
9
	ldr r0, [r6]
	ldr r2, [r4, #0x44]
	ldr r1, [r0, #0x24]
	ldr r2, [r2, #4]
	lsrs r2, r2, #0x10
	lsls r2, r2, #3
	adds r5, r1, r2
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	adds r2, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	movs r3, #0
	adds r0, r4, #0
	bl sub_803FA3C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80007A0


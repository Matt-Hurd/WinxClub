	thumb_func_start sub_8011040
sub_8011040
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #8
	str r0, [sp, #4]
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r5, r4, r0
	adds r7, r1, #0
	movs r6, #0
	cmp r1, #0
	ble %2
	ldr r0, [r5, #0x18]
	cmp r0, r7
	bls %1
	str r7, [r5, #0x18]
1
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	str r0, [sp, #4]
2
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble %4
	movs r6, #0x4b
	ldr r0, [sp, #0x10]
	lsls r6, r6, #6
	muls r6, r0
	ldr r0, _08011380
	cmp r6, r0
	bls %3
	adds r6, r0, #0
3
	str r6, [r5, #0x3c]
4
	ldr r0, _08011384
	ldr r0, [r0]
	cmp r0, #0
	bne %5
	adds r0, r4, #0
	bl sub_8010F90
	cmp r0, #0
	bne %4
5
	ldr r0, _08011384
	ldr r0, [r0]
	cmp r0, #0
	bne %6
	adds r0, r4, #0
	bl sub_8010F10
	cmp r0, #0
	bne %5
6
	ldr r0, _08011384
	ldr r0, [r0]
	cmp r0, #0
	bne %7
	adds r0, r4, #0
	bl sub_8010B8A
	cmp r0, #0
	bne %6
7
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble %8
	ldr r0, _08011380
	subs r0, r0, r6
	str r0, [r5, #0x3c]
8
	cmp r7, #0
	ble %9
	ldr r0, [sp, #4]
	str r0, [r5, #0x18]
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	beq %10
	subs r0, #1
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r1, r0, r4
	movs r0, #0x19
	lsls r0, r0, #6
	adds r0, r1, r0
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x14]
	lsls r2, r0, #0x13
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r1, r2
	adds r0, r1, r0
	adds r0, #8
	str r0, [r5, #0x14]
9
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
10
	movs r0, #0
	str r0, [r5, #0x14]
	b %9


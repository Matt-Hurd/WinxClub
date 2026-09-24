	thumb_func_start sub_8011394
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08011494
	ldr r0, [r0]
	bl sub_800B09A
	ldr r1, _08011498
	adds r5, r0, #0
	adds r0, r0, r1
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r1, r6, r1
	ldr r2, [r1, #0x3c]
	movs r3, #0xee
	muls r2, r3
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0xf
	adds r2, r3, r2
	asrs r2, r2, #0x11
	movs r3, #0xee
	subs r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r3, #5
	ldr r7, _0801149C
	movs r4, #1
1
	strh r7, [r2]
	strh r4, [r2, #2]
	subs r2, #0xff
	subs r2, #0xe1
	subs r3, #1
	cmp r3, #0
	bne %1
	ldr r2, [r6, #0x58]
	movs r3, #0xee
	muls r2, r3
	lsrs r2, r2, #0x11
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r0, #5
	movs r3, #0x1f
2
	strh r3, [r2]
	subs r2, #0xff
	subs r2, #0xe1
	subs r0, #1
	cmp r0, #0
	bne %2
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r2, r6, r0
	ldrb r0, [r2, #0xd]
	ldrb r2, [r2, #0xe]
	cmp r0, r2
	bls %3
	subs r6, r0, r2
	b %4
3
	adds r0, #0xb
	subs r6, r0, r2
4
	ldr r2, [r1, #0x2c]
	movs r0, #0
	cmp r2, #0
	beq %5
	ldr r0, [r1, #0x28]
	movs r1, #0x13
	subs r0, r2, r0
	muls r1, r0
	adds r0, r2, #0
	bl __16__rt_udiv
5
	adds r7, r0, #0
	ldr r0, _080114A0
	adds r5, r5, r0
	movs r0, #0xee
	muls r0, r6
	bl sub_80405D8
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r2, _080114A4
	movs r1, #5
6
	strh r2, [r0]
	strh r4, [r0, #2]
	subs r0, #0xff
	subs r0, #0xe1
	subs r1, #1
	cmp r1, #0
	bne %6
	adds r1, r5, #0
	adds r1, #0x26
	ldr r2, _080114A8
	movs r0, #5
7
	strh r2, [r1]
	subs r1, #0xff
	subs r1, #0xe1
	subs r0, #1
	cmp r0, #0
	bne %7
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8011394


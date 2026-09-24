	non_word_aligned_thumb_func_start sub_8018E7E
sub_8018E7E
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0xff
	adds r5, #0x81
	adds r4, r0, #0
	ldrb r0, [r5, #1]
	sub sp, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	bmi %6
	movs r1, #0xff
	adds r1, #0x9c
	ldrb r1, [r1, r4]
	cmp r1, r0
	ble %6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #1]
	cmp r1, #0
	beq %2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrb r0, [r0, #2]
	b %3
2
	movs r0, #0
3
	lsls r7, r0, #2
	adds r0, r7, #0
	adds r0, #0x11
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0x31
	lsls r0, r0, #4
	adds r1, r6, #0
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r0, r6, #1
	lsls r1, r0, #0x10
	movs r0, #1
	lsls r0, r0, #0xa
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r0, r6, #2
	lsls r1, r0, #0x10
	movs r0, #0x8f
	lsls r0, r0, #3
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r6, #3
	lsls r1, r6, #0x10
	movs r0, #0x4f
	lsls r0, r0, #4
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	ldr r6, _08019220
	movs r0, #0x71
	lsls r0, r0, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	ldrh r1, [r6, r7]
	bl sub_80138E2
	adds r0, r7, r6
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq %4
	ldr r0, [r5, #0x24]
	bl sub_800065C
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %5
	movs r1, #1
	bl sub_80401E4
	b %5
4
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %5
	movs r1, #0
	bl sub_80401E4
5
	ldr r1, [sp, #8]
	cmp r1, #0
	beq %6
	ldr r0, _08019224
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
6
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


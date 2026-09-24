	thumb_func_start sub_802222C
sub_802222C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0xff
	adds r5, #1
	ldr r1, [r5, #0x3c]
	adds r4, r0, #0
	adds r0, r5, #0
	lsls r2, r1, #0xf
	cmp r2, #0
	ldr r0, [r0, #0x24]
	blt %6
	movs r2, #0xa4
	ldr r2, [r2, r4]
	cmp r2, #0
	bne %6
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %5
	movs r1, #0
	bl sub_80401E4
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3
6
	movs r2, #1
	lsls r2, r2, #0x10
	orrs r1, r2
	str r1, [r5, #0x3c]
	bl sub_803F898
	adds r6, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F898
	cmp r6, r0
	beq %7
	ldr r0, [r4, #0x2c]
	bl sub_803F898
	adds r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_800065C
7
	ldr r0, [r4, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r5, #0x24]
	bl sub_803FF24
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r5, #0x24]
	bl sub_803F2CC
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	beq %8
	lsls r1, r1, #0x1f
	bne %5
	movs r1, #1
	bl sub_80401E4
	b %5
8
	lsls r1, r1, #0x1f
	beq %5
	movs r1, #0
	bl sub_80401E4
	b %5

	thumb_func_start HostileCreature__Attack
HostileCreature__Attack
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080296D4
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldm r0!, {r6, r7}
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp]
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
	beq %33
	ldr r0, _080296D8
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %27
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
27
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x10
	lsls r0, r0, #4
	lsrs r2, r0, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x10]
	lsrs r1, r1, #0x10
	cmp r1, r2
	bne %33
	ldr r1, [r4, #0x30]
	ldr r2, _080296DC
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x1c
	beq %28
	cmp r0, #1
	beq %29
	cmp r0, #2
	beq %30
	cmp r0, #3
	bne %33
	ldr r0, [r2]
	ldr r2, [r4, #0x5c]
	subs r0, r7, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt %33
	b %31
28
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	subs r0, r6, r0
	adds r1, r2, r1
	cmp r0, r1
	blt %33
	b %31
29
	ldr r0, [r2]
	ldr r1, [r4, #0x5c]
	subs r0, r7, r0
	cmp r0, r1
	blt %33
	b %31
30
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	adds r0, r6, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt %33
31
	ldr r0, _080296D8
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	ldr r1, [sp]
	asrs r0, r0, #2
	ldr r1, [r1, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x3c]
	lsls r2, r1, #0xd
	lsrs r2, r2, #0x1b
	cmp r2, r0
	bhi %33
	lsls r2, r1, #8
	lsrs r2, r2, #0x1b
	cmp r2, r0
	blo %33
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1a
32
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
33
	movs r0, #0
	b %32

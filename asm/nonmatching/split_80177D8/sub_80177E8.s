	thumb_func_start sub_80177E8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
1
	lsls r0, r5, #2
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %6
2
	ldr r1, [r0, #8]
	ldr r6, [r0, #0x14]
	cmp r1, r4
	bne %3
	bl sub_803FBBC
	b %5
3
	ldrh r1, [r0, #0xc]
	ldr r2, _08017AA4
	cmp r1, r2
	beq %4
	ldrh r3, [r4, #4]
	cmp r1, r3
	bne %4
	bl sub_803FBBC
	b %5
4
	ldrh r1, [r0, #0xe]
	cmp r1, r2
	beq %5
	ldrh r2, [r4, #6]
	cmp r1, r2
	bne %5
	bl sub_803FBBC
5
	adds r0, r6, #0
	bne %2
6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo %1
	ldrh r0, [r4, #4]
	ldr r1, _08017AA4
	cmp r0, r1
	beq %7
	lsls r0, r0, #2
	adds r1, r0, r7
	movs r0, #3
	lsls r0, r0, #9
	adds r0, r1, r0
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq %7
	movs r1, #0
	str r1, [r0, #0x1c]
7
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80177E8


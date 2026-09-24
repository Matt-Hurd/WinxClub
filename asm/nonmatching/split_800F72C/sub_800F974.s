	thumb_func_start sub_800F974
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r0, #0
	movs r3, #0
	adds r5, #0x80
	strh r3, [r5, #4]
	ldr r0, [r0, #0x7c]
	str r0, [r5]
	ldr r0, [r4, #0x78]
	str r0, [r5, #8]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r2, #1
	ldr r1, [r4, #0x6c]
	lsls r2, r2, #9
	ldr r0, [r4, #0x78]
	adds r1, r1, r2
	str r0, [r1, #0x20]
	ldr r1, [r4, #0x6c]
	movs r0, #0
	adds r1, r1, r2
	str r0, [r1, #0x1c]
	cmp r6, #0
	beq %26
	adds r0, r6, #0
	movs r1, #0
	ldr r2, [r4, #0x60]
	bl __16_ll_mulls
	movs r2, #8
	bl __16_ll_ushift_r
	ldr r1, [r4, #0x7c]
	lsrs r6, r0, #1
	lsls r6, r6, #1
	cmp r1, r6
	str r1, [sp]
	bhi %24
	movs r3, #0
	str r3, [r5]
23
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
24
	adds r0, r6, #0
	bl sub_804061C
	adds r7, r0, #0
	lsls r0, r1, #6
	adds r0, r0, r1
	ldr r1, [sp]
	lsls r0, r0, #6
	subs r1, r1, r6
	str r1, [r5]
	ldr r1, [r4, #0x78]
	movs r2, #1
	adds r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x6c]
	lsls r2, r2, #9
	adds r1, r1, r2
	str r0, [r1, #0x20]
	cmp r7, #0
	beq %25
	ldr r0, _0800FA3C
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r2, [r5]
	movs r3, #0
	bl sub_800529A
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_800F7D6
25
	ldr r0, [r4, #0x7c]
	subs r0, r0, r6
	str r0, [r5]
26
	movs r6, #0
	strh r6, [r5, #4]
	ldr r0, _0800FA3C
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r2, [r5]
	adds r3, r6, #0
	bl sub_800529A
	movs r5, #1
	ldr r0, [r4, #8]
	adds r1, r5, #0
	lsls r1, r0
	adds r0, r4, #0
	bl sub_800F7D6
	str r5, [r4, #0x5c]
	str r6, [r4, #0x10]
	b %23
	thumb_func_end sub_800F974

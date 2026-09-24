	thumb_func_start sub_8018884
	push {r4, r5, r6, r7, lr}
	adds r4, r3, #0
	ldr r3, [r0]
	ldr r0, [r0, #4]
	sub sp, #0x34
	asrs r3, r3, #8
	asrs r0, r0, #8
	str r0, [sp, #0x2c]
	str r3, [sp, #0x28]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x20]
	add r6, sp, #4
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	add r7, sp, #0x1c
	subs r0, r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	adds r1, r6, #0
	bl sub_803F3B4
	adds r5, r0, #0
	adds r1, r6, #0
	adds r0, r7, #0
	bl sub_803F3B4
	subs r6, r5, r0
	cmp r6, #0
	ble %56
	add r0, sp, #4
	adds r1, r0, #0
	bl sub_803F3B4
	adds r5, r0, #0
	cmp r6, r0
	bge %55
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	bl __16_ll_srdv
	ldr r1, [sp, #4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [sp, #8]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [sp, #8]
	adds r0, r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
54
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
55
	cmp r6, r5
	bne %57
	ldr r0, [sp, #0x10]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x14]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b %54
56
	cmp r6, #0
	bne %57
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b %54
57
	movs r0, #0
	b %54
	thumb_func_end sub_8018884

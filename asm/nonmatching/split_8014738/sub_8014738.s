	thumb_func_start sub_8014738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	str r2, [sp, #0x10]
	add r2, sp, #0x14
	add r1, sp, #0x18
	adds r7, r0, #0
	bl sub_803F774
	adds r6, r7, #0
	adds r6, #0x60
	ldrb r0, [r6, #0xe]
	movs r5, #0
	cmp r0, #0
	bls %6
1
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	movs r4, #0
	str r0, [sp, #0xc]
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	bls %5
2
	add r3, sp, #0
	ldrb r0, [r3, #0x18]
	cmp r4, r0
	bhs %3
	ldrb r0, [r3, #0x14]
	cmp r5, r0
	bhs %3
	ldr r0, [sp, #0xc]
	strh r0, [r3, #4]
	ldr r0, [sp, #0x10]
	strh r0, [r3, #6]
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b %4
3
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
4
	adds r4, #1
	ldrb r0, [r6, #0xf]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r0, r4
	bhi %2
5
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0x10]
	adds r5, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r0, [r6, #0xe]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %1
6
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8014738


	thumb_func_start m18__7DefaultFv
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq %1
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %1
	movs r1, #1
	bl sub_80401E4
1
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x19
	ldr r0, [r4, #0x2c]
	lsls r7, r6, #4
	cmp r0, #0
	beq %3
	bl sub_803F6B4
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r0, _0801E2C4
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x2c]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x50]
	ldr r2, [r1]
	lsrs r3, r6, #1
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1f
	lsls r2, r2, #0x18
	bics r0, r3
	orrs r2, r0
	str r2, [r4, #0x50]
	ldr r0, [r1]
	bics r2, r6
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r2, r0
	str r2, [r4, #0x50]
	ldrh r0, [r1, #0x28]
	lsls r3, r3, #3
	bics r2, r3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	orrs r2, r0
	str r2, [r4, #0x50]
	ldrh r0, [r1, #0x28]
	bics r2, r3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	orrs r0, r2
	orrs r0, r7
	str r0, [r4, #0x50]
	ldrb r2, [r1, #5]
	cmp r2, #0x42
	bhi %2
	lsls r2, r3, #3
	orrs r0, r2
	str r0, [r4, #0x50]
2
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %3
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0801E2C8
	ldr r0, [r0]
	bl sub_8001432
3
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq %4
	ldr r0, _0801E2C4
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r1, [r4, #0x54]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x30]
	bics r1, r6
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r7
	str r0, [r4, #0x54]
4
	movs r5, #0
5
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %6
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
6
	adds r5, #1
	cmp r5, #5
	blo %5
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq %8
7
	adds r0, r5, #0
	ldr r5, [r5, #0x18]
	bl sub_803DA18
	cmp r5, #0
	bne %7
8
	movs r0, #0
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end m18__7DefaultFv


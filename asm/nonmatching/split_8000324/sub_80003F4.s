	thumb_func_start sub_80003F4
sub_80003F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	sub sp, #8
	lsls r0, r0, #0xe
	bmi %10
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne %7
	ldr r0, _08000654
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
7
	ldr r1, [r0, #4]
	add r3, sp, #0
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	lsls r2, r2, #2
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	adds r2, #4
	lsls r1, r1, #2
	adds r1, #4
	strh r2, [r3, #4]
	strh r1, [r3, #6]
	ldrh r1, [r4, #0x28]
	ldrh r0, [r0, #0x10]
	lsls r1, r1, #0x13
	ldr r1, [r4, #0x2c]
	bpl %9
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x3c]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x34]
8
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
9
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x34]
	add r3, sp, #0
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	b %8
10
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %8
	ldr r2, [r0]
	lsls r1, r2, #0xb
	bpl %11
	lsls r2, r2, #1
	lsrs r2, r2, #0x16
	ldr r1, [r4, #0x2c]
	lsls r2, r2, #0x10
	subs r2, r1, r2
	str r2, [r4, #0x34]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x3c]
	b %8
11
	ldrh r1, [r4, #0x28]
	lsls r1, r1, #0x13
	ldr r1, [r4, #0x2c]
	ldr r2, [r0, #4]
	bge %12
	lsrs r2, r2, #0xa
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x34]
	b %8
12
	lsrs r2, r2, #0xa
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	adds r1, r1, r2
	str r1, [r4, #0x34]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x3c]
	b %8


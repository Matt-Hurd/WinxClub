	thumb_func_start sub_800423C
sub_800423C
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0xb
	adds r6, r2, #0
	adds r2, r0, r1
	str r2, [sp, #0x1c]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r5, [r4, #0x50]
	movs r1, #0x21
	ldr r0, [r5, #0x18]
	lsls r1, r1, #6
	str r0, [sp, #0x18]
	ldr r0, _0800463C
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	ldr r7, [r0, #0xc]
	ldr r1, [r6, #4]
	movs r0, #0
	cmp r1, #0
	bgt %1
	movs r0, #0x14
1
	ldr r2, [r4, #0x40]
	ldr r3, [r4, #0x38]
	asrs r1, r2, #0x13
	asrs r6, r3, #0x13
	cmp r1, r6
	bne %2
	lsls r6, r2, #0xd
	lsrs r6, r6, #0x1d
	bne %4
	lsls r6, r3, #0xd
	lsrs r6, r6, #0x1d
	beq %4
2
	movs r3, #0x1f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne %3
	movs r3, #0x1e
3
	str r3, [sp, #4]
	b %6
4
	movs r2, #0x1f
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1d
	bne %5
	movs r2, #0x1e
5
	str r2, [sp, #4]
6
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0x13
	adds r0, r2, r0
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0xc]
	str r0, [sp, #0x10]
	bl __16__rt_sdiv
	ldrh r0, [r5, #0xe]
	adds r6, r1, #0
	ldr r1, [sp, #0x14]
	adds r5, r0, #0
	bl __16__rt_sdiv
	cmp r6, #0
	bge %7
	ldr r0, [sp, #0x10]
	adds r6, r0, r6
7
	cmp r1, #0
	bge %8
	adds r1, r5, r1
8
	ldr r0, [sp, #0x18]
	lsls r2, r6, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x10]
	muls r2, r1
	lsls r1, r2, #1
	adds r5, r0, r1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	subs r6, r0, r6
	movs r0, #0
	str r0, [sp]
	cmp r1, #0
	ble %13
	ldr r0, [sp, #0x20]
	adds r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r0, #4
	str r0, [sp, #8]
9
	ldrh r0, [r5]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq %12
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004640
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004644
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %11
	mov r1, lr
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r7, r1]
	lsls r2, r1, #0xa
	bmi %10
	ldr r0, [sp, #8]
10
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x1c]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
11
	ldr r0, _0800463C
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b %16
12
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004640
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r7
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004644
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne %16
	mov r1, ip
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r7, r1]
	lsls r2, r1, #0xa
	bmi %15
	b %14
13
	b %19
14
	ldr r0, [sp, #8]
15
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x1c]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
16
	subs r6, #1
	bne %17
	ldr r0, [r4, #0x50]
	ldrh r6, [r0, #0xc]
	lsls r0, r6, #1
	subs r0, #2
	subs r5, r5, r0
	b %18
17
	adds r5, #2
18
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r0, #1
	str r0, [sp]
	cmp r0, r1
	bge %19
	b %9
19
	ldr r2, [sp, #0x1c]
	movs r1, #2
	ldr r0, [r2, #0x28]
	bics r0, r1
	str r0, [r2, #0x28]
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


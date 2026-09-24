	thumb_func_start sub_80318BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	add r0, sp, #0x20
	bl sub_80046F8
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	ldr r0, _08031B3C
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	ldr r5, _08031B2C
	ldr r0, [r5]
	bl sub_8017B9A
	ldr r6, _08031B40
	ldr r1, _08031B44
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl maybeLoadOrRenderBgImage
	adds r0, r5, #0
	ldr r0, [r0]
	bl sub_8017CA0
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r4, #0
	movs r2, #6
	adds r0, #8
	ldr r3, _08031B48
	bl sub_8018C48
	adds r0, r6, #0
	ldrb r0, [r0]
	movs r3, #1
	lsls r1, r0, #2
	adds r2, r1, #0
	adds r2, #0xff
	adds r2, #0x55
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1b
	lsls r3, r0
	ldr r0, _08031B4C
	cmp r2, #0
	beq %3
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r0, r2]
	ands r2, r3
	beq %4
3
	movs r2, #1
	b %5
4
	movs r2, #0
5
	adds r3, r1, #0
	adds r3, #0xff
	adds r3, #0x56
	str r2, [sp, #0x10]
	movs r2, #1
	lsls r6, r3, #0x1b
	lsrs r6, r6, #0x1b
	adds r7, r2, #0
	lsls r7, r6
	cmp r3, #0
	beq %6
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r0, r3]
	ands r3, r7
	beq %7
6
	movs r3, #1
	b %8
7
	movs r3, #0
8
	str r3, [sp, #0x14]
	adds r3, r1, #0
	adds r3, #0xff
	adds r3, #0x57
	lsls r7, r3, #0x1b
	lsrs r7, r7, #0x1b
	adds r6, r2, #0
	lsls r6, r7
	cmp r3, #0
	beq %9
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r0, r3]
	ands r3, r6
	beq %10
9
	movs r3, #1
	b %11
10
	movs r3, #0
11
	adds r1, #0xff
	adds r1, #0x58
	str r3, [sp, #0x18]
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	movs r2, #1
	lsls r2, r3
	cmp r1, #0
	beq %12
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ands r0, r2
	beq %13
12
	movs r0, #1
	b %14
13
	movs r0, #0
14
	ldr r6, _08031B64
	str r0, [sp, #0x1c]
	movs r7, #3
	lsls r7, r7, #0x19
	ldr r0, [r6]
	add r1, pc, #0x19C
	bl sub_8004FFC
	str r0, [sp, #0xc]
	ldr r0, [r6]
	add r1, pc, #0x1A8
	bl sub_8004FFC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq %15
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq %15
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq %15
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne %16
15
	movs r0, #0xcc
	b %17
16
	ldr r0, _08031B40
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, #0xce
17
	strh r0, [r4]
	ldr r2, [r5]
	add r0, pc, #0x18C
	str r0, [sp, #8]
	movs r5, #4
	str r2, [sp, #4]
	b %19
18
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	bhs %20
19
	ldr r2, [sp, #4]
	lsls r0, r5, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %18
20
	ldr r0, _08031B8C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x1d
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	ldr r2, [sp, #4]
	lsls r1, r5, #2
	adds r1, r1, r2
	str r1, [sp, #0x28]
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	ldr r2, [sp, #4]
	lsls r0, r5, #1
	adds r0, r0, r2
	movs r2, #0xff
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r2, #0x99
	strh r1, [r2, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r2, r0, r2
	movs r3, #0xb
	lsls r3, r3, #7
	adds r0, r0, r3
	strh r1, [r2, #0x18]
	movs r2, #1
	strh r2, [r0, #0x18]
	ldr r2, [sp, #0x28]
	subs r3, #0xff
	subs r3, #1
	ldr r0, [sp, #8]
	adds r2, r2, r3
	str r0, [r2, #0x18]
	movs r0, #0x61
	ldr r2, [sp, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	ldrb r2, [r0, #8]
	adds r2, #1
	strb r2, [r0, #8]
	strb r5, [r4, #4]
	movs r0, #0xc7
	strh r0, [r4, #2]
	movs r0, #0
	add r2, sp, #0x10
21
	lsls r3, r0, #2
	ldr r3, [r2, r3]
	cmp r3, #0
	beq %22
	ldrh r3, [r4, #2]
	adds r3, #1
	strh r3, [r4, #2]
22
	adds r0, #1
	cmp r0, #4
	blo %21
	ldrh r0, [r4, #2]
	cmp r0, #0xcb
	bne %23
	strh r1, [r4, #2]
23
	movs r3, #0x1f
	lsls r3, r3, #0xa
	movs r1, #0
	ldr r4, _08031B90
	movs r5, #0x4b
	lsls r5, r5, #9
24
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	bne %25
	b %28
25
	cmp r0, r3
	bne %26
	movs r0, #1
	b %28
26
	cmp r0, r4
	bne %27
	movs r0, #2
	b %28
27
	cmp r0, #0x1f
	bne %29
	movs r0, #3
28
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	bne %30
29
	ldrh r0, [r6]
	strh r0, [r7]
30
	ldr r0, [sp, #0xc]
	adds r7, #2
	adds r0, #2
	adds r6, #2
	adds r1, #1
	cmp r1, r5
	str r0, [sp, #0xc]
	blo %24
	ldr r0, _08031B40
	ldr r1, _08031B94
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	lsls r2, r0, #0x18
	ldr r0, _08031B28
	lsrs r2, r2, #0x18
	movs r1, #3
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #0x3f
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80318BC

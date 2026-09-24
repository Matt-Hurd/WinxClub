	thumb_func_start sub_80389CC
sub_80389CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl sub_80046F8
	ldr r0, _08038C80
	ldr r0, [r0]
	bl sub_80050FA
	mov r5, sp
	mov r0, sp
	bl sub_8001A60
	ldr r0, _08038C84
	add r1, pc, #0x29C
	ldr r0, [r0]
	bl sub_8004FFC
	movs r7, #0
	adds r3, r7, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r5, #0
	ldr r5, _08038C94
	str r0, [sp]
	ldr r0, [r5]
	bl sub_800D9E0
	ldr r0, _08038C98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r5, _08038C9C
	ldr r0, [r5]
	cmp r0, #0
	beq %11
	bl sub_800B72A
	cmp r0, #0
	beq %10
	ldr r0, [r5]
	bl sub_800B6A8
	cmp r0, #0
	beq %11
10
	ldr r0, _08038C70
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
11
	movs r0, #0
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #8
	str r0, [r4, #4]
	movs r5, #0
	movs r6, #0
	movs r3, #0xc
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r0, #0x34
	bl sub_803F708
	movs r1, #1
	cmp r0, #0
	beq %12
	adds r5, r1, #0
	lsls r1, r1, #9
	adds r0, r4, r1
	strb r6, [r0, #0xc]
12
	movs r6, #1
	movs r0, #0x35
	bl sub_803F708
	cmp r0, #0
	beq %13
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
13
	movs r6, #2
	movs r0, #0x36
	bl sub_803F708
	cmp r0, #0
	beq %14
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #8
	adds r0, r0, r1
	strb r6, [r0, #0xc]
14
	movs r6, #3
	movs r0, #0x37
	bl sub_803F708
	cmp r0, #0
	beq %15
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
15
	movs r6, #4
	movs r0, #0x38
	bl sub_803F708
	cmp r0, #0
	beq %16
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #7
	adds r0, r0, r1
	strb r6, [r0, #0xc]
16
	movs r6, #5
	movs r0, #0x39
	bl sub_803F708
	cmp r0, #0
	beq %17
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
17
	movs r6, #6
	movs r0, #0x3a
	bl sub_803F708
	cmp r0, #0
	beq %18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
18
	movs r6, #7
	movs r0, #0x3b
	bl sub_803F708
	cmp r0, #0
	beq %19
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
19
	movs r1, #0x21
	lsls r1, r1, #4
	adds r6, r4, r1
	strb r5, [r6, #5]
	adds r0, r5, #0
	movs r7, #0
	movs r5, #0
	cmp r0, #0
	strb r7, [r6, #4]
	bls %22
20
	ldr r0, _08038C74
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r4
	movs r2, #1
	lsls r2, r2, #9
	adds r7, #0xff
	adds r1, r4, r5
	adds r1, r1, r2
	adds r7, #0xc1
	str r0, [r7, #0x2c]
	ldrb r1, [r1, #0xc]
	ldr r2, _08038C7C
	subs r2, #8
	ldrb r1, [r2, r1]
	ldr r2, _08038CA0
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1e
	movs r3, #0x34
	muls r0, r3
	lsrs r1, r5, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x18
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x28]
	adds r1, #0x20
	strh r1, [r3, #0x2a]
	ldr r0, [r7, #0x2c]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %21
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
21
	movs r1, #1
	ldr r0, [r7, #0x2c]
	bl sub_80401E4
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %20
22
	adds r0, r4, #0
	adds r0, #0xf8
	movs r1, #4
	adds r5, r0, #0
	bl sub_80147FA
	movs r2, #8
	ldr r1, _08038CA4
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r7, #0xff
	movs r1, #0x27
	lsls r1, r1, #5
	adds r3, r7, #0
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	adds r5, r0, #0
	bl sub_8014B02
	movs r2, #8
	ldr r1, _08038CA4
	str r2, [sp, #0xc]
	movs r2, #0x52
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x44
	adds r0, r5, #0
	bl sub_803F9C4
	ldrb r0, [r6, #4]
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038C7C
	adds r3, r7, #0
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #5
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08038C74
	ldr r0, [r0]
	bl sub_800116A
	adds r4, #0xff
	adds r4, #0xc1
	b %23
	ALIGN
_08038C70 DCDU gUnknown_0300345C
_08038C74 DCDU gUnknown_03003448
_08038C78 DCDU gUnknown_03003458
_08038C7C DCDU gUnknown_080514B8
_08038C80 DCDU gUnknown_03003468
_08038C84 DCDU gUnknown_03003EA8
_08038C88 DCDU 0x654D6742
_08038C8C DCDU 0x6157756E
_08038C90 DCDU 0x00007072
_08038C94 DCDU gUnknown_03003450
_08038C98 DCDU gUnknown_03003E98
_08038C9C DCDU gUnknown_03003460
_08038CA0 DCDU gUnknown_08050716
_08038CA4 DCDU 0x0000FFFF
23
	movs r2, #0
	lsls r1, r7, #1
	str r0, [r4, #0x28]
	bl sub_80007A0
	ldrb r1, [r6, #4]
	movs r3, #0x34
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3
	lsrs r1, r1, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x14
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x28]
	adds r1, #0x1c
	strh r1, [r3, #0x2a]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r4, #0x28]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %24
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
24
	ldr r0, [r4, #0x28]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x28]
	bl sub_80401E4
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #4
	movs r1, #0xc
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

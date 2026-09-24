	thumb_func_start sub_80156B4
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xf8
	sub sp, #0x10
	strb r0, [r1, r4]
	movs r1, #0xfa
	movs r3, #0
	strh r3, [r1, r4]
	cmp r7, #0
	bne %16
	ldr r7, _080158C8
16
	movs r6, #0
17
	ldr r0, _080158BC
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r5, r1, r4
	ldr r2, _080158CC
	str r0, [r5, #8]
	lsls r1, r6, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #8]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #8
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %18
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
18
	movs r1, #1
	ldr r0, [r5, #8]
	bl sub_80401E4
	cmp r6, #7
	bne %20
	ldr r5, [r4, #0x24]
	movs r2, #1
	ldrh r1, [r5, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi %19
	adds r0, r5, #0
	bl sub_804025C
19
	ldr r0, [r5]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r5]
20
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo %17
	movs r5, #0
21
	ldr r0, _080158BC
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r6, r1, r4
	str r0, [r6, #0x28]
	adds r1, r7, r5
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r6, #0x28]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r6, #0x28]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #7
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %22
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
22
	movs r1, #1
	ldr r0, [r6, #0x28]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %21
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq %27
	movs r5, #0
23
	ldr r0, _080158BC
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r4
	str r0, [r7, #0x30]
	ldr r1, _080158D0
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r7, #0x30]
	add r1, sp, #0xc
	bl sub_8040034
	movs r1, #5
	cmp r5, #0
	beq %24
	movs r1, #6
24
	ldr r0, [r7, #0x30]
	bl sub_80401C0
	movs r1, #1
	cmp r5, #2
	ldr r6, [r7, #0x30]
	beq %25
	movs r1, #0
25
	ldrh r2, [r6, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	lsls r0, r0, #0x1e
	bmi %26
	adds r0, r6, #0
	bl sub_804025C
26
	ldr r0, [r6]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r7, #0x30]
	movs r1, #1
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %23
27
	bl sub_800EF2A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq %28
	movs r2, #4
	movs r0, #0x48
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0xa0
	adds r0, r4, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp]
	movs r2, #0
	adds r0, #5
	movs r1, #0
	movs r3, #0xf0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	bl sub_80138E2
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
28
	ldr r0, _080158D4
	ldr r0, [r0]
	cmp r0, #0
	beq %29
	movs r3, #0
	movs r2, #0
	ldr r1, _080158D8
	bl sub_8024D30
29
	ldr r0, _080158DC
	ldr r0, [r0]
	adds r0, #0xe0
	bl sub_8028C2E
	ldr r1, _080158C0
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	beq %30
	ldr r0, _080158C4
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBDE
30
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80156B4

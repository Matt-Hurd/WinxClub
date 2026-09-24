	thumb_func_start Boss__40
Boss__40
	push {r4, r5, r6, r7, lr}
	movs r7, #0xff
	adds r5, r0, #0
	adds r6, r0, #0
	adds r6, #0xa0
	adds r5, #0x80
	lsls r7, r7, #0x13
	adds r4, r0, #0
	cmp r1, #0x33
	sub sp, #0x1c
	beq %10
	cmp r1, #0x34
	beq %11
	cmp r1, #0x35
	beq %12
	cmp r1, #0x36
	bne %9
	movs r2, #0
	movs r0, #5
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _080348E0
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #1
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _080348E4
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #4
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	movs r0, #0xe5
	lsls r0, r0, #2
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _080348E8
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _080348EC
	movs r1, #0xd
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x16
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x69
	str r1, [r5, #0x34]
	ldr r1, _080348F0
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #7
	lsls r1, r1, #0x12
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #9
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4
	lsls r0, r0, #7
	adds r0, #0x5a
	ands r0, r1
	movs r1, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x30]
9
	ldr r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x17
	ldr r0, _080348F8
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #9]
	ldr r1, [r5, #0x30]
	lsls r1, r1, #0x10
	b %13
10
	b %14
11
	b %15
12
	b %16
13
	lsrs r1, r1, #0x17
	strb r1, [r0, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
14
	movs r2, #5
	movs r1, #7
	movs r0, #5
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x9b
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x1e
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #4
	movs r1, #7
	movs r0, #5
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x14
	movs r0, #0xff
	adds r0, #0x9e
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	str r0, [sp]
	movs r3, #0x1e
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0xff
	adds r1, #0xa8
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #6
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #0x17
	lsls r1, r1, #0x15
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x5d
	str r1, [r5, #0x34]
	ldr r1, _080348F0
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #0x13
	lsls r1, r1, #0x10
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4
	lsls r0, r0, #7
	adds r0, #0x64
	ands r0, r1
	movs r1, #0xf
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %9
15
	movs r2, #4
	movs r1, #5
	movs r0, #3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0x32
	movs r1, #0x1e
	ldr r0, _080348FC
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	movs r1, #0
	movs r3, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	movs r0, #5
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x32
	ldr r0, _08034900
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0x50
	str r0, [sp]
	adds r0, r4, #0
	bl sub_802913E
	ldr r1, _08034904
	strh r1, [r4, #0xe]
	adds r2, r1, #1
	strh r2, [r4, #0xa]
	adds r0, r1, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	subs r0, #5
	strh r0, [r6, #8]
	subs r0, #3
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #3
	lsls r1, r1, #0x18
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x61
	str r1, [r5, #0x34]
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #0xf
	lsls r1, r1, #0x11
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #5
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r5, #0xc]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	ldr r1, _080348F4
	adds r0, #0x6e
	ands r0, r1
	movs r1, #0x23
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %9
16
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #2
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x20
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r0, #7
	str r0, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #8]
	movs r0, #0x29
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	str r0, [sp]
	movs r2, #0
	movs r3, #0x50
	adds r0, r4, #0
	bl sub_802913E
	movs r1, #0x2c
	strh r1, [r4, #0xe]
	movs r2, #0x2d
	strh r2, [r4, #0xa]
	movs r0, #0x2e
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r1, [r4, #0x1e]
	strh r2, [r4, #0x1a]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0x26
	strh r0, [r6, #8]
	movs r0, #0x23
	strh r0, [r6, #0xa]
	ldr r0, [r5, #0x30]
	movs r1, #0x19
	lsls r1, r1, #0x15
	bics r0, r7
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	movs r2, #0xf
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #0x65
	str r1, [r5, #0x34]
	ldr r1, _08034908
	lsls r2, r2, #0xf
	str r1, [r4, #0x70]
	movs r1, #0xd
	lsls r1, r1, #0x11
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #7
	bics r1, r2
	movs r2, #9
	lsls r2, r2, #0xf
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r1, _080348F4
	lsls r0, r0, #7
	adds r0, #0x78
	ands r0, r1
	movs r1, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %9

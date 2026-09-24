	thumb_func_start sub_801115C
sub_801115C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #0x1b
	lsls r3, r3, #6
	adds r2, r3, #0
	adds r2, #0x10
	adds r3, r4, r3
	ldr r1, [r4, #0x60]
	adds r7, r4, #0
	adds r5, r4, #0
	adds r5, #0x50
	adds r7, #0x80
	adds r6, r4, r2
	movs r0, #0
	sub sp, #0x24
	str r3, [sp, #0x20]
	cmp r1, #0
	bgt %22
	ldr r0, [r4, #0x5c]
	subs r1, r0, #1
	str r1, [r4, #0x5c]
	cmp r0, #0
	bne %17
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	movs r0, #0xb
	strb r0, [r5, #4]
	movs r0, #0
16
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	ldrb r0, [r5, #4]
	cmp r0, #0xb
	blo %18
	movs r0, #0
	strb r0, [r5, #4]
	b %19
18
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	ldr r1, _08011388
	adds r0, r0, r4
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0
	movs r2, #0
	stm r0!, {r1, r2, r3}
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	ldrb r0, [r5, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #4]
	cmp r0, #0xb
	blo %19
	movs r0, #0
	strb r0, [r5, #4]
19
	ldrb r0, [r5, #4]
	ldr r1, _08011388
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	adds r2, r0, #4
	str r2, [sp, #0x10]
	ldr r1, [r0, #4]
	lsrs r1, r1, #0x10
	str r1, [r4, #0x60]
	ldr r1, [r4, #0x6c]
	ldr r3, [r4, #0x74]
	adds r2, r1, #0
	adds r1, #1
	mov ip, r1
	cmp r1, r3
	bge %20
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	ldr r0, [r0]
	cmp r1, r0
	bne %20
	mov r1, ip
	str r1, [r4, #0x6c]
20
	ldr r2, [sp, #0x10]
	ldr r1, _0801138C
	ldr r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x1c]
	lsls r0, r0, #0xa
	lsrs r1, r0, #0x16
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	bl __16__rt_udiv
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	lsrs r1, r0, #0x16
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, #1]
	bl __16__rt_udiv
	adds r1, r0, #0
	ldr r0, [sp, #8]
	muls r0, r1
	str r0, [r4, #0x58]
	ldr r2, [sp, #0x10]
	adds r1, r0, #0
	ldr r2, [r2]
	movs r0, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x16
	lsls r3, r0, #8
	cmp r2, r3
	bhi %21
	movs r0, #0
21
	str r0, [r7, #4]
	cmp r0, #0
	beq %24
	b %23
22
	b %27
23
	lsls r0, r1, #1
	str r0, [r4, #0x58]
24
	ldrb r0, [r6, #0xe]
	cmp r0, #0xff
	bne %25
	movs r0, #0
	strb r0, [r6, #0xe]
	b %26
25
	movs r2, #1
	lsls r2, r0
	ldr r1, [sp, #0x20]
	adds r0, #1
	ldr r1, [r1, #0x20]
	lsls r0, r0, #0x18
	orrs r1, r2
	ldr r2, [sp, #0x20]
	lsrs r0, r0, #0x18
	str r1, [r2, #0x20]
	strb r0, [r6, #0xe]
	cmp r0, #0xb
	blo %26
	movs r0, #0
	strb r0, [r6, #0xe]
26
	movs r0, #1
27
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq %28
	ldr r0, _08011390
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	movs r0, #0
	str r0, [r7, #0xc]
	b %29
28
	cmp r0, #0
	beq %30
29
	ldr r1, [sp, #0x20]
	ldr r0, [r1, #0x24]
	ldrb r1, [r6, #0xe]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldrb r0, [r5, #4]
	movs r1, #0x65
	lsls r1, r1, #4
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	movs r1, #0x17
	lsls r1, r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r7, #8]
	adds r1, r4, r1
	str r1, [sp, #0x18]
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r1, r4, r1
	str r1, [sp, #0x14]
	movs r1, #0x71
	lsls r1, r1, #4
	adds r7, r4, r1
	cmp r0, #0
	beq %31
	adds r1, r6, #0
	adds r0, r4, #0
	bl gUnknown_03001A54
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xd]
	ldrb r0, [r5, #4]
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	movs r3, #0x19
	lsls r3, r3, #6
	adds r0, r0, r4
	adds r0, r0, r3
	ldr r0, [r0, #0x10]
	str r2, [sp, #8]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x16
	adds r0, r6, #0
	add r2, sp, #0xc
	ldr r1, [r1, #0x14]
	bl gUnknown_03001444
30
	b %32
31
	ldr r0, [sp, #0x10]
	ldr r2, _0801138C
	ldr r3, [r0]
	str r7, [sp, #8]
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r0, #1
	adds r2, r1, r2
	ldr r1, [sp, #0x14]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x16
	adds r0, r6, #0
	ldr r1, [r1, #0x14]
	bl gUnknown_03001444
32
	adds r0, r4, #0
	bl sub_8010F90
	adds r0, r4, #0
	bl sub_8010F10
	bl sub_8008160
	ldr r0, _08011384
	ldr r0, [r0]
	cmp r0, #0
	bne %33
	adds r0, r4, #0
	bl sub_8010B8A
33
	movs r0, #1
	b %16

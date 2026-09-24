	non_word_aligned_thumb_func_start Dying__7DefaultFv
Dying__7DefaultFv
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0x22
	bhs %1
	add r3, pc, #0x10
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
2
	DCB 0x25, 0x00
3
	DCB 0x26, 0x00
4
	DCB 0xB0, 0x00
5
	DCB 0x2C, 0x00
6
	DCB 0x37, 0x00
7
	DCB 0x65, 0x00
8
	DCB 0x68, 0x00
9
	DCB 0x5F, 0x00
10
	DCB 0x62, 0x00
11
	DCB 0x25, 0x00
12
	DCB 0x25, 0x00
13
	DCB 0x25, 0x00
14
	DCB 0x25, 0x00
15
	DCB 0x25, 0x00
16
	DCB 0x25, 0x00
17
	DCB 0x25, 0x00
18
	DCB 0x25, 0x00
19
	DCB 0x25, 0x00
20
	DCB 0x25, 0x00
21
	DCB 0x25, 0x00
22
	DCB 0x59, 0x00
23
	DCB 0x5C, 0x00
24
	DCB 0x7E, 0x00
25
	DCB 0xA0, 0x00
26
	DCB 0x25, 0x00
27
	DCB 0x25, 0x00
28
	DCB 0x6B, 0x00
29
	DCB 0x76, 0x00
30
	DCB 0x7A, 0x00
31
	DCB 0x43, 0x00
32
	DCB 0x4E, 0x00
33
	DCB 0x9A, 0x00
34
	DCB 0x8A, 0x00
35
	DCB 0xBA, 0x00
loc_801e33c
	b %1
loc_801e33e
	ldr r0, [r1, #4]
	lsls r0, r0, #0x10
	bl sub_8040594
	str r1, [r4, #0x70]
	b %1
loc_801e34a
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #8]
	lsls r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r2
	str r0, [r1, #8]
	b %1
loc_801e360
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #0xff
	lsls r3, r3, #3
	ldr r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
	b %1
loc_801e378
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #8]
	ldr r3, _0801E75C
	lsls r0, r0, #0x13
	lsrs r0, r0, #9
	ands r2, r3
	orrs r0, r2
	str r0, [r1, #8]
	b %1
loc_801e38e
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	lsrs r0, r0, #0x14
	orrs r0, r2
	str r0, [r1, #0xc]
	b %1
loc_801e3a4
	ldr r0, [r1, #4]
	strh r0, [r4, #0x18]
	b %1
loc_801e3aa
	ldr r0, [r1, #4]
	strh r0, [r4, #0x1a]
36
	b %1
loc_801e3b0
	ldr r0, [r1, #4]
	strh r0, [r4, #0x26]
	b %1
loc_801e3b6
	ldr r0, [r1, #4]
	strh r0, [r4, #0x22]
	b %1
loc_801e3bc
	ldr r0, [r1, #4]
	strh r0, [r4, #0x24]
37
	b %1
loc_801e3c2
	ldr r0, [r1, #4]
	strh r0, [r4, #0x20]
	b %1
loc_801e3c8
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1]
	ldr r3, _0801E760
	lsls r0, r0, #0x14
	lsrs r0, r0, #9
	ands r2, r3
	orrs r0, r2
	str r0, [r1]
	b %1
loc_801e3de
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xd]
	b %1
loc_801e3e6
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xc]
	b %1
loc_801e3ee
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #0xf
	lsls r3, r3, #0xf
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xd
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0xc]
	b %1
loc_801e406
	ldr r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne %38
	movs r0, #0
38
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #1
	lsls r3, r3, #0xb
	ldr r2, [r1, #0x14]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0x14]
	b %1
loc_801e426
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xd]
	movs r0, #0
	strb r0, [r4, #0xc]
	b %1
loc_801e432
	ldr r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne %39
	movs r0, #0
39
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #1
	lsls r3, r3, #0xc
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x13
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0xc]
	b %1
loc_801e452
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x40]
	ldr r1, [r1, #4]
	adds r2, r3, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl __call_via_r2
	b %1
loc_801e466
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r1, #4]
	ldr r2, [r0, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0xf
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x14]
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq %40
	cmp r1, #2
	beq %40
	movs r2, #1
	b %41
40
	movs r2, #0
41
	movs r5, #1
	ldr r3, [r0, #0xc]
	lsls r5, r5, #0xe
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x11
	bics r3, r5
	orrs r2, r3
	str r2, [r0, #0xc]
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq %36
	cmp r1, #1
	bne %42
	movs r1, #0xbf
	bl sub_80401C0
	b %1
42
	cmp r1, #2
	bne %37
	movs r1, #0x7f
	bl sub_80401C0
	b %1


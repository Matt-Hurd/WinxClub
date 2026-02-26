	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start ToggleObjectGroup__40

ToggleObjectGroup__40
	push {r4, r5, r6, r7, lr}
	ldr r4, _08035BA8
	adds r3, r1, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r1, #0x80
	movs r6, #0
	lsrs r5, r4, #0x10
	cmp r3, #0x5b
	beq %21
	bgt %22
	movs r7, #1
	lsls r7, r7, #0xf
	cmp r3, #0x58
	beq %23
	bgt %20
	cmp r3, #0x42
	beq %24
	cmp r3, #0x56
	beq %25
	cmp r3, #0x57
	bne %19
	ldr r3, _08035BAC
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	lsrs r3, r4, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0x2d
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	lsls r3, r3, #0xc
	adds r2, r2, r3
	movs r0, #0x17
	lsls r0, r0, #0x15
	bics r2, r4
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
19
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	cmp r3, #0x59
	beq %35
	cmp r3, #0x5a
	bne %19
	ldr r3, _08035BB0
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #5
	lsls r5, r5, #0xb
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #2
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	movs r4, #0xa3
	lsls r4, r4, #0xe
	adds r2, r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	lsls r0, r0, #8
	adds r0, #0x2f
	movs r3, #0x2d
	lsls r3, r3, #0xc
	str r0, [r1, #0x28]
	movs r0, #0x17
	adds r2, r2, r3
	bics r2, r4
	lsls r0, r0, #0x15
	adds r0, r2, r0
	b %26
21
	b %40
22
	b %27
23
	b %37
24
	b %41
25
	b %34
26
	str r0, [r1, #0x24]
	b %19
27
	adds r7, r3, #0
	subs r7, #0x5c
	cmp r7, #5
	bhs %28
	add r3, pc, #0x8
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
28
	b %19
29
	DCB 0xFF, 0x00
30
	DCB 0x28, 0x01
31
	DCB 0xD5, 0x00
32
	DCB 0x51, 0x01
33
	DCB 0x7A, 0x01
34
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	lsls r5, r5, #9
	adds r0, r0, r5
	ldr r2, [r1, #0x20]
	adds r5, r3, #1
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r0, r0, #8
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	bics r2, r3
	movs r3, #0x2d
	lsls r3, r3, #0xc
	lsls r0, r0, #8
	str r0, [r1, #0x28]
	adds r2, r2, r3
	bics r2, r4
	movs r0, #0x17
	lsls r0, r0, #0x15
	b %36
35
	b %39
36
	adds r0, r2, r0
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r0, r2
	adds r0, r0, r7
	str r0, [r1, #0x14]
	b %19
37
	movs r3, #0x9b
	lsls r3, r3, #2
	strh r3, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r0, [r1, #0x28]
	strb r6, [r2, #0xc]
	bics r0, r5
	movs r5, #3
	ldr r2, [r1, #0x20]
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r5, r3, #1
	adds r2, r2, r5
	ands r2, r4
	str r2, [r1, #0x20]
	ldr r2, [r1, #0x24]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r4, r3, #8
	bics r2, r4
	b %38
	ALIGN

	ALIGN
_08035BA8 DCDU 0xFF000FFF
_08035BAC DCDU 0x000002B2
_08035BB0 DCDU 0x0000028B

	END

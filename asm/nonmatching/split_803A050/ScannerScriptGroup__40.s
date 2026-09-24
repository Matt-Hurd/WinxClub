	thumb_func_start ScannerScriptGroup__40
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	adds r6, r4, #0
	movs r3, #0xff
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r3, #0x2d
	adds r6, #0xa0
	movs r7, #0
	cmp r0, #0x37
	sub sp, #0x2c
	beq %8
	cmp r0, #0x38
	beq %9
	cmp r0, #0x39
	bne %10
	movs r1, #0
	movs r0, #0x17
	lsls r0, r0, #5
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0x17
	lsls r0, r0, #5
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	ldr r0, _0803A448
	movs r1, #0xff
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, _0803A44C
	movs r2, #0xf
	str r1, [r4, #0x70]
	str r7, [r5, #0x24]
	ldr r1, [r5, #0xc]
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xf
	adds r1, r1, r2
	ldr r2, _0803A450
	ands r0, r2
	movs r2, #0x19
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	b %11
8
	b %14
9
	b %17
10
	b %12
11
	bics r1, r0
	str r1, [r5, #0xc]
12
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0x28]
	adds r0, #0x1e
	mov ip, r0
	lsls r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [r0, #0x20]
	ldrh r6, [r4, #0x26]
	str r6, [sp, #0x24]
	adds r6, #0x1e
	lsls r2, r6, #0x10
	str r2, [r0, #0x24]
	ldrh r3, [r4, #0x20]
	mov lr, r6
	adds r6, r3, #0
	subs r3, #0x1e
	str r3, [sp, #0x20]
	lsls r3, r3, #0x10
	str r3, [r0, #0x28]
	str r3, [sp, #0x1c]
	ldrh r5, [r4, #0x22]
	adds r7, r5, #0
	subs r5, #0x1e
	lsls r3, r5, #0x10
	str r3, [r0, #0x2c]
	ldr r0, [sp, #0x28]
	subs r0, r6, r0
	ldr r6, [sp, #0x24]
	subs r7, r7, r6
	movs r6, #0xf
	lsls r6, r6, #0x18
	cmp r0, r7
	ble %15
	ldr r3, [sp, #0x1c]
	subs r0, r3, r1
	asrs r0, r0, #1
	adds r0, r0, r1
	str r0, [r4, #0x58]
	str r2, [r4, #0x5c]
	ldr r0, [r4, #0x7c]
	bics r0, r6
	str r0, [r4, #0x7c]
	mov r0, ip
	strh r0, [r4, #0x24]
	ldr r3, [sp, #0x20]
	strh r3, [r4, #0x20]
13
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
14
	movs r1, #0
	movs r0, #0xff
	adds r0, #0xd9
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r2, #0
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xff
	adds r2, #0x2d
	movs r0, #0xff
	adds r0, #0xd9
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	adds r3, r7, #0
	adds r0, r4, #0
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0xdc
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	ldr r1, _0803A454
	str r1, [r4, #0x70]
	movs r1, #0xd
	lsls r1, r1, #0x10
	b %16
15
	b %18
16
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r2, _0803A450
	ands r0, r2
	movs r2, #0x19
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	bics r1, r0
	str r1, [r5, #0xc]
	b %12
17
	movs r1, #0
	movs r0, #0xff
	adds r0, #0x15
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	movs r2, #0
	str r3, [sp, #8]
	adds r3, r7, #0
	movs r1, #1
	str r0, [sp]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl sub_802913E
	movs r0, #0xff
	adds r0, #0x18
	strh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	subs r0, #5
	strh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r7, [r6, #8]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0x15
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #0xe
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r1, r1, #0x14
	str r1, [r5, #0x24]
	ldr r1, [r5, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r5, #0xc]
	ldr r2, _0803A450
	movs r1, #0x19
	lsls r1, r1, #9
	ands r0, r2
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %12
	ALIGN
_0803A420 DCDU __VTABLE__332Scanner
_0803A424 DCDU sub_8041020
_0803A428 DCDU 0x6E616353
_0803A42C DCDU 0x2072656E
_0803A430 DCDU 0x69726353
_0803A434 DCDU 0x47207470
_0803A438 DCDU 0x70756F72
_0803A43C DCDU 0x00000000
_0803A440 DCDU 0xF000FFFF
_0803A444 DCDU 0xFFFF803F
_0803A448 DCDU 0x000002E3
_0803A44C DCDU 0x00010CD0
_0803A450 DCDU 0xFFFF007F
_0803A454 DCDU 0x00012668
18
	subs r0, r3, r2
	asrs r0, r0, #1
	adds r0, r0, r2
	str r0, [r4, #0x5c]
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x7c]
	movs r1, #1
	bics r0, r6
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	mov r6, lr
	strh r6, [r4, #0x26]
	strh r5, [r4, #0x22]
	b %13
	thumb_func_end ScannerScriptGroup__40


	thumb_func_start sub_800B7DC
sub_800B7DC
	push {r4, lr}
	adds r4, r0, #0
	bne %11
	ldr r0, _0800BB94
	bl __nw__FUi
	adds r4, r0, #0
	bne %11
	adds r0, r4, #0
10
	pop {r4}
	pop {r3}
	bx r3
11
	ldr r0, _0800BB98
	adds r1, r4, #0
	str r0, [r4]
	ldr r0, _0800BB9C
	adds r1, #0x60
	str r4, [r0]
	ldr r0, _0800BBA0
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	ldr r1, [r4, #0x78]
	str r0, [r4, #0x7c]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r4, #0x78]
	movs r1, #0x13
	lsls r1, r1, #8
	adds r1, r4, r1
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	movs r1, #0x3c
	adds r0, r4, #4
	bl __16__rt_memclr_w
	movs r1, #0x19
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0x80
	bl __16__rt_memclr_w
	movs r0, #0x1d
	lsls r0, r0, #5
	movs r1, #0x22
	adds r0, r4, r0
	bl __16__rt_memclr_w
	ldr r1, _0800BBA4
	adds r0, r1, #0
	subs r0, #0x47
	adds r0, r4, r0
	bl __16__rt_memclr
	ldr r0, _0800BBAC
	ldr r1, _0800BBA8
	adds r0, r4, r0
	bl __16__rt_memclr_w
	ldr r0, _0800BBB4
	ldr r1, _0800BBB0
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r1, #0xff
	ldr r0, _0800BBB8
	adds r1, #0x8d
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #0xbd
	lsls r0, r0, #4
	movs r1, #0x80
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r1, #0x1b
	movs r0, #0xc5
	lsls r0, r0, #4
	lsls r1, r1, #6
	adds r0, r4, r0
	bl __16__rt_memclr_w
	adds r0, r4, #0
	b %10


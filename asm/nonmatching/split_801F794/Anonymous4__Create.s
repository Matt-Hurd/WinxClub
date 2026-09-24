	thumb_func_start Anonymous4__Create
	push {r4, r5, r6, lr}
	movs r5, #0x4b
	lsls r5, r5, #3
	adds r4, r0, #0
	cmp r0, #0
	bne %2
	adds r0, r5, #0
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _0801FB98
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xa0
	bl sub_802DFF4
	adds r0, r4, #0
	adds r0, #0xe0
	bl sub_8024E54
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	movs r0, #0
	str r0, [r1, #0x24]
	str r0, [r1, #0x28]
	ldr r2, [r1, #0x3c]
	movs r3, #1
	lsrs r2, r2, #4
	lsls r2, r2, #4
	lsls r3, r3, #9
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	movs r3, #0xf
	lsls r3, r3, #0xc
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xe
	adds r2, r2, r3
	lsls r3, r3, #2
	orrs r2, r3
	movs r3, #7
	lsls r3, r3, #0x11
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	str r2, [r1, #0x3c]
	adds r1, #0x40
	strh r5, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r1, #0x25
	lsls r1, r1, #4
	adds r1, r4, r1
	strb r0, [r1, #4]
	movs r2, #2
	strb r2, [r1, #5]
	movs r1, #4
	strh r1, [r4, #4]
	movs r1, #6
	movs r2, #0x97
	strb r1, [r2, r4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x11
	adds r5, r2, r3
	ldr r2, [r1, #0x14]
	lsrs r3, r3, #6
	orrs r2, r3
	str r2, [r1, #0x14]
	ldr r2, [r1, #4]
	ldr r3, _0801FB9C
	movs r6, #0xff
	ands r2, r3
	movs r3, #1
	lsls r3, r3, #0x1a
	adds r2, r2, r3
	lsls r3, r2, #0x18
	lsls r6, r6, #8
	bics r2, r6
	lsrs r3, r3, #0x10
	orrs r2, r3
	str r2, [r1, #4]
	ldr r2, [r1, #8]
	ldr r3, _0801FBA0
	ands r2, r3
	ldr r3, _0801FBA4
	adds r2, r2, r3
	str r2, [r1, #8]
	lsrs r2, r5, #0xc
	movs r3, #5
	lsls r3, r3, #8
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	movs r1, #0x6e
	strh r1, [r4, #0xe]
	movs r1, #0x6f
	strh r1, [r4, #0xa]
	movs r1, #0x70
	strh r1, [r4, #0xc]
	strh r1, [r4, #8]
	movs r1, #0x5c
	strh r1, [r4, #0x1e]
	movs r1, #0x5d
	strh r1, [r4, #0x1a]
	movs r1, #0x5e
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	str r0, [r4, #0x74]
	movs r1, #0
3
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0x41
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	str r1, [r2, #0x10]
	blo %3
	adds r0, r4, #0
	b %1
	thumb_func_end Anonymous4__Create


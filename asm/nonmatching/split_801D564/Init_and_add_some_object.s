	thumb_func_start Init_and_add_some_object
Init_and_add_some_object
__ct__7DefaultFv
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xa0
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
	bl sub_8017444
	ldr r0, _0801D92C
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	movs r0, #1
	lsls r0, r0, #0x10
	str r1, [r4, #0x30]
	str r0, [r4, #0x70]
	str r1, [r4, #0x34]
	str r1, [r4, #0x74]
	adds r0, r4, #0
	adds r0, #0x70
	str r1, [r4, #0x78]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	ldr r0, [r4, #0x7c]
	movs r2, #0xff
	lsls r2, r2, #0x10
	bics r0, r2
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x18
	movs r3, #7
	lsls r3, r3, #0x1c
	adds r0, r0, r2
	bics r0, r3
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r3, [r0]
	movs r5, #2
	lsrs r3, r3, #1
	lsls r3, r3, #1
	bics r3, r5
	movs r5, #4
	movs r6, #0xff
	lsls r6, r6, #3
	orrs r3, r5
	bics r3, r6
	ldr r6, _0801D930
	ands r3, r6
	lsrs r6, r2, #1
	bics r3, r6
	bics r3, r2
	str r3, [r0]
	ldr r2, [r0, #4]
	movs r3, #0xff
	lsrs r2, r2, #8
	lsls r2, r2, #8
	lsls r3, r3, #8
	bics r2, r3
	str r2, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _0801D934
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	ands r2, r3
	str r2, [r0, #8]
	ldr r2, [r0, #0xc]
	lsls r3, r5, #0xa
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	orrs r2, r3
	lsls r3, r3, #1
	bics r2, r3
	lsls r3, r3, #1
	orrs r2, r3
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	ldr r3, _0801D938
	ands r2, r3
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x10]
	movs r3, #0x20
	lsrs r2, r2, #5
	lsls r2, r2, #5
	adds r2, #5
	bics r2, r3
	ldr r3, _0801D93C
	ands r2, r3
	ldr r3, _0801D940
	ands r2, r3
	str r2, [r0, #0x10]
	ldr r2, [r0, #0x14]
	lsls r3, r5, #9
	lsrs r2, r2, #0xb
	lsls r2, r2, #0xb
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xc
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	lsls r3, r5, #0x10
	orrs r2, r3
	str r2, [r0, #0x14]
	adds r2, r4, #0
	adds r2, #0x90
	mvns r3, r1
	strb r3, [r2, #7]
	strb r3, [r2, #8]
	strb r1, [r2, #9]
	strb r1, [r2, #0xa]
	str r5, [r0, #0x1c]
	str r1, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r1, [r4, #0x68]
	str r1, [r4, #0x6c]
	movs r3, #0
3
	lsls r2, r1, #2
	adds r2, r2, r4
	adds r1, #1
	cmp r1, #5
	str r3, [r2, #0x38]
	blo %3
	ldr r1, _0801D944
	ldr r2, [r1]
	movs r1, #5
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r5, [r1, #0x1c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r2, r5, r2
	str r4, [r2, #0x20]
	ldr r2, [r1, #0x1c]
	movs r5, #0xfe
	adds r6, r2, #0
	adds r2, #2
	ands r2, r5
	bics r6, r5
	orrs r2, r6
	str r2, [r1, #0x1c]
	ldr r1, _0801D948
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x22]
	strh r3, [r4, #0x24]
	strh r1, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #8
	movs r3, #0
	movs r2, #0
	stm r1!, {r2, r3}
	stm r1!, {r2, r3}
	stm r1!, {r2, r3}
	adds r1, #0x30
	stm r1!, {r2, r3}
	ldr r1, [r0, #4]
	ldr r2, _0801D94C
	ands r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b %1


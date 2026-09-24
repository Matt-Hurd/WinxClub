	thumb_func_start sub_802F228
sub_802F228
	push {r4, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x19
	bne %11
	ldr r2, [r2, #4]
	movs r3, #0xa0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r3, r0]
	ldr r4, _0802F52C
	movs r3, #0
	cmp r2, r4
	bne %8
	ldr r2, _0802F530
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b %11
8
	ldr r4, _0802F534
	cmp r2, r4
	bne %9
	movs r2, #0xff
	adds r2, #0xd5
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b %11
9
	ldr r4, _0802F538
	cmp r2, r4
	blo %10
	ldr r4, _0802F53C
	cmp r2, r4
	bhs %10
	movs r2, #0x4d
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b %11
10
	movs r4, #0xff
	adds r4, #0x54
	cmp r2, r4
	blo %12
	movs r4, #0x87
	lsls r4, r4, #2
	cmp r2, r4
	bhs %12
	movs r2, #0xa1
	lsls r2, r2, #2
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
11
	b %13
12
	movs r2, #0x57
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
13
	bl Dying__7DefaultFv
	pop {r4}
	pop {r3}
	bx r3


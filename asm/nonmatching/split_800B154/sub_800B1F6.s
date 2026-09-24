	non_word_aligned_thumb_func_start sub_800B1F6
	push {r4, lr}
	adds r4, r0, #0
	bne %7
	movs r0, #4
	bl __nw__FUi
	adds r4, r0, #0
	bne %7
	adds r0, r4, #0
6
	pop {r4}
	pop {r3}
	bx r3
7
	ldr r0, _0800B2C0
	ldr r3, _0800B2B4
	str r0, [r4]
	ldr r0, _0800B2C4
	movs r2, #0
	str r4, [r0]
	ldr r0, _0800B2C8
	str r0, [r4]
	strh r2, [r3, #8]
	movs r0, #0
	strh r0, [r3]
	lsls r1, r3, #0x11
	strh r0, [r1, #4]
	ldr r0, _0800B2CC
	ldr r1, _0800B2D0
	str r0, [r1, #0x3c]
	ldr r1, _0800B2D4
	ldr r0, _0800B2D8
	str r1, [r0]
	ldr r1, _0800B2DC
	str r1, [r0, #4]
	ldr r1, _0800B2E0
	str r1, [r0, #8]
	ldr r1, _0800B2E4
	str r1, [r0, #0xc]
	ldr r1, _0800B2E8
	str r1, [r0, #0x10]
	ldr r1, _0800B2EC
	str r1, [r0, #0x14]
	ldr r1, _0800B2F0
	str r1, [r0, #0x18]
	ldr r1, _0800B2F4
	str r1, [r0, #0x1c]
	ldr r1, _0800B2F8
	str r1, [r0, #0x20]
	ldr r1, _0800B2FC
	str r1, [r0, #0x24]
	ldr r1, _0800B300
	str r1, [r0, #0x28]
	ldr r1, _0800B304
	str r1, [r0, #0x2c]
	ldr r1, _0800B308
	str r1, [r0, #0x30]
	ldr r1, _0800B30C
	str r1, [r0, #0x34]
	ldr r0, _0800B310
	strh r2, [r0, #0x10]
	ldrh r1, [r3]
	lsrs r2, r0, #0xe
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _0800B2BC
	strh r1, [r0, #0x12]
	movs r2, #1
	movs r1, #0xd
	adds r0, r4, #0
	bl sub_800B154
	adds r0, r4, #0
	b %6
	thumb_func_end sub_800B1F6


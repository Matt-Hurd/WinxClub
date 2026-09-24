	non_word_aligned_thumb_func_start sub_800106A
sub_800106A
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	adds r5, r1, #0
	lsls r0, r0, #6
	adds r4, r7, r0
	ldr r0, [r4, #0x28]
	movs r1, #1
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x28]
	ldr r0, _080012E4
	ldr r0, [r0]
	bl sub_800B8CE
	bl GetEWRAMStart
	lsls r6, r5, #1
	adds r6, r6, r5
	lsls r6, r6, #5
	adds r6, #0x60
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	ldr r2, _080012E8
	movs r3, #0
	str r2, [sp]
	movs r2, #0x60
	adds r1, r5, #1
	bl __vec_ctor_p__FPvUiT2bPFPv_v
	adds r1, r6, #0
	str r0, [r4]
	bl __16__rt_memclr_w
	movs r3, #0
	ldr r0, [r4]
	movs r2, #1
	cmp r5, #1
	str r3, [r0, #0x14]
	blo %2
	movs r6, #0
1
	adds r0, r2, #1
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	strh r0, [r1, r2]
	ldr r1, [r4]
	adds r1, r1, r2
	adds r2, r0, #0
	cmp r0, r5
	str r6, [r1, #0x14]
	bls %1
2
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r7, r0
	strh r5, [r0, #0x1c]
	movs r1, #1
	strh r1, [r0, #0x1e]
	movs r6, #0
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strh r6, [r4, #0xa]
	strh r6, [r4, #0xc]
	strh r6, [r4, #0xe]
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	bl GetEWRAMStart
	adds r1, r0, #0
	lsls r0, r5, #3
	adds r0, #8
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	movs r1, #0
	movs r6, #0xff
	lsls r6, r6, #0xd
	str r0, [r4, #0x10]
3
	ldr r2, [r4, #0x10]
	lsls r0, r1, #3
	adds r2, r2, r0
	ldr r3, [r2]
	adds r1, #1
	orrs r3, r6
	str r3, [r2]
	ldr r2, [r4, #0x10]
	adds r7, r2, r0
	movs r2, #0x1f
	lsls r2, r2, #8
	orrs r2, r3
	str r2, [r7]
	ldr r7, _080012EC
	ldr r3, [r4, #0x10]
	orrs r2, r7
	adds r3, r3, r0
	str r2, [r3]
	ldr r3, [r4, #0x10]
	movs r7, #0xff
	orrs r2, r7
	adds r3, r3, r0
	str r2, [r3]
	ldr r2, [r4, #0x10]
	adds r0, r2, r0
	adds r0, #4
	ldr r2, [r0]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	str r2, [r0]
	cmp r1, r5
	bls %3
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0x12
	bics r0, r1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	movs r0, #0
	bx r3


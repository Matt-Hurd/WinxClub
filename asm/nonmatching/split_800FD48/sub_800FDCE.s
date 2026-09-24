	non_word_aligned_thumb_func_start sub_800FDCE
sub_800FDCE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800FE78
	adds r6, r1, #0
	movs r5, #1
	adds r3, r5, #0
	movs r1, #4
	ldr r2, _0800FE88
	ldr r0, [r0]
	bl sub_800B12C
	ldr r0, _0800FE6C
	ldr r1, [r4, #4]
	str r1, [r0]
	ldr r1, _0800FE80
	str r1, [r0, #4]
	ldr r1, _0800FE84
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r4, #8]
	movs r2, #0x31
	lsls r5, r0
	lsls r0, r1, #0xe
	subs r1, r0, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x12
	orrs r2, r1
	ldr r1, _0800FE70
	str r2, [r1, #4]
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r1, #0xf
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0800FE8C
	movs r0, #0x80
	strh r0, [r1, #4]
	adds r0, r1, #2
	ldrh r1, [r0]
	movs r2, #0xb
	lsls r2, r2, #8
	orrs r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0
	str r0, [r4, #0x64]
	pop {r4, r5, r6}
	pop {r3}
	bx r3


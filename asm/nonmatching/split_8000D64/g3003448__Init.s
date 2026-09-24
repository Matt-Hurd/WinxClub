	thumb_func_start g3003448__Init
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xdf
	lsls r0, r0, #5
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	ldr r0, _08001044
	str r0, [r4]
	ldr r0, _08001048
	str r4, [r0]
	ldr r0, _0800104C
	str r0, [r4]
	adds r0, r4, #4
	bl sub_800B7DC
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r4, r0
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	movs r0, #0x67
	lsls r0, r0, #6
	adds r0, r4, r0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r2, _08001050
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x28]
	bics r1, r2
	adds r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #0x28]
	adds r0, r4, #0
	b %1
	thumb_func_end g3003448__Init


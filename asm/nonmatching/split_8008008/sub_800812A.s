	non_word_aligned_thumb_func_start sub_800812A
	push {r3, r4, r5, lr}
	ldr r5, _080081C8
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r1, _080081C4
	str r0, [r1]
	ldr r0, _080081CC
	str r4, [r1, #4]
	movs r3, #1
	movs r1, #5
	ldr r0, [r0]
	ldr r2, _080081D0
	bl sub_800B12C
	lsrs r0, r4, #6
	movs r1, #0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xc1
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #8]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_800812A


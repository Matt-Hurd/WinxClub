	non_word_aligned_thumb_func_start sub_801DB3E
	push {r4, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r2, [r1, #4]
	adds r4, #0x80
	ldr r0, [r4, #0x10]
	ldr r3, _0801DCE4
	lsls r2, r2, #0x17
	lsrs r2, r2, #3
	ands r0, r3
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r2, [r1, #6]
	asrs r3, r3, #9
	ands r0, r3
	lsls r2, r2, #0x17
	lsrs r2, r2, #0xc
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r0, [r1, #8]
	lsls r0, r0, #7
	bl sub_8040594
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x15
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	lsrs r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #0x14]
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_801DB3E


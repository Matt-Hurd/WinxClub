	non_word_aligned_thumb_func_start sub_80051D6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #8]
	adds r5, r2, #0
	lsls r0, r0, #0x1f
	bmi %14
	movs r0, #0
13
	pop {r3, r4, r5}
	pop {r3}
	bx r3
14
	adds r0, r4, #0
	bl sub_8005170
	ldr r1, [r0, #8]
	ldr r2, [r4, #0xc]
	lsrs r1, r1, #8
	adds r1, #7
	lsrs r1, r1, #3
	lsls r1, r1, #3
	adds r1, #0xc
	adds r1, r1, r2
	str r1, [r4, #0xc]
	ldr r1, [r4, #8]
	lsls r2, r1, #0x1f
	adds r1, #2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	lsrs r2, r2, #0x1f
	orrs r1, r2
	str r1, [r4, #8]
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r1, r5
	str r1, [r0, #8]
	adds r0, #0xc
	b %13
	thumb_func_end sub_80051D6


	INCLUDE asm/macros.inc
	AREA text, CODE


	non_word_aligned_thumb_func_start sub_80015F2

sub_80015F2
	push {r4, r5, r6}
	adds r4, r2, #0
	adds r6, r3, #0
	movs r3, #0
	movs r2, #0
	adds r5, r1, #0
	stm r1!, {r2, r3}
	movs r1, #0
	stm r4!, {r1, r2, r3}
	stm r4!, {r2, r3}
	ldrh r1, [r6]
	subs r4, #0x14
	ldr r2, [r4, #4]
	movs r3, #0xff
	lsrs r1, r1, #2
	adds r1, #0xff
	lsls r3, r3, #4
	bics r2, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	orrs r1, r2
	str r1, [r4, #4]
	ldrh r2, [r6, #2]
	lsls r3, r3, #8
	bics r1, r3
	lsrs r2, r2, #2
	adds r2, #0xff
	lsls r2, r2, #0x18
	lsrs r2, r2, #0xc
	orrs r1, r2
	ldr r2, [r4, #0xc]
	ldr r3, _080017D0
	orrs r2, r3
	str r2, [r4, #0xc]
	lsls r2, r3, #4
	orrs r1, r2
	lsrs r1, r1, #4
	lsls r1, r1, #4
	ldr r2, [r4]
	ldr r3, _080017D4
	adds r1, #8
	str r1, [r4, #4]
	orrs r2, r3
	str r2, [r4]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r3, _080017D8
	ldr r6, _080017DC
	muls r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1d
	adds r1, r2, r1
	ldr r2, [r4, #8]
	asrs r1, r1, #3
	lsls r1, r1, #0xc
	lsrs r2, r2, #0x14
	lsls r2, r2, #0x14
	lsrs r1, r1, #0xc
	orrs r1, r2
	str r1, [r4, #8]
	movs r2, #0x67
	lsls r2, r2, #6
	ldrh r1, [r0, #0xe]
	adds r0, r0, r2
	ldr r2, [r0, #0x18]
	adds r1, r1, r2
	ldr r2, [r5]
	lsls r1, r1, #0x10
	lsrs r2, r2, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x10
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, [r5, #4]
	ands r1, r6
	ands r2, r3
	lsls r2, r2, #0xb
	lsrs r2, r2, #0xb
	str r2, [r5, #4]
	ldr r3, [r4, #4]
	lsrs r2, r2, #0xa
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x18
	lsls r3, r3, #2
	adds r3, #4
	lsls r3, r3, #0x16
	lsrs r3, r3, #1
	orrs r1, r3
	str r1, [r5]
	ldr r1, [r4, #4]
	lsls r2, r2, #0xa
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	orrs r1, r2
	str r1, [r5, #4]
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	lsls r3, r2, #1
	ldrh r3, [r1, r3]
	str r3, [r0, #0x18]
	asrs r0, r6, #0x1f
	lsls r2, r2, #1
	strh r0, [r1, r2]
	pop {r4, r5, r6}
	bx lr

	ALIGN
_080017D0 DCDU 0xFFFF0000
_080017D4 DCDU 0x0FFFFFFF
_080017D8 DCDU 0xFFE003FF
_080017DC DCDU 0x801FFFFF

	END

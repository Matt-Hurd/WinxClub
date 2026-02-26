	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8004984

sub_8004984
	ldr r1, [r0, #0x14]
	lsls r2, r1, #0x1f
	bpl %20
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0, #0x14]
	b %21
20
	lsls r2, r1, #0x1e
	bpl %21
	movs r2, #2
	bics r1, r2
	str r1, [r0, #0x14]
	ldr r2, [r0, #0x10]
	adds r1, r2, #0
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	adds r1, #8
	subs r2, r3, r2
	strh r2, [r1]
21
	ldr r1, [r0, #0x14]
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	bx lr

	END

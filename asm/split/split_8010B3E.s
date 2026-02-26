	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8010B3E

sub_8010B3E
	push {r4}
	ldr r2, [r0, #0x58]
	ldr r3, [r0, #0x7c]
	movs r4, #0x80
	ldr r4, [r4, r0]
	muls r2, r1
	adds r3, r3, r2
	ands r3, r4
	str r3, [r0, #0x7c]
	movs r3, #0x1b
	lsls r3, r3, #6
	adds r3, r0, r3
	ldr r4, [r3, #0x3c]
	adds r2, r4, r2
	str r2, [r3, #0x3c]
	ldr r2, [r0, #0x60]
	subs r2, r2, r1
	str r2, [r0, #0x60]
	ldr r2, [r0, #0x64]
	adds r1, r2, r1
	str r1, [r0, #0x64]
	pop {r4}
	bx lr

	END

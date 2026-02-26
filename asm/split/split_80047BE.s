	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_80047BE

sub_80047BE
	ldrh r3, [r0, #2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	lsrs r3, r3, #5
	lsls r3, r3, #5
	orrs r1, r3
	movs r3, #0x1f
	lsls r3, r3, #8
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	bics r1, r3
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr

	END

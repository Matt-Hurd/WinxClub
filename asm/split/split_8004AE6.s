	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8004AE6

sub_8004AE6
	ldr r2, [r0, #0x14]
	movs r3, #8
	bics r2, r3
	lsls r1, r1, #3
	orrs r1, r2
	str r1, [r0, #0x14]
	bx lr

	END

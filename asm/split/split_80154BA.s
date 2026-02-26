	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_80154BA

sub_80154BA
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x40
	ldrb r1, [r2, #0xc]
	ldrb r2, [r2, #0xd]
	strb r1, [r0]
	strb r2, [r0, #1]
	bx lr

	END

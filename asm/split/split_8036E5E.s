	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8036E5E

sub_8036E5E
	movs r1, #0x21
	adds r0, #0x80
	str r1, [r0, #0x1c]
	bx lr

	END

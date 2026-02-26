	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8000CC6

sub_8000CC6
	str r1, [r0, #0x4c]
	bx lr

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8000C6E

sub_8000C6E
	str r1, [r0, #0x1c]
	bx lr
	ALIGN

	END

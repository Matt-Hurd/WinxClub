	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8000D5A

sub_8000D5A
	adds r0, #4
	bx lr

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8004742

sub_8004742
	adds r0, #4
	bx lr

	END

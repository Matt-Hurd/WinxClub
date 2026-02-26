	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8000CCA

sub_8000CCA
	str r1, [r0, #0x50]
	bx lr

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_80047B6

sub_80047B6
	strh r1, [r0, #4]
	bx lr

	END

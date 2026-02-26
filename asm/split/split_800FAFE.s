	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_800FAFE

sub_800FAFE
	movs r0, #1
	bx lr

	END

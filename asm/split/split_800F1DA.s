	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_800F1DA

sub_800F1DA
	adds r0, #0xe8
	bx lr
	ALIGN

	END

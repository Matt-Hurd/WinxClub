	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_80047BA

sub_80047BA
	ldrh r0, [r0, #4]
	bx lr

	END

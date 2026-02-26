	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_800B1CA

sub_800B1CA
	add sp, #4
	pop {r3}
	bx r3

	END

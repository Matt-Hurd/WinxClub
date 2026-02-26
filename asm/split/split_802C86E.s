	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_802C86E

sub_802C86E
	adds r0, #0x40
	ldrb r0, [r0, #8]
	bx lr
	ALIGN

	END

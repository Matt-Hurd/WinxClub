	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_800185E

sub_800185E
	ldr r0, [r0, #0x34]
	lsls r1, r1, #4
	adds r0, r1, r0
	bx lr

	END

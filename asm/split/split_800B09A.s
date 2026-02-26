	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_800B09A

sub_800B09A
	movs r0, #3
	lsls r0, r0, #0x19
	bx lr

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_8004B76

sub_8004B76
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bx lr

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003BC8

	non_word_aligned_thumb_func_start sub_8011B22

sub_8011B22
	ldr r1, _08011D30
	str r0, [r1, #0x2c]
	bx lr

	ALIGN
_08011D30 DCDU gUnknown_03003BC8

	END

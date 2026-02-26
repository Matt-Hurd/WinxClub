	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8

	non_word_aligned_thumb_func_start sub_80050FA

sub_80050FA
	ldr r1, _08005258
	cmp r0, #0
	bne %2
	ldr r0, [r1, #4]
2
	str r0, [r1, #8]
	bx lr

	ALIGN
_08005258 DCDU gUnknown_030033E8

	END

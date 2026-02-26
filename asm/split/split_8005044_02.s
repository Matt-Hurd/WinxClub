	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8

	non_word_aligned_thumb_func_start GetEWRAMStart

GetEWRAMStart
	ldr r0, _08005258
	ldr r0, [r0, #8]
	bx lr

	ALIGN
_08005258 DCDU gUnknown_030033E8

	END

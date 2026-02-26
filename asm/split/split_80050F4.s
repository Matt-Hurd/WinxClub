	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8

	thumb_func_start sub_80050F4

sub_80050F4
	ldr r0, _08005258
	ldr r0, [r0, #4]
	bx lr

	ALIGN
_08005258 DCDU gUnknown_030033E8

	END

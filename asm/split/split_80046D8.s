	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80046D8

sub_80046D8
	ldr r0, [r0, #4]
	bx lr

	END

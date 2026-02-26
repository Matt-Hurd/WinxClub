	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80315FC

sub_80315FC
	str r1, [r0, #4]
	bx lr

	END

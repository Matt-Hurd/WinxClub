	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8004670

sub_8004670
	str r1, [r0, #4]
	bx lr

	END

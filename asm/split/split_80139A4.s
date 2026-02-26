	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80139A4

sub_80139A4
	str r1, [r0, #0x40]
	bx lr

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8004AFC

sub_8004AFC
	strh r3, [r0, #0xa]
	strh r1, [r0, #0xc]
	bx lr

	END

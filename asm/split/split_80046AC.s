	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80046AC

sub_80046AC
	str r1, [r0, #4]
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
	bx lr

	END

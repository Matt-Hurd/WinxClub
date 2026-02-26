	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_800FC6C

sub_800FC6C
	adds r0, #4
	stm r0!, {r1, r2}
	bx lr

	END

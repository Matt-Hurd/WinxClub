	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8004780

sub_8004780
	lsrs r0, r0, #0x1e
	bx lr

	END

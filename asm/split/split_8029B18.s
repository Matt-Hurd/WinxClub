	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8029B18

sub_8029B18
	ldr r1, [r4, #0x7c]
	movs r0, #7
	lsls r0, r0, #0x1c
	adds r2, r1, #0
	bics r1, r0
	adds r2, r2, r3
	b %57
	ALIGN

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_8004B38

sub_8004B38
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	END

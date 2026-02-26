	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_802DFE4

sub_802DFE4
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	bx lr
	ALIGN

	END

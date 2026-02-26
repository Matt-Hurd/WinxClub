	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_800B0C0

sub_800B0C0
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0, #6]
	bx lr
	ALIGN

	END

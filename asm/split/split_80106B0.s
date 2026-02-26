	INCLUDE asm/macros.inc
	AREA text, CODE

	thumb_func_start sub_80106B0

sub_80106B0
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	lsls r0, r0, #6
	bx lr

	END

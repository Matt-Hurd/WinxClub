	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_800B2A4

sub_800B2A4
	ldr r0, _0800B2B4
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bx lr

	ALIGN
_0800B2B4 DCDU REG_IE

	END

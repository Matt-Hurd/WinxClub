	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E7C

	thumb_func_start sub_800FDA4

sub_800FDA4
	ldr r0, _0800FE6C
	ldrh r1, [r0, #0xa]
	movs r2, #0x1d
	lsls r2, r2, #9
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	lsrs r2, r0, #0xb
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldr r1, _0800FE7C
	ldr r1, [r1]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, _0800FE80
	str r1, [r0, #4]
	ldr r1, _0800FE84
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr

	ALIGN
_0800FE6C DCDU REG_DMA1
_0800FE7C DCDU gUnknown_03003E7C
_0800FE80 DCDU REG_FIFO
_0800FE84 DCDU 0xB6400004

	END

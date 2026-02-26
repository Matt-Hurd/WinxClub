	INCLUDE asm/macros.inc
	AREA text, CODE


	non_word_aligned_thumb_func_start sub_80002E2

sub_80002E2
	ldr r1, _08000314
	sub sp, #4
	movs r3, #0
	strh r3, [r1, #8]
	movs r1, #0
	str r1, [sp]
	ldr r1, _08000318
	mov r2, sp
	str r2, [r1]
	movs r2, #3
	lsls r2, r2, #0x19
	str r2, [r1, #4]
	ldr r2, _0800031C
	str r2, [r1, #8]
	ldr r1, [r1, #8]
	movs r1, #0xff
	adds r1, #1
	lsls r2, r1, #0x12
	strh r1, [r2]
	movs r1, #5
	lsls r1, r1, #0x18
	strh r0, [r1]
	ldr r0, _08000320
	strh r3, [r0, #0x10]
22
	b %22
	ALIGN

	ALIGN
_08000314 DCDU REG_IE
_08000318 DCDU REG_DMA3
_0800031C DCDU 0x85006000
_08000320 DCDU REG_WIN0H

	END

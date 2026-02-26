	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03002D28
	IMPORT gUnknown_030034FC

	non_word_aligned_thumb_func_start sub_8011562

sub_8011562
	ldr r0, _08011748
	movs r1, #0
	strh r1, [r0, #4]
	ldr r2, _08011730
	adds r2, #0x24
	ldrh r0, [r2, #0x10]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strh r0, [r2, #0x10]
	ldr r0, _0801172C
	subs r2, #0x24
	str r0, [r2, #8]
	ldr r0, _0801174C
	str r1, [r0]
	ldr r0, _08011750
	ldr r1, [r0, #4]
	cmp r1, #0
	bge %8
	ldr r1, _08011754
	str r1, [r0, #4]
	mov r8, r8
	mov r8, r8
	movs r1, #0x11
	lsls r1, r1, #6
	strh r1, [r0, #6]
8
	bx lr

	ALIGN
_0801172C DCDU gUnknown_03002D28
_08011730 DCDU gUnknown_030034FC
_08011748 DCDU REG_SOUNDCNT
_0801174C DCDU REG_TM0CNT
_08011750 DCDU REG_DMA1DAD
_08011754 DCDU 0x84400004

	END

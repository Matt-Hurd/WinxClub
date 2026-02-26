	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0804AE70

	non_word_aligned_thumb_func_start sub_801145E

sub_801145E
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsls r2, r2, #0x1e
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	lsrs r2, r2, #0x1e
	adds r3, r2, r1
	asrs r2, r0, #3
	movs r1, #0x1f
	cmp r2, #0x1f
	bge %10
	movs r1, #0
	cmp r0, #0
	blt %10
	ldr r1, _080114AC
	lsls r0, r0, #0x1d
	ldrb r1, [r1, r3]
	lsrs r0, r0, #0x1d
	cmp r1, r0
	bhs %8
	movs r0, #1
	b %9
8
	movs r0, #0
9
	adds r1, r0, r2
10
	adds r0, r1, #0
	bx lr
	ALIGN

	ALIGN
_080114AC DCDU gUnknown_0804AE70

	END

	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802E8B0

	non_word_aligned_thumb_func_start sub_80384FA

sub_80384FA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E8B0
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x3c
	adds r4, #0x40
	strb r0, [r4, #6]
	pop {r4}
	pop {r3}
	bx r3

	END

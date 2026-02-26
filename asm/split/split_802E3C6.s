	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_80268AC
	IMPORT sub_8028BE4

	non_word_aligned_thumb_func_start sub_802E3C6

sub_802E3C6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #1
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	str r1, [r4, #0x34]
	lsls r1, r1, #6
	ldr r5, _0802E414
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	ldr r0, [r5]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %2
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_0802E414 DCDU gUnknown_0300345C

	END

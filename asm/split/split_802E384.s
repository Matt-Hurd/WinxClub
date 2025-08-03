	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E5D2
	IMPORT sub_803FF24

	thumb_func_start sub_802E384
sub_802E384
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802E3C0
	ldr r1, [r4, #0x14]
	adds r0, r4, #0
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	adds r0, #0x1c
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	adds r1, r2, #0
	movs r2, #1
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r2, [r4, #4]
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_803FF24
_0802E3C0
	pop {r4}
	pop {r3}
	bx r3

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
	beq _0802E408
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802E408
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E40E
sub_802E40E
	adds r0, #0x30
	ldrb r0, [r0, #0xd]
	bx lr
	ALIGN
_0802E414 DCDU gUnknown_0300345C
	END
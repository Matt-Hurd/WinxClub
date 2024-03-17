    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E5D2
	IMPORT sub_802E8B0
	IMPORT sub_8040148
	IMPORT sub_8040594

	thumb_func_start sub_803846C
sub_803846C ;@ 0x0803846C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _080384B4
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	strh r0, [r3]
	ldrh r1, [r3]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_080384B4
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	bne _080384D0
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_080384D0
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80384D8
sub_80384D8 ;@ 0x080384D8
	push {r3, r4, r5, lr}
	ldr r4, _08038524 ;@ =gUnknown_0300345C
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _080384F4
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_080384F4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80384FA
sub_80384FA ;@ 0x080384FA
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

	non_word_aligned_thumb_func_start sub_803851E
sub_803851E ;@ 0x0803851E
	adds r0, #0x40
	ldrb r0, [r0, #4]
	bx lr
	ALIGN
_08038524 DCDU gUnknown_0300345C
	END
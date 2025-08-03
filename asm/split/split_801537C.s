    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033D0
	IMPORT gUnknown_03003EA4
	IMPORT sub_8014EB8
	IMPORT sub_801505A
	IMPORT sub_8015240
	IMPORT sub_8004C44

	thumb_func_start sub_801537C
sub_801537C ;@ 0x0801537C
	push {r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r4, r0, #0
	adds r0, #0xc0
	movs r2, #0
	sub sp, #0x14
	ldr r3, _080154D4 ;@ =gUnknown_03003EA4
	str r2, [r0, #0x1c]
	ldr r2, [r3]
	movs r5, #0x13
	lsls r5, r5, #7
	adds r2, r2, r5
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	str r2, [r4]
	ldr r2, [r3]
	adds r2, r2, r5
	ldr r3, [r2, #0x20]
	ldr r3, [r3, #0x50]
	ldrh r3, [r3, #0xe]
	str r3, [r4, #4]
	ldr r3, [r2, #0x20]
	ldr r3, [r3, #0x54]
	ldr r3, [r3, #4]
	lsls r3, r3, #5
	lsrs r3, r3, #0x1d
	str r3, [r4, #8]
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x54]
	ldr r2, [r2, #4]
	lsls r2, r2, #2
	lsrs r2, r2, #0x1d
	str r2, [r4, #0xc]
	adds r2, r1, #0
	adds r2, #0x2c
	str r2, [sp, #0x10]
	ldr r2, [r1, #0x2c]
	str r2, [r4, #0x10]
	ldr r2, [sp, #0x10]
	ldr r2, [r2, #4]
	str r2, [r4, #0x14]
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	adds r2, r1, #0
	str r1, [r0, #0x20]
	muls r1, r2
	str r1, [r0, #0x24]
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8015240
	cmp r0, #0
	bne _080153F6
_080153EE
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080153F6
	ldr r1, [r6]
	str r1, [sp, #8]
	adds r2, r1, #0
	adds r0, r4, #0
	ldr r7, [r6, #4]
	bl sub_8014EB8
	ldr r1, [r6, #4]
	adds r5, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r0, r5, r0
	bl sub_8004C44
	asrs r0, r0, #8
	movs r5, #0
	cmp r0, #2
	bgt _08015422
	movs r5, #1
	b _08015438
_08015422
	cmp r0, #4
	bgt _0801542A
	movs r5, #2
	b _08015438
_0801542A
	cmp r0, #8
	bgt _08015432
	movs r5, #3
	b _08015438
_08015432
	cmp r0, #0x10
	bgt _08015438
	movs r5, #4
_08015438
	movs r0, #1
	lsls r0, r5
	movs r1, #1
	str r1, [sp, #4]
	cmp r0, #1
	str r0, [sp, #0xc]
	blt _08015496
_08015446
	ldr r0, [sp, #0x10]
	ldr r1, [r0]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #4]
	ldr r2, [sp, #8]
	asrs r2, r5
	adds r1, r1, r2
	str r1, [r4, #0x10]
	adds r1, r7, #0
	asrs r1, r5
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_801505A
	cmp r0, #0
	ldr r0, [r6]
	beq _08015480
	ldr r1, [sp, #8]
	ldr r2, _080154D8 ;@ =gUnknown_030033D0
	subs r0, r1, r0
	ldr r1, [r6, #4]
	asrs r0, r5
	subs r1, r7, r1
	asrs r1, r5
	stm r2!, {r0, r1}
	movs r0, #1
	b _080153EE
_08015480
	ldr r2, [sp, #8]
	adds r2, r0, r2
	str r2, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [sp, #4]
	adds r7, r0, r7
	ldr r0, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, r1
	bge _08015446
_08015496
	movs r0, #0
	b _080153EE

	non_word_aligned_thumb_func_start sub_801549A
sub_801549A ;@ 0x0801549A
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x3c
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_80154AA
sub_80154AA ;@ 0x080154AA
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x44
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_80154BA
sub_80154BA ;@ 0x080154BA
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x40
	ldrb r1, [r2, #0xc]
	ldrb r2, [r2, #0xd]
	strb r1, [r0]
	strb r2, [r0, #1]
	bx lr

	non_word_aligned_thumb_func_start sub_80154CE
sub_80154CE ;@ 0x080154CE
	adds r0, #0xc0
	ldr r0, [r0, #0x1c]
	bx lr
	ALIGN
_080154D4 DCDU gUnknown_03003EA4
_080154D8 DCDU gUnknown_030033D0
	END
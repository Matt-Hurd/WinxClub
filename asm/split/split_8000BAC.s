	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033C8
	IMPORT gUnknown_03003EA4

	thumb_func_start sub_8000BAC
sub_8000BAC
	ldr r1, _08000C74
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x34]
	ldr r0, _08000C78
	ldr r1, [r1, #0x54]
	ldrh r0, [r0]
	ldr r1, [r1, #4]
	lsls r1, r1, #5
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x1d
	lsls r0, r1
	ldr r1, _08000C78
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start sub_8000BD8
sub_8000BD8
	ldr r1, _08000C74
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x3c]
	ldr r0, _08000C78
	ldr r1, [r1, #0x54]
	ldrh r0, [r0, #4]
	ldr r1, [r1, #4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x1d
	lsls r0, r0, #0x10
	lsls r0, r1
	ldr r1, _08000C78
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1]
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8000C02
sub_8000C02
	ldr r1, _08000C74
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x38]
	ldr r0, _08000C78
	ldr r1, [r1, #0x54]
	ldrh r0, [r0, #2]
	ldr r1, [r1, #4]
	lsls r1, r1, #2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x1d
	lsls r0, r1
	ldr r1, _08000C78
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1, #4]
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8000C2E
sub_8000C2E
	ldr r1, _08000C74
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x40]
	ldr r0, _08000C78
	ldr r1, [r1, #0x54]
	ldrh r0, [r0, #6]
	ldr r1, [r1, #4]
	lsls r1, r1, #2
	lsrs r1, r1, #0x1d
	lsls r0, r0, #0x10
	lsls r0, r1
	ldr r1, _08000C78
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1, #4]
	movs r0, #1
	bx lr

	thumb_func_start sub_8000C58
sub_8000C58
	movs r1, #0
_08000C5A
	ldrb r2, [r0, r1]
	cmp r2, #0xff
	beq _08000C64
	movs r0, #1
	bx lr
_08000C64
	adds r1, #1
	cmp r1, #0x14
	blo _08000C5A
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8000C6E
sub_8000C6E
	str r1, [r0, #0x1c]
	bx lr
	ALIGN
_08000C74 DCDU gUnknown_03003EA4
_08000C78 DCDU gUnknown_030033C8
	END

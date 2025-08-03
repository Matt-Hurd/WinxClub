	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803E2A0
	IMPORT sub_80003F4
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_800CD58
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_802E418
sub_802E418
	push {r4, lr}
	cmp r0, #0
	bne _0802E428
	movs r0, #0x3c
	bl maybeMallocEWRAM
	cmp r0, #0
	beq _0802E474
_0802E428
	ldr r1, _0802E7F0
	movs r3, #7
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #8
	lsrs r2, r2, #8
	lsls r2, r2, #8
	bics r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xb
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x13
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	movs r3, #0xf
	lsls r3, r3, #0x16
	bics r2, r3
	str r1, [r0, #0x38]
	str r2, [r0, #0x34]
	adds r4, r0, #0
	adds r4, #0x2c
	movs r2, #0
	movs r3, #0
	stm r4!, {r2, r3}
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
_0802E474
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E47A
sub_802E47A
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4
	beq _0802E492
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
_0802E492
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0802E4A4
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
_0802E4A4
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E4AA
sub_802E4AA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0802E7F0
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4
	beq _0802E4C8
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
_0802E4C8
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0802E4DA
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
_0802E4DA
	cmp r7, #0
	beq _0802E4E4
	adds r0, r4, #0
	bl sub_803DA18
_0802E4E4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_53
nullsub_53
	bx lr

	thumb_func_start nullsub_54
nullsub_54
	bx lr

	non_word_aligned_thumb_func_start sub_802E4EE
sub_802E4EE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _0802E5CC
	ldr r6, _0802E7F8
	mvns r1, r1
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	cmp r2, #0
	beq _0802E518
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802E518
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x2c]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsls r2, r2, #1
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1f
	lsrs r2, r2, #1
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x2c]
	ldrb r2, [r1, #5]
	cmp r2, #0x42
	bhi _0802E5B0
	lsls r2, r3, #5
	orrs r0, r2
	str r0, [r4, #0x2c]
_0802E5B0
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802E5CC
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802E7F4
	ldr r0, [r0]
	bl sub_8001432
_0802E5CC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E5D2
sub_802E5D2
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x14]
	adds r5, r0, #0
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #2
	bpl _0802E6C4
	ldr r0, _0802E7F4
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r5, #4]
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	ldr r4, [r5, #4]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	ldr r6, _0802E7F8
	lsrs r7, r0, #0x1a
	str r1, [sp]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, _0802E7FC
	strb r7, [r4, #3]
	muls r0, r7
	str r0, [r4, #8]
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #4]
	lsls r1, r1, #3
	lsrs r2, r1, #0x1f
	movs r1, #2
	cmp r2, #0
	ldr r2, [r0]
	beq _0802E642
	movs r4, #0xff
	adds r4, #1
	orrs r1, r2
	bics r1, r4
	str r1, [r0]
	b _0802E64C
_0802E642
	movs r4, #0xff
	adds r4, #1
	bics r2, r1
	bics r2, r4
	str r2, [r0]
_0802E64C
	ldr r0, [r5, #0x2c]
	ldr r4, [r5, #4]
	lsrs r7, r0, #0x1f
	ldr r0, [r4]
	beq _0802E666
	lsls r0, r0, #0x1c
	bmi _0802E674
	ldr r0, _0802E7F4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0802E674
_0802E666
	lsls r0, r0, #0x1c
	bpl _0802E674
	ldr r0, _0802E7F4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E674
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r7, #3
	orrs r0, r1
	str r0, [r4]
	ldr r4, [r5, #4]
	ldr r0, [r5, #0x2c]
	ldrh r2, [r4, #0x28]
	movs r3, #1
	lsls r0, r0, #4
	lsrs r1, r0, #0x1f
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	movs r7, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0802E738
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	blt _0802E6CA
	movs r2, #0xf
	ldr r1, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge _0802E6CA
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _0802E6CA
	movs r2, #5
	lsls r2, r2, #0x15
	ldr r1, [r4, #0x38]
	b _0802E6C6
_0802E6C4
	b _0802E7EA
_0802E6C6
	cmp r1, r2
	blt _0802E6E4
_0802E6CA
	lsls r0, r0, #0x16
	bmi _0802E738
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r4]
	b _0802E738
_0802E6E4
	lsls r0, r0, #0x16
	bpl _0802E702
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0802E702
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
_0802E738
	ldr r1, [r4]
	adds r0, r7, #0
	orrs r1, r7
	str r1, [r4]
	ldr r1, [r5, #4]
	ldr r3, [r5, #0x1c]
	ldr r4, [r1, #0x2c]
	ldr r7, [r1, #0x30]
	subs r4, r3, r4
	ldr r3, [r5, #0x20]
	adds r2, r1, #0
	subs r3, r3, r7
	ldr r7, [r1, #0x34]
	adds r2, #0x34
	adds r7, r7, r4
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	adds r7, r7, r3
	str r7, [r2, #4]
	ldr r7, [r2, #8]
	adds r4, r7, r4
	str r4, [r2, #8]
	ldr r4, [r2, #0xc]
	movs r7, #3
	adds r3, r4, r3
	str r3, [r2, #0xc]
	ldr r3, [r5, #0x1c]
	ldr r4, [r5, #0x20]
	str r3, [r1, #0x2c]
	str r4, [r1, #0x30]
	movs r4, #0xff
	ldr r2, [r1]
	adds r4, #1
	orrs r2, r4
	str r2, [r1]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0x34]
	ldrh r3, [r1, #0x2a]
	lsls r7, r7, #0xa
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x18
	bics r3, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	orrs r3, r7
	strh r3, [r1, #0x2a]
	strb r2, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi _0802E7A2
	orrs r0, r2
	str r0, [r1]
_0802E7A2
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #7
	bpl _0802E7AE
	ldr r0, [r5, #4]
	bl sub_8000914
_0802E7AE
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #6
	bpl _0802E7EA
	ldr r5, [r5, #4]
	movs r7, #1
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802E7EA
	ldr r0, _0802E7F4
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802E7DC
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802E7DC
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_800CD58
_0802E7DC
	ldr r0, [r5]
	orrs r0, r7
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802E7EA
	orrs r0, r4
	str r0, [r5]
_0802E7EA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802E7F0 DCDU gUnknown_0803E2A0
_0802E7F4 DCDU gUnknown_03003EB8
_0802E7F8 DCDU gUnknown_03003EA0
_0802E7FC DCDU 0x0010BE20
	END

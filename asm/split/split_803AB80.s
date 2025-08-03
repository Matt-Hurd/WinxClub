	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033C0
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803ED4C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_8002004
	IMPORT sub_800CD58
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __call_via_r1
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_803AB80
sub_803AB80
	push {r4, lr}
	adds r4, r0, #0
	bne _0803AB98
	movs r0, #0x40
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _0803AB98
	adds r0, r4, #0
_0803AB92
	pop {r4}
	pop {r3}
	bx r3
_0803AB98
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0803AE48
	str r0, [r4]
	adds r0, r4, #0
	b _0803AB92

	non_word_aligned_thumb_func_start sub_803ABA6
sub_803ABA6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803AE48
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0803ABC2
	adds r0, r4, #0
	bl sub_803DA18
_0803ABC2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803ABC8
sub_803ABC8
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	movs r1, #0xff
	lsls r1, r1, #0xb
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x10
	adds r6, r3, #0
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, _0803AE4C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	ldr r5, [r0, #0x58]
	ldr r0, _0803AE50
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r0]
	movs r3, #0xf
	lsls r3, r3, #0x13
	subs r2, r5, r1
	cmp r2, r3
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x34]
	ble _0803AC1E
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	lsls r2, r2, #5
	adds r2, #0x60
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	b _0803AC2E
_0803AC1E
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	lsls r2, r2, #5
	adds r2, #0x10
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
_0803AC2E
	ldr r0, [r4, #0x34]
	lsls r1, r6, #0x18
	lsrs r0, r0, #8
	lsls r0, r0, #8
	lsrs r1, r1, #0x18
	orrs r0, r1
	lsls r1, r0, #6
	lsrs r1, r1, #0x1c
	ldr r2, _0803AE54
	lsls r1, r1, #1
	str r0, [r4, #0x34]
	ldrh r1, [r2, r1]
	movs r2, #0x3c
	ldr r6, _0803AE58
	str r1, [r4, #0x38]
	movs r1, #4
	strb r1, [r2, r4]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #1
	lsls r0, r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	lsls r7, r2, #7
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r1, r0, #0
	subs r2, r2, r5
	ldr r5, [r0, #0x34]
	adds r1, #0x34
	adds r5, r5, r3
	str r5, [r0, #0x34]
	ldr r5, [r0, #0x38]
	adds r5, r5, r2
	str r5, [r1, #4]
	ldr r5, [r1, #8]
	adds r3, r5, r3
	str r3, [r1, #8]
	ldr r3, [r1, #0xc]
	adds r2, r3, r2
	str r2, [r1, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r1, [r0]
	orrs r1, r7
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0803ACCC
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_80012F0
_0803ACCC
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0803ACFE
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0803ACFE
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r5, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _0803AD3A
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803AD2C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0803AD2C
	ldr r0, _0803AE5C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_0803AD2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _0803AD3A
	orrs r0, r7
	str r0, [r4]
_0803AD3A
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803AD40
sub_803AD40
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r6, r4, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	movs r7, #0
	cmp r0, #0
	beq _0803ADBA
	cmp r0, #1
	beq _0803ADBA
	cmp r0, #2
	bne _0803ADB4
	ldr r0, _0803AE5C
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r7
	cmp r2, #0
	beq _0803AD74
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803AD74
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0xff
	subs r0, #0x8b
	ldr r0, [r4, #4]
	beq _0803AE2E
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x8b
	bl sub_80007A0
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0803AD9C
	ldr r0, _0803AE58
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0803AD9C
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803ADB4
	bl sub_8000914
_0803ADB4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803ADBA
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, [r4]
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _0803ADF2
	cmp r1, #0
	beq _0803ADB4
	ldr r0, _0803AE58
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0803ADB4
_0803ADF2
	ldr r2, [r4, #0x1c]
	ldr r3, [r1, #0x2c]
	ldr r5, [r1, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r0, r1, #0
	subs r2, r2, r5
	ldr r5, [r1, #0x34]
	adds r0, #0x34
	adds r5, r5, r3
	str r5, [r1, #0x34]
	ldr r5, [r1, #0x38]
	adds r4, #0x1c
	adds r5, r5, r2
	str r5, [r0, #4]
	ldr r5, [r0, #8]
	adds r3, r5, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldm r4!, {r2, r3}
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b _0803ADB4
_0803AE2E
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803ADB4
	cmp r0, #0
	beq _0803ADB4
	ldr r0, _0803AE58
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0803ADB4
	ALIGN
_0803AE48 DCDU gUnknown_0803ED4C
_0803AE4C DCDU gUnknown_03003458
_0803AE50 DCDU gUnknown_03003450
_0803AE54 DCDU gUnknown_030033C0
_0803AE58 DCDU gUnknown_03003EB8
_0803AE5C DCDU gUnknown_03003EA0
	END

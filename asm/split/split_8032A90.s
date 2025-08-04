	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300334A
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803EC44
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001432
	IMPORT sub_80187A0
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E47A
	IMPORT sub_802E4AA
	IMPORT sub_802E4EE
	IMPORT sub_802E5D2
	IMPORT sub_803357C
	IMPORT __call_via_r1
	IMPORT __call_via_r6
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803F38C
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_8040594


	thumb_func_start sub_8032A90
sub_8032A90
	push {r4, lr}
	adds r4, r0, #0
	bne _08032AA8
	movs r0, #0x58
	bl __nw__FUi
	adds r4, r0, #0
	bne _08032AA8
	adds r0, r4, #0
_08032AA2
	pop {r4}
	pop {r3}
	bx r3
_08032AA8
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08032E8C
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	b _08032AA2

	non_word_aligned_thumb_func_start sub_8032AC2
sub_8032AC2
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08032E8C
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	movs r6, #0
	cmp r0, #0
	ldr r5, _08032E90
	beq _08032AE2
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x3c]
_08032AE2
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08032AF4
	adds r1, r4, #0
	adds r1, #0x40
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x40]
_08032AF4
	ldr r0, [r4, #0x4c]
	bl sub_803357C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r7, #0
	beq _08032B0C
	adds r0, r4, #0
	bl sub_803DA18
_08032B0C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8032B12
sub_8032B12
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, r3, #0
	ldr r3, _08032E94
	movs r7, #0xff
	ldr r3, [r3]
	lsls r7, r7, #0xb
	ldr r5, [r3, #0x20]
	str r5, [r4, #0x48]
	movs r5, #5
	lsls r5, r5, #8
	adds r5, r3, r5
	ldr r6, [r5, #0x1c]
	lsls r6, r6, #5
	lsrs r6, r6, #0x19
	lsls r6, r6, #2
	adds r6, r6, r3
	ldr r6, [r6, #0x20]
	str r6, [r4, #0x44]
	ldr r5, [r5, #0x1c]
	lsls r5, r5, #0xc
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r3, r5, r3
	ldr r3, [r3, #0x20]
	str r3, [r4, #0x4c]
	ldr r3, [r3, #0x2c]
	str r3, [r4, #0x14]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	adds r5, r4, #0
	str r3, [r4, #0x20]
	adds r5, #0x1c
	adds r3, r0, #1
	str r6, [r4, #0x1c]
	bne _08032B7A
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08032B88
_08032B7A
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_08032B88
	ldr r0, [r4, #0x34]
	movs r1, #1
	movs r3, #5
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
	lsls r3, r3, #0x11
	lsls r1, r1, #0x12
	cmp r6, #0
	beq _08032BBC
	cmp r6, #1
	beq _08032BB0
	cmp r6, #2
	bne _08032BC8
	ldr r6, [r4, #0x1c]
	subs r3, r6, r3
	str r3, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	adds r1, r3, r1
	str r1, [r4, #0x20]
	b _08032BC8
_08032BB0
	movs r3, #1
	ldr r1, [r4, #0x20]
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r4, #0x20]
	b _08032BC8
_08032BBC
	ldr r6, [r4, #0x1c]
	adds r3, r6, r3
	str r3, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	adds r1, r3, r1
	str r1, [r4, #0x20]
_08032BC8
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x4c]
	movs r3, #0x16
	adds r1, #0xc0
	ldr r1, [r1, #0x3c]
	ldr r2, _08032E98
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	muls r1, r3
	adds r1, r1, r2
	ldr r2, _08032E9C
	lsls r0, r0, #6
	ldr r2, [r2]
	lsrs r0, r0, #0x1c
	adds r2, #0xb0
	ldrb r2, [r2, #7]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	str r1, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0x50
	cmp r0, #0
	bne _08032C0A
	movs r0, #1
	strb r0, [r1, #4]
	b _08032C0E
_08032C0A
	movs r0, #0
	strb r0, [r1, #4]
_08032C0E
	ldr r6, _08032E90
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	subs r1, #2
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	subs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	movs r2, #0
	movs r1, #0x78
	str r0, [r4, #0x40]
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	ldr r0, [r4, #0x40]
	subs r1, #1
	bl sub_80401C0
	ldr r0, _08032EA0
	ldr r1, [r0]
	movs r0, #0x49
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8032CCC
sub_8032CCC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	sub sp, #0x24
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08032CE2
	movs r1, #0
	bl sub_80401E4
	b _08032CE8
_08032CE2
	movs r1, #1
	bl sub_80401E4
_08032CE8
	ldr r0, [r4, #0x44]
	movs r5, #0x29
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	lsls r5, r5, #5
	cmp r0, #0xf
	ldr r6, _08032E94
	beq _08032CFC
	cmp r0, #0x10
	bne _08032D20
_08032CFC
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x4c]
	bl sub_803357C
_08032D18
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08032D20
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq _08032DC4
	cmp r0, #1
	beq _08032E00
	cmp r0, #2
	bne _08032D18
	ldr r0, _08032EA4
	ldr r7, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08032D4C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08032D4C
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _08032E40
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032D6E
	bl sub_8000914
_08032D6E
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032D88
	bl sub_8000914
_08032D88
	ldr r1, [r4]
	ldr r5, [r4, #0x44]
	ldr r2, [r1, #0x1c]
	adds r0, r4, #0
	adds r1, r2, r1
	bl __call_via_r1
	adds r3, r0, #0
	ldr r0, [r5]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r6, r1, r0
	ldr r1, [r4, #0x4c]
	adds r0, r5, #0
	bl __call_via_r6
	ldr r4, _08032EA0
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08032D18
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
	b _08032D18
_08032DC4
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032D18
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r2, #7
	ldr r0, [r4, #0x34]
	lsls r2, r2, #8
	bics r0, r2
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _08032D18
_08032E00
	b _08032E02
_08032E02
	adds r7, r4, #0
	adds r7, #0x50
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08032E1C
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08032E2A
_08032E1C
	ldr r0, [r4, #0x44]
	ldr r0, [r0, #0x2c]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_08032E2A
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x1c]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x1c
	str r0, [sp, #0x14]
	b _08032E42
_08032E40
	b _08032F58
_08032E42
	adds r6, r1, #0
	add r0, sp, #0xc
	bl sub_80187A0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	add r2, pc, #0x50
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	adds r5, r0, #0
	beq _08032EC0
	ldr r0, [sp, #0x18]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	str r0, [sp, #4]
	adds r0, r5, #0
	str r1, [sp, #8]
	asrs r1, r5, #0x1f
	str r1, [sp, #0x1c]
	str r5, [sp, #0x20]
	add r3, sp, #4
	ldm r3!, {r2, r3}
	bl __16_ll_srdv
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x14]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	b _08032EB0
	ALIGN
_08032E8C DCDU gUnknown_0803EC44
_08032E90 DCDU gUnknown_03003EB8
_08032E94 DCDU gUnknown_03003458
_08032E98 DCDU gUnknown_0300334A
_08032E9C DCDU gPlayerEntity
_08032EA0 DCDU gUnknown_0300345C
_08032EA4 DCDU gUnknown_03003EA0
_08032EA8 DCDU 0x00020000
_08032EAC DCDU 0x00000000
_08032EB0
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	bl __16_ll_srdv
	str r0, [r4, #0x28]
	b _08032EC6
_08032EC0
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
_08032EC6
	ldr r0, [r6]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r6, #4]
	movs r0, #1
	lsls r0, r0, #0x11
	cmp r5, r0
	bgt _08032F1A
	ldrb r0, [r7, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r7, #4]
	cmp r0, #2
	bne _08032EFA
	movs r2, #7
	ldr r1, [r4, #0x34]
	lsls r2, r2, #8
	bics r1, r2
	lsls r2, r0, #8
	adds r1, r1, r2
	str r1, [r4, #0x34]
_08032EFA
	cmp r0, #1
	bne _08032F1A
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x40]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_80401E4
_08032F1A
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	adds r1, r6, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _08032F40
_08032F3E
	b _08032D18
_08032F40
	ldr r1, [r4, #0x48]
	ldr r1, [r1, #0x2c]
	ldrb r1, [r1, #5]
	ldrb r3, [r0, #5]
	subs r1, #1
	adds r2, r1, #0
	cmp r1, r3
	beq _08032F3E
	adds r1, r2, #0
	bl sub_80401C0
	b _08032D18
_08032F58
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08032F3E
	ldr r7, _080332F8
	cmp r0, #0
	beq _08032F72
	adds r1, r4, #4
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #4]
_08032F72
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08032F86
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08032F86
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	b _08032D18

	non_word_aligned_thumb_func_start sub_8032F92
sub_8032F92
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	movs r7, #1
	ldr r5, [r4, #0x3c]
	lsls r7, r7, #0xa
	cmp r5, #0
	ldr r6, _080332FC
	beq _08033052
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08032FBE
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08032FBE
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
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
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08033052
	bics r0, r7
	lsrs r2, r3, #0xe
	bics r0, r2
	str r0, [r1]
	ldr r0, _080332F8
	ldr r0, [r0]
	bl sub_8001432
_08033052
	movs r0, #0
	str r0, [r4, #0x50]
	ldr r5, [r4, #0x40]
	cmp r5, #0
	beq _08033108
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08033074
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08033074
	ldr r0, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r5, [r4, #0x40]
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
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x40]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x50]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x50]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x50]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x50]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08033108
	bics r0, r7
	lsrs r2, r3, #0xe
	bics r0, r2
	str r0, [r1]
	ldr r0, _080332F8
	ldr r0, [r0]
	bl sub_8001432
_08033108
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803310E
sub_803310E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	movs r6, #0
	cmp r0, #0
	ldr r5, _080332F8
	beq _0803312C
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x3c]
_0803312C
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0803313E
	adds r1, r4, #0
	adds r1, #0x40
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #0x40]
_0803313E
	ldr r4, _08033300
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08033158
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_08033158
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803315E
sub_803315E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x30]
	adds r7, r4, #0
	adds r7, #0x1c
	lsls r0, r0, #2
	cmp r0, #0
	bge _0803322E
	ldr r0, _080332F8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080332FC
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08033304
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x3c]
	bl sub_803F38C
	adds r1, r7, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl _08033220
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_08033220
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _0803322E
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_0803322E
	ldr r0, [r4, #0x50]
	lsls r0, r0, #2
	bpl _080332EE
	ldr r0, _080332F8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x50]
	ldr r5, [r4, #0x40]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080332FC
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08033304
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r0, [r4, #0x50]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x40]
	bl sub_803F38C
	adds r1, r7, #0
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x40]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #0x40]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x50]
	lsls r0, r0, #7
	bpl _080332E0
	ldr r0, [r4, #0x40]
	bl sub_8000914
_080332E0
	ldr r0, [r4, #0x50]
	lsls r0, r0, #6
	bpl _080332EE
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_80401E4
_080332EE
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080332F8 DCDU gUnknown_03003EB8
_080332FC DCDU gUnknown_03003EA0
_08033300 DCDU gUnknown_0300345C
_08033304 DCDU 0x0010BE20
	END

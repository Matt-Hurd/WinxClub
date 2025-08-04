	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__377dword_803EDC4
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_800CD58
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __call_via_r5
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_803AE60
sub_803AE60
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	ALIGN

	thumb_func_start sub_803AE68
sub_803AE68
	push {r4, lr}
	adds r4, r0, #0
	bne _0803AE80
	movs r0, #0x44
	bl __nw__FUi
	adds r4, r0, #0
	bne _0803AE80
	adds r0, r4, #0
_0803AE7A
	pop {r4}
	pop {r3}
	bx r3
_0803AE80
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0803B138
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	b _0803AE7A

	non_word_aligned_thumb_func_start sub_803AE92
sub_803AE92
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803B138
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0803AEAE
	adds r0, r4, #0
	bl sub_803DA18
_0803AEAE
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_803AEB4
sub_803AEB4
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
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	movs r5, #2
	cmp r0, #0
	bne _0803AEE4
	ldr r0, _0803B13C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	str r0, [r4, #0x3c]
	movs r0, #0x9d
	str r0, [r4, #0x38]
	movs r0, #0x40
	strb r5, [r0, r4]
_0803AEE4
	ldr r1, [r4, #0x3c]
	ldr r6, _0803B140
	ldr r1, [r1, #0x2c]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r0, [r4, #0x3c]
	movs r2, #0xff
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0xb
	ldrb r0, [r0, #5]
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r0]
	orrs r1, r5
	movs r5, #0xff
	adds r5, #1
	bics r1, r5
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r0, #0x2c]
	ldr r7, [r0, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r1, r0, #0
	subs r2, r2, r7
	ldr r7, [r0, #0x34]
	adds r1, #0x34
	adds r7, r7, r3
	str r7, [r0, #0x34]
	ldr r7, [r0, #0x38]
	adds r7, r7, r2
	str r7, [r1, #4]
	ldr r7, [r1, #8]
	adds r3, r7, r3
	str r3, [r1, #8]
	ldr r3, [r1, #0xc]
	adds r2, r3, r2
	str r2, [r1, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r1, [r0]
	movs r3, #3
	orrs r1, r5
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
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
	bmi _0803AF8A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0803AF8A
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r7, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _0803AFC6
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803AFB8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0803AFB8
	ldr r0, _0803B144
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_0803AFB8
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _0803AFC6
	orrs r0, r5
	str r0, [r4]
_0803AFC6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803AFCC
sub_803AFCC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r5, #7
	lsls r0, r0, #0x15
	lsrs r1, r0, #0x1d
	lsls r5, r5, #8
	movs r6, #0
	cmp r1, #0
	ldr r0, [r4, #4]
	beq _0803B008
	cmp r1, #1
	beq _0803B02C
	cmp r1, #2
	bne _0803B0B4
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803B0B4
	cmp r0, #0
	beq _0803B002
	ldr r0, _0803B140
	adds r1, r4, #4
	ldr r0, [r0]
	bl sub_8000DE6
	str r6, [r4, #4]
_0803B002
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803B008
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803B0B4
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	bics r0, r5
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _0803B0B4
_0803B02C
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803B0B4
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r1]
	adds r2, #0xff
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r1]
	bne _0803B070
	ldr r1, [r4, #0x38]
	adds r1, #2
	bl sub_80007A0
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r5
	adds r0, r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	bne _0803B070
	ldr r0, [r4, #0x3c]
	movs r3, #4
	ldr r1, [r0]
	ldr r2, [r1, #0x34]
	adds r5, r2, r1
	movs r2, #1
	ldr r1, [r4, #0x10]
	bl __call_via_r5
_0803B070
	ldr r0, _0803B144
	ldr r5, [r4, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl __16_ll_shift_l
	add r2, pc, #0xB0
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
_0803B0B4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0803B002
	ldr r1, [r4, #0x3c]
	movs r2, #3
	ldr r3, [r1, #0x2c]
	lsls r2, r2, #0x11
	mov ip, r3
	ldr r3, [r1, #0x30]
	adds r1, r0, #0
	adds r0, r3, #0
	adds r0, #0x2c
	ldr r0, [r0, #4]
	ldr r3, [r3, #0x2c]
	adds r5, r0, r2
	ldr r2, [r1, #0x2c]
	ldr r6, [r1, #0x34]
	subs r7, r3, r2
	ldr r2, [r1, #0x30]
	adds r6, r6, r7
	str r6, [r1, #0x34]
	ldr r6, [r1, #0x38]
	subs r2, r5, r2
	adds r6, r6, r2
	adds r0, r1, #0
	adds r0, #0x34
	str r6, [r1, #0x38]
	ldr r6, [r0, #8]
	adds r6, r6, r7
	str r6, [r0, #8]
	ldr r6, [r0, #0xc]
	adds r2, r6, r2
	str r2, [r0, #0xc]
	str r3, [r1, #0x2c]
	str r5, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r2, r0
	str r2, [r1]
	mov r3, ip
	ldrb r0, [r3, #5]
	ldr r2, [r4, #4]
	ldrb r3, [r2, #5]
	subs r0, #2
	adds r1, r0, #0
	cmp r0, r3
	bne _0803B116
_0803B114
	b _0803B002
_0803B116
	ldrh r0, [r2, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r0, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r0, r3
	strh r0, [r2, #0x2a]
	strb r1, [r2, #5]
	ldr r0, [r2]
	lsls r1, r0, #0x16
	bmi _0803B114
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	b _0803B002
	ALIGN
_0803B138 DCDU __VTABLE__377dword_803EDC4
_0803B13C DCDU gUnknown_03003458
_0803B140 DCDU gUnknown_03003EB8
_0803B144 DCDU gUnknown_03003EA0
_0803B148 DCDU 0x0010BE20
_0803B14C DCDU 0x00000000
	END

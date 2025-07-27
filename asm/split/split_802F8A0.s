    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003EA0
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8018620
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_sshift_r
	IMPORT sub_803FF24
	IMPORT sub_80401E4

	thumb_func_start sub_802F8A0
sub_802F8A0 ;@ 0x0802F8A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	movs r1, #3
	lsls r1, r1, #0x11
	subs r1, r0, r1
	movs r0, #0xa2
	ldrh r0, [r0, r4]
	adds r5, r4, #0
	adds r5, #0x58
	movs r3, #0
	cmp r0, #0
	sub sp, #8
	beq _0802F8D2
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r6, [r0]
	ldr r2, [r5]
	adds r2, r2, r6
	str r2, [r5]
	ldr r2, [r5, #4]
	ldr r0, [r0, #4]
	adds r0, r2, r0
	str r0, [r5, #4]
_0802F8D2
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	adds r2, r2, r1
	cmp r0, #0
	blt _0802F906
	cmp r2, #0
	blt _0802F906
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp]
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0802F8FE
	adds r1, r5, #0
	bl sub_803FF24
_0802F8FE
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0802F906
	str r3, [r4, #0x58]
	str r3, [r4, #0x5c]
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x2c]
	adds r5, r3, #0
	mov r1, sp
	bl sub_803FF24
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, sp
	bl sub_803FF24
	b _0802F8FE

	non_word_aligned_thumb_func_start sub_802F926
sub_802F926 ;@ 0x0802F926
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802F938
	movs r1, #1
	bl sub_80401E4
_0802F938
	ldr r0, _0802FBD4 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802F954
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802F954
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F968
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0802F968
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802F976
	bl sub_8000914
_0802F976
	ldr r0, [r4, #0x2c]
	movs r5, #1
	ldrb r1, [r0, #5]
	cmp r1, #0x60
	beq _0802F99E
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	lsls r3, r5, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0x60
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802F99E
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802F99E
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802F9B8
	ldr r1, _0802FBD8 ;@ =gPlayerEntity
	ldr r1, [r1]
	adds r1, #0x90
	ldrb r1, [r1]
	cmp r1, #6
	beq _0802F9B8
	movs r1, #1
	bl sub_80401E4
_0802F9B8
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x30]
	movs r2, #3
	str r1, [r4, #0x58]
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x5c]
	ldr r1, [r0, #0x14]
	movs r2, #1
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r0, #0x14]
	movs r0, #0xa2
	strh r5, [r0, r4]
	adds r1, r4, #0
	adds r1, #0x58
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802F9E8
sub_802F9E8 ;@ 0x0802F9E8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	sub sp, #4
	add r1, sp, #0x28
	ldr r6, [r5, #0xc]
	movs r7, #1
	lsls r7, r7, #0xe
	bics r6, r7
	ldm r1!, {r0, r1}
	str r6, [r5, #0xc]
	ldr r6, [sp, #8]
	lsls r2, r2, #0x10
	str r2, [r5, #0x34]
	lsrs r2, r3, #0x1f
	adds r2, r2, r3
	asrs r3, r2, #1
	adds r2, r4, #0
	lsls r6, r6, #0x10
	str r6, [r5, #0x30]
	adds r2, #0xa0
	strh r3, [r2, #0xa]
	lsrs r3, r0, #0x1f
	adds r0, r3, r0
	asrs r0, r0, #1
	strh r0, [r2, #8]
	str r1, [r5, #0x24]
	movs r1, #0x7d
	movs r0, #0
	strb r0, [r1, r4]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0802FA5A
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	beq _0802FA5A
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xff
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802FA5A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802FA5A
	ldr r0, _0802FBD4 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802FA76
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802FA76
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802FA8A
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0802FA8A
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802FA92
sub_802FA92 ;@ 0x0802FA92
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x80
	ldr r5, [r6, #0xc]
	ldr r3, [r2]
	ldr r2, [r2, #4]
	ldm r1!, {r0, r1}
	sub sp, #4
	movs r7, #1
	lsls r7, r7, #0xe
	str r0, [r6, #0x30]
	str r1, [r6, #0x34]
	bics r5, r7
	str r5, [r6, #0xc]
	str r0, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r2, [r6, #0x50]
	str r3, [r6, #0x4c]
	adds r1, r4, #0
	adds r5, r4, #0
	adds r5, #0xb0
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r2, [r5]
	ldr r1, [r1, #4]
	subs r0, r0, r2
	ldr r2, [r5, #4]
	str r0, [r6, #0x44]
	subs r1, r1, r2
	str r1, [r6, #0x48]
	movs r1, #0
	movs r0, #0x7d
	strb r1, [r0, r4]
	adds r0, r4, #0
	adds r0, #0xc4
	bl sub_8018620
	adds r7, r4, #0
	adds r7, #0xc0
	ldr r0, [r7, #4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_sshift_r
	add r2, pc, #0xEC ;@ =_0802FBDC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_sshift_r
	add r2, pc, #0xD8 ;@ =_0802FBDC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r7, #8]
	ldr r0, _0802FBE4 ;@ =0xFFFD0000
	movs r1, #0
	str r0, [r7]
	str r1, [r6, #0x3c]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _0802FB3E
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #9]
	beq _0802FBA2
	cmp r0, #1
	beq _0802FBBA
	cmp r0, #2
	bne _0802FB3E
	movs r0, #0xff
	adds r0, #0xd3
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0xa
	strb r0, [r5, #8]
_0802FB3E
	adds r1, r5, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	beq _0802FB6A
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xff
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802FB6A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802FB6A
	ldr r0, _0802FBD4 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802FB86
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802FB86
	lsls r0, r1, #0x10
	movs r1, #0x57
	lsls r1, r1, #3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802FB9A
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0802FB9A
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802FBA2
	movs r0, #0xff
	adds r0, #0xd5
	strh r0, [r4, #0x18]
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r5, #8]
	b _0802FB3E
_0802FBBA
	movs r0, #0xff
	adds r0, #0xd4
	strh r0, [r4, #0x18]
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #5
	strb r0, [r5, #8]
	b _0802FB3E
	ALIGN
_0802FBD4 DCDU gUnknown_03003EA0
_0802FBD8 DCDU gPlayerEntity
_0802FBDC DCDU 0x00020000
_0802FBE0 DCDU 0x00000000
_0802FBE4 DCDU 0xFFFD0000
	END
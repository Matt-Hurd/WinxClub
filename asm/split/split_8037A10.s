    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_802E4EE
	IMPORT sub_803B8CA
	IMPORT sub_803FF24
	IMPORT sub_80401E4

	thumb_func_start sub_8037A10
sub_8037A10 ;@ 0x08037A10
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08037A24
	movs r1, #0
	bl sub_80401E4
	b _08037A2A
_08037A24
	movs r1, #1
	bl sub_80401E4
_08037A2A
	ldr r1, [r4, #0x34]
	adds r5, r4, #0
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	beq _08037AC2
	adds r6, r4, #0
	adds r6, #0x3c
	adds r7, r4, #4
	cmp r0, #1
	beq _08037B28
	cmp r0, #2
	bne _08037ABC
	ldr r0, _08037CB8 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08037A62
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08037A62
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _08037B56
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037A84
	bl sub_8000914
_08037A84
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037A9E
	bl sub_8000914
_08037A9E
	ldr r4, [r4, #4]
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl _08037AB2
	ldr r0, _08037CBC ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_08037AB2
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	orrs r0, r5
	str r0, [r4]
_08037ABC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08037AC2
	ldr r0, [r4, #4]
	ldr r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1f
	bne _08037ABC
	lsls r2, r1, #6
	lsrs r2, r2, #0x1c
	bne _08037B0E
	lsls r2, r1, #0x18
	movs r1, #0xf
	lsls r1, r1, #0x10
	lsrs r2, r2, #0x18
	cmp r2, #0
	beq _08037B02
	cmp r2, #1
	beq _08037AF2
	cmp r2, #2
	beq _08037AFA
	cmp r2, #3
	bne _08037B08
	ldr r2, [r4, #0x20]
	subs r1, r2, r1
	str r1, [r4, #0x20]
	b _08037B08
_08037AF2
	ldr r2, [r4, #0x20]
	adds r1, r2, r1
	str r1, [r4, #0x20]
	b _08037B08
_08037AFA
	ldr r2, [r4, #0x1c]
	subs r1, r2, r1
	str r1, [r4, #0x1c]
	b _08037B08
_08037B02
	ldr r2, [r4, #0x1c]
	adds r1, r2, r1
	str r1, [r4, #0x1c]
_08037B08
	movs r1, #1
	movs r2, #0x40
	strb r1, [r2, r4]
_08037B0E
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #4]
	bl sub_8000914
	b _08037B2A
_08037B28
	b _08037B60
_08037B2A
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037B4C
	bl sub_8000914
_08037B4C
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	b _08037B58
_08037B56
	b _08037BBE
_08037B58
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_08037B5E
	b _08037ABC
_08037B60
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _08037BAE
	cmp r0, #0
	beq _08037B98
	ldr r0, _08037CBC ;@ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_08037B98
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037ABC
	ldr r0, _08037CBC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _08037ABC
_08037BAE
	adds r1, r5, #0
	bl sub_803FF24
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	b _08037ABC
_08037BBE
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08037B5E
	cmp r0, #0
	beq _08037BD8
	ldr r0, _08037CBC ;@ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_08037BD8
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037B5E
	ldr r0, _08037CBC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _08037ABC

	non_word_aligned_thumb_func_start sub_8037BEE
sub_8037BEE ;@ 0x08037BEE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037CB0
	ldr r6, _08037CB8 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08037C18
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08037C18
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
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
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r1, r0
	str r1, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r0, #3]
	lsls r3, r3, #0x12
	bics r1, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r1, r3
	lsls r2, r2, #0x1c
	orrs r2, r1
	str r2, [r4, #0x30]
	ldr r1, [r0]
	lsrs r3, r3, #4
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	lsls r2, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r1, r2
	orrs r0, r1
	lsls r1, r2, #4
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08037CB0
	lsrs r2, r3, #0xe
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _08037CBC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_08037CB0
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_08037CB8 DCDU gUnknown_03003EA0
_08037CBC DCDU gUnknown_03003EB8
	END
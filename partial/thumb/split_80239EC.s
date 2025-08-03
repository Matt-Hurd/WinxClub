	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003464
	IMPORT gPlayerEntity
	IMPORT gPlayerPointer
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_08051038
	IMPORT sub_8005106
	IMPORT sub_800B314
	IMPORT sub_8017A0A
	IMPORT sub_80237DA
	IMPORT sub_8024084
	IMPORT sub_802416A
	IMPORT sub_80244C6
	IMPORT sprintf
	IMPORT sub_803DA18
	IMPORT sub_803DA9C
	IMPORT sub_803F464
	IMPORT sub_803F72C
	IMPORT sub_803F904
	IMPORT sub_803FEF8
	IMPORT sub_8040684

	non_word_aligned_thumb_func_start CollectFirefly
CollectFirefly
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #6]
	sub sp, #0x2c
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bpl _08023B38
	movs r0, #0
	strb r0, [r4, #6]
	b _08023B44
_08023B38
	ldrb r1, [r4, #7]
	cmp r1, r0
	bge _08023B42
	strb r1, [r4, #6]
	b _08023B44
_08023B42
	strb r0, [r4, #6]
_08023B44
	ldrb r5, [r4, #6]
	adds r0, r5, #0
	bl sub_8040684
	cmp r0, #0
	beq _08023B54
	cmp r5, #1
	bne _08023C3A
_08023B54
	ldr r7, _08023CE8
	movs r0, #0
	ldr r2, [r7, #4]
	add r6, sp, #0x28
_08023B5C
	adds r1, r2, r0
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	strb r1, [r6, r0]
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	blt _08023B5C
	adds r0, r4, #0
	bl sub_80237DA
	movs r0, #0
	add r3, sp, #0x20
	strb r0, [r3, #4]
	strb r0, [r3, #5]
	strb r0, [r3, #6]
	movs r5, #0
	adds r1, r7, #0
	strb r0, [r3, #7]
	ldr r6, [r1, #4]
	add r7, sp, #0x24
_08023B88
	add r1, sp, #0x28
	ldrb r2, [r1, r0]
	adds r1, r6, r0
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	cmp r2, r1
	beq _08023BAA
	ldr r3, _08023CF8
	lsls r2, r0, #1
	ldrh r2, [r3, r2]
	adds r3, r5, #0
	adds r1, r2, r1
	adds r2, r5, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r5, r2, #0
	strb r1, [r7, r3]
_08023BAA
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	blt _08023B88
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xc8
	bl sub_803DA9C
	str r0, [sp, #0x20]
	add r3, sp, #0x20
	ldrb r1, [r3, #7]
	movs r6, #0xff
	ldr r7, _08023CFC
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x1c]
	add r3, sp, #0x20
	ldrb r1, [r3, #6]
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x18]
	add r3, sp, #0x20
	ldrb r1, [r3, #5]
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x14]
	add r3, sp, #0x20
	ldrb r1, [r3, #4]
	adds r3, r6, #0
	movs r2, #0
	ldr r0, [r7]
	bl sub_803F904
	str r0, [sp, #0x10]
	ldrb r1, [r4, #0xd]
	ldr r0, [r7]
	adds r1, #0x95
	adds r3, r6, #0
	movs r2, #0
	bl sub_803F904
	adds r4, r0, #0
	ldr r0, _08023D00
	adds r3, r6, #0
	movs r2, #0
	adds r1, r5, r0
	ldr r0, [r7]
	bl sub_803F904
	adds r5, r0, #0
	add r2, sp, #0x14
	ldm r2!, {r0, r1, r2}
	str r0, [sp]
	str r2, [sp, #8]
	adds r2, r4, #0
	str r1, [sp, #4]
	ldr r3, [sp, #0x10]
	b _08023C3C
_08023C3A
	b _08023CE0
_08023C3C
	adds r1, r5, #0
	ldr r0, [sp, #0x20]
	bl sprintf
	ldr r7, _08023D04
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r5, #2
	adds r3, r5, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r6, _08023D08
	movs r1, #1
	ldr r0, [r6]
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	movs r4, #0
	str r4, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r3, r5, #0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r1, #1
	bl sub_8017A0A
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	ldr r1, [sp, #0x20]
	movs r2, #0
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	str r2, [sp]
	adds r3, r5, #0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r1, #3
	bl sub_8017A0A
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r5, #0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r1, #3
	bl sub_8017A0A
_08023CE0
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08023CE8 DCDU gPlayerPointer
_08023CEC DCDU gUnknown_03003464
_08023CF0 DCDU gUnknown_030034F8
_08023CF4 DCDU gUnknown_03003E98
_08023CF8 DCDU gUnknown_08051038
_08023CFC DCDU gUnknown_0300344C
_08023D00 DCDU 0x000004E9
_08023D04 DCDU gUnknown_03003E88
_08023D08 DCDU gUnknown_03003454
	END

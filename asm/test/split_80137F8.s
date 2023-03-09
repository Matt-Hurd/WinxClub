    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EBC
	IMPORT sub_8005106
	IMPORT sub_80133A0
	IMPORT sub_801340A
	IMPORT sub_801357A
	IMPORT sub_803B8CA
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803B8D2
	IMPORT sub_803C04C
	IMPORT sub_803C124
	IMPORT sub_803C2DC
	IMPORT sub_803C328
	IMPORT sub_803C47C
	IMPORT sub_803DA18
	IMPORT sub_803DA4C
	IMPORT sub_803DA9C
	IMPORT sub_80402F8

	thumb_func_start sub_80137F8
sub_80137F8 ;@ 0x080137F8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r7, r2, #0
	movs r6, #0
	adds r5, r1, #0
	cmp r0, #0
	beq _0801380E
	bl sub_803DA4C
	str r6, [r4, #0x34]
_0801380E
	cmp r7, #0
	beq _08013840
	adds r0, r5, #0
	bl sub_803C2DC
	lsls r7, r0, #0x10
	lsrs r7, r7, #0x10
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	adds r0, r7, #1
	bl sub_803DA9C
	adds r2, r7, #0
	adds r1, r5, #0
	str r0, [r4, #0x34]
	bl sub_803C328
	ldr r0, [r4, #0x34]
	strb r6, [r0, r7]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x30]
	b _08013842
_08013840
	str r5, [r4, #0x30]
_08013842
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _08013876
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	str r0, [sp]
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	adds r1, r5, #0
	bl sub_801340A
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r2, [r0, #0x5c]
	adds r3, r2, r0
	ldr r2, [sp]
	adds r0, r4, #0
	bl sub_803B8CE
	movs r0, #1
	str r0, [r4, #0x24]
_08013876
	adds r0, r4, #0
	bl sub_801357A
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1c
	bpl _080138A4
	ldrh r1, [r4, #0x20]
	movs r2, #0xf0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	ldr r2, [r4]
	asrs r1, r1, #1
	ldr r3, [r2, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, r2
	adds r0, r4, #0
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	bl sub_803B8D2
_080138A4
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	bpl _080138CC
	ldrh r1, [r4, #0x1e]
	movs r2, #0xa0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r2, r1, #0x10
	ldr r1, [r4]
	asrs r2, r2, #0x10
	ldr r3, [r1, #0x14]
	adds r5, r3, r1
	adds r0, r4, #0
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	bl sub_803B8D2
_080138CC
	movs r0, #0
	mvns r0, r0
	strh r6, [r4, #0x22]
	strh r0, [r4, #0x3a]
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80138E2
sub_80138E2 ;@ 0x080138E2
	push {r4, r5}
	ldr r4, _08013B5C ;@ =gUnknown_03003EBC
	cmp r3, #0xff
	ldr r4, [r4]
	bne _080138EE
	ldrb r3, [r4, #9]
_080138EE
	ldr r4, [r4, #4]
	lsls r2, r2, #4
	adds r2, r4, r2
	ldrh r5, [r2, #4]
	ldr r4, [r2, #8]
	lsls r3, r3, #2
	lsls r1, r5
	adds r1, r4, r1
	ldr r1, [r1, r3]
	ldr r2, [r2, #0xc]
	pop {r4, r5}
	adds r1, r2, r1
	movs r2, #0
	b sub_80137F8

	non_word_aligned_thumb_func_start sub_801390A
sub_801390A ;@ 0x0801390A
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xc
	adds r5, r0, #0
	add r0, sp, #0x3fc
	adds r0, #0x1c
	str r0, [sp]
	add r3, sp, #0x3fc
	add r4, sp, #4
	adds r0, r4, #0
	ldr r1, [r3, #0x18]
	mov r2, sp
	bl sub_803C47C
	movs r0, #0
	str r0, [sp]
	movs r2, #1
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_80137F8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3

	non_word_aligned_thumb_func_start sub_8013946
sub_8013946 ;@ 0x08013946
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x18
	adds r5, r0, #0
	add r0, sp, #0x3fc
	adds r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, _08013B5C ;@ =gUnknown_03003EBC
	add r3, sp, #0x3fc
	adds r3, #0x24
	ldr r0, [r0]
	ldrb r4, [r3, #0xc]
	cmp r4, #0xff
	bne _08013968
	ldrb r4, [r0, #9]
_08013968
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r6, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r6
	adds r1, r2, r1
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r4, sp, #0x10
	adds r1, r0, r1
	adds r0, r4, #0
	add r2, sp, #0xc
	bl sub_803C47C
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #1
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_80137F8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3

	thumb_func_start sub_80139A4
sub_80139A4 ;@ 0x080139A4
	str r1, [r0, #0x40]
	bx lr

	thumb_func_start sub_80139A8
sub_80139A8 ;@ 0x080139A8
	movs r0, #1
	bx lr

	thumb_func_start sub_80139AC
sub_80139AC ;@ 0x080139AC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	sub sp, #0xc
	beq _080139BA
	cmp r6, #1
	bne _08013A20
_080139BA
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq _08013A20
	cmp r0, #1
	beq _08013A62
	cmp r0, #2
	bne _08013A20
	ldr r1, _08013B60 ;@ =gUnknown_03003E98
	ldr r0, [r4, #0x4c]
	ldr r1, [r1]
	ldr r2, [r1, #8]
	ldr r3, [r0]
	cmp r2, r3
	blo _08013A20
	movs r3, #8
	ldrsb r5, [r0, r3]
	ldrh r2, [r4, #0x22]
	movs r3, #0x22
	adds r2, r2, r5
	strh r2, [r4, #0x22]
	ldrb r2, [r0, #4]
	ldr r1, [r1, #8]
	adds r1, r1, r2
	str r1, [r0]
	ldrsh r1, [r4, r3]
	movs r3, #6
	ldrsh r2, [r0, r3]
	cmp r1, r2
	blt _08013A00
	movs r3, #8
	ldrsb r5, [r0, r3]
	cmp r5, #0
	bgt _08013A0C
_08013A00
	cmp r1, r2
	bgt _08013A18
	movs r3, #8
	ldrsb r0, [r0, r3]
	cmp r0, #0
	bge _08013A18
_08013A0C
	ldr r0, [r4, #0x4c]
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
	strb r0, [r7, #0xc]
_08013A18
	ldrh r0, [r4, #0xe]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #0xe]
_08013A20
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _08013A5A
	cmp r6, #0
	beq _08013A2E
	cmp r6, #1
	bne _08013A3C
_08013A2E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_08013A3C
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_80402F8
	cmp r6, #0
	beq _08013A4C
	cmp r6, #2
	bne _08013A5A
_08013A4C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x48]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_08013A5A
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08013A62
	ldrb r0, [r7, #0xd]
	ldr r5, [r4, #0x4c]
	bl sub_80133A0
	mov ip, r0
	ldr r0, _08013B60 ;@ =gUnknown_03003E98
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r5]
	cmp r0, r2
	blo _08013A20
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldrb r2, [r5, #4]
	ldr r1, [r1, #8]
	adds r1, r1, r2
	str r1, [r5]
	strh r0, [r4, #0x3a]
	ldrh r0, [r5, #6]
	ldrh r1, [r5, #8]
	cmp r0, r1
	beq _08013AA6
	movs r2, #0x38
	ldrb r2, [r2, r4]
	ldr r1, [r4, #0x14]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r1, r2
	subs r2, #0x20
	ldrh r2, [r2, #0x1c]
	cmp r2, r0
	bne _08013AB4
_08013AA6
	ldr r0, [r4, #0x4c]
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
	strb r0, [r7, #0xc]
	b _08013B00
_08013AB4
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _08013B00
	ldrh r2, [r5, #0xa]
	lsls r3, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r1, [r1, #2]
	cmp r1, r0
	bhs _08013ACE
	adds r0, r2, #1
	strh r0, [r5, #0xa]
_08013ACE
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	mov r0, ip
	str r1, [sp, #8]
	ldrh r7, [r0, #2]
	adds r0, r7, #0
	bl sub_803C04C
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #4]
	ldrh r1, [r4, #0x1e]
	adds r0, r7, #0
	bl sub_803C124
	ldrh r1, [r5, #0xa]
	ldr r2, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	cmp r1, r0
	blt _08013B00
	ldr r0, [sp, #8]
	adds r0, #1
	strh r0, [r4, #0x22]
_08013B00
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	b _08013A20

	non_word_aligned_thumb_func_start sub_8013B0A
sub_8013B0A ;@ 0x08013B0A
	push {r3, lr}
	ldrh r2, [r0, #0xe]
	lsls r2, r2, #0x1f
	bmi _08013B22
	ldr r2, [r0, #0x48]
	cmp r2, #0
	bne _08013B28
	ldr r2, [r0]
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl sub_803B8CC
_08013B22
	add sp, #4
	pop {r3}
	bx r3
_08013B28
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	beq _08013B42
	cmp r1, #1
	beq _08013B4E
	cmp r1, #2
	bne _08013B22
	ldr r1, [r0]
	ldr r2, [r1, #0x40]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08013B22
_08013B42
	ldr r1, [r0]
	ldr r2, [r1, #0x38]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08013B22
_08013B4E
	ldr r1, [r0]
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl sub_803B8CA
	b _08013B22
	ALIGN
_08013B5C DCDU gUnknown_03003EBC
_08013B60 DCDU gUnknown_03003E98

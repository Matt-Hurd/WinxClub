    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0805108A
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80133A0
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8020AB6
	IMPORT sub_802459E
	IMPORT sub_8028C2E
	IMPORT sub_803B8CA
	IMPORT sub_803C3A4
	IMPORT sub_803C3C8
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_804025C

	thumb_func_start sub_802B288
sub_802B288 ;@ 0x0802B288
	push {r4, lr}
	adds r4, r0, #0
	bne _0802B2A2
	movs r0, #0xff
	adds r0, #0xfd
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802B2A2
	adds r0, r4, #0
_0802B29C
	pop {r4}
	pop {r3}
	bx r3
_0802B2A2
	adds r0, r4, #4
	bl sub_80143E0
	adds r0, r4, #0
	adds r0, #0x7c
	bl sub_80143E0
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0xe5
	movs r2, #0x78
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r3, _0802B640 ;@ =sub_80143E0
	bl sub_803C3A4
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #2]
	movs r0, #0
_0802B2CA
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x24]
	blo _0802B2CA
	movs r0, #0
_0802B2E0
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x30]
	blo _0802B2E0
	adds r0, r4, #0
	b _0802B29C

	thumb_func_start sub_802B2F8
sub_802B2F8 ;@ 0x0802B2F8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
_0802B300
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _0802B31E
	ldr r0, _0802B644 ;@ =gUnknown_03003EB8
	adds r1, #0xff
	adds r1, #0xe5
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x24]
_0802B31E
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0802B300
	movs r4, #0
_0802B32A
	lsls r0, r4, #2
	adds r1, r0, r5
	adds r6, r1, #0
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0802B348
	ldr r0, _0802B644 ;@ =gUnknown_03003EB8
	adds r1, #0xff
	adds r1, #0xf1
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
_0802B348
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0802B32A
	ldr r1, [r5, #4]
	adds r0, r5, #4
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B382
sub_802B382 ;@ 0x0802B382
	adds r1, r0, #0
	ldrb r1, [r1, #2]
	movs r0, #1
	cmp r1, #0
	bne _0802B38E
	movs r0, #0
_0802B38E
	bx lr

	thumb_func_start sub_802B390
sub_802B390 ;@ 0x0802B390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, #0
	beq _0802B3A2
	adds r0, r4, #0
	bl sub_802B2F8
_0802B3A2
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #0x77
	mvns r2, r2
	adds r5, r1, #0
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r3, _0802B648 ;@ =sub_8014436
	bl sub_803C3C8
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #4
	bl sub_8014436
	cmp r6, #0
	beq _0802B3D0
	adds r0, r4, #0
	bl sub_803DA18
_0802B3D0
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B3D6
sub_802B3D6 ;@ 0x0802B3D6
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	sub sp, #0x14
	strb r0, [r6, #2]
	movs r0, #0
	adds r1, r6, #0
	adds r1, #0xff
	movs r5, #0
	adds r1, #0xc9
	strb r0, [r6, #1]
	str r1, [sp, #0x10]
_0802B3EE
	ldr r0, _0802B644 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r6
	adds r7, #0xff
	adds r7, #0xc1
	ldr r2, _0802B64C ;@ =gUnknown_0805108A
	str r0, [r7, #0x24]
	lsls r1, r5, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r7, #0x24]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r7, #0x24]
	movs r1, #3
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xa
	movs r3, #0
	bics r2, r1
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0x14
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802B43C
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802B43C
	cmp r5, #2
	bne _0802B468
	ldr r0, [sp, #0x10]
	lsls r2, r5, #0xb
	ldr r4, [r0, #0x24]
	ldrh r1, [r4, #0x28]
	bics r1, r2
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi _0802B460
	adds r0, r4, #0
	bl sub_804025C
_0802B460
	ldr r0, [r4]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r4]
_0802B468
	movs r1, #1
	ldr r0, [r7, #0x24]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B3EE
	movs r4, #0
	movs r7, #0xf0
_0802B47E
	ldr r0, _0802B644 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r4, #2
	adds r5, r1, r6
	adds r5, #0xff
	adds r5, #0xc1
	ldr r1, _0802B650 ;@ =0x00000CAE
	str r0, [r5, #0x30]
	adds r1, r4, r1
	bl sub_800065C
	add r3, sp, #0
	strh r7, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x30]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #0x13
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802B4C8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802B4C8
	movs r1, #1
	ldr r0, [r5, #0x30]
	bl sub_80401E4
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0802B47E
	ldr r0, _0802B644 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	adds r4, r6, #0
	adds r4, #0xff
	adds r4, #0xc1
	movs r2, #0
	movs r1, #0xa4
	str r0, [r4, #0x38]
	bl sub_80007A0
	add r3, sp, #0
	strh r7, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r4, #0x38]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r4, #0x38]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802B522
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802B522
	ldr r0, [r4, #0x38]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x38]
	bl sub_80401E4
	movs r0, #1
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0xa0
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #0
	adds r0, r6, #4
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r5, #0xff
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B654 ;@ =0x000004DA
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r0, #0x60
	str r0, [sp, #4]
	movs r2, #0xa0
	str r2, [sp]
	adds r0, r6, #0
	str r1, [sp, #8]
	movs r1, #0
	adds r0, #0x7c
	movs r2, #0
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B658 ;@ =0x000004DB
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	ldr r0, _0802B65C ;@ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0xa0
	str r0, [sp, #4]
	adds r0, r6, #0
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, #0xf4
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	ldr r0, _0802B65C ;@ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0xa0
	str r0, [sp, #4]
	adds r0, r4, #0
	str r2, [sp]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, #0x78
	adds r3, r7, #0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	adds r3, r5, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _0802B660 ;@ =0x000004D9
	bl sub_80138E2
	ldr r0, _0802B664 ;@ =gUnknown_030034F8
	movs r1, #1
	ldr r0, [r0]
	bl sub_802459E
	ldr r0, _0802B668 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xe0
	bl sub_8028C2E
	ldr r0, _0802B66C ;@ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl sub_8020AB6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802B640 DCDU sub_80143E0
_0802B644 DCDU gUnknown_03003EB8
_0802B648 DCDU sub_8014436
_0802B64C DCDU gUnknown_0805108A
_0802B650 DCDU 0x00000CAE
_0802B654 DCDU 0x000004DA
_0802B658 DCDU 0x000004DB
_0802B65C DCDU 0x0000FFFF
_0802B660 DCDU 0x000004D9
_0802B664 DCDU gUnknown_030034F8
_0802B668 DCDU gUnknown_0300345C
_0802B66C DCDU gUnknown_03003458
	END
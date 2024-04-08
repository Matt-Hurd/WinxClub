    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_080506E8
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_8018386
	IMPORT sub_801ABFC
	IMPORT sub_801AC60
	IMPORT sub_801AD22
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_803C3A4
	IMPORT sub_803C3C8

	thumb_func_start sub_801AED0
sub_801AED0 ;@ 0x0801AED0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xa8
	add r5, sp, #0x14
	adds r1, r5, #0
	adds r1, #0xf8
	adds r0, r5, #0
	movs r2, #0x78
	adds r0, #8
	ldr r3, _0801B0EC ;@ =sub_80143E0
	bl sub_803C3A4
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x2a0]
	bl sub_80143E0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x8d
	str r0, [sp, #0x29c]
	bl sub_80143E0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x298]
	bl sub_80143E0
	adds r0, r5, #0
	bl sub_801AD22
	add r1, sp, #0xd4
	str r1, [sp, #0x294]
	add r4, sp, #0x194
	add r7, sp, #0x174
_0801AF1A
	ldr r0, _0801B0F0 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r0, [r0]
	adds r3, r2, #0
	ldr r1, [r0, #0x14]
	lsls r5, r1, #0x1c
	bmi _0801AF2A
	ldrh r3, [r0, #8]
_0801AF2A
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r1, #0x1c
	bmi _0801AF34
	ldrh r2, [r0, #4]
_0801AF34
	ldrh r0, [r7, #0x1c]
	ldrh r1, [r7, #0x1e]
	lsls r6, r2, #0x10
	lsrs r6, r6, #0x10
	str r1, [sp, #8]
	ldr r1, [sp, #0x294]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x294]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0x10]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B0F4 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0801AF7A
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	bl sub_800065C
_0801AF7A
	lsls r0, r6, #0x17
	ldr r1, [sp, #8]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801B0F4 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0801AFAC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	bl sub_800065C
_0801AFAC
	lsls r0, r5, #0x16
	bpl _0801AFB6
	movs r0, #2
	strb r0, [r4, #1]
	b _0801AFF0
_0801AFB6
	lsls r0, r5, #0x17
	bpl _0801AFC0
	movs r0, #1
	strb r0, [r4, #1]
	b _0801AFF0
_0801AFC0
	lsls r0, r5, #0x1e
	bpl _0801AFCA
	movs r0, #3
	strb r0, [r4, #1]
	b _0801AFF0
_0801AFCA
	lsls r0, r5, #0x1d
	bpl _0801AFD4
	movs r0, #3
	strb r0, [r4, #1]
	b _0801AFF0
_0801AFD4
	lsls r0, r5, #0x1a
	bpl _0801AFE4
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_801AC60
	b _0801AFF0
_0801AFE4
	lsls r0, r5, #0x1b
	bpl _0801AFF0
	movs r1, #1
	add r0, sp, #0x14
	bl sub_801AC60
_0801AFF0
	lsls r0, r6, #0x1a
	ldr r1, _0801B0F8 ;@ =0x00000C83
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r1, [r4, #4]
	ldr r0, _0801B0F4 ;@ =gUnknown_03003EA0
	str r1, [sp, #0x10]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _0801B01E
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_800065C
_0801B01E
	lsls r0, r6, #0x1b
	ldr r1, _0801B0FC ;@ =0x00000C85
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r0, _0801B0F4 ;@ =gUnknown_03003EA0
	ldr r6, [r4, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _0801B048
	adds r1, r5, #0
	ldr r0, [r4, #8]
	bl sub_800065C
_0801B048
	bl sub_800EF2A
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0801B054
	b _0801AF1A
_0801B054
	ldrh r2, [r7, #0x1a]
	ldr r1, _0801B100 ;@ =gUnknown_080506E8
	ldrb r0, [r4, #1]
	ldrb r4, [r1, r2]
	ldrh r2, [r7, #0x18]
	add r5, sp, #0x14
	ldr r6, _0801B104 ;@ =gUnknown_0300345C
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq _0801B08E
	cmp r0, #2
	beq _0801B07C
	cmp r0, #3
	beq _0801B0A0
	cmp r0, #6
	bne _0801B0A6
	movs r0, #0xb
	bl sub_8018386
	b _0801B0A6
_0801B07C
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801B0B0
_0801B08E
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801B0B0
_0801B0A0
	movs r0, #0x11
	bl sub_8018386
_0801B0A6
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
_0801B0B0
	adds r0, r5, #0
	bl sub_801ABFC
	movs r1, #0
	ldr r0, [sp, #0x298]
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x29c]
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x2a0]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r5, #0
	adds r0, #0x80
	ldr r3, _0801B108 ;@ =sub_8014436
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0xa8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801B0EC DCDU sub_80143E0
_0801B0F0 DCDU gUnknown_03003444
_0801B0F4 DCDU gUnknown_03003EA0
_0801B0F8 DCDU 0x00000C83
_0801B0FC DCDU 0x00000C85
_0801B100 DCDU gUnknown_080506E8
_0801B104 DCDU gUnknown_0300345C
_0801B108 DCDU sub_8014436
	END
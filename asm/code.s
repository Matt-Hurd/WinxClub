	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03000000
	IMPORT gUnknown_03000058
	IMPORT gUnknown_03000090
	IMPORT gUnknown_03000190
	IMPORT gUnknown_030001E0
	IMPORT gUnknown_03000284
	IMPORT gUnknown_0300028C
	IMPORT gUnknown_03000308
	IMPORT gUnknown_03001140
	IMPORT gUnknown_0300142C
	IMPORT gUnknown_03001444
	IMPORT gUnknown_03001A54
	IMPORT gUnknown_03001BBC
	IMPORT gUnknown_03001C24
	IMPORT gUnknown_03002BEC
	IMPORT gUnknown_03002D28
	IMPORT gUnknown_03002D2C
	IMPORT gUnknown_03002D48
	IMPORT gUnknown_03002D74
	IMPORT gUnknown_03002DAC
	IMPORT gUnknown_03002DE4
	IMPORT gUnknown_03002F48
	IMPORT gUnknown_030030B8
	IMPORT gUnknown_030031EC
	IMPORT gUnknown_030031EE
	IMPORT gUnknown_030031FE
	IMPORT gUnknown_0300327E
	IMPORT gUnknown_0300328A
	IMPORT gUnknown_0300328E
	IMPORT gUnknown_03003292
	IMPORT gUnknown_03003296
	IMPORT gUnknown_0300329A
	IMPORT gUnknown_030032A0
	IMPORT gUnknown_030032B0
	IMPORT gUnknown_030032C0
	IMPORT gUnknown_030032E8
	IMPORT gUnknown_03003304
	IMPORT gUnknown_03003328
	IMPORT gUnknown_03003332
	IMPORT gUnknown_0300333C
	IMPORT gUnknown_03003346
	IMPORT gUnknown_0300334A
	IMPORT gUnknown_030033A2
	IMPORT gUnknown_030033A6
	IMPORT gUnknown_030033BE
	IMPORT gUnknown_030033C0
	IMPORT gUnknown_030033C8
	IMPORT gUnknown_030033D0
	IMPORT gUnknown_030033E8
	IMPORT gUnknown_030033EC
	IMPORT gUnknown_030033F0
	IMPORT gUnknown_030033F4
	IMPORT gUnknown_030033FC
	IMPORT gUnknown_03003434
	IMPORT gUnknown_03003438
	IMPORT gUnknown_03003440
	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003464
	IMPORT gUnknown_03003468
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_030034FC
	IMPORT gUnknown_03003520
	IMPORT gUnknown_03003530
	IMPORT gUnknown_03003670
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT gUnknown_03003BF8
	IMPORT gUnknown_03003C3C
	IMPORT gUnknown_03003C40
	IMPORT gUnknown_03003C4C
	IMPORT gUnknown_03003C58
	IMPORT gUnknown_03003C84
	IMPORT gUnknown_03003D1C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003D24
	IMPORT gUnknown_03003D28
	IMPORT gUnknown_03003D2C
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003D34
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003D38
	IMPORT gUnknown_03003D98
	IMPORT gUnknown_03003E7C
	IMPORT gUnknown_03003E80
	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003E8C
	IMPORT gUnknown_03003E90
	IMPORT gUnknown_03003E94
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003E9C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_03003EB0
	IMPORT gUnknown_03003EB4
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_03003EBC
	IMPORT gUnknown_03003EC0
	IMPORT gUnknown_03003EC4
	IMPORT gUnknown_03007F00
	IMPORT gUnknown_03007FA0
	IMPORT gUnknown_03007FC0
	IMPORT gUnknown_03007FF8

	IMPORT gUnknown_08041448
	IMPORT gUnknown_08041448
	IMPORT gUnknown_08041468
	IMPORT gUnknown_08041488
	IMPORT gUnknown_080414A8
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_080494B8
	IMPORT gUnknown_080495B8
	IMPORT gUnknown_08049604
	IMPORT gUnknown_08049608
	IMPORT gUnknown_08049684
	IMPORT gUnknown_08049700
	IMPORT gUnknown_08049778
	IMPORT gUnknown_080497F0
	IMPORT gUnknown_0804A7F0
	IMPORT gUnknown_0804A8F0
	IMPORT gUnknown_0804A934
	IMPORT gUnknown_0804A948
	IMPORT gUnknown_0804AA38
	IMPORT gUnknown_0804AA48
	IMPORT gUnknown_0804AA58
	IMPORT gUnknown_0804AA68
	IMPORT gUnknown_0804AB34
	IMPORT gUnknown_0804AB68
	IMPORT gUnknown_0804AC68
	IMPORT gUnknown_0804AE1E
	IMPORT gUnknown_0804AE30
	IMPORT gUnknown_0804AE44
	IMPORT gUnknown_0804AE70
	IMPORT gUnknown_0804AE80
	IMPORT gUnknown_0804AEAC
	IMPORT gUnknown_0804AF2C
	IMPORT gUnknown_080503D6
	IMPORT gUnknown_080503F6
	IMPORT gUnknown_080503FE
	IMPORT gUnknown_08050410
	IMPORT gUnknown_08050654
	IMPORT gUnknown_08050664
	IMPORT gUnknown_08050684
	IMPORT gUnknown_08050694
	IMPORT gUnknown_080506E8
	IMPORT gUnknown_08050716
	IMPORT gUnknown_0805075A
	IMPORT gUnknown_080507A8
	IMPORT gUnknown_080507B8
	IMPORT gUnknown_080507E4
	IMPORT gUnknown_080507EC
	IMPORT gUnknown_080507F4
	IMPORT gUnknown_08050A24
	IMPORT gUnknown_08050C54
	IMPORT gUnknown_08050E84
	IMPORT gUnknown_08050FC0
	IMPORT gUnknown_08050FD4
	IMPORT gUnknown_08050FEC
	IMPORT gUnknown_08050FF8
	IMPORT gUnknown_08051028
	IMPORT gUnknown_08051038
	IMPORT gUnknown_08051040
	IMPORT gUnknown_0805104C
	IMPORT gUnknown_08051072
	IMPORT gUnknown_08051076
	IMPORT gUnknown_0805107A
	IMPORT gUnknown_0805107E
	IMPORT gUnknown_08051082
	IMPORT gUnknown_08051086
	IMPORT gUnknown_0805108A
	IMPORT gUnknown_08051090
	IMPORT gUnknown_08051096
	IMPORT gUnknown_080510C0
	IMPORT gUnknown_080513DC
	IMPORT gUnknown_08051438
	IMPORT gUnknown_0805144C
	IMPORT gUnknown_080514B0
	IMPORT gUnknown_080514B8
	IMPORT gUnknown_080514C8
	IMPORT gUnknown_080514D0
	IMPORT gUnknown_08051744
	IMPORT gUnknown_08051750
	IMPORT gUnknown_080517C8

	thumb_func_start sub_8000210
sub_8000210 ;@ 0x08000210
	b _08000216
_08000212
	adds r0, #1
	adds r1, #1
_08000216
	ldrb r3, [r0]
	cmp r3, #0
	beq _08000228
	ldrb r2, [r1]
	cmp r2, #0
	beq _08000232
	cmp r3, r2
	beq _08000212
	b _08000232
_08000228
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000232
	movs r0, #1
	bx lr
_08000232
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8000236
sub_8000236 ;@ 0x08000236
	push {r4, r5}
	b _0800026E
_0800023A
	movs r3, #0
	ldrsb r4, [r0, r3]
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi _08000248
	subs r4, #0x20
_08000248
	lsls r5, r4, #0x18
	movs r3, #0
	ldrsb r4, [r1, r3]
	asrs r5, r5, #0x18
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi _0800025A
	subs r4, #0x20
_0800025A
	lsls r3, r4, #0x18
	asrs r3, r3, #0x18
	cmp r5, r3
	beq _08000268
	subs r0, r3, r5
_08000264
	pop {r4, r5}
	bx lr
_08000268
	adds r0, #1
	adds r1, #1
	subs r2, #1
_0800026E
	ldrb r3, [r0]
	cmp r3, #0
	beq _08000280
	ldrb r3, [r1]
	cmp r3, #0
	beq _08000280
	cmp r2, #0
	bne _0800023A
	b _08000284
_08000280
	cmp r2, #0
	bne _08000288
_08000284
	movs r0, #0
	b _08000264
_08000288
	movs r3, #0
	ldrsb r1, [r1, r3]
	ldrsb r0, [r0, r3]
	subs r0, r1, r0
	b _08000264

	non_word_aligned_thumb_func_start sub_8000292
sub_8000292 ;@ 0x08000292
	ldrb r2, [r0]
	movs r1, #0
	cmp r2, #0
	beq _080002A4
_0800029A
	adds r0, #1
	ldrb r2, [r0]
	adds r1, #1
	cmp r2, #0
	bne _0800029A
_080002A4
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_80002A8
sub_80002A8 ;@ 0x080002A8
	ldrb r1, [r0]
	cmp r1, #0
	beq _080002C6
_080002AE
	movs r3, #0
	ldrsb r1, [r0, r3]
	adds r2, r1, #0
	subs r2, #0x41
	cmp r2, #0x19
	bhi _080002BE
	adds r1, #0x20
	strb r1, [r0]
_080002BE
	adds r0, #1
	ldrb r1, [r0]
	cmp r1, #0
	bne _080002AE
_080002C6
	bx lr

	thumb_func_start sub_80002C8
sub_80002C8 ;@ 0x080002C8
	ldrb r2, [r0]
	cmp r2, #0
	beq _080002DE
_080002CE
	movs r3, #0
	ldrsb r2, [r0, r3]
	cmp r2, r1
	beq _080002E0
	adds r0, #1
	ldrb r2, [r0]
	cmp r2, #0
	bne _080002CE
_080002DE
	movs r0, #0
_080002E0
	bx lr

	non_word_aligned_thumb_func_start sub_80002E2
sub_80002E2 ;@ 0x080002E2
	ldr r1, _08000314 ;@ =0x04000200
	sub sp, #4
	movs r3, #0
	strh r3, [r1, #8]
	movs r1, #0
	str r1, [sp]
	ldr r1, _08000318 ;@ =0x040000D4
	mov r2, sp
	str r2, [r1]
	movs r2, #3
	lsls r2, r2, #0x19
	str r2, [r1, #4]
	ldr r2, _0800031C ;@ =0x85006000
	str r2, [r1, #8]
	ldr r1, [r1, #8]
	movs r1, #0xff
	adds r1, #1
	lsls r2, r1, #0x12
	strh r1, [r2]
	movs r1, #5
	lsls r1, r1, #0x18
	strh r0, [r1]
	ldr r0, _08000320 ;@ =0x04000040
	strh r3, [r0, #0x10]
_08000312
	b _08000312
	ALIGN
_08000314 DCDU 0x04000200
_08000318 DCDU 0x040000D4
_0800031C DCDU 0x85006000
_08000320 DCDU 0x04000040

	thumb_func_start sub_8000324
sub_8000324 ;@ 0x08000324
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	sub sp, #8
	lsls r0, r0, #0xe
	bmi _0800039A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _08000350
	ldr r0, _08000654 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_08000350
	ldr r1, [r0, #4]
	add r3, sp, #0
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	lsls r2, r2, #2
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	adds r2, #4
	lsls r1, r1, #2
	adds r1, #4
	strh r2, [r3, #4]
	strh r1, [r3, #6]
	ldrh r1, [r4, #0x28]
	ldrh r0, [r0, #0x12]
	lsls r1, r1, #0x12
	ldr r1, [r4, #0x30]
	bpl _08000388
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x40]
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08000380
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
_08000388
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x38]
	add r3, sp, #0
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _08000380
_0800039A
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08000380
	ldr r1, [r0]
	lsls r1, r1, #0xb
	bpl _080003BE
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x30]
	lsls r2, r2, #0x16
	lsrs r2, r2, #6
	subs r2, r1, r2
	str r2, [r4, #0x38]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #6
	adds r0, r1, r0
	str r0, [r4, #0x40]
	b _08000380
_080003BE
	ldrh r1, [r4, #0x28]
	lsls r1, r1, #0x12
	ldr r1, [r4, #0x30]
	ldr r2, [r0, #4]
	bge _080003DE
	lsrs r2, r2, #0x15
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #6
	subs r0, r1, r0
	str r0, [r4, #0x38]
	b _08000380
_080003DE
	lsrs r2, r2, #0x15
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	adds r1, r1, r2
	str r1, [r4, #0x38]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #6
	adds r0, r1, r0
	str r0, [r4, #0x40]
	b _08000380

	thumb_func_start sub_80003F4
sub_80003F4 ;@ 0x080003F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	sub sp, #8
	lsls r0, r0, #0xe
	bmi _0800046A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _08000420
	ldr r0, _08000654 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_08000420
	ldr r1, [r0, #4]
	add r3, sp, #0
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	lsls r2, r2, #2
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	adds r2, #4
	lsls r1, r1, #2
	adds r1, #4
	strh r2, [r3, #4]
	strh r1, [r3, #6]
	ldrh r1, [r4, #0x28]
	ldrh r0, [r0, #0x10]
	lsls r1, r1, #0x13
	ldr r1, [r4, #0x2c]
	bpl _08000458
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x3c]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x34]
_08000450
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
_08000458
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x34]
	add r3, sp, #0
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	b _08000450
_0800046A
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08000450
	ldr r2, [r0]
	lsls r1, r2, #0xb
	bpl _08000490
	lsls r2, r2, #1
	lsrs r2, r2, #0x16
	ldr r1, [r4, #0x2c]
	lsls r2, r2, #0x10
	subs r2, r1, r2
	str r2, [r4, #0x34]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x3c]
	b _08000450
_08000490
	ldrh r1, [r4, #0x28]
	lsls r1, r1, #0x13
	ldr r1, [r4, #0x2c]
	ldr r2, [r0, #4]
	bge _080004B2
	lsrs r2, r2, #0xa
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x34]
	b _08000450
_080004B2
	lsrs r2, r2, #0xa
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	adds r1, r1, r2
	str r1, [r4, #0x34]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x3c]
	b _08000450

	non_word_aligned_thumb_func_start sub_80004CA
sub_80004CA ;@ 0x080004CA
	push {r3, lr}
	cmp r0, #0
	bne _080004DA
	movs r0, #0x60
	bl sub_803D9F8
	cmp r0, #0
	beq _080004E0
_080004DA
	movs r1, #0
	movs r2, #0x51
	strb r1, [r2, r0]
_080004E0
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80004E6
sub_80004E6 ;@ 0x080004E6
	push {r3, lr}
	cmp r0, #0
	bne _080004F2
	movs r0, #0x60
	bl sub_803D9F8
_080004F2
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80004F8
sub_80004F8 ;@ 0x080004F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x60
	bl sub_803BEB0
	movs r0, #0xff
	adds r0, #1
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x22]
	ldr r0, [r4]
	movs r1, #1
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4]
	ldr r0, _08000658 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_80019A6
	movs r2, #1
	lsls r2, r2, #0x11
	ldr r1, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000532
sub_8000532 ;@ 0x08000532
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r7, _08000658 ;@ =gUnknown_03003EB8
	lsls r0, r0, #0x15
	bpl _08000550
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
_08000550
	ldr r0, [r4]
	ldr r5, _08000654 ;@ =gUnknown_03003EA0
	lsls r0, r0, #0x1f
	bpl _08000586
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_8001232
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800057E
	ldr r0, [r5]
	cmp r0, #0
	beq _0800057E
	ldr r1, [r4, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	beq _0800057E
	adds r1, r4, #0
	bl sub_800CD28
_0800057E
	ldr r0, [r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4]
_08000586
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl _08000594
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_8001338
_08000594
	ldr r0, [r4]
	lsls r0, r0, #0x13
	bpl _080005A6
	ldr r0, [r5]
	cmp r0, #0
	beq _080005A6
	adds r1, r4, #0
	bl sub_800C1CA
_080005A6
	ldr r1, [r4, #0x14]
	ldr r0, [r1, #4]
	lsls r0, r0, #0x1f
	bpl _08000618
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _080005B8
	ldr r6, [r4, #0x48]
	b _080005BA
_080005B8
	ldr r6, [r4, #0x10]
_080005BA
	cmp r6, #0
	beq _080005F2
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _080005DA
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r6]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_080005DA
	adds r1, r0, #0
	ldr r1, [r1, #0xc]
	ldr r0, [r5]
	lsls r2, r1, #0x1c
	ldr r1, [r4, #0x14]
	lsrs r2, r2, #0x1c
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	bl _0800C0EC
	b _08000600
_080005F2
	ldr r0, [r5]
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	movs r2, #1
	bl _0800C0EC
_08000600
	ldr r0, [r4, #0x14]
	movs r2, #0x1f
	ldr r1, [r0]
	lsls r2, r2, #8
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x14]
	adds r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
_08000618
	ldrh r0, [r4, #0x26]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	beq _08000636
	ldrh r1, [r4, #0x28]
	ldr r0, [r5]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1b
	bl sub_800C4F0
	ldrh r0, [r4, #0x26]
	movs r1, #3
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r4, #0x26]
_08000636
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _0800064E
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _0800064E
	ldr r0, [r7]
	bl sub_80016D8
	movs r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
_0800064E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08000654 DCDU gUnknown_03003EA0
_08000658 DCDU gUnknown_03003EB8

	thumb_func_start sub_800065C
sub_800065C ;@ 0x0800065C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08000900 ;@ =gUnknown_03003EA0
	lsls r1, r1, #3
	ldr r0, [r0]
	ldr r2, [r0, #0x24]
	adds r5, r2, r1
	ldr r1, [r4, #0x10]
	cmp r1, r5
	beq _08000694
	movs r6, #0
	str r6, [r4, #0x44]
	str r6, [r4, #0x48]
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	adds r2, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_803FA3C
_08000694
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800069A
sub_800069A ;@ 0x0800069A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08000904 ;@ =gUnknown_03003EA4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r5, [r0, #0x20]
	ldr r0, _08000900 ;@ =gUnknown_03003EA0
	adds r5, #0x38
	ldr r2, [r5]
	ldr r3, [r4, #0x3c]
	movs r6, #1
	lsls r6, r6, #9
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r3, r2
	blt _080006DE
	movs r7, #0xf
	lsls r7, r7, #0x14
	ldr r3, [r4, #0x34]
	adds r2, r2, r7
	cmp r3, r2
	bge _080006DE
	ldr r3, [r4, #0x40]
	ldr r2, [r5, #4]
	cmp r3, r2
	blt _080006DE
	movs r7, #5
	lsls r7, r7, #0x15
	ldr r3, [r4, #0x38]
	adds r2, r2, r7
	cmp r3, r2
	blt _080006F4
_080006DE
	lsls r1, r1, #0x16
	bmi _080006EE
	adds r1, r4, #0
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
_080006EE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080006F4
	lsls r1, r1, #0x16
	bpl _0800070C
	adds r1, r4, #0
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0800070C
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r1, r0, #0x10
	ldr r0, [r5]
	asrs r2, r0, #0x1f
	lsrs r2, r2, #0x10
	adds r0, r2, r0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	ldrh r1, [r4, #0x28]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r5, #4]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	subs r0, r0, r1
	ldrh r1, [r4, #0x26]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _080006EE

	non_word_aligned_thumb_func_start sub_800075E
sub_800075E ;@ 0x0800075E
	push {r4}
	ldr r3, [r0, #0x10]
	ldrh r2, [r0, #0x28]
	ldr r3, [r3, #4]
	lsls r3, r3, #0xd
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x17
	asrs r3, r3, #0x17
	adds r3, r2, r3
	str r3, [r1]
	ldr r4, [r0, #0x10]
	ldrh r2, [r0, #0x26]
	ldr r4, [r4, #4]
	lsls r4, r4, #2
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	asrs r4, r4, #0x17
	adds r2, r2, r4
	str r2, [r1, #4]
	ldr r4, [r0, #0x10]
	ldr r4, [r4]
	lsls r4, r4, #1
	lsrs r4, r4, #0x16
	adds r3, r3, r4
	str r3, [r1, #8]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r2, r0
	str r0, [r1, #0xc]
	pop {r4}
	bx lr

	thumb_func_start sub_80007A0
sub_80007A0 ;@ 0x080007A0
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r6, _08000900 ;@ =gUnknown_03003EA0
	adds r4, r0, #0
	ldr r0, [r6]
	lsls r7, r1, #3
	ldr r2, [r0, #0x28]
	ldr r1, [r4]
	adds r5, r2, r7
	lsls r1, r1, #0x13
	bpl _080007BA
	adds r1, r4, #0
	bl sub_800C1CA
_080007BA
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800082C
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0800082C
	ldr r1, [r6]
	ldr r0, [r0, #4]
	ldr r2, [r1, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r2, r0
	ldr r2, [r4, #0x48]
	subs r0, r2, r0
	ldr r2, [r5]
	asrs r0, r0, #2
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	str r5, [r4, #0x44]
	bhi _0800080A
	ldr r0, [r1, #0x2c]
	ldr r1, [r5, #4]
	ldr r3, _08000908 ;@ =0x0010BE20
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r5]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	ldr r1, [r5]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1a
	strb r1, [r4, #3]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	b _08000858
_0800080A
	ldr r2, [r5, #4]
	ldr r1, [r1, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r1, r1, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [r4, #0x48]
	ldr r0, [r5]
	ldr r3, _08000908 ;@ =0x0010BE20
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	b _08000858
_0800082C
	ldr r0, [r6]
	ldr r3, _08000908 ;@ =0x0010BE20
	ldr r1, [r0, #0x28]
	adds r1, r1, r7
	str r1, [r4, #0x44]
	ldr r2, [r1, #4]
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r0, r0, r2
	str r0, [r4, #0x48]
	ldr r0, [r1]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	ldr r1, [r1]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1a
	strb r1, [r4, #3]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
_08000858
	ldr r0, [r6]
	ldr r2, [r4, #0x44]
	ldr r1, [r0, #0x24]
	ldr r2, [r2, #4]
	lsrs r2, r2, #0x10
	lsls r2, r2, #3
	adds r5, r1, r2
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	adds r2, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	movs r3, #0
	adds r0, r4, #0
	bl sub_803FA3C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800088C
sub_800088C ;@ 0x0800088C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08000900 ;@ =gUnknown_03003EA0
	adds r4, r0, #0
	ldr r0, [r6]
	adds r7, r2, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r2, [r4, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq _080008AE
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080008AE
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _080008FA
	adds r2, r7, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80007A0
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl sub_803B998
	add r2, pc, #0x28 ;@ =_0800090C
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
_080008FA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08000900 DCDU gUnknown_03003EA0
_08000904 DCDU gUnknown_03003EA4
_08000908 DCDU 0x0010BE20
_0800090C DCDU 0x0010BE20
_08000910 DCDU 0x00000000

	thumb_func_start sub_8000914
sub_8000914 ;@ 0x08000914
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r0, r0, #0x15
	bmi _08000942
	ldr r0, _08000B8C ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80013D8
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r1, r1, #1
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_08000942
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8000948
sub_8000948 ;@ 0x08000948
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	lsls r0, r0, #0x14
	bmi _080009B8
	ldrb r0, [r4, #3]
	ldr r2, _08000B90 ;@ =0xFFEF41E0
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #3]
	ldr r1, [r4, #8]
	adds r1, r1, r2
	str r1, [r4, #8]
	cmp r0, #0
	bne _080009B8
	ldr r0, [r4, #0x48]
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1c
	cmp r0, #0xa
	bhs _080009B8
	add r3, pc, #0x4 ;@ =_0800097C
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0800097C
	DCB 0x04
_0800097D
	DCB 0x20
_0800097E
	DCB 0x1D
_0800097F
	DCB 0x1D
_08000980
	DCB 0x1D
_08000981
	DCB 0x1D
_08000982
	DCB 0x1D
_08000983
	DCB 0x45
_08000984
	DCB 0x50
_08000985
	DCB 0x71
loc_8000986
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl sub_803B998
	mov r2, pc
	subs r2, #0x94
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
_080009B8
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_80009be
	ldr r0, _08000B94 ;@ =gUnknown_03003EA0
	ldr r1, [r4, #0x44]
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0x2c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	ldr r1, [r1]
	lsrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl sub_803B998
	mov r2, pc
	subs r2, #0xe2
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	b _080009B8
loc_8000a08
	ldr r0, _08000B8C ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	b _080009B8
loc_8000a1e
	ldr r5, _08000B8C ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	lsls r1, r0, #0x1f
	beq _080009B8
	lsls r0, r0, #0x1f
	bpl _080009B8
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8001232
	ldr r0, [r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4]
	lsls r0, r0, #0x16
	bmi _080009B8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080009B8
	ldr r0, _08000B94 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD28
	b _080009B8
loc_8000a60
	ldr r0, [r4, #0x48]
	ldr r0, [r0]
	ldr r2, [r4, #0x4c]
	lsrs r1, r0, #0x18
	adds r0, r4, #0
	bl sub_803B8CC
	cmp r0, #0
	beq _08000A92
	cmp r0, #7
	bne _080009B8
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, _08000B8C ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
	b _080009B8
_08000A92
	ldr r0, [r4, #0x48]
	adds r0, #4
	str r0, [r4, #0x48]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl sub_803B998
	add r2, pc, #0xEC ;@ =_08000B98
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	b _080009B8

	thumb_func_start sub_8000AC4
sub_8000AC4 ;@ 0x08000AC4
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x50
	sub sp, #4
	str r1, [sp]
	movs r0, #0
	strb r0, [r1]
	ldr r3, [sp, #8]
	ldr r0, [r3]
	cmp r0, #0
	bne _08000AEC
	ldr r3, [sp, #8]
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _08000AEC
_08000AE4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08000AEC
	ldr r0, _08000B8C ;@ =gUnknown_03003EB8
	movs r1, #0x67
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrh r4, [r0, #8]
	ldr r2, [r0]
	ldrh r6, [r0, #0xa]
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #5
	adds r4, r2, r3
	movs r7, #0
	cmp r6, #0
	ble _08000B4A
_08000B0A
	cmp r4, r5
	beq _08000B2C
	ldr r0, _08000B8C ;@ =gUnknown_03003EB8
	ldr r1, _08000BA0 ;@ =0x00001AD4
	ldr r0, [r0]
	adds r2, r4, #0
	adds r0, r0, r1
	adds r1, r5, #0
	ldr r3, [sp, #8]
	bl sub_800F090
	cmp r0, #0
	beq _08000B2C
	movs r7, #1
	ldr r1, [sp]
	movs r0, #1
	strb r0, [r1]
_08000B2C
	ldr r0, _08000B8C ;@ =gUnknown_03003EB8
	movs r1, #0x67
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, #0x40
	ldrh r1, [r4, #0x1a]
	subs r6, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	cmp r6, #0
	bgt _08000B0A
_08000B4A
	ldr r0, [r5]
	lsls r0, r0, #0x1d
	bpl _08000B88
	ldr r0, _08000BA4 ;@ =0x000019EC
	cmp r7, #0
	beq _08000B70
	ldr r1, _08000B8C ;@ =gUnknown_03003EB8
	ldr r2, _08000BA8 ;@ =gUnknown_030033D0
	ldr r1, [r1]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_801537C
	cmp r0, #0
	beq _08000B88
	ldr r1, [sp]
	movs r0, #3
	strb r0, [r1]
	b _08000B88
_08000B70
	ldr r1, _08000B8C ;@ =gUnknown_03003EB8
	ldr r1, [r1]
	ldr r2, [sp, #8]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_801537C
	adds r7, r0, #0
	beq _08000B88
	ldr r1, [sp]
	movs r0, #2
	strb r0, [r1]
_08000B88
	adds r0, r7, #0
	b _08000AE4
	ALIGN
_08000B8C DCDU gUnknown_03003EB8
_08000B90 DCDU 0xFFEF41E0
_08000B94 DCDU gUnknown_03003EA0
_08000B98 DCDU 0x0010BE20
_08000B9C DCDU 0x00000000
_08000BA0 DCDU 0x00001AD4
_08000BA4 DCDU 0x000019EC
_08000BA8 DCDU gUnknown_030033D0

	thumb_func_start sub_8000BAC
sub_8000BAC ;@ 0x08000BAC
	ldr r1, _08000C74 ;@ =gUnknown_03003EA4
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x34]
	ldr r0, _08000C78 ;@ =gUnknown_030033C8
	ldr r1, [r1, #0x54]
	ldrh r0, [r0]
	ldr r1, [r1, #4]
	lsls r1, r1, #5
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x1d
	lsls r0, r1
	ldr r1, _08000C78 ;@ =gUnknown_030033C8
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start sub_8000BD8
sub_8000BD8 ;@ 0x08000BD8
	ldr r1, _08000C74 ;@ =gUnknown_03003EA4
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x3c]
	ldr r0, _08000C78 ;@ =gUnknown_030033C8
	ldr r1, [r1, #0x54]
	ldrh r0, [r0, #4]
	ldr r1, [r1, #4]
	lsls r1, r1, #5
	lsrs r1, r1, #0x1d
	lsls r0, r0, #0x10
	lsls r0, r1
	ldr r1, _08000C78 ;@ =gUnknown_030033C8
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1]
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8000C02
sub_8000C02 ;@ 0x08000C02
	ldr r1, _08000C74 ;@ =gUnknown_03003EA4
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x38]
	ldr r0, _08000C78 ;@ =gUnknown_030033C8
	ldr r1, [r1, #0x54]
	ldrh r0, [r0, #2]
	ldr r1, [r1, #4]
	lsls r1, r1, #2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x1d
	lsls r0, r1
	ldr r1, _08000C78 ;@ =gUnknown_030033C8
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1, #4]
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8000C2E
sub_8000C2E ;@ 0x08000C2E
	ldr r1, _08000C74 ;@ =gUnknown_03003EA4
	movs r2, #0x13
	ldr r1, [r1]
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r2, [r0, #0x40]
	ldr r0, _08000C78 ;@ =gUnknown_030033C8
	ldr r1, [r1, #0x54]
	ldrh r0, [r0, #6]
	ldr r1, [r1, #4]
	lsls r1, r1, #2
	lsrs r1, r1, #0x1d
	lsls r0, r0, #0x10
	lsls r0, r1
	ldr r1, _08000C78 ;@ =gUnknown_030033C8
	subs r0, r0, r2
	adds r1, #8
	str r0, [r1, #4]
	movs r0, #1
	bx lr

	thumb_func_start sub_8000C58
sub_8000C58 ;@ 0x08000C58
	movs r1, #0
_08000C5A
	ldrb r2, [r0, r1]
	cmp r2, #0xff
	beq _08000C64
	movs r0, #1
	bx lr
_08000C64
	adds r1, #1
	cmp r1, #0x14
	blo _08000C5A
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8000C6E
sub_8000C6E ;@ 0x08000C6E
	str r1, [r0, #0x1c]
	bx lr
	ALIGN
_08000C74 DCDU gUnknown_03003EA4
_08000C78 DCDU gUnknown_030033C8

	thumb_func_start sub_8000C7C
sub_8000C7C ;@ 0x08000C7C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08000D60 ;@ =gUnknown_03003E84
	adds r5, r1, #0
	adds r3, r4, #4
	movs r2, #0x3c
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r4, #0x18]
	adds r0, r0, r5
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	adds r0, r0, r5
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	adds r0, r0, r5
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	adds r0, r0, r5
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r5
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	adds r0, r0, r5
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	adds r0, r0, r5
	str r0, [r4, #0x34]
	str r5, [r4, #0x48]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000CC6
sub_8000CC6 ;@ 0x08000CC6
	str r1, [r0, #0x4c]
	bx lr

	non_word_aligned_thumb_func_start sub_8000CCA
sub_8000CCA ;@ 0x08000CCA
	str r1, [r0, #0x50]
	bx lr

	non_word_aligned_thumb_func_start sub_8000CCE
sub_8000CCE ;@ 0x08000CCE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x40]
	movs r5, #0
	cmp r0, #0
	beq _08000CE4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x40]
_08000CE4
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _08000CF4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x44]
_08000CF4
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08000D04
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x58]
_08000D04
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _08000D14
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x5c]
_08000D14
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _08000D24
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x60]
_08000D24
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _08000D34
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x64]
_08000D34
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _08000D44
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x68]
_08000D44
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _08000D54
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x6c]
_08000D54
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000D5A
sub_8000D5A ;@ 0x08000D5A
	adds r0, #4
	bx lr

	non_word_aligned_thumb_func_start nullsub_3
nullsub_3 ;@ 0x08000D5E
	bx lr
	ALIGN
_08000D60 DCDU gUnknown_03003E84

	thumb_func_start sub_8000D64
sub_8000D64 ;@ 0x08000D64
	push {r4, lr}
	adds r4, r0, #0
	bne _08000D7E
	movs r0, #0xdf
	lsls r0, r0, #5
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08000D7E
	adds r0, r4, #0
_08000D78
	pop {r4}
	pop {r3}
	bx r3
_08000D7E
	ldr r0, _08001044 ;@ =_0803ECF0
	str r0, [r4]
	ldr r0, _08001048 ;@ =gUnknown_03003EB8
	str r4, [r0]
	ldr r0, _0800104C ;@ =_0803EC78
	str r0, [r4]
	adds r0, r4, #4
	bl sub_800B7DC
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r4, r0
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	movs r0, #0x67
	lsls r0, r0, #6
	adds r0, r4, r0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r2, _08001050 ;@ =0x0000FFFF
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x28]
	bics r1, r2
	adds r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #0x28]
	adds r0, r4, #0
	b _08000D78

	non_word_aligned_thumb_func_start sub_8000DE6
sub_8000DE6 ;@ 0x08000DE6
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x67
	adds r4, r1, #0
	lsls r0, r0, #6
	adds r5, r6, r0
	ldr r0, [r5, #0x28]
	movs r1, #1
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x28]
	ldr r0, [r4]
	bl sub_8000532
	ldr r0, [r4]
	movs r2, #0xff
	ldr r0, [r0, #0x14]
	lsls r2, r2, #0xd
	ldr r1, [r0]
	movs r7, #0
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4]
	ldr r2, [r0, #0x14]
	movs r0, #0x1f
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r2]
	ldr r1, [r4]
	ldr r2, _08001054 ;@ =0xFFE00000
	ldr r1, [r1, #0x14]
	orrs r0, r2
	str r0, [r1]
	ldr r1, [r4]
	movs r2, #0xff
	ldr r1, [r1, #0x14]
	orrs r0, r2
	str r0, [r1]
	ldr r0, [r4]
	str r7, [r0, #0x14]
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r6, #0x1e]
	ldr r1, [r4]
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, [r5]
	subs r0, r0, r1
	bl sub_8040550
	strh r1, [r6, #0x1e]
	str r7, [r4]
	ldr r0, [r5, #0x28]
	lsrs r1, r0, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #1
	lsls r1, r1, #0x12
	bics r0, r1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8000E6C
sub_8000E6C ;@ 0x08000E6C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r7, r6, r0
	ldrh r0, [r7, #0x1c]
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r6, r1
	movs r5, #1
	cmp r0, #1
	blt _08000EA6
_08000E84
	lsls r1, r5, #1
	adds r1, r1, r5
	ldr r0, [r4]
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _08000E9E
	mov r1, sp
	adds r0, r6, #0
	bl sub_8000DE6
_08000E9E
	ldrh r0, [r7, #0x1c]
	adds r5, #1
	cmp r0, r5
	bge _08000E84
_08000EA6
	movs r6, #1
	ldr r0, [r4, #0x28]
	lsls r6, r6, #0x12
	orrs r0, r6
	str r0, [r4, #0x28]
	ldr r0, [r4]
	bl sub_803DA4C
	movs r5, #0
	str r5, [r4]
	ldr r0, [r4, #0x10]
	bl sub_803DA4C
	str r5, [r4, #0x10]
	strh r5, [r7, #0x1c]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	ldr r0, [r4, #0x28]
	ldr r5, _08001058 ;@ =gUnknown_03003EA0
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r5]
	cmp r0, #0
	beq _08000EEA
	bl sub_800B8CE
	ldr r0, [r5]
	bl sub_800B916
_08000EEA
	ldr r0, [r4, #0x28]
	bics r0, r6
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000EF6
sub_8000EF6 ;@ 0x08000EF6
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800104C ;@ =_0803EC78
	adds r7, r1, #0
	str r0, [r4]
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08000F12
	adds r0, r4, #0
	bl sub_8000E6C
_08000F12
	ldr r0, [r5, #0x1c]
	movs r6, #0
	cmp r0, #0
	beq _08000F20
	bl sub_803DA4C
	str r6, [r5, #0x1c]
_08000F20
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _08000F2C
	bl sub_803DA4C
	str r6, [r5, #0x24]
_08000F2C
	movs r1, #0
	adds r0, r4, #4
	bl sub_800B8A4
	ldr r0, _08001044 ;@ =_0803ECF0
	cmp r7, #0
	str r0, [r4]
	ldr r0, _08001048 ;@ =gUnknown_03003EB8
	str r6, [r0]
	beq _08000F46
	adds r0, r4, #0
	bl sub_803DA18
_08000F46
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8000F4C
sub_8000F4C ;@ 0x08000F4C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	lsls r0, r0, #6
	adds r4, r7, r0
	ldr r0, [r4, #0x1c]
	movs r6, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #4
	beq _08000F68
	bl sub_803DA4C
	str r6, [r4, #0x1c]
_08000F68
	cmp r5, #0
	beq _08000FA6
	movs r3, #0
	str r3, [r4, #0x18]
	bl sub_8005106
	adds r1, r0, #0
	lsls r6, r5, #1
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	str r0, [r4, #0x1c]
	movs r0, #0
	subs r1, r5, #1
	beq _08000F9A
	subs r3, r5, #1
_08000F8C
	adds r1, r0, #1
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #1
	strh r1, [r2, r0]
	adds r0, r1, #0
	cmp r1, r3
	blo _08000F8C
_08000F9A
	ldr r1, [r4, #0x1c]
	movs r0, #0
	mvns r0, r0
	adds r1, r1, r6
	subs r1, #0x20
	strh r0, [r1, #0x1e]
_08000FA6
	adds r1, r5, #0
	adds r0, r7, #4
	adds r4, r0, #0
	bl sub_8000CC6
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	bl sub_8000CCA
	adds r0, r4, #0
	ldr r1, [sp, #8]
	bl sub_8000C7C
	adds r0, r4, #0
	bl sub_800B9B6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000FCE
sub_8000FCE ;@ 0x08000FCE
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #4
	bl nullsub_3
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, [r5, #0x24]
	movs r7, #0
	cmp r0, #0
	beq _08000FEC
	bl sub_803DA4C
	str r7, [r5, #0x24]
_08000FEC
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0800103C
	adds r6, r4, #0
	adds r6, #0x60
	ldrh r0, [r6, #0x1a]
	str r0, [r5, #0x20]
	bl sub_8005106
	adds r1, r0, #0
	ldr r0, [r4, #0x54]
	lsls r0, r0, #1
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r5, #0x24]
	ldr r1, [r4, #0x54]
	movs r0, #0
	subs r1, #1
	beq _0800102C
_08001016
	ldrh r1, [r6, #0x1a]
	ldr r2, [r5, #0x24]
	lsls r3, r0, #1
	adds r1, r1, r0
	adds r1, #1
	strh r1, [r2, r3]
	ldr r1, [r4, #0x54]
	adds r0, #1
	subs r1, #1
	cmp r1, r0
	bhi _08001016
_0800102C
	ldr r2, [r4, #0x54]
	ldr r1, [r5, #0x24]
	movs r0, #0
	lsls r2, r2, #1
	adds r1, r1, r2
	mvns r0, r0
	subs r1, #0x20
	strh r0, [r1, #0x1e]
_0800103C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08001044 DCDU _0803ECF0
_08001048 DCDU gUnknown_03003EB8
_0800104C DCDU _0803EC78
_08001050 DCDU 0x0000FFFF
_08001054 DCDU 0xFFE00000
_08001058 DCDU gUnknown_03003EA0

	thumb_func_start sub_800105C
sub_800105C ;@ 0x0800105C
	push {r3, lr}
	adds r0, #4
	bl sub_8000CCE
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800106A
sub_800106A ;@ 0x0800106A
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	adds r5, r1, #0
	lsls r0, r0, #6
	adds r4, r7, r0
	ldr r0, [r4, #0x28]
	movs r1, #1
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x28]
	ldr r0, _080012E4 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_800B8CE
	bl sub_8005106
	lsls r6, r5, #1
	adds r6, r6, r5
	lsls r6, r6, #5
	adds r6, #0x60
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	ldr r2, _080012E8 ;@ =sub_80004CA
	movs r3, #0
	str r2, [sp]
	movs r2, #0x60
	adds r1, r5, #1
	bl sub_803C3EC
	adds r1, r6, #0
	str r0, [r4]
	bl sub_803BEB0
	movs r3, #0
	ldr r0, [r4]
	movs r2, #1
	cmp r5, #1
	str r3, [r0, #0x14]
	blo _080010DC
	movs r6, #0
_080010C4
	adds r0, r2, #1
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	strh r0, [r1, r2]
	ldr r1, [r4]
	adds r1, r1, r2
	adds r2, r0, #0
	cmp r0, r5
	str r6, [r1, #0x14]
	bls _080010C4
_080010DC
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r7, r0
	strh r5, [r0, #0x1c]
	movs r1, #1
	strh r1, [r0, #0x1e]
	movs r6, #0
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strh r6, [r4, #0xa]
	strh r6, [r4, #0xc]
	strh r6, [r4, #0xe]
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r5, #3
	adds r0, #8
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	movs r1, #0
	movs r6, #0xff
	lsls r6, r6, #0xd
	str r0, [r4, #0x10]
_08001118
	ldr r2, [r4, #0x10]
	lsls r0, r1, #3
	adds r2, r2, r0
	ldr r3, [r2]
	adds r1, #1
	orrs r3, r6
	str r3, [r2]
	ldr r2, [r4, #0x10]
	adds r7, r2, r0
	movs r2, #0x1f
	lsls r2, r2, #8
	orrs r2, r3
	str r2, [r7]
	ldr r7, _080012EC ;@ =0xFFE00000
	ldr r3, [r4, #0x10]
	orrs r2, r7
	adds r3, r3, r0
	str r2, [r3]
	ldr r3, [r4, #0x10]
	movs r7, #0xff
	orrs r2, r7
	adds r3, r3, r0
	str r2, [r3]
	ldr r2, [r4, #0x10]
	adds r0, r2, r0
	adds r0, #4
	ldr r2, [r0]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	str r2, [r0]
	cmp r1, r5
	bls _08001118
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0x12
	bics r0, r1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	movs r0, #0
	bx r3

	non_word_aligned_thumb_func_start sub_800116A
sub_800116A ;@ 0x0800116A
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0xcd
	lsls r1, r1, #5
	adds r6, r0, r1
	ldrh r1, [r6, #0x1e]
	ldrh r2, [r6, #0x1c]
	cmp r1, r2
	bls _08001182
	movs r0, #0
_0800117C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08001182
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	movs r2, #1
	ldr r0, [r4, #0x28]
	lsls r2, r2, #0x12
	orrs r0, r2
	str r0, [r4, #0x28]
	lsls r3, r1, #1
	adds r1, r3, r1
	ldr r0, [r4]
	lsls r1, r1, #5
	adds r5, r0, r1
	ldrh r7, [r5]
	adds r0, r5, #0
	bl sub_80004F8
	ldrh r1, [r6, #0x1e]
	ldr r0, [r4, #0x10]
	movs r2, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x14]
	strh r7, [r6, #0x1e]
	ldr r0, [r4, #0x28]
	lsls r2, r2, #0x12
	lsrs r1, r0, #0x10
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	orrs r0, r1
	bics r0, r2
	str r0, [r4, #0x28]
	adds r0, r5, #0
	b _0800117C

	non_word_aligned_thumb_func_start sub_80011CA
sub_80011CA ;@ 0x080011CA
	movs r1, #0x67
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_80011D8
sub_80011D8 ;@ 0x080011D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0x40
	movs r2, #0
	strh r2, [r0, #0x12]
	ldrh r1, [r4, #6]
	adds r1, #1
	strh r1, [r4, #6]
	ldrh r1, [r4, #4]
	cmp r1, #0
	bne _08001204
	strh r2, [r0, #0x14]
	b _0800121C
_08001204
	strh r1, [r0, #0x14]
	ldrh r1, [r4, #4]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x12]
_0800121C
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #4]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8001232
sub_8001232 ;@ 0x08001232
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r2, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x40
	cmp r1, r2
	bne _0800125E
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #4]
	b _08001288
_0800125E
	ldrh r1, [r0, #0x12]
	cmp r1, #0
	beq _08001272
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	ldrh r2, [r0, #0x14]
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x14]
_08001272
	ldrh r2, [r0, #0x14]
	cmp r2, #0
	beq _08001288
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x12]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x12]
_08001288
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800129A
sub_800129A ;@ 0x0800129A
	push {r3, r4, r5, lr}
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _080012AE
_080012A8
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080012AE
	lsls r3, r0, #1
	adds r0, r3, r0
	ldr r2, [r4]
	ldrh r4, [r4, #6]
	lsls r0, r0, #5
	adds r3, r2, r0
	movs r0, #0
	cmp r4, #0
	ble _080012E0
_080012C0
	cmp r3, r1
	bne _080012CE
	subs r0, r3, r2
	bl sub_8040550
	adds r0, r1, #0
	b _080012A8
_080012CE
	adds r3, #0x40
	ldrh r5, [r3, #0x14]
	adds r0, #1
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #5
	adds r3, r2, r3
	cmp r4, r0
	bgt _080012C0
_080012E0
	movs r0, #0
	b _080012A8
	ALIGN
_080012E4 DCDU gUnknown_03003EA0
_080012E8 DCDU sub_80004CA
_080012EC DCDU 0xFFE00000

	thumb_func_start sub_80012F0
sub_80012F0 ;@ 0x080012F0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r3, #0x67
	lsls r3, r3, #6
	adds r1, #0x40
	movs r2, #0
	strh r2, [r1, #0x1c]
	adds r4, r0, r3
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08001310
	strh r2, [r1, #0x1a]
	b _08001328
_08001310
	strh r0, [r1, #0x1a]
	ldrh r1, [r4, #8]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x1c]
_08001328
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8001338
sub_8001338 ;@ 0x08001338
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r3, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r2, [r0, #0x1a]
	cmp r1, r3
	bne _0800135A
	strh r2, [r4, #8]
	b _08001382
_0800135A
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq _0800136C
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x1a]
_0800136C
	ldrh r2, [r0, #0x1a]
	cmp r2, #0
	beq _08001382
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x1c]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x1c]
_08001382
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800138E
sub_800138E ;@ 0x0800138E
	push {r3, r4, r5, lr}
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080013A2
_0800139C
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080013A2
	lsls r3, r0, #1
	adds r0, r3, r0
	ldr r2, [r4]
	ldrh r4, [r4, #0xa]
	lsls r0, r0, #5
	adds r3, r2, r0
	movs r0, #0
	cmp r4, #0
	ble _080013D4
_080013B4
	cmp r3, r1
	bne _080013C2
	subs r0, r3, r2
	bl sub_8040550
	adds r0, r1, #0
	b _0800139C
_080013C2
	adds r3, #0x40
	ldrh r5, [r3, #0x1a]
	adds r0, #1
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #5
	adds r3, r2, r3
	cmp r4, r0
	bgt _080013B4
_080013D4
	movs r0, #0
	b _0800139C

	thumb_func_start sub_80013D8
sub_80013D8 ;@ 0x080013D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0x40
	movs r2, #0
	strh r2, [r0, #0x16]
	ldrh r1, [r4, #0xe]
	adds r1, #1
	strh r1, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	bne _08001404
	strh r2, [r0, #0x18]
	b _0800141C
_08001404
	strh r1, [r0, #0x18]
	ldrh r1, [r4, #0xc]
	ldr r0, [r4]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r6, r0, r1
	subs r0, r5, r0
	bl sub_8040550
	adds r6, #0x40
	strh r1, [r6, #0x16]
_0800141C
	ldr r0, [r4]
	subs r0, r5, r0
	bl sub_8040550
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8001432
sub_8001432 ;@ 0x08001432
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r0, [r4, #0x28]
	movs r7, #1
	lsls r7, r7, #0x12
	orrs r0, r7
	str r0, [r4, #0x28]
	ldr r6, [r4]
	subs r0, r5, r6
	bl sub_8040550
	ldrh r2, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0x40
	cmp r1, r2
	bne _0800145E
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #0xc]
	b _08001488
_0800145E
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	beq _08001472
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	ldrh r2, [r0, #0x18]
	adds r1, r6, r1
	adds r1, #0x40
	strh r2, [r1, #0x18]
_08001472
	ldrh r2, [r0, #0x18]
	cmp r2, #0
	beq _08001488
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4]
	lsls r2, r2, #5
	ldrh r0, [r0, #0x16]
	adds r1, r1, r2
	adds r1, #0x40
	strh r0, [r1, #0x16]
_08001488
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	ldr r0, [r4, #0x28]
	bics r0, r7
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800149A
sub_800149A ;@ 0x0800149A
	push {r3, r4, r5, lr}
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _080014AE
_080014A8
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080014AE
	lsls r3, r0, #1
	adds r0, r3, r0
	ldr r2, [r4]
	ldrh r4, [r4, #0xe]
	lsls r0, r0, #5
	adds r3, r2, r0
	movs r0, #0
	cmp r4, #0
	ble _080014E0
_080014C0
	cmp r3, r1
	bne _080014CE
	subs r0, r3, r2
	bl sub_8040550
	adds r0, r1, #0
	b _080014A8
_080014CE
	adds r3, #0x40
	ldrh r5, [r3, #0x18]
	adds r0, #1
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #5
	adds r3, r2, r3
	cmp r4, r0
	bgt _080014C0
_080014E0
	movs r0, #0
	b _080014A8

	thumb_func_start sub_80014E4
sub_80014E4 ;@ 0x080014E4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r7, r0
	ldr r0, [r5, #0x28]
	lsls r1, r0, #0xd
	bmi _080015D8
	movs r1, #1
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x28]
	ldrh r6, [r5, #0xe]
	cmp r6, #0
	beq _0800152E
	lsls r0, r0, #0xb
	bpl _0800152E
	ldrh r1, [r5, #0xc]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	subs r6, #1
	blo _0800152E
_08001516
	adds r0, r4, #0
	bl sub_8000948
	adds r4, #0x40
	ldrh r1, [r4, #0x18]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	subs r6, #1
	bhs _08001516
_0800152E
	ldrh r1, [r5, #4]
	cmp r1, #0
	beq _080015AA
	lsls r3, r1, #1
	ldr r0, [r5]
	ldrh r6, [r5, #6]
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	subs r6, #1
	blo _080015A2
_08001544
	ldr r0, [r4]
	lsls r1, r0, #0x1e
	bpl _08001570
	lsls r0, r0, #0x17
	bmi _08001560
	ldr r0, _080017C8 ;@ =gUnknown_03003EA4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x14
	bpl _08001570
_08001560
	adds r0, r4, #0
	bl sub_800069A
	movs r1, #0xff
	ldr r0, [r4]
	adds r1, #1
	bics r0, r1
	str r0, [r4]
_08001570
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _08001586
	adds r4, #0x40
	ldrh r1, [r4, #0x14]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
	b _0800159E
_08001586
	ldr r0, _080017CC ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800C55E
	adds r4, #0x40
	ldrh r1, [r4, #0x14]
	ldr r0, [r5]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #5
	adds r4, r0, r1
_0800159E
	subs r6, #1
	bhs _08001544
_080015A2
	ldr r0, _080017CC ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_800CAE2
_080015AA
	movs r1, #1
	ldr r0, [r5, #0x28]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x28]
	lsls r0, r0, #0xe
	bpl _080015CA
	ldr r0, _080017CC ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_800C93A
	movs r1, #1
	ldr r0, [r5, #0x28]
	lsls r1, r1, #0x11
	bics r0, r1
	str r0, [r5, #0x28]
_080015CA
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r7, r0
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _080015D8
	b _080015DA
_080015D8
	b _080015E0
_080015DA
	ldr r0, [r0, #0x38]
	bl sub_803B8CA
_080015E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80015E6
sub_80015E6 ;@ 0x080015E6
	movs r3, #0x33
	lsls r3, r3, #7
	adds r0, r0, r3
	adds r0, #0x34
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_80015F2
sub_80015F2 ;@ 0x080015F2
	push {r4, r5, r6}
	adds r4, r2, #0
	adds r6, r3, #0
	movs r3, #0
	movs r2, #0
	adds r5, r1, #0
	stm r1!, {r2, r3}
	movs r1, #0
	stm r4!, {r1, r2, r3}
	stm r4!, {r2, r3}
	ldrh r1, [r6]
	subs r4, #0x14
	ldr r2, [r4, #4]
	movs r3, #0xff
	lsrs r1, r1, #2
	adds r1, #0xff
	lsls r3, r3, #4
	bics r2, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	orrs r1, r2
	str r1, [r4, #4]
	ldrh r2, [r6, #2]
	lsls r3, r3, #8
	bics r1, r3
	lsrs r2, r2, #2
	adds r2, #0xff
	lsls r2, r2, #0x18
	lsrs r2, r2, #0xc
	orrs r1, r2
	ldr r2, [r4, #0xc]
	ldr r3, _080017D0 ;@ =0xFFFF0000
	orrs r2, r3
	str r2, [r4, #0xc]
	lsls r2, r3, #4
	orrs r1, r2
	lsrs r1, r1, #4
	lsls r1, r1, #4
	ldr r2, [r4]
	ldr r3, _080017D4 ;@ =0x0FFFFFFF
	adds r1, #8
	str r1, [r4, #4]
	orrs r2, r3
	str r2, [r4]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r3, _080017D8 ;@ =0xFFE003FF
	ldr r6, _080017DC ;@ =0x801FFFFF
	muls r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1d
	adds r1, r2, r1
	ldr r2, [r4, #8]
	asrs r1, r1, #3
	lsls r1, r1, #0xc
	lsrs r2, r2, #0x14
	lsls r2, r2, #0x14
	lsrs r1, r1, #0xc
	orrs r1, r2
	str r1, [r4, #8]
	movs r2, #0x67
	lsls r2, r2, #6
	ldrh r1, [r0, #0xe]
	adds r0, r0, r2
	ldr r2, [r0, #0x18]
	adds r1, r1, r2
	ldr r2, [r5]
	lsls r1, r1, #0x10
	lsrs r2, r2, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x10
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, [r5, #4]
	ands r1, r6
	ands r2, r3
	lsls r2, r2, #0xb
	lsrs r2, r2, #0xb
	str r2, [r5, #4]
	ldr r3, [r4, #4]
	lsrs r2, r2, #0xa
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x18
	lsls r3, r3, #2
	adds r3, #4
	lsls r3, r3, #0x16
	lsrs r3, r3, #1
	orrs r1, r3
	str r1, [r5]
	ldr r1, [r4, #4]
	lsls r2, r2, #0xa
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	orrs r1, r2
	str r1, [r5, #4]
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	lsls r3, r2, #1
	ldrh r3, [r1, r3]
	str r3, [r0, #0x18]
	asrs r0, r6, #0x1f
	lsls r2, r2, #1
	strh r0, [r1, r2]
	pop {r4, r5, r6}
	bx lr

	thumb_func_start sub_80016D8
sub_80016D8 ;@ 0x080016D8
	push {r4}
	ldr r3, [r1]
	ldrh r2, [r0, #0xe]
	lsrs r4, r3, #0x10
	lsls r4, r4, #0x10
	subs r2, r3, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r4
	movs r3, #0x67
	lsls r3, r3, #6
	str r2, [r1]
	adds r0, r0, r3
	ldr r3, [r0, #0x18]
	ldr r4, [r0, #0x1c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xf
	strh r3, [r4, r2]
	ldr r2, [r1]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [r0, #0x18]
	ldr r0, [r1]
	ldr r2, _080017E0 ;@ =0x0000FFFF
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	bx lr

	thumb_func_start sub_8001710
sub_8001710 ;@ 0x08001710
	adds r2, r0, #0
	movs r1, #0x67
	lsls r1, r1, #6
	adds r1, r2, r1
	push {r4}
	ldr r3, [r1, #0x20]
	adds r2, #0x60
	ldrh r2, [r2, #0x1a]
	ldr r0, [r0, #0x34]
	lsls r4, r3, #4
	adds r0, r0, r4
	subs r3, r3, r2
	movs r2, #0
	mvns r2, r2
	str r2, [r0, #8]
	ldr r2, [r1, #0x24]
	lsls r3, r3, #1
	ldrh r4, [r2, r3]
	str r4, [r1, #0x20]
	movs r1, #0
	mvns r1, r1
	strh r1, [r2, r3]
	pop {r4}
	bx lr

	thumb_func_start sub_8001740
sub_8001740 ;@ 0x08001740
	push {r4, r5}
	adds r4, r1, #0
	ldr r1, [r1]
	ldr r2, [r0, #0x34]
	subs r1, r1, r2
	movs r2, #0x67
	lsls r2, r2, #6
	adds r2, r0, r2
	adds r0, #0x60
	ldrh r0, [r0, #0x1a]
	asrs r1, r1, #4
	ldr r3, [r2, #0x20]
	ldr r5, [r2, #0x24]
	subs r0, r1, r0
	lsls r0, r0, #1
	strh r3, [r5, r0]
	str r1, [r2, #0x20]
	ldr r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r0, #0
	str r0, [r4]
	pop {r4, r5}
	bx lr

	non_word_aligned_thumb_func_start nullsub_20
nullsub_20 ;@ 0x08001776
	bx lr

	thumb_func_start sub_8001778
sub_8001778 ;@ 0x08001778
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, [r6, #0x34]
	ldr r0, [r1, #8]
	adds r4, r1, #0
	lsls r1, r3, #4
	adds r5, r1, r2
	ldm r5!, {r1, r2, r3}
	sub sp, #0x14
	stm r4!, {r1, r2, r3}
	ldm r5!, {r3}
	movs r1, #0xf0
	stm r4!, {r3}
	subs r4, #0x10
	str r0, [r4, #8]
	ldr r0, [r4]
	subs r5, #0x10
	bics r0, r1
	adds r0, #0x60
	str r0, [r4]
	mov r0, sp
	mov r7, sp
	bl sub_8018110
	ldr r0, [r6, #0x38]
	ldr r1, [r5, #8]
	adds r2, r4, #0
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r0, r7, #0
	bl sub_801819E
	movs r1, #0
	adds r0, r7, #0
	bl sub_8018160
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080017C8 DCDU gUnknown_03003EA4
_080017CC DCDU gUnknown_03003EA0
_080017D0 DCDU 0xFFFF0000
_080017D4 DCDU 0x0FFFFFFF
_080017D8 DCDU 0xFFE003FF
_080017DC DCDU 0x801FFFFF
_080017E0 DCDU 0x0000FFFF

	thumb_func_start sub_80017E4
sub_80017E4 ;@ 0x080017E4
	movs r0, #0
	cmp r1, #1
	beq _08001804
	cmp r1, #3
	beq _08001808
	cmp r1, #5
	beq _0800180C
	cmp r1, #7
	bne _080017F8
	movs r0, #8
_080017F8
	cmp r3, #2
	beq _08001810
	cmp r3, #0xa
	bne _08001814
	lsls r0, r0, #1
	b _08001814
_08001804
	movs r0, #0x10
	b _080017F8
_08001808
	movs r0, #0xc
	b _080017F8
_0800180C
	movs r0, #9
	b _080017F8
_08001810
	lsls r3, r0, #1
	adds r0, r3, r0
_08001814
	muls r0, r2
	bx lr

	thumb_func_start sub_8001818
sub_8001818 ;@ 0x08001818
	ldr r1, [r1]
	lsls r3, r1, #0x1c
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x15
	lsrs r3, r3, #0x1c
	cmp r2, #0
	bne _0800182A
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x1c
_0800182A
	movs r1, #0
	cmp r3, #1
	beq _0800184A
	cmp r3, #3
	beq _0800184E
	cmp r3, #5
	beq _08001852
	cmp r3, #7
	bne _0800183E
	movs r1, #8
_0800183E
	cmp r2, #2
	beq _08001856
	cmp r2, #0xa
	bne _0800185A
	lsls r1, r1, #1
	b _0800185A
_0800184A
	movs r1, #0x10
	b _0800183E
_0800184E
	movs r1, #0xc
	b _0800183E
_08001852
	movs r1, #9
	b _0800183E
_08001856
	lsls r3, r1, #1
	adds r1, r3, r1
_0800185A
	muls r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_800185E
sub_800185E ;@ 0x0800185E
	ldr r0, [r0, #0x34]
	lsls r1, r1, #4
	adds r0, r1, r0
	bx lr

	non_word_aligned_thumb_func_start nullsub_21
nullsub_21 ;@ 0x08001866
	bx lr

	thumb_func_start sub_8001868
sub_8001868 ;@ 0x08001868
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0xff
	lsls r0, r0, #8
	adds r7, r2, #0
	adds r5, r1, #0
	adds r4, r3, #0
	cmp r3, #0
	bge _0800187C
	adds r4, r4, r0
	b _08001882
_0800187C
	cmp r4, r0
	ble _08001882
	subs r4, r4, r0
_08001882
	add r0, pc, #0x1B0 ;@ =_08001A34
	ldm r0!, {r0, r1}
	adds r2, r4, #0
	bl sub_803B914
	add r6, pc, #0x1AC ;@ =_08001A3C
	ldm r6!, {r2, r3}
	bl sub_803B940
	movs r1, #1
	lsls r1, r1, #0x10
	subs r6, r7, r5
	cmp r0, r1
	bge _080018D8
	add r0, pc, #0x194 ;@ =_08001A34
	ldm r0!, {r0, r1}
	adds r2, r6, #0
	bl sub_803B914
	add r6, pc, #0x190 ;@ =_08001A3C
	ldm r6!, {r2, r3}
	subs r6, #8
	bl sub_803B940
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_803B92C
	ldm r6!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	movs r2, #8
	bl sub_803B998
	add r2, pc, #0x178 ;@ =_08001A44
	ldm r2!, {r2, r3}
	bl sub_803B940
	adds r0, r0, r5
_080018D2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080018D8
	adds r0, r4, #0
	asrs r1, r4, #0x1f
	movs r2, #9
	bl sub_803B998
	add r2, pc, #0x158 ;@ =_08001A3C
	ldm r2!, {r2, r3}
	bl sub_803B940
	movs r1, #1
	lsls r1, r1, #0x10
	cmp r0, r1
	bge _080018F6
	adds r0, r7, #0
	b _080018D2
_080018F6
	add r0, pc, #0x154 ;@ =_08001A4C
	ldm r0!, {r0, r1}
	adds r2, r4, #0
	bl sub_803B914
	add r7, pc, #0x138 ;@ =_08001A3C
	ldm r7!, {r2, r3}
	subs r7, #8
	bl sub_803B940
	movs r1, #1
	lsls r1, r1, #0x11
	cmp r0, r1
	bge _08001948
	ldr r0, _08001A54 ;@ =0x0000AAAA
	subs r0, r0, r4
	adds r1, r6, #0
	bl sub_803B92C
	ldm r7!, {r2, r3}
	subs r7, #8
	bl sub_803B940
	adds r2, r0, #0
	add r0, pc, #0x10C ;@ =_08001A34
	ldm r0!, {r0, r1}
	bl sub_803B914
	ldm r7!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	movs r2, #8
	bl sub_803B998
	add r2, pc, #0x104 ;@ =_08001A44
	ldm r2!, {r2, r3}
	bl sub_803B940
	adds r0, r0, r5
	b _080018D2
_08001948
	adds r0, r5, #0
	b _080018D2

	thumb_func_start nullsub_22
nullsub_22 ;@ 0x0800194C
	bx lr

	non_word_aligned_thumb_func_start sub_800194E
sub_800194E ;@ 0x0800194E
	movs r3, #0x67
	lsls r3, r3, #6
	push {r4, r5, r6}
	adds r4, r0, r3
	movs r3, #1
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x13
	bics r0, r3
	lsls r3, r1, #0x13
	orrs r0, r3
	str r0, [r4, #0x28]
	cmp r2, #0
	beq _080019A2
	ldrh r2, [r4, #4]
	cmp r2, #0
	beq _080019A2
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r0, [r4]
	lsls r2, r2, #5
	adds r0, r0, r2
	ldrh r2, [r4, #6]
	subs r2, #1
	blo _080019A2
	lsls r5, r1, #0x11
	movs r6, #1
	lsls r6, r6, #0x11
_08001984
	ldr r1, [r0]
	lsls r3, r1, #0x1e
	bpl _08001990
	bics r1, r6
	orrs r1, r5
	str r1, [r0]
_08001990
	adds r0, #0x40
	ldrh r0, [r0, #0x14]
	ldr r1, [r4]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #5
	adds r0, r1, r0
	subs r2, #1
	bhs _08001984
_080019A2
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_80019A6
sub_80019A6 ;@ 0x080019A6
	movs r1, #0x67
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_80019B4
sub_80019B4 ;@ 0x080019B4
	ldr r1, _08001A58 ;@ =0x00001AD4
	push {r3, lr}
	adds r0, r0, r1
	bl sub_800F1DA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019C4
sub_80019C4 ;@ 0x080019C4
	ldr r1, _08001A5C ;@ =0x000019EC
	push {r3, lr}
	adds r0, r0, r1
	bl sub_80154CE
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019D4
sub_80019D4 ;@ 0x080019D4
	push {r3, lr}
	ldr r3, _08001A5C ;@ =0x000019EC
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r1, r3
	bl sub_801549A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019E8
sub_80019E8 ;@ 0x080019E8
	push {r3, lr}
	ldr r3, _08001A5C ;@ =0x000019EC
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r1, r3
	bl sub_80154AA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80019FC
sub_80019FC ;@ 0x080019FC
	push {r3, lr}
	ldr r3, _08001A5C ;@ =0x000019EC
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r1, r3
	bl sub_80154BA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8001A10
sub_8001A10 ;@ 0x08001A10
	movs r2, #0x67
	lsls r2, r2, #6
	adds r0, r0, r2
	movs r3, #1
	lsls r3, r3, #0x14
	ldr r2, [r0, #0x28]
	lsls r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x28]
	bx lr

	non_word_aligned_thumb_func_start sub_8001A26
sub_8001A26 ;@ 0x08001A26
	movs r1, #0x67
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1f
	bx lr
	ALIGN
_08001A34 DCDU 0x00000600
_08001A38 DCDU 0x00000000
_08001A3C DCDU 0x00000100
_08001A40 DCDU 0x00000000
_08001A44 DCDU 0x00010000
_08001A48 DCDU 0x00000000
_08001A4C DCDU 0x00000300
_08001A50 DCDU 0x00000000
_08001A54 DCDU 0x0000AAAA
_08001A58 DCDU 0x00001AD4
_08001A5C DCDU 0x000019EC

	thumb_func_start sub_8001A60
sub_8001A60 ;@ 0x08001A60
	push {r3, lr}
	cmp r0, #0
	bne _08001A70
	movs r0, #0x2c
	bl sub_803D9F8
	cmp r0, #0
	beq _08001A8A
_08001A70
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	movs r2, #0x20
	strb r1, [r2, r0]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
_08001A8A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8001A90
sub_8001A90 ;@ 0x08001A90
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bne _08001AA8
	ldr r0, _08001E7C ;@ =0x00000A08
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08001AA8
	adds r0, r4, #0
_08001AA2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08001AA8
	ldr r0, _08001E80 ;@ =_0803ECE0
	str r0, [r4]
	ldr r0, _08001E84 ;@ =gUnknown_03003EA4
	str r4, [r0]
	ldr r0, _08001E88 ;@ =_0803EC68
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x14
	bl sub_8002580
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r1, r4, r0
	subs r0, #0xff
	subs r0, #0x61
	adds r0, r4, r0
	movs r2, #0x58
	adds r6, r0, #0
	ldr r3, _08001E8C ;@ =sub_804036C
	bl sub_803C3A4
	ldr r0, _08001E90 ;@ =0x000009BC
	movs r1, #0xff
	adds r5, r4, r0
	adds r0, #0x14
	adds r7, r4, r0
	adds r1, #0x61
	adds r0, r6, #0
	bl sub_803BEB0
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	movs r6, #0
	str r6, [r0, #0x20]
	str r6, [r0, #0x24]
	str r6, [r5]
	str r6, [r5, #4]
	str r6, [r5, #8]
	movs r0, #0x27
	lsls r0, r0, #6
	str r6, [r5, #0xc]
	adds r5, r4, r0
	str r6, [r5, #0xc]
	strb r6, [r7]
	strb r6, [r7, #1]
	str r6, [r5, #0x14]
	str r6, [r5, #0x18]
	ldr r0, [r5, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #0x3c]
	ldr r0, _08001E94 ;@ =0x000009DC
	str r6, [r4, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r0, #5
	lsls r0, r0, #9
	adds r0, r4, r0
	str r6, [r0]
	ldr r0, _08001E98 ;@ =0x00000A04
	movs r2, #4
	movs r1, #0xff
	adds r0, r4, r0
	bl sub_803C034
	str r6, [r4, #4]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x1a
	bics r0, r1
	str r0, [r5, #0x3c]
	adds r0, r4, #0
	b _08001AA2

	non_word_aligned_thumb_func_start sub_8001B4A
sub_8001B4A ;@ 0x08001B4A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08001E88 ;@ =_0803EC68
	adds r5, r1, #0
	movs r1, #1
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800D912
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x14
	bl sub_8002614
	ldr r0, _08001E80 ;@ =_0803ECE0
	ldr r1, _08001E84 ;@ =gUnknown_03003EA4
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq _08001B7A
	adds r0, r4, #0
	bl sub_803DA18
_08001B7A
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8001B80
sub_8001B80 ;@ 0x08001B80
	push {r4, r5, r6}
	ldr r5, [r0, #8]
	movs r4, #0
	movs r3, #0
	cmp r5, #0
	bls _08001BB0
	ldr r0, [r0, #0x20]
_08001B8E
	lsls r6, r3, #2
	ldr r6, [r0, r6]
	ldr r6, [r6]
	lsls r6, r6, #0x1c
	lsrs r6, r6, #0x1c
	cmp r6, r2
	bne _08001BAA
	cmp r4, r1
	bne _08001BA8
	lsls r1, r3, #2
	ldr r0, [r0, r1]
_08001BA4
	pop {r4, r5, r6}
	bx lr
_08001BA8
	adds r4, #1
_08001BAA
	adds r3, #1
	cmp r5, r3
	bhi _08001B8E
_08001BB0
	movs r0, #0
	b _08001BA4

	thumb_func_start sub_8001BB4
sub_8001BB4 ;@ 0x08001BB4
	push {r4, r5, r6, lr}
	ldr r0, [r1, #8]
	adds r6, r2, #0
	adds r4, r1, #0
	cmp r0, #0
	beq _08001BCC
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _08001BCC
	adds r0, r4, #0
	bl sub_803B8CA
_08001BCC
	ldr r2, [r4, #8]
	movs r1, #0
	movs r0, #0
	movs r3, #0
	cmp r2, #0
	bls _08001BFA
	ldr r4, [r4, #0x20]
_08001BDA
	lsls r5, r0, #2
	ldr r5, [r4, r5]
	ldr r5, [r5]
	lsls r5, r5, #0x1c
	lsrs r5, r5, #0x1c
	cmp r5, #2
	bne _08001BF4
	cmp r1, #0
	bne _08001BF2
	lsls r0, r0, #2
	ldr r3, [r4, r0]
	b _08001BFA
_08001BF2
	adds r1, #1
_08001BF4
	adds r0, #1
	cmp r2, r0
	bhi _08001BDA
_08001BFA
	adds r4, r3, #0
	beq _08001C1C
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _08001C1C
	ldr r0, [r4, #4]
	movs r5, #0
	cmp r0, #0
	bls _08001C1C
_08001C0C
	ldr r0, [r4, #0x10]
	ldr r1, [r6, #8]
	bl sub_803B8CA
	ldr r0, [r4, #4]
	adds r5, #1
	cmp r0, r5
	bhi _08001C0C
_08001C1C
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8001C22
sub_8001C22 ;@ 0x08001C22
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r7, [sp, #0x38]
	movs r0, #0x13
	lsls r0, r0, #7
	adds r5, r7, r0
	ldr r6, [r5, #0x20]
	adds r0, #0x40
	adds r6, #0x38
	adds r4, r7, r0
	ldr r0, [r4, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	bpl _08001C86
	ldr r0, [r0, #0x34]
	ldr r1, [r6]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x18]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x3c]
	ldr r1, [r6]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x40]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x20]
	b _08001CA4
_08001C86
	add r1, sp, #0x14
	bl sub_800075E
	ldr r0, [sp, #0x14]
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsls r0, r0, #8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #8
	str r0, [sp, #0x20]
_08001CA4
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	adds r0, r0, r1
	ldr r1, [sp, #0x18]
	movs r3, #1
	adds r1, r1, r2
	ldr r2, [r4, #0x3c]
	lsls r3, r3, #0x19
	bics r2, r3
	str r2, [r4, #0x3c]
	ldr r2, [r4]
	ldr r7, [sp, #0x38]
	movs r3, #0x9d
	lsls r3, r3, #4
	asrs r1, r1, #1
	subs r2, r1, r2
	adds r7, r7, r3
	asrs r0, r0, #1
	cmp r2, #0
	bge _08001D10
	movs r3, #1
	ldrsb r1, [r7, r3]
	ldr r3, _08001E9C ;@ =0xFFFFF900
	asrs r2, r1
	adds r1, r2, #0
	cmp r2, r3
	bge _08001CF2
	lsls r1, r3, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
	b _08001D50
_08001CF2
	movs r2, #0xff
	mvns r2, r2
	cmp r1, r2
	ble _08001D00
	movs r1, #0
	str r1, [sp, #0x10]
	b _08001D50
_08001D00
	lsls r1, r1, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
	b _08001D50
_08001D10
	ldr r2, [r4, #8]
	subs r1, r1, r2
	cmp r1, #0
	ble _08001D50
	movs r3, #1
	ldrsb r2, [r7, r3]
	asrs r1, r2
	movs r2, #7
	lsls r2, r2, #8
	cmp r1, r2
	ble _08001D34
	lsls r1, r2, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	lsls r2, r3, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
	b _08001D50
_08001D34
	movs r2, #0xff
	adds r2, #1
	cmp r1, r2
	bge _08001D42
	movs r1, #0
	str r1, [sp, #0x10]
	b _08001D50
_08001D42
	lsls r1, r1, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
_08001D50
	ldr r1, [r5, #0x3c]
	subs r1, r0, r1
	bpl _08001D92
	movs r3, #0
	ldrsb r2, [r7, r3]
	asrs r1, r2
	adds r0, r1, #0
	ldr r1, _08001E9C ;@ =0xFFFFF900
	cmp r0, r1
	bge _08001D74
	lsls r1, r1, #8
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	b _08001DD4
_08001D74
	movs r2, #0xff
	mvns r2, r2
	cmp r0, r2
	ble _08001D82
	movs r0, #0
	str r0, [sp, #0xc]
	b _08001DD4
_08001D82
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	b _08001DD4
_08001D92
	ldr r1, [r4, #4]
	subs r0, r0, r1
	cmp r0, #0
	ble _08001DD4
	movs r3, #0
	ldrsb r1, [r7, r3]
	movs r2, #7
	lsls r2, r2, #8
	asrs r0, r1
	cmp r0, r2
	ble _08001DB8
	lsls r1, r2, #8
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	b _08001DD4
_08001DB8
	movs r2, #0xff
	adds r2, #1
	cmp r0, r2
	bge _08001DC6
	movs r0, #0
	str r0, [sp, #0xc]
	b _08001DD4
_08001DC6
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
_08001DD4
	ldr r0, [r5, #0x38]
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _08001E20
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08001DE8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _08001E20
_08001DE8
	ldr r0, [sp, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r1, [sp, #8]
	add r3, sp, #4
	ldm r3!, {r2, r3}
	asrs r1, r0, #0x1f
	bl sub_803B9C4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x38]
	add r3, sp, #4
	ldm r3!, {r2, r3}
	asrs r1, r0, #0x1f
	bl sub_803B9C4
	str r0, [sp, #0x10]
_08001E20
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bmi _08001EB8
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _08001E34
	str r0, [sp, #8]
	b _08001E40
_08001E34
	movs r3, #0
	ldrsb r0, [r7, r3]
	movs r1, #1
	lsls r1, r0
	lsls r0, r1, #0x10
	str r0, [sp, #8]
_08001E40
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	ldr r1, [r5, #0x30]
	cmp r0, r1
	blt _08001EBA
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0xc]
	bl sub_803B998
	str r0, [sp]
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	asrs r1, r0, #0x1f
	str r1, [sp, #0x2c]
	add r3, sp, #0
	str r0, [sp, #0x30]
	ldm r3!, {r2, r3}
	bl sub_803B9C4
	b _08001EA0
	ALIGN
_08001E7C DCDU 0x00000A08
_08001E80 DCDU _0803ECE0
_08001E84 DCDU gUnknown_03003EA4
_08001E88 DCDU _0803EC68
_08001E8C DCDU sub_804036C
_08001E90 DCDU 0x000009BC
_08001E94 DCDU 0x000009DC
_08001E98 DCDU 0x00000A04
_08001E9C DCDU 0xFFFFF900
_08001EA0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r2, pc, #0x27C ;@ =_08002124
	ldm r2!, {r2, r3}
	bl sub_803B9C4
	ldr r1, [sp, #0xc]
	NEGS r0, r0
	cmp r0, r1
	ble _08001EB8
	str r0, [sp, #0xc]
_08001EB8
	b _08001F02
_08001EBA
	ldr r1, [r5, #0x28]
	cmp r0, r1
	bgt _08001F02
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0xc]
	bl sub_803B998
	str r0, [sp]
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	asrs r1, r0, #0x1f
	str r1, [sp, #0x24]
	add r3, sp, #0
	str r0, [sp, #0x28]
	ldm r3!, {r2, r3}
	bl sub_803B9C4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	add r2, pc, #0x230 ;@ =_08002124
	ldr r1, [sp, #0x24]
	ldm r2!, {r2, r3}
	bl sub_803B9C4
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _08001F02
	str r0, [sp, #0xc]
_08001F02
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1e
	bmi _08001FBA
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _08001F16
	adds r7, r0, #0
	b _08001F20
_08001F16
	movs r3, #1
	ldrsb r0, [r7, r3]
	movs r1, #1
	lsls r1, r0
	lsls r7, r1, #0x10
_08001F20
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	cmp r0, r1
	blt _08001F72
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0x10]
	bl sub_803B998
	str r0, [sp]
	str r1, [sp, #4]
	asrs r1, r7, #0x1f
	adds r0, r7, #0
	add r3, sp, #0
	adds r7, r1, #0
	adds r6, r0, #0
	ldm r3!, {r2, r3}
	bl sub_803B9C4
	str r0, [sp, #0x10]
	add r2, pc, #0x1C8 ;@ =_08002124
	adds r0, r6, #0
	adds r1, r7, #0
	ldm r2!, {r2, r3}
	bl sub_803B9C4
	ldr r1, [sp, #0x10]
	NEGS r0, r0
	cmp r0, r1
	ble _08001FBA
	str r0, [sp, #0x10]
	b _08001FBA
_08001F72
	ldr r1, [r5, #0x2c]
	cmp r0, r1
	bgt _08001FBA
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0x10]
	bl sub_803B998
	str r0, [sp]
	str r1, [sp, #4]
	asrs r1, r7, #0x1f
	adds r0, r7, #0
	add r3, sp, #0
	adds r7, r1, #0
	adds r6, r0, #0
	ldm r3!, {r2, r3}
	bl sub_803B9C4
	str r0, [sp, #0x10]
	add r2, pc, #0x17C ;@ =_08002124
	adds r0, r6, #0
	adds r1, r7, #0
	ldm r2!, {r2, r3}
	bl sub_803B9C4
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _08001FBA
	str r0, [sp, #0x10]
_08001FBA
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _08001FE2
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _08001FCC
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _08001FDE
_08001FCC
	movs r1, #1
	lsls r1, r1, #0xe
	subs r0, r0, r1
	lsls r1, r1, #2
	cmp r0, r1
	str r0, [r5, #0x38]
	bge _08001FE2
	str r1, [r5, #0x38]
	b _08001FE2
_08001FDE
	movs r0, #0
	str r0, [r5, #0x38]
_08001FE2
	ldr r0, [r4, #0x3c]
	add r1, sp, #0xc
	lsls r0, r0, #6
	bpl _08001FFA
	movs r2, #0
	ldr r0, [sp, #0x38]
	bl sub_800DEF8
_08001FF2
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08001FFA
	movs r2, #1
	ldr r0, [sp, #0x38]
	bl sub_800DEF8
	b _08001FF2

	thumb_func_start sub_8002004
sub_8002004 ;@ 0x08002004
	movs r1, #0x13
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	adds r0, #0x38
	bx lr

	thumb_func_start sub_8002010
sub_8002010 ;@ 0x08002010
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r0, r1, r0
	str r2, [r0, #0x1c]
	str r3, [r0, #0x2c]
	bx lr

	thumb_func_start sub_8002020
sub_8002020 ;@ 0x08002020
	movs r2, #0x27
	lsls r2, r2, #6
	adds r0, r0, r2
	str r1, [r0, #0x18]
	bx lr

	non_word_aligned_thumb_func_start sub_800202A
sub_800202A ;@ 0x0800202A
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, [sp, #8]
	movs r0, #0x21
	lsls r0, r0, #6
	adds r6, r1, r0
	ldr r1, [r1, #8]
	movs r0, #0
	cmp r1, #0
	beq _08002040
	ldrb r0, [r1]
_08002040
	str r0, [sp, #4]
	cmp r0, #0
	beq _080020DE
_08002046
	ldr r4, [r6, #0x30]
	cmp r4, #0
	beq _080020D2
	ldr r0, [r6, #0x50]
	movs r5, #0
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	beq _080020D2
_08002058
	ldr r0, [r4]
	lsrs r1, r0, #6
	adds r0, #0x3f
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4]
	lsls r1, r0, #0x1a
	bne _080020BC
	lsls r1, r0, #0x10
	bpl _0800208E
	bl sub_803BE1C
	ldr r7, [r4]
	adds r1, r0, #0
	lsls r0, r7, #0x11
	lsrs r0, r0, #0x18
	bl sub_803C04C
	lsrs r0, r7, #6
	lsls r0, r0, #6
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	orrs r0, r1
	str r0, [r4]
	b _0800209A
_0800208E
	lsls r1, r0, #0x13
	lsrs r0, r0, #6
	lsls r0, r0, #6
	lsrs r1, r1, #0x1a
	orrs r0, r1
	str r0, [r4]
_0800209A
	ldr r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bne _080020B2
	ldr r0, [r4, #0x14]
	str r0, [r4, #0xc]
	b _080020C2
_080020B2
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _080020C2
_080020BC
	movs r1, #0x40
	bics r0, r1
	str r0, [r4]
_080020C2
	ldr r0, [r6, #0x50]
	adds r5, #1
	ldr r0, [r0]
	adds r4, #0x18
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	cmp r0, r5
	bhi _08002058
_080020D2
	ldr r0, [sp, #4]
	adds r6, #0x58
	subs r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	bne _08002046
_080020DE
	movs r0, #0x27
	ldr r1, [sp, #8]
	lsls r0, r0, #6
	adds r0, r1, r0
	ldr r1, [r0, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80020F8
sub_80020F8 ;@ 0x080020F8
	push {r3, lr}
	movs r3, #0x58
	muls r1, r3
	adds r0, r1, r0
	movs r1, #0x21
	lsls r1, r1, #6
	adds r0, r0, r1
	lsls r1, r2, #1
	adds r1, r1, r2
	ldr r0, [r0, #0x30]
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #0x14]
	ldrh r0, [r0, #2]
	subs r1, r1, r2
	asrs r1, r1, #1
	bl sub_803C04C
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08002124 DCDU 0x00000000
_08002128 DCDU 0x00000007

	thumb_func_start sub_800212C
sub_800212C ;@ 0x0800212C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, [r6]
	mov ip, r0
	adds r0, r3, #0
	ldr r1, [r3, #0x30]
	lsls r3, r2, #0xc
	lsrs r4, r3, #0x1a
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	adds r1, r1, r3
	ldr r3, [r6]
	ldrh r1, [r1, #4]
	lsls r5, r3, #0x12
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	lsls r3, r7, #1
	adds r3, r3, r7
	ldr r7, [r0, #0x30]
	lsls r3, r3, #3
	adds r3, r7, r3
	ldrh r3, [r3, #4]
	lsrs r5, r5, #0x12
	lsls r2, r2, #0x12
	adds r5, r3, r5
	lsls r3, r5, #1
	adds r3, r3, r5
	lsrs r2, r2, #0x12
	adds r1, r1, r2
	movs r5, #0x27
	lsls r5, r5, #6
	movs r2, #0x27
	lsls r2, r2, #6
	add r5, ip
	mov r4, ip
	adds r4, r4, r2
	ldr r5, [r5, #0x14]
	ldr r2, [r4, #0x3c]
	lsls r3, r3, #2
	adds r3, r5, r3
	adds r3, #4
	ldr r5, [r3]
	ldr r7, _080023E8 ;@ =0xFF001FFF
	lsls r2, r2, #0x14
	mov lr, r2
	lsrs r2, r2, #0x15
	ands r5, r7
	cmp r2, #0
	sub sp, #4
	bne _08002196
	str r5, [r3]
	b _080021C0
_08002196
	mov r2, lr
	lsrs r2, r2, #0x15
	lsls r2, r2, #0xd
	orrs r2, r5
	str r2, [r3]
	ldr r3, [r4, #0x3c]
	ldr r2, [r4, #0x14]
	lsls r3, r3, #0x14
	lsrs r5, r3, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, #8
	ldr r3, [r2]
	lsls r5, r1, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r5, r5, #0x15
	orrs r3, r5
	str r3, [r2]
_080021C0
	ldr r3, _080023EC ;@ =0xFFFFF001
	ldr r2, [r4, #0x3c]
	lsls r5, r1, #1
	ands r2, r3
	lsls r3, r1, #0x15
	lsrs r3, r3, #0x14
	orrs r2, r3
	str r2, [r4, #0x3c]
	ldr r2, [r4, #0x14]
	adds r5, r5, r1
	lsls r5, r5, #2
	adds r1, r2, r5
	adds r1, #8
	ldr r2, [r1]
	lsrs r2, r2, #0xb
	lsls r2, r2, #0xb
	str r2, [r1]
	ldr r1, [r4, #0x14]
	movs r2, #0x21
	adds r7, r1, r5
	mov r1, ip
	lsls r2, r2, #6
	adds r1, r1, r2
	adds r7, #4
	subs r0, r0, r1
	bl sub_8040504
	lsls r0, r1, #0x1e
	ldr r1, [r7]
	lsrs r0, r0, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, [r4, #0x14]
	ldr r2, _080023F0 ;@ =0xFFFFE007
	str r6, [r0, r5]
	ldr r0, [r4, #0x14]
	adds r0, r0, r5
	adds r0, #4
	ldr r1, [r0]
	ands r1, r2
	ldr r2, [sp, #0xc]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x13
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x14]
	movs r2, #4
	adds r0, r0, r5
	orrs r1, r2
	str r1, [r0, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8002230
sub_8002230 ;@ 0x08002230
	push {r4, r5}
	ldr r1, [r1]
	ldr r2, [r2, #0x30]
	lsls r3, r1, #0xc
	lsrs r4, r3, #0x1a
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	adds r2, r2, r3
	ldrh r2, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x12
	adds r1, r2, r1
	movs r2, #0x27
	lsls r2, r2, #6
	adds r2, r0, r2
	ldr r4, [r2, #0x3c]
	movs r5, #0x27
	lsls r5, r5, #6
	adds r0, r0, r5
	lsls r3, r4, #0x14
	lsrs r3, r3, #0x15
	cmp r3, r1
	ldr r0, [r0, #0x14]
	bne _0800227A
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r3, r0, r3
	ldr r3, [r3, #4]
	ldr r5, _080023EC ;@ =0xFFFFF001
	lsls r3, r3, #8
	lsrs r3, r3, #0x15
	lsls r3, r3, #1
	ands r4, r5
	orrs r3, r4
	str r3, [r2, #0x3c]
_0800227A
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r3, [r4, #4]
	lsls r3, r3, #8
	lsrs r5, r3, #0x15
	beq _080022A6
	lsrs r5, r3, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r0, r3, r0
	adds r0, #8
	ldr r4, [r4, #8]
	ldr r3, [r0]
	lsls r4, r4, #0x15
	lsrs r4, r4, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r3, r4
	str r3, [r0]
_080022A6
	ldr r4, [r2, #0x14]
	adds r0, r4, r1
	ldr r3, [r0, #8]
	lsls r5, r3, #0x15
	beq _080022D0
	lsls r5, r3, #0x15
	lsrs r5, r5, #0x15
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r3, r3, r4
	ldr r0, [r0, #4]
	adds r3, #4
	ldr r4, [r3]
	ldr r5, _080023E8 ;@ =0xFF001FFF
	lsls r0, r0, #8
	lsrs r0, r0, #0x15
	lsls r0, r0, #0xd
	ands r4, r5
	orrs r0, r4
	str r0, [r3]
_080022D0
	ldr r0, [r2, #0x14]
	movs r2, #4
	adds r0, r0, r1
	adds r0, #4
	ldr r1, [r0]
	bics r1, r2
	str r1, [r0]
	pop {r4, r5}
	bx lr

	non_word_aligned_thumb_func_start sub_80022E2
sub_80022E2 ;@ 0x080022E2
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080023F4 ;@ =gUnknown_03003EB0
	movs r2, #1
	ldr r1, [r0]
	lsls r2, r2, #0xb
	adds r1, r1, r2
	ldr r1, [r1, #0x28]
	lsls r2, r1, #0x1f
	bmi _080023B4
	lsls r1, r1, #0x1e
	bmi _080023B4
	movs r1, #0x27
	lsls r1, r1, #6
	adds r1, r5, r1
	str r1, [sp]
	ldr r1, [r1, #0x3c]
	lsls r2, r1, #0x14
	lsrs r1, r2, #0x15
	beq _080023B4
	ldr r1, [sp]
	lsrs r2, r2, #0x15
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r1, #0x14]
	lsls r2, r2, #2
	adds r4, r1, r2
_08002318
	ldr r6, [r4, #4]
	movs r3, #0x58
	lsls r0, r6, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3
	ldr r2, [r4]
	movs r1, #0x21
	ldr r3, [r2]
	lsls r1, r1, #6
	adds r0, r0, r5
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	adds r1, r0, r1
	lsls r3, r7, #1
	adds r3, r3, r7
	ldr r0, [r1, #0x30]
	lsls r3, r3, #3
	ldr r0, [r0, r3]
	lsls r0, r0, #0x19
	bpl _0800234E
	ldr r0, _080023F4 ;@ =gUnknown_03003EB0
	lsls r3, r6, #0x13
	ldr r0, [r0]
	ldr r6, [r1, #0x2c]
	lsrs r3, r3, #0x16
	bl sub_803B8D4
_0800234E
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	ldr r1, [r4, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x15
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r4, r0, r1
	cmp r0, r4
	bne _08002318
	ldr r1, [r5, #8]
	movs r0, #0
	cmp r1, #0
	beq _0800236E
	ldrb r0, [r1]
_0800236E
	subs r0, #1
	bmi _080023B4
	movs r7, #0x40
_08002374
	movs r2, #0x58
	muls r2, r0
	adds r3, r2, r5
	movs r2, #0x11
	lsls r2, r2, #7
	adds r2, r3, r2
	ldr r4, [r2, #0x10]
	movs r1, #0
	ldr r4, [r4]
	lsls r4, r4, #6
	lsrs r4, r4, #0x1a
	beq _080023B0
	movs r4, #0x21
	lsls r4, r4, #6
	adds r4, r3, r4
_08002392
	lsls r3, r1, #1
	adds r3, r3, r1
	ldr r6, [r4, #0x30]
	lsls r3, r3, #3
	adds r3, r6, r3
	ldr r6, [r3]
	adds r1, #1
	bics r6, r7
	str r6, [r3]
	ldr r3, [r2, #0x10]
	ldr r3, [r3]
	lsls r3, r3, #6
	lsrs r3, r3, #0x1a
	cmp r3, r1
	bhi _08002392
_080023B0
	subs r0, #1
	bpl _08002374
_080023B4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80023BA
sub_80023BA ;@ 0x080023BA
	push {r4, lr}
	movs r2, #0x13
	lsls r2, r2, #7
	adds r2, r0, r2
	ldr r2, [r2, #0x20]
	ldr r3, [r1]
	adds r2, #0x38
	ldr r4, [r2]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	subs r3, r3, r4
	subs r1, r1, r2
	sub sp, #8
	str r1, [sp, #4]
	mov r1, sp
	str r3, [sp]
	movs r2, #0
	bl sub_800DEF8
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_080023E8 DCDU 0xFF001FFF
_080023EC DCDU 0xFFFFF001
_080023F0 DCDU 0xFFFFE007
_080023F4 DCDU gUnknown_03003EB0
_080023F8 DCDU 0x43592358
_080023FC DCDU 0x495D1808
_08002400 DCDU 0x47701840
_08002404 DCDU 0x43592358
_08002408 DCDU 0x23011808
_0800240C DCDU 0x18C302DB
_08002410 DCDU 0x6F9CB410
_08002414 DCDU 0x01C92111
_08002418 DCDU 0x18416FDB
_0800241C DCDU 0x600C604B
_08002420 DCDU 0x18404954
_08002424 DCDU 0xC006CA06
_08002428 DCDU 0x4770BC10

	thumb_func_start sub_800242C
sub_800242C ;@ 0x0800242C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r1, #0
	lsrs r0, r0, #0x10
	sub sp, #0xc
	bne _08002440
	ldr r0, [r4, #4]
	lsrs r0, r0, #0x10
	beq _080024BE
_08002440
	movs r0, #0
	movs r1, #0x13
	lsls r1, r1, #7
	ldr r7, _08002578 ;@ =0xFFFD0000
	adds r6, r5, r1
	str r0, [sp, #4]
	str r0, [sp, #8]
_0800244E
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r6, #0x20]
	adds r1, #0x38
	ldm r1!, {r0, r1}
	ldr r2, [r4]
	cmp r0, r2
	beq _08002464
	subs r0, r2, r0
	str r0, [sp, #4]
_08002464
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0800246E
	subs r0, r0, r1
	str r0, [sp, #8]
_0800246E
	movs r1, #1
	ldr r0, [sp, #4]
	lsls r1, r1, #0x12
	cmp r0, r1
	blt _08002480
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	b _0800248A
_08002480
	ldr r2, _0800257C ;@ =0xFFFC0000
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt _0800248A
	str r7, [sp, #4]
_0800248A
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _08002498
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	b _080024A2
_08002498
	ldr r2, _0800257C ;@ =0xFFFC0000
	ldr r0, [sp, #8]
	cmp r0, r2
	bgt _080024A2
	str r7, [sp, #8]
_080024A2
	movs r2, #0
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_800DEF8
	adds r0, r5, #0
	bl sub_800E178
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0800244E
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800244E
_080024BE
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80024C6
sub_80024C6 ;@ 0x080024C6
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	ldr r2, [r2, #0x10]
	ldrb r0, [r0, r1]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r2, r0
	bx lr

	thumb_func_start sub_80024D8
sub_80024D8 ;@ 0x080024D8
	movs r3, #0x58
	muls r1, r3
	movs r3, #0x11
	lsls r3, r3, #7
	adds r1, r1, r0
	adds r1, r1, r3
	push {r4, r5, r6, r7}
	ldr r3, [r1, #0x10]
	ldr r1, [r3, #8]
	subs r1, #1
	bmi _08002500
_080024EE
	ldr r5, [r0, #0x10]
	ldr r6, [r3, #0x20]
	lsls r4, r1, #2
	str r5, [r6, r4]
	ldr r5, [r3, #0x20]
	adds r4, r5, r4
	str r4, [r0, #0x10]
	subs r1, #1
	bpl _080024EE
_08002500
	movs r7, #0
	str r7, [r3, #8]
	ldr r1, [r0, #0x10]
	movs r4, #0
	adds r6, r1, #0
	beq _08002526
_0800250C
	adds r4, #1
	cmp r4, r2
	beq _08002526
	ldr r5, [r1]
	cmp r5, #0
	beq _08002522
	adds r1, #4
	cmp r5, r1
	beq _08002522
	movs r4, #0
	adds r6, r5, #0
_08002522
	adds r1, r5, #0
	bne _0800250C
_08002526
	lsls r1, r2, #2
	adds r1, r1, r6
	str r2, [r3, #8]
	str r6, [r3, #0x20]
	subs r1, #0x40
	ldr r1, [r1, #0x3c]
	str r1, [r0, #0x10]
	movs r0, #0
	cmp r2, #0
	bls _08002544
_0800253A
	lsls r1, r0, #2
	adds r0, #1
	cmp r0, r2
	str r7, [r6, r1]
	blo _0800253A
_08002544
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_8002548
sub_8002548 ;@ 0x08002548
	push {r4, r5}
	adds r5, r3, #0
	movs r3, #0x58
	muls r1, r3
	movs r3, #0x11
	lsls r3, r3, #7
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r3, [r0, #8]
	ldr r0, [r0, #0xc]
	ldr r4, [r3, #0x10]
	ldrb r0, [r0, r5]
	ldr r1, [r1, #0x10]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r1, #0x20]
	lsls r2, r2, #2
	str r0, [r1, r2]
	pop {r4, r5}
	bx lr
	ALIGN
_08002574 DCDU 0x00000878
_08002578 DCDU 0xFFFD0000
_0800257C DCDU 0xFFFC0000

	thumb_func_start sub_8002580
sub_8002580 ;@ 0x08002580
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _08002598
	ldr r0, _0800280C ;@ =0x0000082C
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08002598
	adds r0, r4, #0
_08002592
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08002598
	ldr r0, _08002810 ;@ =_0803ECEC
	movs r1, #0
	str r0, [r4]
	ldr r0, _08002814 ;@ =gUnknown_03003EB0
	movs r2, #0
	str r4, [r0]
	ldr r0, _08002818 ;@ =_0803EC74
	movs r3, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc
	stm r0!, {r1, r2, r3}
	movs r6, #1
	lsls r6, r6, #0xb
	adds r1, r6, #0
	stm r0!, {r3}
	adds r5, r0, #0
	bl sub_803BEB0
	adds r1, r4, r6
	movs r0, #0
	str r0, [r1, #0x20]
	str r5, [r1, #0x1c]
	ldr r0, [r1, #0x28]
	movs r2, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r2
	str r0, [r1, #0x28]
	adds r0, r4, #0
	b _08002592

	non_word_aligned_thumb_func_start sub_80025D6
sub_80025D6 ;@ 0x080025D6
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r7, #0
_080025DE
	lsls r0, r4, #2
	adds r5, r0, r6
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _080025F2
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r5, #0xc]
_080025F2
	adds r4, #1
	cmp r4, #4
	blt _080025DE
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0800260E
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r4, #0x20]
_0800260E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8002614
sub_8002614 ;@ 0x08002614
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08002818 ;@ =_0803EC74
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80025D6
	ldr r0, _08002810 ;@ =_0803ECEC
	ldr r1, _08002814 ;@ =gUnknown_03003EB0
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq _08002638
	adds r0, r4, #0
	bl sub_803DA18
_08002638
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800263E
sub_800263E ;@ 0x0800263E
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800281C ;@ =gUnknown_03003E98
	sub sp, #8
	ldr r0, [r0]
	bl sub_800B082
	cmp r0, #3
	bhs _08002656
	movs r0, #1
	lsls r0, r0, #0x10
	b _0800265A
_08002656
	movs r0, #5
	lsls r0, r0, #0xe
_0800265A
	movs r1, #3
	lsls r1, r1, #0x19
	cmp r4, #0
	beq _0800267E
	movs r2, #0
	str r2, [sp, #4]
	lsls r0, r0, #9
	lsrs r0, r0, #0xb
	movs r2, #5
	lsls r2, r2, #0x18
	orrs r2, r0
	add r0, sp, #4
	bl sub_803D468
_08002676
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
_0800267E
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, _08002820 ;@ =0x040000D4
	add r3, sp, #4
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r0, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08002676

	thumb_func_start sub_8002698
sub_8002698 ;@ 0x08002698
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
_080026A0
	lsls r0, r4, #2
	adds r6, r0, r5
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _080026B4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r6, #0xc]
_080026B4
	ldr r0, _08002824 ;@ =gUnknown_03003EA4
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _080026C2
	ldrb r0, [r1]
_080026C2
	cmp r0, r4
	bls _080026E4
	movs r0, #0x58
	muls r0, r4
	movs r1, #0x11
	lsls r1, r1, #7
	adds r0, r2, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	movs r2, #0
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r3, r7, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r6, #0xc]
_080026E4
	adds r4, #1
	cmp r4, #4
	blo _080026A0
	ldr r0, _08002824 ;@ =gUnknown_03003EA4
	adds r1, r7, #0
	ldr r0, [r0]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _080026F8
	ldrb r1, [r2]
_080026F8
	movs r3, #0x58
	muls r1, r3
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	movs r1, #0x7d
	lsls r1, r1, #0x19
	adds r0, r0, r1
	asrs r0, r0, #5
	movs r1, #1
	lsls r1, r1, #0xb
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r4, r5, r1
	str r0, [r4, #0x24]
	lsls r0, r0, #2
	movs r2, #0
	movs r1, #0
	bl sub_803D984
	str r0, [r4, #0x20]
	str r0, [r5, #8]
	str r7, [r5, #4]
	ldr r1, [r4, #0x24]
	movs r0, #0
	lsrs r1, r1, #1
	subs r1, #1
	beq _0800274C
_08002734
	ldr r2, [r4, #0x20]
	lsls r1, r0, #3
	adds r2, r2, r1
	ldr r3, [r5, #8]
	adds r2, #8
	str r2, [r3, r1]
	ldr r1, [r4, #0x24]
	adds r0, #1
	lsrs r1, r1, #1
	subs r1, #1
	cmp r1, r0
	bhi _08002734
_0800274C
	ldr r1, [r4, #0x24]
	ldr r0, [r5, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, #0x40
	str r7, [r0, #0x38]
	adds r5, #0x1c
	str r5, [r4, #0x1c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8002762
sub_8002762 ;@ 0x08002762
	push {r3, r4, r5, r6, r7, lr}
	movs r2, #1
	lsls r2, r2, #0xb
	adds r4, r0, r2
	ldr r2, [r4, #0x28]
	lsls r2, r2, #0x1f
	bmi _080027BE
	adds r5, r0, #0
	movs r3, #3
	lsls r3, r3, #0x19
	adds r5, #0x1c
	movs r6, #1
	cmp r1, #0
	ldr r0, [r4, #0x1c]
	beq _080027C4
	cmp r0, r5
	beq _080027BE
_08002784
	ldr r0, [r4, #0x1c]
	subs r0, #8
	str r0, [r4, #0x1c]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsls r2, r1, #0x12
	lsrs r3, r2, #0x1d
	adds r2, r6, #0
	lsls r2, r3
	asrs r7, r2, #0x1f
	lsrs r7, r7, #0x1e
	adds r2, r7, r2
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	asrs r2, r2, #2
	lsls r2, r2, #0xb
	lsls r1, r3
	movs r7, #1
	lsls r7, r7, #0x1a
	movs r3, #3
	lsrs r2, r2, #0xb
	adds r2, r2, r7
	lsls r3, r3, #0x19
	adds r1, r1, r3
	bl sub_803D468
	ldr r0, [r4, #0x1c]
	cmp r0, r5
	bne _08002784
_080027BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080027C4
	cmp r0, r5
	beq _080027BE
	ldr r0, _08002820 ;@ =0x040000D4
_080027CA
	ldr r1, [r4, #0x1c]
	subs r1, #8
	str r1, [r4, #0x1c]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, [r4, #0x1c]
	ldr r1, [r1]
	lsls r2, r1, #0x15
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1d
	lsrs r2, r2, #0x15
	lsls r2, r1
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, [r4, #0x1c]
	ldr r1, [r1]
	lsls r1, r1, #0x12
	lsrs r2, r1, #0x1d
	adds r1, r6, #0
	lsls r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1e
	adds r1, r2, r1
	asrs r1, r1, #2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, [r4, #0x1c]
	cmp r1, r5
	bne _080027CA
	b _080027BE
	ALIGN
_0800280C DCDU 0x0000082C
_08002810 DCDU _0803ECEC
_08002814 DCDU gUnknown_03003EB0
_08002818 DCDU _0803EC74
_0800281C DCDU gUnknown_03003E98
_08002820 DCDU 0x040000D4
_08002824 DCDU gUnknown_03003EA4

	thumb_func_start sub_8002828
sub_8002828 ;@ 0x08002828
	push {r3, r4, r5, r6, r7}
	movs r2, #1
	lsls r2, r2, #0xb
	movs r4, #3
	ldr r1, [r0, #8]
	lsls r4, r4, #0x19
	adds r2, r0, r2
	cmp r1, #0
	ldr r6, _08002C14 ;@ =0x10001000
	ldr r5, _08002C10 ;@ =0x040000D4
	beq _0800285E
	mov r7, sp
	adds r0, r5, #0
_08002842
	str r6, [sp]
	str r7, [r0]
	ldr r3, [r2, #0x20]
	subs r3, r1, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r0, #4]
	ldr r3, _08002C18 ;@ =0x85000010
	str r3, [r0, #8]
	ldr r3, [r0, #8]
	ldr r1, [r1]
	cmp r1, #0
	bne _08002842
_0800285E
	ldr r0, _08002C1C ;@ =gUnknown_03003EB0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08002886
	mov r1, sp
_0800286A
	str r6, [sp]
	str r1, [r5]
	ldr r3, [r2, #0x20]
	subs r3, r0, r3
	asrs r3, r3, #2
	lsls r3, r3, #5
	adds r3, r3, r4
	str r3, [r5, #4]
	ldr r3, _08002C20 ;@ =0x85000008
	str r3, [r5, #8]
	ldr r3, [r5, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne _0800286A
_08002886
	pop {r3, r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800288A
sub_800288A ;@ 0x0800288A
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r1, #0x50]
	ldr r4, [r1]
	adds r7, r1, #0
	ldr r1, [r0, #0x18]
	sub sp, #0x4c
	str r1, [sp, #0x2c]
	movs r1, #1
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_803BE68
	ldr r0, [r7, #0x50]
	movs r3, #0x1e
	ldr r2, [r0]
	movs r1, #0x14
	lsls r6, r2, #0x1f
	bmi _080028B8
	ldrh r6, [r0, #0xc]
	cmp r6, #0x1e
	bge _080028B8
	adds r3, r6, #0
_080028B8
	str r3, [sp, #0x28]
	lsls r3, r2, #0x1e
	bmi _080028C6
	ldrh r3, [r0, #0xe]
	cmp r3, #0x14
	bge _080028C6
	adds r1, r3, #0
_080028C6
	str r1, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #0x1f
	bmi _080028D8
	ldrh r2, [r0, #0xc]
	subs r2, #0x1e
	cmp r2, #0
	ble _080028D8
	adds r1, r2, #0
_080028D8
	str r1, [sp, #0x20]
	ldr r3, [sp, #0x28]
	movs r1, #0x20
	subs r1, r1, r3
	str r1, [sp, #0x1c]
	ldrh r0, [r0, #0xe]
	movs r1, #0x21
	lsls r1, r1, #6
	str r0, [sp, #0x14]
	ldr r0, _08002C24 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r7, r0
	bl sub_8040504
	ldr r0, [r7, #0x48]
	movs r6, #6
	lsls r2, r0, #0x15
	bmi _08002900
	movs r6, #5
_08002900
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0, #0xc]
	movs r0, #0
	str r3, [sp, #4]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _080029E6
	adds r0, r5, #4
	cmp r6, #5
	bne _0800291E
	movs r1, #0
	b _08002920
_0800291E
	movs r1, #1
_08002920
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	adds r1, r5, #0
	adds r1, #8
	cmp r6, #5
	str r3, [sp, #0x48]
	beq _08002930
	adds r0, r1, #0
_08002930
	str r0, [sp, #0x44]
	movs r0, #1
	lsls r0, r0, #0xb
	adds r2, r5, r0
	movs r0, #1
	lsls r0, r6
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	asrs r1, r0, #2
	movs r0, #0x21
	lsls r0, r0, #0x1a
	orrs r1, r0
	str r2, [sp, #0x40]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x3c]
	lsls r0, r0, #1
	str r0, [sp, #0x34]
	adds r1, r7, #0
	adds r1, #0x40
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x38]
	lsls r0, r0, #1
	str r0, [sp, #0x30]
_08002960
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _08002970
	ldr r0, [r7, #0x50]
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x2c]
_08002970
	ldr r0, [r7, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
	cmp r1, #0
	ble _08002A64
_08002980
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _08002994
	ldr r0, [r7, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	subs r1, r1, r0
	str r1, [sp, #0x2c]
_08002994
	ldr r1, [sp, #0x2c]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r7, #0x54]
	ldr r1, [r1, #0x10]
	beq _08002A86
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov lr, r1
	add lr, r0
	mov ip, r1
	mov r1, lr
	ldr r1, [r1]
	ldr r0, [r7, #0x30]
	lsls r2, r1, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, ip
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0xe
	ldr r1, [r3, r2]
	lsls r3, r1, #0xb
	lsrs r3, r3, #0x16
	beq _080029E8
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	str r1, [sp, #8]
	b _08002A84
_080029E6
	b _08002CA6
_080029E8
	ldr r3, [sp, #4]
	adds r1, r2, r3
	movs r3, #1
	ldr r2, [r1]
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x48]
	orrs r2, r3
	str r2, [r1]
	ldr r1, [sp, #0x44]
	cmp r6, #5
	mov ip, r1
	bne _08002A1A
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _08002A1A
	ldr r1, [r5, #8]
	str r1, [r5, #4]
	ldr r2, [r1]
	str r2, [r5, #8]
	adds r2, r1, #4
	str r2, [r1]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [r1, #4]
_08002A1A
	mov r1, ip
	ldr r1, [r1]
	ldr r2, [sp, #0x40]
	ldr r2, [r2, #0x20]
	subs r1, r1, r2
	asrs r2, r1, #2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r3, [r3, r1]
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [sp, #4]
	lsls r2, r2, #0x15
	adds r1, r1, r3
	ldr r3, [r1]
	lsrs r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x15
	str r1, [sp, #8]
	mov r1, ip
	ldr r1, [r1]
	ldr r3, _08002C10 ;@ =0x040000D4
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [r7, #0x54]
	ldr r2, [r1, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _08002A66
_08002A64
	b _08002C72
_08002A66
	lsls r1, r6
	adds r1, r2, r1
	str r1, [r3]
	ldr r1, [sp, #8]
	movs r2, #3
	lsls r2, r2, #0x19
	lsls r1, r6
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, [sp, #0x3c]
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [sp]
	mov r2, ip
	str r1, [r2]
_08002A84
	b _08002A88
_08002A86
	b _08002B0C
_08002A88
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	mov ip, r1
	add ip, r3
	mov r2, ip
	ldr r1, [r2]
	ldr r3, _08002C28 ;@ =0xFFE007FF
	adds r2, r1, #0
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08002C2C ;@ =0x001FF800
	ands r2, r3
	orrs r1, r2
	mov r2, ip
	str r1, [r2]
	ldr r1, [sp, #0x38]
	movs r3, #1
	ldrh r1, [r1, #0xa]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xa
	subs r1, r2, r1
	ldrh r2, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	lsls r3, r3, #1
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xb
	bics r2, r3
	orrs r1, r2
	strh r1, [r4]
	ldr r0, [r0]
	movs r2, #0xf
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	lsls r2, r2, #0xc
	bics r1, r2
	lsls r0, r0, #0xc
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08002C24 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r1, [r7]
	subs r1, r4, r1
	asrs r2, r1, #1
	mov r1, lr
	adds r3, r7, #0
	bl sub_800212C
	b _08002C54
_08002B0C
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0xe
	ldr r1, [r3, r2]
	lsls r3, r1, #0xb
	lsrs r3, r3, #0x16
	beq _08002B2A
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	mov lr, r1
	b _08002BC2
_08002B2A
	ldr r3, [sp, #4]
	adds r1, r2, r3
	movs r3, #1
	ldr r2, [r1]
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x48]
	orrs r2, r3
	str r2, [r1]
	ldr r1, [sp, #0x44]
	cmp r6, #5
	mov ip, r1
	bne _08002B5C
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _08002B5C
	ldr r1, [r5, #8]
	str r1, [r5, #4]
	ldr r2, [r1]
	str r2, [r5, #8]
	adds r2, r1, #4
	str r2, [r1]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [r1, #4]
_08002B5C
	mov r1, ip
	ldr r1, [r1]
	ldr r2, [sp, #0x40]
	ldr r2, [r2, #0x20]
	subs r1, r1, r2
	asrs r2, r1, #2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r3, [r3, r1]
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [sp, #4]
	lsls r2, r2, #0x15
	adds r1, r1, r3
	ldr r3, [r1]
	lsrs r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x15
	mov lr, r1
	mov r1, ip
	ldr r1, [r1]
	ldr r3, _08002C10 ;@ =0x040000D4
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [r7, #0x54]
	ldr r2, [r1, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r1, r6
	adds r1, r2, r1
	str r1, [r3]
	mov r1, lr
	movs r2, #3
	lsls r2, r2, #0x19
	lsls r1, r6
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, [sp, #0x3c]
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, [sp]
	mov r2, ip
	str r1, [r2]
_08002BC2
	ldr r1, [r0]
	ldr r3, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	mov ip, r1
	add ip, r3
	mov r2, ip
	ldr r1, [r2]
	ldr r3, _08002C28 ;@ =0xFFE007FF
	adds r2, r1, #0
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08002C2C ;@ =0x001FF800
	ands r2, r3
	orrs r1, r2
	mov r2, ip
	str r1, [r2]
	ldr r1, [sp, #0x38]
	mov r2, lr
	ldrh r1, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0xa
	subs r1, r2, r1
	ldrh r2, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r1
	strh r2, [r4]
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xa
	orrs r2, r1
	b _08002C30
	ALIGN
_08002C10 DCDU 0x040000D4
_08002C14 DCDU 0x10001000
_08002C18 DCDU 0x85000010
_08002C1C DCDU gUnknown_03003EB0
_08002C20 DCDU 0x85000008
_08002C24 DCDU gUnknown_03003EA4
_08002C28 DCDU 0xFFE007FF
_08002C2C DCDU 0x001FF800
_08002C30
	strh r2, [r4]
	ldr r1, [r0]
	lsls r3, r3, #1
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0xb
	bics r2, r3
	orrs r1, r2
	strh r1, [r4]
	ldr r0, [r0]
	movs r2, #0xf
	lsls r2, r2, #0xc
	lsls r0, r0, #6
	lsrs r0, r0, #0x18
	lsls r0, r0, #0xc
	bics r1, r2
	orrs r0, r1
	strh r0, [r4]
_08002C54
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	adds r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r1, #2
	subs r0, #1
	str r0, [sp, #0x18]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x10]
	adds r4, #2
	cmp r0, r1
	bge _08002C72
	b _08002980
_08002C72
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08002C82
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x2c]
	adds r1, r0, r1
	str r1, [sp, #0x2c]
	b _08002C8C
_08002C82
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #1
	adds r1, r0, r1
	str r1, [sp, #0x2c]
_08002C8C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	adds r4, r0, r4
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _08002CA6
	b _08002960
_08002CA6
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8002CAE
sub_8002CAE ;@ 0x08002CAE
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	movs r2, #1
	orrs r0, r2
	sub sp, #0x80
	str r0, [r4, #0x28]
	ldr r0, _080030A0 ;@ =gUnknown_03003EA4
	adds r5, r1, #0
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r2, [r5, #0x48]
	movs r0, #6
	lsls r3, r2, #0x15
	bmi _08002CDE
	movs r0, #5
_08002CDE
	str r0, [sp, #0x2c]
	lsls r0, r2, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r7, [r0, #0xc]
	ldr r3, [sp, #0x88]
	movs r0, #0x1e
	ldr r1, [r3]
	cmp r1, #0
	bgt _08002CF4
	movs r0, #0
_08002CF4
	ldr r3, [sp, #0x88]
	movs r2, #0x14
	ldr r3, [r3, #4]
	cmp r3, #0
	bgt _08002D00
	movs r2, #0
_08002D00
	str r2, [sp, #0x28]
	movs r2, #1
	cmp r1, #0
	ble _08002D0A
	movs r2, #0
_08002D0A
	str r2, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	str r0, [sp, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x78]
	str r0, [sp, #0x74]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x70]
	bl sub_803C04C
	ldr r0, [sp, #0x7c]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x74]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x6c]
	bl sub_803C04C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge _08002D4E
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
_08002D4E
	cmp r1, #0
	bge _08002D56
	ldr r0, [sp, #0x6c]
	adds r1, r0, r1
_08002D56
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x68]
	adds r0, r0, r2
	ldr r2, [sp, #0x70]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x6c]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	adds r0, r6, #4
	cmp r3, #5
	bne _08002D8C
	movs r1, #0
	b _08002D8E
_08002D8C
	movs r1, #1
_08002D8E
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x64]
	ldr r3, [sp, #0x2c]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq _08002DA0
	adds r0, r1, #0
_08002DA0
	ldr r3, [sp, #0x2c]
	str r0, [sp, #0x60]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x58]
	str r2, [sp, #0x5c]
_08002DB0
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _08002EAC
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x54]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x54]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _08002E10
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _08002EBE
_08002E10
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne _08002E44
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08002E44
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08002E44
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b _08002EAE
_08002EAC
	b _08002F48
_08002EAE
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
_08002EBE
	ldr r0, [sp, #8]
	ldr r3, _080030A4 ;@ =0xFFE007FF
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080030A0 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _08003088
_08002F48
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _08002F68
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _08003012
_08002F68
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08002F9C
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08002F9C
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08002F9C
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
_08003012
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _080030A4 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _080030A8 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_08003088
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne _080030AC
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x68]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	b _080030B6
	ALIGN
_080030A0 DCDU gUnknown_03003EA4
_080030A4 DCDU 0xFFE007FF
_080030A8 DCDU 0x001FF800
_080030AC
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
_080030B6
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, #1
	adds r1, #0x20
	str r1, [sp, #0x10]
	cmp r0, #0x15
	str r0, [sp, #0xc]
	bge _080030C8
	b _08002DB0
_080030C8
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #0x24]
	asrs r0, r0, #0x13
	adds r1, r0, r1
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x3c]
	ldr r2, [sp, #0x28]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x50]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x44]
	bl sub_803C04C
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x18]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x50]
	str r0, [sp, #0x40]
	bl sub_803C04C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge _08003110
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
_08003110
	cmp r1, #0
	bge _08003118
	ldr r0, [sp, #0x40]
	adds r1, r0, r1
_08003118
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x44]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #6
	str r1, [sp, #0x3c]
_0800313E
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x3c]
	adds r1, r0, r1
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _0800323E
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x38]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x38]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add r0, lr
	str r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _080031A2
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _08003250
_080031A2
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #4]
	cmp r3, #5
	bne _080031D6
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080031D6
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_080031D6
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	b _08003240
_0800323E
	b _080032DA
_08003240
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #4]
	mov r0, lr
	str r0, [r2]
_08003250
	ldr r0, [sp, #8]
	ldr r3, _08003644 ;@ =0xFFE007FF
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	lsls r3, r3, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	ldr r0, [sp, #8]
	bics r2, r3
	ldr r0, [r0]
	movs r3, #0xf
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r3, r3, #0xc
	ldr r2, [r2]
	bics r0, r3
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0800364C ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _0800341A
_080032DA
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r2, [r7, r0]
	lsls r3, r2, #0xb
	lsrs r3, r3, #0x16
	beq _080032FA
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	b _080033A4
_080032FA
	ldr r3, [sp, #0x2c]
	adds r0, r0, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x64]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x2c]
	str r2, [sp, #8]
	cmp r3, #5
	bne _0800332E
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0800332E
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_0800332E
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x30]
	ldr r2, [sp, #8]
	ldr r3, [r4, #0x1c]
	ldr r0, [r2]
	ldr r0, [r0]
	mov lr, r0
	ldr r0, [r3]
	ldr r2, [sp, #0x30]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x5c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	adds r0, #8
	str r0, [r4, #0x1c]
	ldr r2, [sp, #8]
	mov r0, lr
	str r0, [r2]
_080033A4
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003644 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	mov lr, r0
	add lr, r7
	mov r2, lr
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003648 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	mov r2, lr
	str r0, [r2]
	ldr r0, [sp, #0x58]
	movs r3, #1
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x30]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_0800341A
	ldr r0, [sp, #0x18]
	subs r0, #1
	str r0, [sp, #0x18]
	bne _08003434
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x18]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x34]
	b _0800343A
_08003434
	ldr r0, [sp, #0x34]
	adds r0, #2
	str r0, [sp, #0x34]
_0800343A
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	adds r0, #1
	adds r1, #1
	str r1, [sp, #0x20]
	cmp r0, #0x1e
	str r0, [sp, #0xc]
	bge _0800344C
	b _0800313E
_0800344C
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800345C
sub_800345C ;@ 0x0800345C
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x68
	str r0, [r4, #0x28]
	ldr r0, _0800364C ;@ =gUnknown_03003EA4
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi _0800348C
	movs r3, #5
_0800348C
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x28]
	ldr r7, [r0, #0xc]
	ldr r1, [sp, #0x70]
	movs r0, #0x1e
	ldr r1, [r1]
	cmp r1, #0
	bgt _080034A2
	movs r0, #0
_080034A2
	ldr r2, [r5, #0x3c]
	movs r1, #0x15
	str r2, [sp, #0x64]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _080034B0
	movs r1, #0x14
_080034B0
	str r1, [sp, #0x24]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	lsls r2, r1, #0x1b
	ldr r0, [sp, #0x64]
	lsrs r2, r2, #0x1b
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x60]
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x58]
	bl sub_803C04C
	ldr r0, [sp, #0x64]
	str r1, [sp, #0x18]
	asrs r1, r0, #0x13
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x54]
	bl sub_803C04C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bge _080034F2
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x18]
	adds r2, r0, r2
	str r2, [sp, #0x18]
_080034F2
	cmp r1, #0
	bge _080034FA
	ldr r0, [sp, #0x54]
	adds r1, r0, r1
_080034FA
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x50]
	adds r0, r0, r2
	ldr r2, [sp, #0x58]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x54]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0
	ldr r1, [sp, #0x24]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _08003610
	ldr r3, [sp, #0x28]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne _08003536
	movs r1, #0
_08003536
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x4c]
	ldr r3, [sp, #0x28]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq _08003548
	adds r0, r1, #0
_08003548
	str r0, [sp, #0x48]
	ldr r3, [sp, #0x28]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x40]
	str r2, [sp, #0x44]
_08003558
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x15
	adds r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _08003640
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x3c]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x3c]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _080035B8
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	b _08003678
_080035B8
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne _080035EC
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080035EC
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_080035EC
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	b _08003612
_08003610
	b _08003874
_08003612
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x2c]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x2c]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b _08003650
_08003640
	b _08003700
	ALIGN
_08003644 DCDU 0xFFE007FF
_08003648 DCDU 0x001FF800
_0800364C DCDU gUnknown_03003EA4
_08003650
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_08003678
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003A68 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x38]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x38]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x2c]
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, lr
	ldr r2, [r2]
	movs r3, #0xf
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08003A70 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _0800383E
_08003700
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _08003720
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b _080037CA
_08003720
	ldr r3, [sp, #0x28]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x4c]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x28]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08003754
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08003754
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08003754
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	ldr r2, [sp, #8]
	ldr r0, [r2]
	mov r2, lr
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x44]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_080037CA
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003A68 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x34]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003A6C ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x34]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x40]
	mov r2, lr
	ldrh r0, [r0, #0xa]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_0800383E
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	bne _08003856
	ldrh r1, [r0, #0xe]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	b _08003860
_08003856
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x30]
	lsls r0, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x30]
_08003860
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r1, #0x20
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge _08003874
	b _08003558
_08003874
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x74
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8003884
sub_8003884 ;@ 0x08003884
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x28]
	adds r5, r1, #0
	movs r1, #1
	orrs r0, r1
	sub sp, #0x60
	str r0, [r4, #0x28]
	ldr r0, _08003A70 ;@ =gUnknown_03003EA4
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r5, r0
	bl sub_8040504
	ldr r0, [r5, #0x48]
	movs r3, #6
	lsls r2, r0, #0x15
	bmi _080038B4
	movs r3, #5
_080038B4
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	adds r0, r0, r6
	str r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #0x68]
	movs r1, #0x14
	ldr r0, [r0, #4]
	cmp r0, #0
	bgt _080038CA
	movs r1, #0
_080038CA
	ldr r0, [r5, #0x38]
	movs r2, #0x1f
	lsls r3, r0, #0xd
	lsrs r3, r3, #0x1d
	bne _080038D6
	movs r2, #0x1e
_080038D6
	str r2, [sp, #0x1c]
	lsls r2, r0, #8
	lsrs r2, r2, #0x1b
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x3c]
	asrs r2, r2, #0x13
	adds r1, r2, r1
	str r1, [sp, #0x5c]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #0x14]
	asrs r1, r0, #0x13
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x58]
	str r0, [sp, #0x54]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x50]
	bl sub_803C04C
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x10]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x4c]
	bl sub_803C04C
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bge _08003918
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x10]
	adds r2, r0, r2
	str r2, [sp, #0x10]
_08003918
	cmp r1, #0
	bge _08003920
	ldr r0, [sp, #0x4c]
	adds r1, r0, r1
_08003920
	ldr r0, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x10]
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x50]
	muls r2, r1
	lsls r1, r2, #1
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	movs r0, #0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	cmp r1, #0
	ble _08003A2A
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x20]
	lsls r1, r0, #6
	str r1, [sp, #0x48]
	movs r1, #1
	adds r0, r6, #4
	cmp r3, #5
	bne _08003958
	movs r1, #0
_08003958
	lsls r1, r1, #0x1f
	lsrs r3, r1, #0xa
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x20]
	adds r1, r6, #0
	adds r1, #8
	cmp r3, #5
	beq _0800396A
	adds r0, r1, #0
_0800396A
	str r0, [sp, #0x40]
	ldr r3, [sp, #0x20]
	lsls r0, r3, #0x1d
	lsrs r2, r0, #0x12
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x38]
	str r2, [sp, #0x3c]
_0800397A
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	adds r1, r0, r1
	ldr r0, [sp, #0x28]
	ldrh r0, [r0]
	lsrs r2, r0, #0xf
	lsls r2, r2, #0x1f
	ldr r2, [r5, #0x54]
	ldr r2, [r2, #0x10]
	beq _08003A66
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov lr, r2
	mov r2, ip
	ldr r0, [r5, #0x30]
	ldr r2, [r2]
	str r2, [sp, #0x34]
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1a
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x34]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x11
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _080039DE
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	b _08003A9C
_080039DE
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08003A12
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08003A12
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08003A12
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, lr
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	lsls r3, r3, #0xa
	b _08003A2C
_08003A2A
	b _08003C96
_08003A2C
	lsrs r3, r3, #0x1f
	asrs r2, r3
	adds r0, r0, r7
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	str r2, [sp, #0x24]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	ldr r2, [sp, #0x24]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	b _08003A74
_08003A66
	b _08003B24
	ALIGN
_08003A68 DCDU 0xFFE007FF
_08003A6C DCDU 0x001FF800
_08003A70 DCDU gUnknown_03003EA4
_08003A74
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, lr
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_08003A9C
	mov r0, lr
	ldr r0, [r0]
	ldr r3, _08003E8C ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x30]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x30]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	lsls r3, r3, #0xa
	ldrh r0, [r0, #0xa]
	ldr r2, [sp, #0x24]
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, lr
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, lr
	ldr r2, [r2]
	movs r3, #0xf
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r2, r2, #0xc
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08003E94 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	ldr r2, [r5]
	subs r1, r1, r2
	asrs r2, r1, #1
	mov r1, ip
	adds r3, r5, #0
	bl sub_800212C
	b _08003C62
_08003B24
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r2
	add ip, r0
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0xe
	ldr r0, [r7, r2]
	lsls r3, r0, #0xb
	lsrs r3, r3, #0x16
	beq _08003B44
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	b _08003BEE
_08003B44
	ldr r3, [sp, #0x20]
	adds r0, r2, r7
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x15
	bics r2, r3
	ldr r3, [sp, #0x44]
	orrs r2, r3
	str r2, [r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x20]
	str r2, [sp, #8]
	cmp r3, #5
	bne _08003B78
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08003B78
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, [r0]
	str r2, [r6, #8]
	adds r2, r0, #4
	str r2, [r0]
	ldr r2, [r6, #4]
	movs r0, #0
	str r0, [r2, #4]
_08003B78
	ldr r2, [sp, #8]
	ldr r0, [r2]
	ldr r2, [r4, #0x20]
	subs r0, r0, r2
	asrs r2, r0, #2
	mov r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r3, [r7, r0]
	adds r0, r0, r7
	lsls r3, r3, #0xa
	lsrs r3, r3, #0x1f
	asrs r2, r3
	ldr r3, [r0]
	lsls r2, r2, #0x15
	lsrs r3, r3, #0xb
	lsls r3, r3, #0xb
	lsrs r2, r2, #0x15
	orrs r2, r3
	str r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x15
	mov lr, r2
	ldr r2, [sp, #8]
	ldr r0, [r2]
	mov r2, lr
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	ldr r0, [r3]
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	orrs r0, r2
	str r0, [r3]
	movs r2, #7
	lsls r2, r2, #0xb
	bics r0, r2
	ldr r3, [r4, #0x1c]
	ldr r2, [sp, #0x3c]
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r5, #0x54]
	ldr r2, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r3
	adds r0, r2, r0
	ldr r2, [r4, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	adds r0, #8
	str r0, [r4, #0x1c]
	ldm r2!, {r0, r2}
	str r0, [r2]
_08003BEE
	mov r0, ip
	ldr r0, [r0]
	ldr r3, _08003E8C ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r2, r0, r7
	str r2, [sp, #0x2c]
	ldr r0, [r2]
	adds r2, r0, #0
	ands r0, r3
	movs r3, #1
	lsls r3, r3, #0xb
	adds r2, r2, r3
	ldr r3, _08003E90 ;@ =0x001FF800
	ands r2, r3
	orrs r0, r2
	ldr r2, [sp, #0x2c]
	movs r3, #1
	str r0, [r2]
	ldr r0, [sp, #0x38]
	mov r2, lr
	ldrh r0, [r0, #0xa]
	lsls r3, r3, #0xa
	subs r0, r2, r0
	ldrh r2, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	bics r2, r3
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r1]
	mov r0, ip
	ldr r0, [r0]
	lsls r3, r3, #1
	bics r2, r3
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r0, r2
	strh r0, [r1]
	mov r2, ip
	ldr r2, [r2]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	lsls r2, r2, #0xc
	bics r0, r3
	orrs r0, r2
	strh r0, [r1]
_08003C62
	ldr r0, [sp, #0x10]
	subs r0, #1
	str r0, [sp, #0x10]
	bne _08003C7C
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x10]
	lsls r0, r0, #1
	subs r0, #2
	subs r0, r1, r0
	str r0, [sp, #0x28]
	b _08003C82
_08003C7C
	ldr r0, [sp, #0x28]
	adds r0, #2
	str r0, [sp, #0x28]
_08003C82
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	bge _08003C96
	b _0800397A
_08003C96
	ldr r0, [r4, #0x28]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	add sp, #0x6c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8003CA6
sub_8003CA6 ;@ 0x08003CA6
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x48]
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldr r0, [r6, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x28]
	ldr r0, _08003E94 ;@ =gUnknown_03003EA4
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r7, r2, #0
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x48]
	adds r0, r0, r1
	ldr r5, [r0, #0xc]
	movs r0, #0
	ldr r1, [r7]
	mvns r0, r0
	adds r3, r0, #0
	cmp r1, #0
	mov lr, r1
	bgt _08003CF6
	ldr r1, [r4, #0x38]
	movs r3, #0x1f
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne _08003CF6
	movs r3, #0x1e
_08003CF6
	ldr r1, [r7, #4]
	adds r2, r0, #0
	cmp r1, #0
	mov ip, r3
	bgt _08003D0C
	ldr r3, [r4, #0x3c]
	movs r2, #0x15
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1d
	bne _08003D0C
	movs r2, #0x14
_08003D0C
	str r2, [sp, #0xc]
	ldr r3, [r4, #0x38]
	movs r2, #0
	lsls r7, r3, #0xd
	lsrs r7, r7, #0x1d
	beq _08003D22
	movs r2, #1
	mov r7, lr
	cmp r7, #0
	ble _08003D22
	movs r2, #0
_08003D22
	str r2, [sp, #8]
	ldr r2, [r4, #0x3c]
	lsls r7, r2, #0xd
	lsrs r7, r7, #0x1d
	bne _08003D34
	cmp r1, #0
	bgt _08003D3A
	movs r0, #0
	b _08003D3A
_08003D34
	cmp r1, #0
	bgt _08003D3A
	movs r0, #1
_08003D3A
	asrs r1, r3, #0x13
	asrs r2, r2, #0x13
	adds r0, r2, r0
	str r0, [sp, #0x44]
	ldr r0, [r4, #0x50]
	add r1, ip
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x38]
	bl sub_803C04C
	ldr r0, [sp, #0x3c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x34]
	bl sub_803C04C
	cmp r7, #0
	bge _08003D68
	ldr r0, [sp, #0x38]
	adds r7, r0, r7
_08003D68
	cmp r1, #0
	bge _08003D70
	ldr r0, [sp, #0x34]
	adds r1, r0, r1
_08003D70
	ldr r0, [sp, #0x40]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	str r2, [sp, #0x30]
	adds r0, r0, r2
	ldr r2, [sp, #0x38]
	muls r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	adds r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	adds r0, #4
	str r0, [sp, #0x28]
_08003D9A
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _08003E30
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r7, r1, r0
	adds r2, r1, #0
	ldr r1, [r7]
	ldr r0, [r4, #0x30]
	mov ip, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, ip
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r2
	ldr r2, _08003E8C ;@ =0xFFE007FF
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08003E90 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08003E22
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi _08003E0C
	ldr r0, [sp, #0x28]
_08003E0C
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08003E22
	ldr r0, _08003E94 ;@ =gUnknown_03003EA4
	adds r2, r4, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8002230
	b _08003E7E
_08003E30
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r3, _08003E8C ;@ =0xFFE007FF
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r5
	ldr r2, [r1]
	movs r7, #1
	lsls r7, r7, #0xb
	ands r3, r2
	subs r2, r2, r7
	ldr r7, _08003E90 ;@ =0x001FF800
	ands r2, r7
	orrs r2, r3
	str r2, [r1]
	lsls r1, r2, #0xb
	lsrs r1, r1, #0x16
	bne _08003E7E
	ldr r1, [sp, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r0, [r5, r0]
	lsls r2, r0, #0xa
	bmi _08003E68
	ldr r1, [sp, #0x28]
_08003E68
	lsls r2, r0, #0x15
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r0
	lsls r0, r2, #2
	ldr r2, [r6, #0x20]
	adds r0, r0, r2
	ldr r2, [r1]
	str r2, [r0]
	str r0, [r1]
_08003E7E
	ldr r0, [sp, #4]
	subs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x50]
	bne _08003EA6
	b _08003E98
	ALIGN
_08003E8C DCDU 0xFFE007FF
_08003E90 DCDU 0x001FF800
_08003E94 DCDU gUnknown_03003EA4
_08003E98
	ldrh r1, [r0, #0xe]
	str r1, [sp, #4]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x30]
	adds r1, r0, r1
	str r1, [sp, #0x10]
	b _08003EB0
_08003EA6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r0, #1
	adds r1, r0, r1
	str r1, [sp, #0x10]
_08003EB0
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x15
	bge _08003EBC
	b _08003D9A
_08003EBC
	ldr r0, [r4, #0x38]
	ldr r2, [sp, #8]
	asrs r0, r0, #0x13
	adds r1, r0, r2
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #0xc]
	asrs r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x18]
	bl sub_803C04C
	ldr r0, [sp, #0x1c]
	adds r7, r1, #0
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x14]
	bl sub_803C04C
	cmp r7, #0
	bge _08003EF2
	ldr r0, [sp, #0x18]
	adds r7, r0, r7
_08003EF2
	cmp r1, #0
	bge _08003EFA
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
_08003EFA
	ldr r0, [sp, #0x20]
	lsls r2, r7, #1
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	muls r2, r1
	lsls r1, r2, #1
	adds r1, r0, r1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	subs r7, r0, r7
	movs r0, #0
	str r0, [sp]
_08003F14
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _08003FAE
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08003FA0
	mov r1, lr
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi _08003F8A
	ldr r0, [sp, #0x28]
_08003F8A
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08003FA0
	ldr r0, _08004238 ;@ =gUnknown_03003EA4
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b _08004002
_08003FAE
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08004002
	mov r1, ip
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r5, r1]
	lsls r2, r1, #0xa
	bmi _08003FEC
	ldr r0, [sp, #0x28]
_08003FEC
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [r6, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08004002
	subs r7, #1
	bne _08004016
	ldr r0, [r4, #0x50]
	ldrh r7, [r0, #0xc]
	ldr r1, [sp, #0x10]
	lsls r0, r7, #1
	subs r0, #2
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b _0800401C
_08004016
	ldr r1, [sp, #0x10]
	adds r1, #2
	str r1, [sp, #0x10]
_0800401C
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x1e
	bge _08004028
	b _08003F14
_08004028
	ldr r0, [r6, #0x28]
	movs r1, #2
	bics r0, r1
	str r0, [r6, #0x28]
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8004038
sub_8004038 ;@ 0x08004038
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x28]
	lsls r1, r1, #0xb
	adds r5, r2, #0
	adds r2, r0, r1
	str r2, [sp, #0x24]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r7, [r4, #0x50]
	movs r1, #0x21
	ldr r0, [r7, #0x18]
	lsls r1, r1, #6
	str r0, [sp, #0x20]
	ldr r0, _08004238 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r6, [r0, #0xc]
	ldr r1, [r5]
	movs r0, #0
	cmp r1, #0
	bgt _08004080
	movs r0, #0x1e
_08004080
	ldr r1, [r4, #0x44]
	asrs r3, r1, #0x13
	str r3, [sp, #0x1c]
	ldr r2, [r4, #0x3c]
	asrs r5, r2, #0x13
	cmp r3, r5
	bne _0800409A
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x1d
	bne _080040A8
	lsls r3, r2, #0xd
	lsrs r3, r3, #0x1d
	beq _080040A8
_0800409A
	movs r2, #0x15
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	bne _080040A4
	movs r2, #0x14
_080040A4
	str r2, [sp, #8]
	b _080040B4
_080040A8
	movs r1, #0x15
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _080040B2
	movs r1, #0x14
_080040B2
	str r1, [sp, #8]
_080040B4
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0x13
	adds r1, r1, r0
	ldrh r0, [r7, #0xc]
	str r0, [sp, #0x18]
	bl sub_803C04C
	ldrh r0, [r7, #0xe]
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	adds r7, r0, #0
	bl sub_803C04C
	cmp r5, #0
	bge _080040D6
	ldr r0, [sp, #0x18]
	adds r5, r0, r5
_080040D6
	cmp r1, #0
	bge _080040DC
	adds r1, r7, r1
_080040DC
	lsls r2, r5, #1
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r2, [sp, #0x18]
	subs r7, r7, r1
	muls r2, r1
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r0, #0
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	cmp r1, #0
	ble _080041DC
	ldr r0, [sp, #0x28]
	adds r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	adds r0, #4
	str r0, [sp, #0xc]
_08004104
	ldrh r0, [r5]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _0800419E
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08004190
	mov r1, lr
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi _08004178
	ldr r0, [sp, #0xc]
_08004178
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08004190
	ldr r0, _08004238 ;@ =gUnknown_03003EA4
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b _080041F8
_0800419E
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004230 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004234 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _080041F8
	mov r1, ip
	ldr r0, [sp, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r6, r1]
	lsls r2, r1, #0xa
	bmi _080041E0
	b _080041DE
_080041DC
	b _0800421C
_080041DE
	ldr r0, [sp, #0xc]
_080041E0
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x24]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_080041F8
	subs r7, #1
	ldr r0, [r4, #0x50]
	bne _08004208
	ldrh r7, [r0, #0xe]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #0x14]
	adds r5, r0, r1
	b _0800420E
_08004208
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #1
	adds r5, r0, r5
_0800420E
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r1
	bge _0800421C
	b _08004104
_0800421C
	ldr r2, [sp, #0x24]
	movs r1, #2
	ldr r0, [r2, #0x28]
	bics r0, r1
	str r0, [r2, #0x28]
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08004230 DCDU 0xFFE007FF
_08004234 DCDU 0x001FF800
_08004238 DCDU gUnknown_03003EA4

	thumb_func_start sub_800423C
sub_800423C ;@ 0x0800423C
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0xb
	adds r6, r2, #0
	adds r2, r0, r1
	str r2, [sp, #0x1c]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r5, [r4, #0x50]
	movs r1, #0x21
	ldr r0, [r5, #0x18]
	lsls r1, r1, #6
	str r0, [sp, #0x18]
	ldr r0, _0800463C ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, r4, r0
	bl sub_8040504
	ldr r0, [r4, #0x48]
	lsls r2, r0, #0x15
	lsls r0, r0, #0x15
	lsls r0, r1, #2
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	ldr r7, [r0, #0xc]
	ldr r1, [r6, #4]
	movs r0, #0
	cmp r1, #0
	bgt _08004284
	movs r0, #0x14
_08004284
	ldr r2, [r4, #0x40]
	ldr r3, [r4, #0x38]
	asrs r1, r2, #0x13
	asrs r6, r3, #0x13
	cmp r1, r6
	bne _0800429C
	lsls r6, r2, #0xd
	lsrs r6, r6, #0x1d
	bne _080042AA
	lsls r6, r3, #0xd
	lsrs r6, r6, #0x1d
	beq _080042AA
_0800429C
	movs r3, #0x1f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _080042A6
	movs r3, #0x1e
_080042A6
	str r3, [sp, #4]
	b _080042B6
_080042AA
	movs r2, #0x1f
	lsls r3, r3, #0xd
	lsrs r3, r3, #0x1d
	bne _080042B4
	movs r2, #0x1e
_080042B4
	str r2, [sp, #4]
_080042B6
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0x13
	adds r0, r2, r0
	str r0, [sp, #0x14]
	ldrh r0, [r5, #0xc]
	str r0, [sp, #0x10]
	bl sub_803C04C
	ldrh r0, [r5, #0xe]
	adds r6, r1, #0
	ldr r1, [sp, #0x14]
	adds r5, r0, #0
	bl sub_803C04C
	cmp r6, #0
	bge _080042DA
	ldr r0, [sp, #0x10]
	adds r6, r0, r6
_080042DA
	cmp r1, #0
	bge _080042E0
	adds r1, r5, r1
_080042E0
	ldr r0, [sp, #0x18]
	lsls r2, r6, #1
	adds r0, r0, r2
	ldr r2, [sp, #0x10]
	muls r2, r1
	lsls r1, r2, #1
	adds r5, r0, r1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	subs r6, r0, r6
	movs r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _080043E0
	ldr r0, [sp, #0x20]
	adds r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r0, #4
	str r0, [sp, #8]
_08004308
	ldrh r0, [r5]
	lsrs r1, r0, #0xf
	lsls r1, r1, #0x1f
	ldr r1, [r4, #0x54]
	ldr r1, [r1, #0x10]
	beq _080043A2
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	adds r2, r1, #0
	mov r1, ip
	ldr r1, [r1]
	ldr r0, [r4, #0x30]
	mov lr, r1
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x1a
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, lr
	lsls r1, r1, #0x12
	ldr r0, [r0, #0xc]
	lsrs r1, r1, #0x11
	adds r0, r0, r1
	ldrh r0, [r0]
	mov lr, r2
	ldr r2, _08004640 ;@ =0xFFE007FF
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	add lr, r0
	mov r1, lr
	ldr r0, [r1]
	movs r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004644 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _08004394
	mov r1, lr
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r7, r1]
	lsls r2, r1, #0xa
	bmi _0800437C
	ldr r0, [sp, #8]
_0800437C
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x1c]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_08004394
	ldr r0, _0800463C ;@ =gUnknown_03003EA4
	adds r2, r4, #0
	mov r1, ip
	ldr r0, [r0]
	bl sub_8002230
	b _080043FC
_080043A2
	lsls r0, r0, #0x11
	lsrs r0, r0, #0xf
	mov ip, r1
	add ip, r0
	mov r1, ip
	ldr r0, [r1]
	ldr r2, _08004640 ;@ =0xFFE007FF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r7
	ldr r1, [r0]
	movs r3, #1
	lsls r3, r3, #0xb
	ands r2, r1
	subs r1, r1, r3
	ldr r3, _08004644 ;@ =0x001FF800
	ands r1, r3
	orrs r1, r2
	str r1, [r0]
	lsls r0, r1, #0xb
	lsrs r0, r0, #0x16
	bne _080043FC
	mov r1, ip
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	ldr r1, [r7, r1]
	lsls r2, r1, #0xa
	bmi _080043E4
	b _080043E2
_080043E0
	b _0800441C
_080043E2
	ldr r0, [sp, #8]
_080043E4
	lsls r2, r1, #0x15
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x1f
	lsrs r2, r2, #0x15
	lsls r2, r1
	lsls r1, r2, #2
	ldr r2, [sp, #0x1c]
	ldr r2, [r2, #0x20]
	adds r1, r1, r2
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r0]
_080043FC
	subs r6, #1
	bne _0800440C
	ldr r0, [r4, #0x50]
	ldrh r6, [r0, #0xc]
	lsls r0, r6, #1
	subs r0, #2
	subs r5, r5, r0
	b _0800440E
_0800440C
	adds r5, #2
_0800440E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r0, #1
	str r0, [sp]
	cmp r0, r1
	bge _0800441C
	b _08004308
_0800441C
	ldr r2, [sp, #0x1c]
	movs r1, #2
	ldr r0, [r2, #0x28]
	bics r0, r1
	str r0, [r2, #0x28]
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800442E
sub_800442E ;@ 0x0800442E
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800463C ;@ =gUnknown_03003EA4
	adds r5, r1, #0
	movs r1, #0x21
	ldr r0, [r0]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r6, r3, #0
	subs r0, r5, r0
	sub sp, #0x14
	bl sub_8040504
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0xc]
	ldr r2, [r5]
	ldr r3, [r5, #0x48]
	movs r1, #6
	lsls r3, r3, #0x15
	bmi _0800445A
	movs r1, #5
_0800445A
	lsls r3, r6, #1
	adds r2, r3, r2
	ldr r6, [r5, #0x30]
	ldr r3, [sp, #0x1c]
	ldr r3, [r3]
	mov ip, r3
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #3
	adds r3, r6, r3
	ldr r6, [r3, #8]
	mov r3, ip
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x11
	adds r3, r6, r3
	ldr r6, [r5, #0x54]
	ldr r7, _08004640 ;@ =0xFFE007FF
	ldr r6, [r6, #0x10]
	ldrh r3, [r3]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0xf
	adds r6, r6, r3
	str r6, [sp]
	ldr r3, [r6]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0xe
	mov ip, r3
	add ip, r0
	mov r6, ip
	ldr r3, [r6]
	adds r6, r3, #0
	ands r3, r7
	movs r7, #1
	lsls r7, r7, #0xb
	subs r6, r6, r7
	ldr r7, _08004644 ;@ =0x001FF800
	ands r6, r7
	orrs r3, r6
	mov r6, ip
	str r3, [r6]
	adds r6, r4, #0
	adds r6, #8
	mov ip, r6
	adds r6, r4, #4
	mov lr, r6
	movs r6, #1
	lsls r6, r6, #0xb
	adds r7, r4, r6
	lsls r3, r3, #0xb
	lsrs r3, r3, #0x16
	cmp r3, #0
	str r7, [sp, #0x10]
	bne _080044F2
	ldr r6, [sp]
	mov r3, ip
	ldr r6, [r6]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xe
	ldr r6, [r0, r6]
	lsls r7, r6, #0xa
	bmi _080044DA
	mov r3, lr
_080044DA
	lsls r7, r6, #0x15
	lsls r6, r6, #0xa
	lsrs r6, r6, #0x1f
	lsrs r7, r7, #0x15
	lsls r7, r6
	lsls r6, r7, #2
	ldr r7, [sp, #0x10]
	ldr r7, [r7, #0x20]
	adds r6, r6, r7
	ldr r7, [r3]
	str r7, [r6]
	str r6, [r3]
_080044F2
	ldr r6, [r5, #0x30]
	ldr r3, [sp, #0x1c]
	ldr r3, [r3]
	str r3, [sp, #0xc]
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #3
	adds r3, r6, r3
	ldr r6, [r3, #0xc]
	ldr r3, [sp, #0xc]
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x11
	adds r3, r6, r3
	ldrh r3, [r3]
	ldr r6, [r5, #0x54]
	ldr r6, [r6, #0x10]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0xf
	adds r3, r6, r3
	ldr r6, [r3]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xe
	str r6, [sp, #8]
	ldr r6, [r0, r6]
	lsls r7, r6, #0xb
	lsrs r7, r7, #0x16
	beq _08004534
	lsls r6, r6, #0x15
	lsrs r6, r6, #0x15
	mov lr, r6
	b _080045F2
_08004534
	movs r6, #1
	cmp r1, #5
	bne _0800453C
	movs r6, #0
_0800453C
	str r6, [sp]
	ldr r6, [sp, #8]
	movs r7, #1
	adds r6, r6, r0
	str r6, [sp, #4]
	ldr r6, [r6]
	lsls r7, r7, #0x15
	bics r6, r7
	ldr r7, [sp]
	lsls r7, r7, #0x1f
	lsrs r7, r7, #0xa
	orrs r6, r7
	ldr r7, [sp, #4]
	cmp r1, #5
	str r6, [r7]
	mov r6, lr
	beq _08004560
	mov r6, ip
_08004560
	mov ip, r6
	cmp r1, #5
	bne _0800457E
	ldr r6, [r4, #4]
	cmp r6, #0
	bne _0800457E
	ldr r6, [r4, #8]
	str r6, [r4, #4]
	ldr r7, [r6]
	str r7, [r4, #8]
	adds r7, r6, #4
	str r7, [r6]
	ldr r4, [r4, #4]
	movs r6, #0
	str r6, [r4, #4]
_0800457E
	mov r6, ip
	ldr r4, [r6]
	ldr r7, [sp, #0x10]
	ldr r6, [r7, #0x20]
	subs r4, r4, r6
	asrs r6, r4, #2
	ldr r4, [r3]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xe
	ldr r7, [r0, r4]
	adds r4, r4, r0
	lsls r7, r7, #0xa
	lsrs r7, r7, #0x1f
	asrs r6, r7
	ldr r7, [r4]
	lsls r6, r6, #0x15
	lsrs r7, r7, #0xb
	lsls r7, r7, #0xb
	lsrs r6, r6, #0x15
	orrs r6, r7
	str r6, [r4]
	lsls r6, r6, #0x15
	lsrs r6, r6, #0x15
	mov lr, r6
	mov r6, ip
	ldr r4, [r6]
	ldr r4, [r4]
	str r4, [sp]
	ldr r6, [r5, #0x54]
	ldr r4, _08004648 ;@ =0x040000D4
	ldr r7, [r6, #0xc]
	ldr r6, [r3]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r6, r1
	adds r6, r7, r6
	str r6, [r4]
	mov r6, lr
	movs r7, #3
	lsls r7, r7, #0x19
	lsls r6, r1
	adds r6, r6, r7
	str r6, [r4, #4]
	movs r6, #1
	lsls r6, r1
	adds r1, r6, #0
	asrs r6, r6, #0x1f
	lsrs r6, r6, #0x1e
	adds r1, r6, r1
	asrs r1, r1, #2
	movs r6, #0x21
	lsls r6, r6, #0x1a
	orrs r1, r6
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r4, [sp]
	mov r6, ip
	str r4, [r6]
_080045F2
	ldr r1, [r3]
	ldr r7, _08004640 ;@ =0xFFE007FF
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r1, r0
	ldr r1, [r0]
	ldr r6, _08004644 ;@ =0x001FF800
	adds r4, r1, #0
	ands r4, r7
	movs r7, #1
	lsls r7, r7, #0xb
	adds r1, r1, r7
	ands r1, r6
	orrs r1, r4
	str r1, [r0]
	adds r5, #0x40
	ldrh r0, [r5, #0xa]
	ldrh r1, [r2]
	mov r6, lr
	subs r0, r6, r0
	lsls r0, r0, #0x16
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r0, r0, #0x16
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r3]
	lsrs r4, r7, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	bics r1, r4
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r3]
	lsls r0, r0, #0xe
	b _0800464C
	ALIGN
_0800463C DCDU gUnknown_03003EA4
_08004640 DCDU 0xFFE007FF
_08004644 DCDU 0x001FF800
_08004648 DCDU 0x040000D4
_0800464C
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	bics r1, r7
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r3]
	movs r3, #0xf
	lsls r3, r3, #0xc
	lsls r1, r1, #6
	lsrs r1, r1, #0x18
	lsls r1, r1, #0xc
	bics r0, r3
	orrs r0, r1
	strh r0, [r2]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8004670
sub_8004670 ;@ 0x08004670
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_8004674
sub_8004674 ;@ 0x08004674
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_8004678
sub_8004678 ;@ 0x08004678
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	bne _0800468A
	movs r0, #0x10
	bl sub_803D9F8
	cmp r0, #0
	beq _080046A6
_0800468A
	ldrh r1, [r0]
	lsls r2, r4, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	lsrs r2, r2, #0x1e
	orrs r2, r1
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	movs r1, #4
	bics r2, r1
	strh r2, [r0]
_080046A6
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_80046AC
sub_80046AC ;@ 0x080046AC
	str r1, [r0, #4]
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
	bx lr

	thumb_func_start sub_80046B8
sub_80046B8 ;@ 0x080046B8
	ldrh r1, [r1]
	sub sp, #4
	add r3, sp, #0
	strh r1, [r3]
	ldrh r3, [r3]
	strh r3, [r0, #8]
	ldrh r3, [r2]
	strh r3, [r0, #0xa]
	ldrh r3, [r2, #2]
	movs r2, #4
	strh r3, [r0, #0xc]
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	add sp, #4
	bx lr

	thumb_func_start sub_80046D8
sub_80046D8 ;@ 0x080046D8
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_80046DC
sub_80046DC ;@ 0x080046DC
	ldrh r1, [r1, #8]
	strh r1, [r0]
	bx lr

	non_word_aligned_thumb_func_start sub_80046E2
sub_80046E2 ;@ 0x080046E2
	adds r1, #0xa
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start sub_80046EE
sub_80046EE ;@ 0x080046EE
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	bx lr

	thumb_func_start sub_80046F8
sub_80046F8 ;@ 0x080046F8
	push {r3, lr}
	cmp r0, #0
	bne _08004708
	movs r0, #6
	bl sub_803D9F8
	cmp r0, #0
	beq _08004710
_08004708
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
_08004710
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004716
sub_8004716 ;@ 0x08004716
	push {r3, lr}
	cmp r0, #0
	bne _08004726
	movs r0, #0xc
	bl sub_803D9F8
	cmp r0, #0
	beq _0800473C
_08004726
	movs r2, #1
	ldr r1, [r0]
	lsls r2, r2, #0x19
	orrs r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	movs r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
_0800473C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004742
sub_8004742 ;@ 0x08004742
	adds r0, #4
	bx lr

	non_word_aligned_thumb_func_start sub_8004746
sub_8004746 ;@ 0x08004746
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	bx lr

	non_word_aligned_thumb_func_start sub_800474E
sub_800474E ;@ 0x0800474E
	push {r3, lr}
	adds r0, #4
	bl sub_803D66C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800475C
sub_800475C ;@ 0x0800475C
	movs r3, #1
	lsls r3, r3, #0x1a
	ldr r2, [r0]
	lsls r1, r1, #0x1a
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	bx lr

	thumb_func_start sub_800476C
sub_800476C ;@ 0x0800476C
	ldrh r2, [r0]
	movs r3, #0xc0
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	strh r1, [r0]
	bx lr
	ALIGN
_0800477C DCDU 0x06008800

	thumb_func_start sub_8004780
sub_8004780 ;@ 0x08004780
	lsrs r0, r0, #0x1e
	bx lr

	thumb_func_start sub_8004784
sub_8004784 ;@ 0x08004784
	ldrh r3, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	lsrs r3, r3, #6
	lsls r3, r3, #6
	orrs r1, r3
	movs r3, #0x3f
	lsls r3, r3, #8
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x12
	bics r1, r3
	orrs r1, r2
	strh r1, [r0]
	bx lr

	thumb_func_start sub_80047A0
sub_80047A0 ;@ 0x080047A0
	ldrh r0, [r0]
	cmp r1, #0
	beq _080047AC
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	b _080047B0
_080047AC
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
_080047B0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	non_word_aligned_thumb_func_start sub_80047B6
sub_80047B6 ;@ 0x080047B6
	strh r1, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80047BA
sub_80047BA ;@ 0x080047BA
	ldrh r0, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80047BE
sub_80047BE ;@ 0x080047BE
	ldrh r3, [r0, #2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	lsrs r3, r3, #5
	lsls r3, r3, #5
	orrs r1, r3
	movs r3, #0x1f
	lsls r3, r3, #8
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	bics r1, r3
	orrs r1, r2
	strh r1, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start sub_80047DA
sub_80047DA ;@ 0x080047DA
	ldrh r0, [r0, #2]
	cmp r1, #0
	beq _080047E6
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bx lr
_080047E6
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	bx lr

	thumb_func_start sub_80047EC
sub_80047EC ;@ 0x080047EC
	push {r3, lr}
	cmp r0, #0
	bne _080047FC
	movs r0, #0x14
	bl sub_803D9F8
	cmp r0, #0
	beq _0800480C
_080047FC
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strb r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
_0800480C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004812
sub_8004812 ;@ 0x08004812
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800482A
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq _0800482A
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800482A
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #0x12]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004836
sub_8004836 ;@ 0x08004836
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq _08004850
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq _08004850
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_08004850
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #0x12]
	cmp r5, #0
	beq _08004860
	adds r0, r4, #0
	bl sub_803DA18
_08004860
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004866
sub_8004866 ;@ 0x08004866
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	beq _08004882
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq _08004882
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_08004882
	movs r3, #0
	str r3, [r4]
	lsls r1, r6, #1
	cmp r5, #0
	strh r3, [r4, #0x12]
	beq _0800489A
	str r5, [r4]
	strb r3, [r4, #0x10]
	adds r0, r5, #0
	bl sub_803BEB0
	b _080048A8
_0800489A
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4]
	movs r0, #1
	strb r0, [r4, #0x10]
_080048A8
	strh r6, [r4, #0x12]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80048B0
sub_80048B0 ;@ 0x080048B0
	adds r1, r0, #0
	ldrh r1, [r1, #8]
	movs r0, #1
	cmp r1, #0
	bne _080048BC
	movs r0, #0
_080048BC
	bx lr

	non_word_aligned_thumb_func_start sub_80048BE
sub_80048BE ;@ 0x080048BE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	beq _080048DA
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq _080048DA
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_080048DA
	movs r0, #0
	str r6, [r4]
	strb r0, [r4, #0x10]
	adds r0, r6, r5
	subs r0, #0x20
	strh r5, [r4, #0x12]
	ldrh r0, [r0, #0x1e]
	strh r0, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80048F0
sub_80048F0 ;@ 0x080048F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #0
	bne _08004902
_080048FC
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08004902
	ldr r0, [r4, #4]
	ldr r1, [r4]
	adds r0, #2
	subs r5, r0, r1
	adds r5, #2
	cmp r6, #0
	beq _08004920
	subs r2, r5, #2
	adds r0, r6, #0
	bl sub_803BF0C
	ldrh r0, [r4, #8]
	adds r1, r6, r5
	subs r1, #0x20
	strh r0, [r1, #0x1e]
_08004920
	adds r0, r5, #0
	b _080048FC

	thumb_func_start sub_8004924
sub_8004924 ;@ 0x08004924
	push {r3, lr}
	cmp r0, #0
	bne _08004934
	movs r0, #0x18
	bl sub_803D9F8
	cmp r0, #0
	beq _08004964
_08004934
	ldr r1, _08004B94 ;@ =_0803ECBC
	movs r2, #2
	str r1, [r0]
	ldr r1, _08004B98 ;@ =gUnknown_03003E80
	str r0, [r1]
	ldr r1, _08004B9C ;@ =_0803E67C
	str r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	bics r1, r2
	movs r2, #4
	bics r1, r2
	movs r2, #8
	bics r1, r2
	str r1, [r0, #0x14]
_08004964
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800496A
sub_800496A ;@ 0x0800496A
	push {r3, lr}
	ldr r2, _08004B94 ;@ =_0803ECBC
	ldr r3, _08004B98 ;@ =gUnknown_03003E80
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0800497E
	bl sub_803DA18
_0800497E
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8004984
sub_8004984 ;@ 0x08004984
	ldr r1, [r0, #0x14]
	lsls r2, r1, #0x1f
	bpl _08004992
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0, #0x14]
	b _080049AA
_08004992
	lsls r2, r1, #0x1e
	bpl _080049AA
	movs r2, #2
	bics r1, r2
	str r1, [r0, #0x14]
	ldr r2, [r0, #0x10]
	adds r1, r2, #0
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	adds r1, #8
	subs r2, r3, r2
	strh r2, [r1]
_080049AA
	ldr r1, [r0, #0x14]
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_80049B4
sub_80049B4 ;@ 0x080049B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	lsls r1, r0, #0x1c
	bmi _08004A8C
	lsls r1, r0, #0x1f
	ldr r2, _08004BA0 ;@ =0x000003FF
	ldr r3, _08004BA4 ;@ =0x04000120
	bpl _08004A30
	lsls r0, r0, #0x1d
	bmi _08004A30
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080049DC
	adds r0, #0xc
	ldrb r1, [r0]
	adds r1, #0xff
	strb r1, [r0]
	b _080049FA
_080049DC
	ldr r1, [r0, #4]
	ldrh r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	strh r1, [r0, #0xe]
	ldr r0, [r4, #0x10]
	ldr r1, [r0, #4]
	ldrh r1, [r1]
	lsrs r1, r1, #0xa
	strb r1, [r0, #0xc]
	ldr r0, [r4, #0x10]
	adds r0, #4
	ldr r1, [r0]
	adds r1, #2
	str r1, [r0]
_080049FA
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _08004A12
	ldrh r1, [r3, #0x10]
	eors r1, r2
	ldr r2, [r4, #0x10]
	ldrh r2, [r2, #0xe]
	bics r2, r0
	ands r0, r1
	orrs r2, r0
	adds r5, r2, #0
	b _08004A16
_08004A12
	ldr r0, [r4, #0x10]
	ldrh r5, [r0, #0xe]
_08004A16
	ldr r0, [r4, #0x10]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _08004A34
	adds r0, r4, #0
	bl sub_8004984
	b _08004A34
_08004A30
	ldrh r5, [r3, #0x10]
	eors r5, r2
_08004A34
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _08004A42
	ldrh r1, [r4, #0xc]
	orrs r5, r1
	subs r0, #1
	strh r0, [r4, #0xa]
_08004A42
	ldrh r0, [r4, #4]
	adds r1, r0, #0
	eors r1, r5
	ands r1, r5
	strh r1, [r4, #6]
	bics r0, r5
	strh r0, [r4, #8]
	strh r5, [r4, #4]
	ldr r0, [r4, #0x14]
	lsls r1, r0, #0x1e
	bpl _08004A8C
	lsls r0, r0, #0x1d
	bmi _08004A8C
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #4]
	ldrh r0, [r2]
	lsls r3, r0, #0x16
	lsrs r3, r3, #0x16
	cmp r3, r5
	bne _08004AA4
	lsrs r3, r0, #0xa
	cmp r3, #0x3f
	bne _08004A8E
	adds r0, r1, #4
	ldr r1, [r1, #4]
	lsls r2, r5, #0x16
	adds r1, #2
	str r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r2, r2, #0x16
	orrs r1, r2
	strh r1, [r0]
	b _08004ABE
_08004A8C
	b _08004AD6
_08004A8E
	movs r3, #0x3f
	lsls r3, r3, #0xa
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xa
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	strh r0, [r2]
	b _08004ABE
_08004AA4
	adds r0, r1, #4
	ldr r1, [r1, #4]
	lsls r2, r5, #0x16
	adds r1, #2
	str r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r2, r2, #0x16
	orrs r1, r2
	strh r1, [r0]
_08004ABE
	ldr r0, [r4, #0x10]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _08004AD6
	adds r0, r4, #0
	bl sub_8004984
_08004AD6
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8004ADC
sub_8004ADC ;@ 0x08004ADC
	movs r1, #0
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_8004AE6
sub_8004AE6 ;@ 0x08004AE6
	ldr r2, [r0, #0x14]
	movs r3, #8
	bics r2, r3
	lsls r1, r1, #3
	orrs r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_8004AF4
sub_8004AF4 ;@ 0x08004AF4
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8004AFC
sub_8004AFC ;@ 0x08004AFC
	strh r3, [r0, #0xa]
	strh r1, [r0, #0xc]
	bx lr

	non_word_aligned_thumb_func_start sub_8004B02
sub_8004B02 ;@ 0x08004B02
	movs r3, #0
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	strh r3, [r0, #4]
	strh r2, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r2, [r1]
	adds r2, #2
	str r2, [r1, #4]
	ldr r1, [r0, #0x10]
	strb r3, [r1, #0xc]
	ldr r1, [r0, #0x10]
	strh r3, [r1, #0xe]
	ldr r1, [r0, #0x10]
	ldrh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, [r0, #0x14]
	movs r2, #1
	orrs r1, r2
	movs r2, #2
	bics r1, r2
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_8004B38
sub_8004B38 ;@ 0x08004B38
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8004B40
sub_8004B40 ;@ 0x08004B40
	push {r4}
	str r1, [r0, #0x10]
	ldr r3, [r1]
	ldr r4, _08004BA0 ;@ =0x000003FF
	str r3, [r1, #4]
	ldrh r1, [r3]
	orrs r1, r4
	strh r1, [r3]
	ldr r1, [r0, #0x10]
	strh r2, [r1, #8]
	ldr r1, [r0, #0x10]
	strh r2, [r1, #0xa]
	ldr r2, [r0, #0x10]
	movs r1, #0
	strb r1, [r2, #0xc]
	ldr r2, [r0, #0x10]
	strh r1, [r2, #0xe]
	ldr r1, [r0, #0x14]
	movs r2, #2
	orrs r1, r2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	movs r2, #4
	bics r1, r2
	str r1, [r0, #0x14]
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_8004B76
sub_8004B76 ;@ 0x08004B76
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bx lr

	non_word_aligned_thumb_func_start sub_8004B7E
sub_8004B7E ;@ 0x08004B7E
	ldr r2, [r0, #0x14]
	movs r3, #4
	bics r2, r3
	lsls r1, r1, #2
	orrs r1, r2
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_8004B8C
sub_8004B8C ;@ 0x08004B8C
	ldr r0, [r0, #0x14]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bx lr
	ALIGN
_08004B94 DCDU _0803ECBC
_08004B98 DCDU gUnknown_03003E80
_08004B9C DCDU _0803E67C
_08004BA0 DCDU 0x000003FF
_08004BA4 DCDU 0x04000120

	thumb_func_start sub_8004BA8
sub_8004BA8 ;@ 0x08004BA8
	push {r4, r5, r6}
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1e
	bpl _08004C1E
	cmp r1, #0
	bne _08004BC0
	ldr r1, [r0, #0x10]
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	subs r1, r2, r1
	NEGS r1, r1
	b _08004BD4
_08004BC0
	cmp r1, #0
	bgt _08004BD4
	ldr r2, [r0, #0x10]
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	subs r2, r3, r2
	NEGS r3, r1
	cmp r2, r3
	bge _08004BD4
	NEGS r1, r2
_08004BD4
	adds r4, r1, #1
	cmp r1, #0
	bge _08004C1E
	movs r5, #1
	lsls r5, r5, #0xa
	movs r6, #0x3f
	lsls r6, r6, #0xa
_08004BE2
	ldr r1, [r0, #0x10]
	ldr r2, [r1, #4]
	ldrh r1, [r2]
	lsrs r3, r1, #0xa
	lsls r3, r3, #0x1a
	beq _08004BFC
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r6
	bics r3, r6
	orrs r1, r3
	strh r1, [r2]
	b _08004C0C
_08004BFC
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	strh r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #4
	ldr r2, [r1]
	subs r2, #2
	str r2, [r1]
_08004C0C
	ldr r1, [r0, #0x10]
	adds r1, #0xa
	ldrh r2, [r1]
	adds r2, #1
	strh r2, [r1]
	adds r1, r4, #0
	adds r4, #1
	cmp r1, #0
	blt _08004BE2
_08004C1E
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_8004C22
sub_8004C22 ;@ 0x08004C22
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start nullsub_23
nullsub_23 ;@ 0x08004C26
	bx lr

	thumb_func_start sub_8004C28
sub_8004C28 ;@ 0x08004C28
	movs r0, #0
	bx lr

	thumb_func_start sub_8004C2C
sub_8004C2C ;@ 0x08004C2C
	cmp r1, #0
	beq _08004C38
	cmp r1, #1
	bne _08004C3E
	lsls r0, r1, #0xd
	bx lr
_08004C38
	movs r0, #1
	lsls r0, r0, #9
	bx lr
_08004C3E
	movs r0, #0
	bx lr
	ALIGN

	arm_func_start sub_08004C44
sub_08004C44 ;@ 0x08004C44
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r4, #0x10000
	LDR r0, _08004DBC ;@ =gUnknown_080494B8
	blo _08004D38
	cmp r4, #0x1000000
	blo _08004CD8
	cmp r4, #0x10000000
	blo _08004C80
	cmp r4, #0x40000000
	LDRCCB r0, [r0, r4, lsr #22]
	MOVCC r5, r0, LSL #7
	LDRCSB r0, [r0, r4, lsr #24]
	MOVCS r5, r0, LSL #8
	b _08004C94
_08004C80
	cmp r4, #0x4000000
	LDRCCB r0, [r0, r4, lsr #18]
	MOVCC r5, r0, LSL #5
	LDRCSB r0, [r0, r4, lsr #20]
	MOVCS r5, r0, LSL #6
_08004C94
	mov r1, r4
	mov r0, r5
	bl sub_803C128
	add r0, r0, r5
	add r0, r0, #1
	MOV r5, r0, LSR #1
	mov r0, r5
	mov r1, r4
	bl sub_803C128
	add r0, r0, r5
	add r0, r0, #1
	MOV r0, r0, LSR #1
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr
_08004CD8
	cmp r4, #0x100000
	blo _08004CF8
	cmp r4, #0x400000
	LDRCCB r0, [r0, r4, lsr #14]
	MOVCC r5, r0, LSL #3
	LDRCSB r0, [r0, r4, lsr #16]
	MOVCS r5, r0, LSL #4
	b _08004D0C
_08004CF8
	cmp r4, #0x40000
	LDRCCB r0, [r0, r4, lsr #10]
	MOVCC r5, r0, LSL #1
	LDRCSB r0, [r0, r4, lsr #12]
	MOVCS r5, r0, LSL #2
_08004D0C
	mov r1, r4
	mov r0, r5
	bl sub_803C128
	add r0, r0, r5
	add r0, r0, #1
	MOV r0, r0, LSR #1
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr
_08004D38
	cmp r4, #0x100
	LDRCCB r0, [r0, r4]
	LDMLOFD SP!, {r3, r4, r5, lr}
	MOVCC r0, r0, LSR #4
	bxlo lr
	mov r1, #1
	cmp r4, #0x1000
	blo _08004D70
	cmp r4, #0x4000
	LDRCCB r0, [r0, r4, lsr #6]
	addlo r0, r1, r0, lsr #1
	LDRCSB r0, [r0, r4, lsr #8]
	addhs r0, r0, #1
	b _08004D84
_08004D70
	cmp r4, #0x400
	LDRCCB r0, [r0, r4, lsr #2]
	addlo r0, r1, r0, lsr #3
	LDRCSB r0, [r0, r4, lsr #4]
	addhs r0, r1, r0, lsr #2
_08004D84
	mul r1, r0, r0
	cmp r1, r4
	LDMFD SP!, {r3, r4, r5, lr}
	subhi r0, r0, #1
	bx lr

	arm_func_start sub_8004D98
sub_8004D98 ;@ 0x08004D98
	mov r1, #1
	mov r2, #0
_08004DA0
	sub r0, r0, r1
	cmp r0, #0
	add r1, r1, #2
	add r2, r2, #1
	bgt _08004DA0
	sub r0, r2, #1
	bx lr
	ALIGN
_08004DBC DCDU gUnknown_080494B8
_08004DC0 DCDU 0x78011C08
_08004DC4 DCDU 0xD1082953
_08004DC8 DCDU 0x29467841
_08004DCC DCDU 0x7881D105
_08004DD0 DCDU 0xD1022943
_08004DD4 DCDU 0x294478C1
_08004DD8 DCDU 0x3004D004
_08004DDC DCDU 0x2A003A04
_08004DE0 DCDU 0x2000DCEF

	thumb_func_start nullsub_24
nullsub_24 ;@ 0x08004DE4
	bx lr

	non_word_aligned_thumb_func_start sub_8004DE6
sub_8004DE6 ;@ 0x08004DE6
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r0, #0
	cmp r0, #0
	sub sp, #0x14
	bne _08004E08
	movs r0, #0xc
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08004E08
	adds r0, r4, #0
_08004E00
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08004E08
	ldr r0, _08005034 ;@ =_0803ECE4
	movs r1, #0
	str r0, [r4]
	ldr r0, _08005038 ;@ =gUnknown_03003EA8
	str r4, [r0]
	ldr r0, _0800503C ;@ =_0803EC6C
	str r0, [r4]
	movs r0, #1
	lsls r0, r0, #0x1b
	adds r5, r5, r0
	add r0, sp, #0xc
	movs r2, #0
	stm r0!, {r1, r2}
_08004E22
	ldr r0, _08005040 ;@ =gUnknown_03003E84
	movs r3, #0
	adds r2, r7, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, _08005040 ;@ =gUnknown_03003E84
	adds r2, r7, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_803DABC
	adds r2, r0, #0
	adds r1, r6, #0
_08004E42
	ldrb r3, [r1]
	cmp r3, #0x53
	bne _08004E5A
	ldrb r3, [r1, #1]
	cmp r3, #0x46
	bne _08004E5A
	ldrb r3, [r1, #2]
	cmp r3, #0x43
	bne _08004E5A
	ldrb r3, [r1, #3]
	cmp r3, #0x44
	beq _08004E64
_08004E5A
	adds r1, #4
	subs r0, #4
	cmp r0, #0
	bgt _08004E42
	movs r1, #0
_08004E64
	cmp r1, #0
	beq _08004E76
	subs r0, r1, r6
	adds r5, r0, r5
	ldr r0, [r1, #4]
	ldr r2, [r1]
	str r0, [sp, #0x10]
	str r2, [sp, #0xc]
	b _08004E7C
_08004E76
	adds r5, r5, r2
	subs r7, r7, r2
	bne _08004E22
_08004E7C
	ldr r6, _08005040 ;@ =gUnknown_03003E84
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_803DABC
	adds r7, r0, #0
	cmp r0, #8
	bhs _08004EA8
	adds r1, r5, r7
	movs r3, #0
	movs r2, #8
	ldr r0, [r6]
	bl sub_800529A
	adds r1, r0, #0
	movs r0, #8
	subs r2, r0, r7
	add r0, sp, #0xc
	adds r0, r0, r7
	bl sub_803BF0C
_08004EA8
	ldr r0, [sp, #0x10]
	adds r7, r5, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, #8
	adds r0, r0, r7
	str r0, [r4, #8]
	ldr r0, [sp, #0x10]
	movs r3, #0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, #8
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	add r2, sp, #0xc
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #4]
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r1, #8
	str r1, [sp, #8]
_08004EDC
	ldr r6, _08005040 ;@ =gUnknown_03003E84
	movs r3, #0
	adds r2, r5, #0
	adds r1, r7, #0
	ldr r0, [r6]
	bl sub_800529A
	str r0, [sp, #4]
	adds r2, r5, #0
	adds r1, r7, #0
	ldr r0, [r6]
	bl sub_803DABC
	adds r6, r0, #0
	adds r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_803BF0C
	ldr r1, [sp, #8]
	adds r7, r7, r6
	adds r1, r1, r6
	str r1, [sp, #8]
	subs r5, r5, r6
	bne _08004EDC
	adds r0, r4, #0
	b _08004E00

	non_word_aligned_thumb_func_start sub_8004F12
sub_8004F12 ;@ 0x08004F12
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800503C ;@ =_0803EC6C
	adds r5, r1, #0
	movs r2, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r1, #0
	bl sub_803D9A8
	ldr r0, _08005034 ;@ =_0803ECE4
	movs r1, #0
	stm r4!, {r0, r1}
	ldr r0, _08005038 ;@ =gUnknown_03003EA8
	subs r4, #8
	cmp r5, #0
	str r1, [r0]
	beq _08004F3C
	adds r0, r4, #0
	bl sub_803DA18
_08004F3C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004F42
sub_8004F42 ;@ 0x08004F42
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r0, [sp, #0x48]
	adds r7, r2, #0
	ldr r5, [r0, #4]
	adds r6, r1, #0
	adds r5, #8
_08004F50
	movs r4, #0
	movs r1, #0x40
	add r0, sp, #8
	bl sub_803BEB0
	cmp r6, #0
	beq _08004F90
	movs r1, #0x5c
	adds r0, r6, #0
	bl sub_80002C8
	adds r4, r0, #0
	bne _08004F7E
	movs r1, #0x2f
	adds r0, r6, #0
	bl sub_80002C8
	adds r4, r0, #0
	bne _08004F7E
	adds r0, r6, #0
	bl sub_8000292
	adds r4, r0, r6
_08004F7E
	subs r2, r4, r6
	adds r1, r6, #0
	add r6, sp, #8
	adds r0, r6, #0
	bl sub_803BF0C
	adds r0, r6, #0
	bl sub_80002A8
_08004F90
	ldm r5!, {r0}
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
_08004F96
	cmp r4, #0
	beq _08004FC8
	adds r0, r5, #0
	adds r0, #8
	add r1, sp, #8
	bl sub_8000210
	cmp r0, #0
	beq _08004FC8
	ldrb r0, [r4]
	cmp r0, #0
	beq _08004FBE
	ldr r0, [r5, #4]
	lsls r0, r0, #3
	lsrs r0, r0, #3
	adds r5, r0, r5
	cmp r6, #0
	beq _08004FF8
	adds r6, r4, #1
	b _08004F50
_08004FBE
	adds r0, r5, #0
_08004FC0
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08004FC8
	cmp r7, #0
	beq _08004FE0
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #8]
	ldr r1, [r5, #4]
	lsls r1, r1, #3
	lsrs r1, r1, #3
	adds r0, r0, r1
	cmp r0, r7
	bne _08004FE0
	adds r0, r5, #0
	b _08004FC0
_08004FE0
	adds r0, r5, #0
	adds r0, #8
	str r0, [sp, #4]
	bl sub_8000292
	adds r0, #4
	lsrs r0, r0, #2
	ldr r1, [sp, #4]
	lsls r0, r0, #2
	adds r5, r0, r1
	subs r6, #1
	bne _08004F96
_08004FF8
	movs r0, #0
	b _08004FC0

	thumb_func_start sub_8004FFC
sub_8004FFC ;@ 0x08004FFC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	bl sub_8004F42
	cmp r0, #0
	bne _08005010
_0800500A
	pop {r4}
	pop {r3}
	bx r3
_08005010
	ldr r1, [r4, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	lsrs r0, r0, #3
	adds r0, r1, r0
	b _0800500A

	thumb_func_start sub_800501C
sub_800501C ;@ 0x0800501C
	push {r3, lr}
	movs r2, #0
	bl sub_8004F42
	movs r1, #0
	cmp r0, #0
	beq _0800502C
	ldr r1, [r0]
_0800502C
	add sp, #4
	pop {r3}
	adds r0, r1, #0
	bx r3
	ALIGN
_08005034 DCDU _0803ECE4
_08005038 DCDU gUnknown_03003EA8
_0800503C DCDU _0803EC6C
_08005040 DCDU gUnknown_03003E84

	thumb_func_start sub_8005044
sub_8005044 ;@ 0x08005044
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #3
	lsrs r0, r1, #2
	lsrs r1, r2, #2
	lsls r1, r1, #2
	lsls r0, r0, #2
	stm r4!, {r0, r1}
	subs r4, #8
	movs r2, #0
	str r2, [r4, #0xc]
	subs r1, r1, r0
	bl sub_803BE68
	movs r2, #0
	movs r1, #0
	ldr r0, [r4]
	bl sub_803F07C
	ldr r0, [r4, #4]
	ldr r1, [r4]
	subs r0, #0xc
	movs r2, #0
	bl sub_803F07C
	ldr r0, [r4]
	str r4, [r0, #4]
	ldr r0, [r4]
	adds r0, #8
	ldr r1, [r0]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #5
	str r1, [r0]
	ldr r0, [r4, #4]
	subs r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	adds r1, #6
	str r1, [r0]
	movs r0, #0x18
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	adds r0, #4
	str r0, [r4, #8]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	thumb_func_start sub_80050AC
sub_80050AC ;@ 0x080050AC
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	ldr r2, [r0, #8]
	movs r3, #1
	orrs r2, r3
	ands r2, r3
	str r1, [r0, #0xc]
	str r2, [r0, #8]
	bx lr

	thumb_func_start sub_80050C0
sub_80050C0 ;@ 0x080050C0
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne _080050CC
	subs r1, #4
	ldr r1, [r1, r0]
	lsrs r1, r1, #8
_080050CC
	movs r2, #0
	str r2, [r0, #4]
	str r2, [r0]
	ldr r3, [r0, #8]
	str r2, [r0, #0xc]
	movs r5, #1
	orrs r3, r5
	adds r2, r0, r1
	adds r4, r0, #0
	adds r1, r4, #0
	ands r3, r5
	str r3, [r0, #8]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_8005044
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80050F4
sub_80050F4 ;@ 0x080050F4
	ldr r0, _08005258 ;@ =gUnknown_030033E8
	ldr r0, [r0, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80050FA
sub_80050FA ;@ 0x080050FA
	ldr r1, _08005258 ;@ =gUnknown_030033E8
	cmp r0, #0
	bne _08005102
	ldr r0, [r1, #4]
_08005102
	str r0, [r1, #8]
	bx lr

	non_word_aligned_thumb_func_start sub_8005106
sub_8005106 ;@ 0x08005106
	ldr r0, _08005258 ;@ =gUnknown_030033E8
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start sub_800510C
sub_800510C ;@ 0x0800510C
	ldr r2, [r0]
	cmp r2, r1
	bhi _0800511C
	ldr r0, [r0, #4]
	cmp r0, r1
	bls _0800511C
	movs r0, #1
	bx lr
_0800511C
	movs r0, #0
	bx lr

	thumb_func_start sub_8005120
sub_8005120 ;@ 0x08005120
	subs r0, #0xc
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	beq _08005130
_08005128
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	bne _08005128
_08005130
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_8005134
sub_8005134 ;@ 0x08005134
	ldr r2, [r0, #8]
	lsls r3, r2, #0x1f
	lsrs r3, r3, #0x1f
	cmp r3, r1
	beq _08005156
	lsrs r2, r2, #1
	lsls r2, r2, #1
	orrs r2, r1
	str r2, [r0, #8]
	cmp r1, #0
	bne _08005156
	str r1, [r0]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
_08005156
	bx lr

	thumb_func_start sub_8005158
sub_8005158 ;@ 0x08005158
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8005160
sub_8005160 ;@ 0x08005160
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_8005164
sub_8005164 ;@ 0x08005164
	ldr r1, [r0, #4]
	ldr r2, [r0]
	ldr r0, [r0, #0xc]
	subs r1, r1, r2
	subs r0, r1, r0
	bx lr

	thumb_func_start sub_8005170
sub_8005170 ;@ 0x08005170
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	adds r2, r1, #7
	lsrs r2, r2, #3
	ldr r4, [r0]
	lsls r2, r2, #3
	movs r3, #0
	cmp r4, #0
	beq _080051C0
	adds r5, r2, #0
	adds r5, #0xc
_08005186
	ldr r2, [r0, #8]
	ldr r4, [r0]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xc
	subs r2, r4, r2
	cmp r3, r2
	bge _0800519E
	adds r3, r2, #0
_0800519E
	cmp r2, r5
	blt _080051C8
	ldr r2, [r0, #8]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r4, r2, r0
	adds r2, r1, #0
	adds r1, r0, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl sub_803F07C
	ldr r0, [r4]
	cmp r0, #0
	bne _080051D2
_080051C0
	movs r0, #0
_080051C2
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080051C8
	ldr r2, [r4]
	adds r0, r4, #0
	cmp r2, #0
	beq _080051C0
	b _08005186
_080051D2
	adds r0, r4, #0
	b _080051C2

	non_word_aligned_thumb_func_start sub_80051D6
sub_80051D6 ;@ 0x080051D6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #8]
	adds r5, r2, #0
	lsls r0, r0, #0x1f
	bmi _080051EA
	movs r0, #0
_080051E4
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080051EA
	adds r0, r4, #0
	bl sub_8005170
	ldr r1, [r0, #8]
	ldr r2, [r4, #0xc]
	lsrs r1, r1, #8
	adds r1, #7
	lsrs r1, r1, #3
	lsls r1, r1, #3
	adds r1, #0xc
	adds r1, r1, r2
	str r1, [r4, #0xc]
	ldr r1, [r4, #8]
	lsls r2, r1, #0x1f
	adds r1, #2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	lsrs r2, r2, #0x1f
	orrs r1, r2
	str r1, [r4, #8]
	ldr r1, [r0, #8]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r1, r5
	str r1, [r0, #8]
	adds r0, #0xc
	b _080051E4

	thumb_func_start sub_8005220
sub_8005220 ;@ 0x08005220
	ldr r2, [r0, #8]
	lsls r2, r2, #0x1f
	bpl _08005254
	subs r1, #0xc
	ldr r2, [r1, #8]
	ldr r3, [r0, #0xc]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r2, #0xc
	subs r2, r3, r2
	str r2, [r0, #0xc]
	ldm r1!, {r2, r3}
	subs r1, #8
	str r2, [r3]
	ldm r1!, {r1, r2}
	str r2, [r1, #4]
	ldr r1, [r0, #8]
	lsls r2, r1, #0x1f
	subs r1, #2
	lsrs r1, r1, #1
	lsrs r2, r2, #0x1f
	lsls r1, r1, #1
	orrs r1, r2
	str r1, [r0, #8]
_08005254
	bx lr
	ALIGN
_08005258 DCDU gUnknown_030033E8

	thumb_func_start sub_800525C
sub_800525C ;@ 0x0800525C
	push {r3, lr}
	cmp r0, #0
	bne _0800526C
	movs r0, #4
	bl sub_803D9F8
	cmp r0, #0
	beq _08005278
_0800526C
	ldr r1, _080052B4 ;@ =_0803ECC0
	str r1, [r0]
	ldr r1, _080052B8 ;@ =gUnknown_03003E84
	str r0, [r1]
	ldr r1, _080052BC ;@ =_0803E680
	str r1, [r0]
_08005278
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800527E
sub_800527E ;@ 0x0800527E
	push {r3, lr}
	ldr r2, _080052B4 ;@ =_0803ECC0
	ldr r3, _080052B8 ;@ =gUnknown_03003E84
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08005292
	bl sub_803DA18
_08005292
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start nullsub_1
nullsub_1 ;@ 0x08005298
	bx lr

	non_word_aligned_thumb_func_start sub_800529A
sub_800529A ;@ 0x0800529A
	push {r4, lr}
	adds r0, r1, #0
	adds r4, r3, #0
	beq _080052AC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_803BF0C
	adds r0, r4, #0
_080052AC
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_080052B4 DCDU _0803ECC0
_080052B8 DCDU gUnknown_03003E84
_080052BC DCDU _0803E680

	thumb_func_start sub_80052C0
sub_80052C0 ;@ 0x080052C0
	push {r3, r4, r5, r6, r7, lr}
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r7, r2, #0
	lsrs r6, r0, #0x10
	adds r4, r1, #0
	cmp r1, #0
	bne _080052D8
	movs r0, #1
_080052D2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080052D8
	cmp r7, #0
	beq _08005376
_080052DC
	ldr r0, _0800537C ;@ =0x000015B0
	cmp r7, r0
	bhs _080052E4
	adds r0, r7, #0
_080052E4
	subs r7, r7, r0
	cmp r0, #0x10
	blt _08005352
_080052EA
	ldrb r1, [r4]
	ldrb r3, [r4, #1]
	subs r0, #0x10
	adds r1, r1, r5
	adds r2, r6, r1
	adds r1, r3, r1
	ldrb r3, [r4, #2]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #3]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #4]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #5]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #6]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #7]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #8]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #9]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xa]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xb]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xc]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xd]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xe]
	adds r2, r2, r1
	adds r1, r3, r1
	ldrb r3, [r4, #0xf]
	adds r2, r2, r1
	adds r4, #0x10
	adds r5, r3, r1
	adds r6, r2, r5
	cmp r0, #0x10
	bge _080052EA
_08005352
	cmp r0, #0
	beq _08005362
_08005356
	ldrb r1, [r4]
	adds r4, #1
	adds r5, r1, r5
	adds r6, r6, r5
	subs r0, #1
	bne _08005356
_08005362
	adds r0, r5, #0
	bl sub_80406E4
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_80406E4
	adds r6, r0, #0
	cmp r7, #0
	bne _080052DC
_08005376
	lsls r0, r6, #0x10
	orrs r0, r5
	b _080052D2
	ALIGN
_0800537C DCDU 0x000015B0

	arm_func_start sub_8005380
sub_8005380 ;@ 0x08005380
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r2, #0
	LDRNE r0, [r4, #0x3c]
	mov r5, r1
	STRNE r0, [r2]
	LDRB r0, [r4]
	cmp r0, #4
	cmpne r0, #5
	bne _080053C0
	LDR r1, [r4, #0xc]
	LDR r0, [r5, #0x24]
	LDR r3, [r5, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
_080053C0
	LDRB r0, [r4]
	cmp r0, #6
	moveq r1, r5
	LDREQ r0, [r4, #4]
	bleq sub_8006BA4
	mov r0, #0
	STRB r0, [r4]
	STR r0, [r4, #0x1c]
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0x28]
	STR r0, [r4, #0x34]
	STR r0, [r4, #0x30]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_80053F8
sub_80053F8 ;@ 0x080053F8
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	LDR r0, [r0, #0x24]
	LDR r3, [r4, #0x1c]
	mov r7, r1
	mov r6, r2
	mov r2, #1
	mov r1, #0x40
	mov lr, pc
	bx r3
	movs r5, r0
	moveq r0, r5
	LDMEQFD SP!, {r3, r4, r5, r6, r7, lr}
	bxeq lr
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x1c]
	mov r2, #2
	mov r1, #0x2d00
	mov lr, pc
	bx r3
	STR r0, [r5, #0x24]
	cmp r0, #0
	LDR r0, [r4, #0x24]
	bne _08005478
	LDR r3, [r4, #0x20]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
_08005478
	LDR r3, [r4, #0x1c]
	mov r2, #3
	mov r1, r6
	mov lr, pc
	bx r3
	STR r0, [r5, #0x28]
	cmp r0, #0
	bne _080054D4
	LDR r1, [r5, #0x24]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #2
	mov lr, pc
	bx r3
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
_080054D4
	add r0, r0, r6
	STR r0, [r5, #0x2c]
	STR r7, [r5, #0x38]
	mov r0, #0
	STRB r0, [r5]
	mov r0, r5
	mov r2, #0
	mov r1, r4
	bl sub_8005380
	mov r0, r5
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	arm_func_start sub_8005504
sub_8005504 ;@ 0x08005504
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r7, r0, #0x1c
	LDMIA r7, {r5, r7}
	LDR r8, [r1, #4]
	LDR sb, [r1]
	add sl, r0, #0x30
	mov r4, r0
	LDMIA sl, {r0, sl}
	sub sp, sp, #0x34
	cmp r0, sl
	LDRLS r0, [r4, #0x2c]
	mov fp, r2
	sub r0, r0, sl
	subhi r0, r0, #1
	STR r0, [sp, #0x28]
	mov r6, r1
_08005544
	LDRB r0, [r4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
jmptb_08005550
	b _08006204
jmptb_08005554
	b _0800557C
jmptb_08005558
	b _0800572C
jmptb_0800555C
	b _08005820
jmptb_08005560
	b _080059D4
jmptb_08005564
	b _08005B38
jmptb_08005568
	b _08005EE4
jmptb_0800556C
	b _08006068
jmptb_08005570
	b _08006118
jmptb_08005574
	b _08006184
jmptb_08005578
	b _080061C4
_0800557C
	cmp r5, #3
	bhs _080055A8
_08005584
	cmp r8, #0
	beq _08005624
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #3
	blo _08005584
_080055A8
	and r0, r7, #7
	and r1, r0, #1
	STR r1, [r4, #0x18]
	MOVS r0, r0, LSR #1
	beq _08005664
	cmp r0, #1
	beq _08005684
	cmp r0, #2
	beq _08005718
	cmp r0, #3
	bne _08005544
	mov r2, #9
	STRB r2, [r4]
	MOV r0, r7, LSR #3
	STR r0, [r4, #0x20]
	sub r1, r5, #3
	STR r1, [r4, #0x1c]
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_08005624
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005664
	sub r1, r5, #3
	and r0, r1, #7
	MOV r2, r7, LSR #3
	MOV r7, r2, LSR r0
	sub r5, r1, r0
	mov r0, #1
	STRB r0, [r4]
	b _08005544
_08005684
	STR r6, [sp]
	add r3, sp, #0x18
	add r2, sp, #0x1c
	add r1, sp, #0x20
	add r0, sp, #0x24
	bl sub_8007ED8
	STR r6, [sp]
	LDR r1, [sp, #0x20]
	LDR r0, [sp, #0x24]
	LDR r2, [sp, #0x1c]
	LDR r3, [sp, #0x18]
	bl sub_80062F4
	STR r0, [r4, #4]
	cmp r0, #0
	bne _08005704
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	mvn r2, #3
	bl _08007F18
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08005704
	mov r0, #6
	STRB r0, [r4]
	MOV r7, r7, LSR #3
	sub r5, r5, #3
	b _08005544
_08005718
	mov r0, #3
	STRB r0, [r4]
	MOV r7, r7, LSR #3
	sub r5, r5, #3
	b _08005544
_0800572C
	cmp r5, #0x20
	bhs _08005758
_08005734
	cmp r8, #0
	beq _080057B4
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #0x20
	blo _08005734
_08005758
	MOV r0, r7, LSL #0x10
	MOV r0, r0, LSR #0x10
	mvn r1, r7
	cmp r0, r1, lsr #16
	beq _080057F4
	mov r0, #9
	STRB r0, [r4]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_080057B4
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_080057F4
	mov r5, #0
	STR r0, [r4, #4]
	cmp r0, #0
	movne r0, #2
	mov r7, r5
	bne _08005818
	LDR r0, [r4, #0x18]
	cmp r0, #0
	movne r0, #7
_08005818
	STRB r0, [r4]
	b _08005544
_08005820
	cmp r8, #0
	bne _08005868
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005868
	LDR r0, [sp, #0x28]
	cmp r0, #0
	bne _08005958
	LDR r2, [r4, #0x2c]
	cmp r2, sl
	bne _080058AC
	LDR r0, [r4, #0x30]
	LDR r1, [r4, #0x28]
	cmp r0, r1
	beq _080058AC
	mov sl, r1
	subhi r0, r0, sl
	subhi r1, r0, #1
	subls r1, r2, sl
	STR r1, [sp, #0x28]
	cmp r1, #0
	bne _08005958
_080058AC
	mov r2, fp
	mov r1, r6
	STR sl, [r4, #0x34]
	mov r0, r4
	bl _08007F18
	add sl, r4, #0x30
	LDMIA sl, {r1, sl}
	cmp r1, sl
	LDRLS r2, [r4, #0x2c]
	subhi r2, r1, sl
	subhi r2, r2, #1
	subls r2, r2, sl
	STR r2, [sp, #0x28]
	LDR ip, [r4, #0x2c]
	cmp ip, sl
	bne _0800590C
	LDR r3, [r4, #0x28]
	cmp r1, r3
	beq _0800590C
	mov sl, r3
	subhi r1, r1, sl
	subhi r1, r1, #1
	subls r1, ip, sl
	STR r1, [sp, #0x28]
_0800590C
	LDR r1, [sp, #0x28]
	cmp r1, #0
	bne _08005958
	add r1, r4, #0x1c
	STMIA r1, {r5, r7}
	STR r8, [r6, #4]
	LDR r2, [r6]
	LDR r1, [r6, #8]
	sub r2, sb, r2
	add r1, r1, r2
	STR r1, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0x34
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005958
	LDR r0, [r4, #4]
	LDR r1, [sp, #0x28]
	STR r0, [sp, #0x2c]
	cmp r0, r8
	STRHI r8, [sp, #0x2c]
	LDR r0, [sp, #0x2c]
	mov fp, #0
	cmp r0, r1
	LDRHI r0, [sp, #0x28]
	mov r1, sb
	STRHI r0, [sp, #0x2c]
	LDR r2, [sp, #0x2c]
	mov r0, sl
	bl sub_803BF10
	LDR r0, [sp, #0x2c]
	LDR r1, [sp, #0x28]
	add sb, sb, r0
	sub r1, r1, r0
	STR r1, [sp, #0x28]
	sub r8, r8, r0
	add sl, sl, r0
	LDR r0, [r4, #4]
	LDR r1, [sp, #0x2c]
	subs r0, r0, r1
	STR r0, [r4, #4]
	bne _08005544
	LDR r0, [r4, #0x18]
	cmp r0, #0
	movne r0, #7
	STRB r0, [r4]
	b _08005544
_080059D4
	cmp r5, #0xe
	bhs _08005A00
_080059DC
	cmp r8, #0
	beq _08005A70
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #0xe
	blo _080059DC
_08005A00
	MOV r0, r7, LSL #0x12
	MOV r0, r0, LSR #0x12
	and r1, r0, #0x1f
	cmp r1, #0x1d
	STR r0, [r4, #4]
	bhi _08005A28
	MOV r0, r0, LSL #0x16
	mov r2, #0x1d
	cmp r2, r0, lsr #27
	bhs _08005AB0
_08005A28
	mov r0, #9
	STRB r0, [r4]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_08005A70
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005AB0
	add r0, r1, r0, lsr #27
	add r0, r0, #0x100
	add r0, r0, #2
	MOV r1, r0, LSL #2
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x1c]
	mov r2, #4
	mov lr, pc
	bx r3
	STR r0, [r4, #0xc]
	cmp r0, #0
	bne _08005B20
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #3
	b _08007F18
_08005B20
	mov r0, #0
	STR r0, [r4, #8]
	mov r0, #4
	STRB r0, [r4]
	MOV r7, r7, LSR #0xe
	sub r5, r5, #0xe
_08005B38
	LDR r1, [r4, #4]
	LDR r0, [r4, #8]
	mov r3, #4
	add r1, r3, r1, lsr #10
	cmp r0, r1
	bhs _08005BB8
	LDR ip, _080062EC ;@ =gUnknown_080495B8
_08005B54
	cmp r5, #3
	bhs _08005B80
_08005B5C
	cmp r8, #0
	beq _08005BD0
	LDRB r0, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r0, lsl r5
	add r5, r5, #8
	cmp r5, #3
	blo _08005B5C
_08005B80
	LDR r0, [r4, #8]
	and r1, r7, #7
	add r2, r0, #1
	STR r2, [r4, #8]
	LDR r0, [ip, r0, lsl #2]
	LDR r2, [r4, #0xc]
	MOV r7, r7, LSR #3
	STR r1, [r2, r0, lsl #2]
	LDR r1, [r4, #4]
	LDR r0, [r4, #8]
	add r1, r3, r1, lsr #10
	cmp r0, r1
	sub r5, r5, #3
	blo _08005B54
_08005BB8
	LDR r0, [r4, #8]
	cmp r0, #0x13
	bhs _08005C34
	LDR r3, _080062EC ;@ =gUnknown_080495B8
	mov r1, #0
	b _08005C10
_08005BD0
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005C10
	LDR r0, [r4, #8]
	add r2, r0, #1
	STR r2, [r4, #8]
	LDR r0, [r3, r0, lsl #2]
	LDR r2, [r4, #0xc]
	STR r1, [r2, r0, lsl #2]
	LDR r0, [r4, #8]
	cmp r0, #0x13
	blo _08005C10
_08005C34
	mov r0, #7
	STR r0, [r4, #0x10]
	STR r6, [sp]
	LDR r0, [r4, #0xc]
	LDR r3, [r4, #0x24]
	add r2, r4, #0x14
	add r1, r4, #0x10
	bl sub_8007C78
	cmp r0, #0
	beq _08005CC8
	mov fp, r0
	cmn r0, #3
	bne _08005C88
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #9
	STRB r0, [r4]
_08005C88
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005CC8
	mov r0, #0
	STR r0, [r4, #8]
	mov r0, #5
	STRB r0, [r4]
	b _08005EE4
_08005CDC
	LDR r0, [r4, #0x10]
	cmp r5, r0
	bhs _08005D0C
_08005CE8
	cmp r8, #0
	beq _08005D4C
	LDRB r1, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, r1, lsl r5
	add r5, r5, #8
	cmp r5, r0
	blo _08005CE8
_08005D0C
	LDR lr, _080062F0 ;@ =gUnknown_0804A8F0
	LDR r1, [r4, #0x14]
	LDR r0, [lr, r0, lsl #2]
	and r0, r0, r7
	add r0, r1, r0, lsl #3
	LDRB r1, [r0, #1]
	LDR r2, [r0, #4]
	cmp r2, #0x10
	bhs _08005D8C
	add r0, r3, #1
	STR r0, [r4, #8]
	LDR r0, [r4, #0xc]
	MOV r7, r7, LSR r1
	sub r5, r5, r1
	STR r2, [r0, r3, lsl #2]
	b _08005EE4
_08005D4C
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005D8C
	cmp r2, #0x12
	subne r0, r2, #0xe
	moveq r0, #7
	movne ip, #3
	moveq ip, #0xb
	add lr, r1, r0
	cmp lr, r5
	STR ip, [sp, #0x24]
	bls _08005DD4
_08005DB0
	cmp r8, #0
	beq _08005E7C
	LDRB ip, [sb], #1
	mov fp, #0
	sub r8, r8, #1
	orr r7, r7, ip, lsl r5
	add r5, r5, #8
	cmp lr, r5
	bhi _08005DB0
_08005DD4
	MOV ip, r7, LSR r1
	LDR lr, _080062F0 ;@ =gUnknown_0804A8F0
	sub r1, r5, r1
	LDR lr, [lr, r0, lsl #2]
	LDR r5, [sp, #0x24]
	and lr, lr, ip
	add lr, lr, r5
	sub r5, r1, r0
	MOV r7, ip, LSR r0
	LDR r0, [sp, #0x30]
	add r1, r3, lr
	cmp r0, r1
	blo _08005E1C
	cmp r2, #0x10
	movne r1, #0
	bne _08005EC8
	cmp r3, #1
	bhs _08005EBC
_08005E1C
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #9
	STRB r0, [r4]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_08005E7C
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	mov r2, fp
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08005EBC
	LDR r0, [r4, #0xc]
	add r0, r0, r3, lsl #2
	LDR r1, [r0, #-4]
_08005EC8
	mov r0, r3
	LDR r2, [r4, #0xc]
	add r3, r3, #1
	subs lr, lr, #1
	STR r1, [r2, r0, lsl #2]
	bne _08005EC8
	STR r3, [r4, #8]
_08005EE4
	LDR r0, [r4, #4]
	and r1, r0, #0x1f
	MOV r0, r0, LSL #0x16
	add r0, r1, r0, lsr #27
	add r0, r0, #0x100
	add r0, r0, #2
	STR r0, [sp, #0x30]
	LDR r3, [r4, #8]
	cmp r0, r3
	bhi _08005CDC
	mov r0, #0
	STR r0, [r4, #0x14]
	mov r0, #9
	STR r0, [sp, #0x24]
	mov r0, #6
	STR r0, [sp, #0x20]
	LDR r2, [r4, #0x24]
	LDR ip, [r4, #4]
	add r0, sp, #0x1c
	add r1, sp, #0x18
	stmib sp, {r0, r1, r2, r6}
	mov r1, #1
	MOV r0, ip, LSL #0x16
	add r1, r1, r0, lsr #27
	add r3, sp, #0x20
	STR r3, [sp]
	and r0, ip, #0x1f
	add r0, r0, #0x100
	add r0, r0, #1
	LDR r2, [r4, #0xc]
	add r3, sp, #0x24
	bl sub_8007D44
	STR r0, [sp, #0x2c]
	cmp r0, #0
	beq _08005FE0
	LDR r0, [sp, #0x2c]
	cmn r0, #3
	bne _08005F9C
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #9
	STRB r0, [r4]
_08005F9C
	LDR r2, [sp, #0x2c]
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	bl _08007F18
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08005FE0
	STR r6, [sp]
	LDR r1, [sp, #0x20]
	LDR r0, [sp, #0x24]
	LDR r2, [sp, #0x1c]
	LDR r3, [sp, #0x18]
	bl sub_80062F4
	cmp r0, #0
	bne _08006044
	add r1, r4, #0x1c
	STMIA r1, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	mvn r2, #3
	bl _08007F18
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08006044
	STR r0, [r4, #4]
	LDR r1, [r4, #0xc]
	LDR r0, [r6, #0x24]
	LDR r3, [r6, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
	mov r0, #6
	STRB r0, [r4]
_08006068
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r0, r4
	mov r1, r6
	mov r2, fp
	bl sub_8006350
	cmp r0, #1
	beq _080060C0
	mov r2, r0
	mov r0, r4
	mov r1, r6
	add sp, sp, #0x34
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_080060C0
	mov fp, #0
	mov r1, r6
	LDR r0, [r4, #4]
	bl sub_8006BA4
	add sl, r4, #0x30
	LDMIA sl, {r0, sl}
	LDR r8, [r6, #4]
	LDR sb, [r6]
	add r7, r4, #0x1c
	LDMIA r7, {r5, r7}
	cmp r0, sl
	LDRLS r0, [r4, #0x2c]
	subls r1, r0, sl
	subhi r0, r0, sl
	subhi r1, r0, #1
	STR r1, [sp, #0x28]
	LDR r0, [r4, #0x18]
	cmp r0, #0
	STREQB r0, [r4]
	beq _08005544
	mov r0, #7
	STRB r0, [r4]
_08006118
	mov r2, fp
	mov r1, r6
	STR sl, [r4, #0x34]
	mov r0, r4
	bl _08007F18
	add sl, r4, #0x30
	LDMIA sl, {r1, sl}
	cmp r1, sl
	beq _0800617C
	add r1, r4, #0x1c
	STMIA r1, {r5, r7}
	STR r8, [r6, #4]
	LDR r2, [r6]
	LDR r1, [r6, #8]
	sub r2, sb, r2
	add r1, r1, r2
	STR r1, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0x34
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_0800617C
	mov r0, #8
	STRB r0, [r4]
_08006184
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #1
	b _08007F18
_080061C4
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_08006204
	add r0, r4, #0x1c
	STMIA r0, {r5, r7}
	STR r8, [r6, #4]
	LDR r1, [r6]
	LDR r0, [r6, #8]
	sub r1, sb, r1
	add r0, r0, r1
	STR r0, [r6, #8]
	STR sb, [r6]
	STR sl, [r4, #0x34]
	add sp, sp, #0x34
	mov r0, r4
	mov r1, r6
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #1
	b _08007F18

	arm_func_start sub_8006244
sub_8006244 ;@ 0x08006244
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #0
	bl sub_8005380
	LDR r1, [r5, #0x28]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #3
	mov lr, pc
	bx r3
	LDR r1, [r5, #0x24]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #2
	mov lr, pc
	bx r3
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_80062AC
sub_80062AC ;@ 0x080062AC
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	mov r5, r2
	bl sub_803BF10
	LDR r0, [r4, #0x28]
	add r0, r0, r5
	STR r0, [r4, #0x34]
	STR r0, [r4, #0x30]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr
_080062D8
	LDRB r0, [r0]
	cmp r0, #1
	movne r0, #0
	moveq r0, #1
	bx lr
	ALIGN
_080062EC DCDU gUnknown_080495B8
_080062F0 DCDU gUnknown_0804A8F0

	arm_func_start sub_80062F4
sub_80062F4 ;@ 0x080062F4
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	LDR r1, [sp, #0x18]
	mov r7, r3
	LDR r3, [r1, #0x1c]!
	mov r4, r0
	LDR r0, [r1, #8]
	mov r6, r2
	mov r2, #5
	mov r1, #0x1c
	mov lr, pc
	bx r3
	cmp r0, #0
	LDMEQFD SP!, {r3, r4, r5, r6, r7, lr}
	bxeq lr
	mov r1, #0
	STRB r1, [r0]
	STRB r4, [r0, #0x10]
	STRB r5, [r0, #0x11]
	add r1, r0, #0x14
	STMIA r1, {r6, r7}
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	arm_func_start sub_8006350
sub_8006350 ;@ 0x08006350
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov r0, r2
	LDR sb, [r1, #4]
	LDR sl, [r1]
	mov r7, r1
	LDR r1, [r4, #0x34]
	LDR r2, [r4, #0x30]
	LDR r6, [r4, #4]
	add r8, r4, #0x1c
	LDMIA r8, {r5, r8}
	cmp r2, r1
	LDRLS r2, [r4, #0x2c]
	sub sp, sp, #0xc
	subls r3, r2, r1
	subhi r2, r2, r1
	subhi r3, r2, #1
_08006394
	LDRB r2, [r6]
	cmp r2, #9
	addls pc, pc, r2, lsl #2
jmptb_080063A0
	b _08006B64
jmptb_080063A4
	b _080063CC
jmptb_080063A8
	b _0800647C
jmptb_080063AC
	b _080065C4
jmptb_080063B0
	b _0800662C
jmptb_080063B4
	b _0800678C
jmptb_080063B8
	b _080067E4
jmptb_080063BC
	b _08006970
jmptb_080063C0
	b _08006A68
jmptb_080063C4
	b _08006AE4
jmptb_080063C8
	b _08006B24
_080063CC
	subs ip, r3, #0x100
	subhss ip, ip, #2
	cmphs sb, #0xa
	blo _08006464
	STR r5, [r4, #0x1c]
	STR r8, [r4, #0x20]
	STR sb, [r7, #4]
	LDR r2, [r7]
	LDR r0, [r7, #8]
	sub r2, sl, r2
	add r0, r0, r2
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	STMIA sp, {r4, r7}
	add r3, r6, #0x14
	LDMIA r3, {r2, r3}
	LDRB r1, [r6, #0x11]
	LDRB r0, [r6, #0x10]
	bl sub_8006BC0
	LDR r1, [r4, #0x34]
	LDR r2, [r4, #0x30]
	LDR sb, [r7, #4]
	LDR sl, [r7]
	add r8, r4, #0x1c
	LDMIA r8, {r5, r8}
	cmp r2, r1
	LDRLS r2, [r4, #0x2c]
	subls r3, r2, r1
	subhi r2, r2, r1
	subhi r3, r2, #1
	cmp r0, #0
	beq _08006464
	cmp r0, #1
	movne r2, #9
	moveq r2, #7
	STRB r2, [r6]
	b _08006394
_08006464
	LDRB r2, [r6, #0x10]
	STR r2, [r6, #0xc]
	LDR r2, [r6, #0x14]
	STR r2, [r6, #8]
	mov r2, #1
	STRB r2, [r6]
_0800647C
	LDR r2, [r6, #0xc]
	cmp r5, r2
	bhs _080064AC
_08006488
	cmp sb, #0
	beq _080064EC
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _08006488
_080064AC
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #8]
	LDR r2, [lr, r2, lsl #2]
	and r2, r2, r8
	add r2, ip, r2, lsl #3
	LDRB ip, [r2, #1]
	MOV r8, r8, LSR ip
	sub r5, r5, ip
	LDRB ip, [r2]
	cmp ip, #0
	bne _0800652C
	LDR r2, [r2, #4]
	STR r2, [r6, #8]
	mov r2, #6
	STRB r2, [r6]
	b _08006394
_080064EC
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_0800652C
	tst ip, #0x10
	beq _08006550
	and ip, ip, #0xf
	STR ip, [r6, #8]
	LDR r2, [r2, #4]
	STR r2, [r6, #4]
	mov r2, #2
	STRB r2, [r6]
	b _08006394
_08006550
	tst ip, #0x40
	bne _0800656C
	STR ip, [r6, #0xc]
	LDR ip, [r2, #4]
	add r2, r2, ip, lsl #3
	STR r2, [r6, #8]
	b _08006394
_0800656C
	tst ip, #0x20
	movne r2, #7
	STRNEB r2, [r6]
	bne _08006394
	mov r0, #9
	STRB r0, [r6]
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_080065C4
	LDR r2, [r6, #8]
	cmp r5, r2
	bhs _080065F4
_080065D0
	cmp sb, #0
	beq _0800663C
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _080065D0
_080065F4
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #4]
	LDR lr, [lr, r2, lsl #2]
	sub r5, r5, r2
	and lr, lr, r8
	add ip, ip, lr
	STR ip, [r6, #4]
	MOV r8, r8, LSR r2
	LDRB r2, [r6, #0x11]
	STR r2, [r6, #0xc]
	LDR r2, [r6, #0x18]
	STR r2, [r6, #8]
	mov r2, #3
	STRB r2, [r6]
_0800662C
	LDR r2, [r6, #0xc]
	cmp r5, r2
	bhs _080066A0
	b _0800667C
_0800663C
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_0800667C
	cmp sb, #0
	beq _080066E8
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _0800667C
_080066A0
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #8]
	LDR r2, [lr, r2, lsl #2]
	and r2, r2, r8
	add r2, ip, r2, lsl #3
	LDRB ip, [r2, #1]
	MOV r8, r8, LSR ip
	sub r5, r5, ip
	LDRB ip, [r2]
	tst ip, #0x10
	beq _08006728
	and ip, ip, #0xf
	STR ip, [r6, #8]
	LDR r2, [r2, #4]
	STR r2, [r6, #0xc]
	mov r2, #4
	STRB r2, [r6]
	b _08006394
_080066E8
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08006728
	tst ip, #0x40
	bne _08006744
	STR ip, [r6, #0xc]
	LDR ip, [r2, #4]
	add r2, r2, ip, lsl #3
	STR r2, [r6, #8]
	b _08006394
_08006744
	mov r0, #9
	STRB r0, [r6]
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_0800678C
	LDR r2, [r6, #8]
	cmp r5, r2
	bhs _080067BC
_08006798
	cmp sb, #0
	beq _08006804
	LDRB ip, [sl], #1
	mov r0, #0
	sub sb, sb, #1
	orr r8, r8, ip, lsl r5
	add r5, r5, #8
	cmp r5, r2
	blo _08006798
_080067BC
	LDR lr, _08006BBC ;@ =gUnknown_0804A8F0
	LDR ip, [r6, #0xc]
	LDR lr, [lr, r2, lsl #2]
	sub r5, r5, r2
	and lr, lr, r8
	add ip, ip, lr
	MOV r8, r8, LSR r2
	mov r2, #5
	STR ip, [r6, #0xc]
	STRB r2, [r6]
_080067E4
	LDR r2, [r6, #0xc]
	sub fp, r1, r2
	LDR r2, [r4, #0x28]
	cmp r2, fp
	bls _08006850
	LDR ip, [r4, #0x2c]
	sub ip, ip, r2
	b _08006844
_08006804
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08006844
	add fp, ip, fp
	cmp r2, fp
	bhi _08006844
_08006850
	LDR r2, [r6, #4]
	cmp r2, #0
	beq _08006964
_0800685C
	cmp r3, #0
	bne _08006938
	LDR ip, [r4, #0x2c]
	cmp ip, r1
	bne _08006898
	LDR r2, [r4, #0x30]
	LDR r3, [r4, #0x28]
	cmp r2, r3
	beq _08006898
	mov r1, r3
	subhi r2, r2, r1
	subhi r3, r2, #1
	subls r3, ip, r1
	cmp r3, #0
	bne _08006938
_08006898
	mov r2, r0
	STR r1, [r4, #0x34]
	mov r1, r7
	mov r0, r4
	bl _08007F18
	LDR r1, [r4, #0x34]
	LDR ip, [r4, #0x30]
	mov r2, r0
	cmp ip, r1
	LDRLS r0, [r4, #0x2c]
	subls r3, r0, r1
	subhi r0, ip, r1
	subhi r3, r0, #1
	LDR r0, [r4, #0x2c]
	cmp r0, r1
	bne _080068F4
	LDR lr, [r4, #0x28]
	cmp ip, lr
	beq _080068F4
	mov r1, lr
	subls r3, r0, r1
	subhi r0, ip, r1
	subhi r3, r0, #1
_080068F4
	cmp r3, #0
	bne _08006938
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08006938
	LDRB r2, [fp], #1
	mov r0, #0
	sub r3, r3, #1
	STRB r2, [r1], #1
	LDR r2, [r4, #0x2c]
	cmp r2, fp
	LDR r2, [r6, #4]
	LDREQ fp, [r4, #0x28]
	subs r2, r2, #1
	STR r2, [r6, #4]
	bne _0800685C
_08006964
	mov r2, #0
	STRB r2, [r6]
	b _08006394
_08006970
	cmp r3, #0
	bne _08006A4C
	LDR ip, [r4, #0x2c]
	cmp ip, r1
	bne _080069AC
	LDR r2, [r4, #0x30]
	LDR r3, [r4, #0x28]
	cmp r2, r3
	beq _080069AC
	mov r1, r3
	subhi r2, r2, r1
	subhi r3, r2, #1
	subls r3, ip, r1
	cmp r3, #0
	bne _08006A4C
_080069AC
	mov r2, r0
	STR r1, [r4, #0x34]
	mov r1, r7
	mov r0, r4
	bl _08007F18
	LDR r1, [r4, #0x34]
	LDR ip, [r4, #0x30]
	cmp ip, r1
	LDRLS r2, [r4, #0x2c]
	LDR fp, [r4, #0x2c]
	subhi r2, ip, r1
	subhi r3, r2, #1
	subls r3, r2, r1
	cmp fp, r1
	bne _08006A04
	LDR lr, [r4, #0x28]
	cmp ip, lr
	beq _08006A04
	mov r1, lr
	subhi r2, ip, r1
	subhi r3, r2, #1
	subls r3, fp, r1
_08006A04
	cmp r3, #0
	bne _08006A4C
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08006A4C
	LDR r2, [r6, #8]
	mov r0, #0
	STRB r2, [r1], #1
	mov r2, #0
	STRB r2, [r6]
	sub r3, r3, #1
	b _08006394
_08006A68
	cmp r5, #7
	mov r2, r0
	STR r1, [r4, #0x34]
	mov r1, r7
	mov r0, r4
	subhi r5, r5, #8
	addhi sb, sb, #1
	subhi sl, sl, #1
	bl _08007F18
	LDR r1, [r4, #0x34]
	LDR r2, [r4, #0x30]
	cmp r2, r1
	beq _08006ADC
	add r2, r4, #0x1c
	STMIA r2, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r2, [r7, #8]
	sub r3, sl, r3
	add r2, r2, r3
	STR r2, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	mov r2, r0
	mov r0, r4
	add sp, sp, #0xc
	mov r1, r7
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	b _08007F18
_08006ADC
	mov r0, #8
	STRB r0, [r6]
_08006AE4
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r2, #1
	b _08007F18
_08006B24
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #2
	b _08007F18
_08006B64
	add r0, r4, #0x1c
	STMIA r0, {r5, r8}
	STR sb, [r7, #4]
	LDR r3, [r7]
	LDR r0, [r7, #8]
	sub r3, sl, r3
	add r0, r0, r3
	STR r0, [r7, #8]
	STR sl, [r7]
	STR r1, [r4, #0x34]
	add sp, sp, #0xc
	mov r1, r7
	mov r0, r4
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r2, #1
	b _08007F18

	arm_func_start sub_8006BA4
sub_8006BA4 ;@ 0x08006BA4
	mov ip, r0
	LDR r3, [r1, #0x20]!
	LDR r0, [r1, #4]
	mov r1, ip
	mov r2, #5
	bx r3
	ALIGN
_08006BBC DCDU gUnknown_0804A8F0

	arm_func_start sub_8006BC0
sub_8006BC0 ;@ 0x08006BC0
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	LDR r7, [sp, #0x3c]
	LDR r8, [sp, #0x38]
	LDR fp, _08006F8C ;@ =gUnknown_0804A8F0
	LDR r2, [r8, #0x34]
	LDR r3, [r8, #0x30]
	LDR r5, [r7, #4]
	cmp r3, r2
	LDRLS r3, [r8, #0x2c]
	LDR r6, [r7]
	LDR r4, [r8, #0x20]
	LDR lr, [r8, #0x1c]
	LDR r0, [fp, r0, lsl #2]
	subls sb, r3, r2
	STR r0, [sp]
	LDR r0, [fp, r1, lsl #2]
	subhi r3, r3, r2
	subhi sb, r3, #1
_08006C0C
	cmp lr, #0x14
	bhs _08006C2C
_08006C14
	LDRB r1, [r6], #1
	sub r5, r5, #1
	orr r4, r4, r1, lsl lr
	add lr, lr, #8
	cmp lr, #0x14
	blo _08006C14
_08006C2C
	LDR r1, [sp]
	LDR r3, [sp, #0xc]
	and r1, r4, r1
	add r3, r3, r1, lsl #3
	LDRB r1, [r3]
	cmp r1, #0
	LDRNE fp, _08006F8C ;@ =gUnknown_0804A8F0
	bne _08006C68
	LDRB r1, [r3, #1]
	sub sb, sb, #1
	MOV r4, r4, LSR r1
	sub lr, lr, r1
	LDR r1, [r3, #4]
	STRB r1, [r2], #1
	b _08006E80
_08006C68
	LDRB ip, [r3, #1]
	tst r1, #0x10
	MOV r4, r4, LSR ip
	sub lr, lr, ip
	beq _08006E40
	and r1, r1, #0xf
	LDR r3, [r3, #4]
	LDR ip, [fp, r1, lsl #2]
	and ip, ip, r4
	add r3, r3, ip
	MOV ip, r4, LSR r1
	sub r1, lr, r1
	cmp r1, #0xf
	bhs _08006CB8
_08006CA0
	LDRB lr, [r6], #1
	sub r5, r5, #1
	orr ip, ip, lr, lsl r1
	add r1, r1, #8
	cmp r1, #0xf
	blo _08006CA0
_08006CB8
	LDR r4, [sp, #0x10]
	and lr, ip, r0
	add lr, r4, lr, lsl #3
	LDRB r4, [lr]
_08006CC8
	LDRB sl, [lr, #1]
	tst r4, #0x10
	MOV ip, ip, LSR sl
	sub r1, r1, sl
	beq _08006DC8
	and sl, r4, #0xf
	cmp r1, sl
	bhs _08006D00
_08006CE8
	LDRB r4, [r6], #1
	sub r5, r5, #1
	orr ip, ip, r4, lsl r1
	add r1, r1, #8
	cmp r1, sl
	blo _08006CE8
_08006D00
	LDR r4, [fp, sl, lsl #2]
	LDR lr, [lr, #4]
	and r4, r4, ip
	add fp, lr, r4
	MOV r4, ip, LSR sl
	LDR ip, [r8, #0x28]
	sub lr, r1, sl
	sub r1, r2, fp
	cmp ip, r1
	sub sb, sb, r3
	bls _08006DA0
	LDR fp, [r8, #0x2c]
	sub sl, fp, ip
_08006D34
	add r1, sl, r1
	cmp ip, r1
	bhi _08006D34
	sub ip, fp, r1
	cmp r3, ip
	bls _08006D78
	sub r3, r3, ip
_08006D50
	LDRB sl, [r1], #1
	subs ip, ip, #1
	STRB sl, [r2], #1
	bne _08006D50
	LDR r1, [r8, #0x28]
_08006D64
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne _08006D64
	b _08006E80
_08006D78
	LDRB ip, [r1], #1
	sub r3, r3, #2
	STRB ip, [r2], #1
	LDRB ip, [r1], #1
	STRB ip, [r2], #1
_08006D8C
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne _08006D8C
	b _08006E80
_08006DA0
	LDRB ip, [r1], #1
	sub r3, r3, #2
	STRB ip, [r2], #1
	LDRB ip, [r1], #1
	STRB ip, [r2], #1
_08006DB4
	LDRB ip, [r1], #1
	subs r3, r3, #1
	STRB ip, [r2], #1
	bne _08006DB4
	b _08006E80
_08006DC8
	tst r4, #0x40
	bne _08006DEC
	LDR sl, [lr, #4]
	LDR r4, [fp, r4, lsl #2]
	add lr, lr, sl, lsl #3
	and r4, r4, ip
	add lr, lr, r4, lsl #3
	LDRB r4, [lr]
	b _08006CC8
_08006DEC
	LDR r0, [r7, #4]
	sub r0, r0, r5
	cmp r0, r1, lsr #3
	MOVHI r0, r1, LSR #3
	add r3, r5, r0
	sub lr, r6, r0
	sub r0, r1, r0, lsl #3
	add r1, r8, #0x1c
	STMIA r1, {r0, ip}
	STR r3, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, lr, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR lr, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r0, #2
	bx lr
_08006E40
	tst r1, #0x40
	bne _08006EE4
	LDR ip, [r3, #4]
	LDR r1, [fp, r1, lsl #2]
	add r3, r3, ip, lsl #3
	and r1, r1, r4
	add r3, r3, r1, lsl #3
	LDRB r1, [r3]
	cmp r1, #0
	bne _08006C68
	LDRB r1, [r3, #1]
	sub sb, sb, #1
	MOV r4, r4, LSR r1
	sub lr, lr, r1
	LDR r1, [r3, #4]
	STRB r1, [r2], #1
_08006E80
	subs ip, sb, #0x100
	subhss ip, ip, #2
	cmphs r5, #0xa
	bhs _08006C0C
	LDR r0, [r7, #4]
	sub r0, r0, r5
	cmp r0, lr, lsr #3
	MOVHI r0, lr, LSR #3
	add r1, r5, r0
	sub r3, r6, r0
	sub r0, lr, r0, lsl #3
	add r5, r8, #0x1c
	STMIA r5, {r0, r4}
	STR r1, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, r3, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR r3, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr
_08006EE4
	LDR r0, [r7, #4]
	tst r1, #0x20
	sub r0, r0, r5
	beq _08006F40
	cmp r0, lr, lsr #3
	MOVHI r0, lr, LSR #3
	add r1, r5, r0
	sub r3, r6, r0
	sub r0, lr, r0, lsl #3
	add r5, r8, #0x1c
	STMIA r5, {r0, r4}
	STR r1, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, r3, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR r3, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #1
	bx lr
_08006F40
	cmp r0, lr, lsr #3
	MOVHI r0, lr, LSR #3
	add r1, r5, r0
	sub r3, r6, r0
	sub r0, lr, r0, lsl #3
	add r5, r8, #0x1c
	STMIA r5, {r0, r4}
	STR r1, [r7, #4]
	LDR r1, [r7]
	LDR r0, [r7, #8]
	sub r1, r3, r1
	add r0, r0, r1
	STR r0, [r7, #8]
	STR r3, [r7]
	STR r2, [r8, #0x34]
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvn r0, #2
	bx lr
	ALIGN
_08006F8C DCDU gUnknown_0804A8F0

	arm_func_start sub_8006F90
sub_8006F90 ;@ 0x08006F90
	STMFD SP!, {r3, lr}
	movs r1, r0
	LDRNE r0, [r1, #0x18]
	cmpne r0, #0
	LDMEQFD SP!, {r3, lr}
	mvneq r0, #1
	bxeq lr
	mov r2, #0
	STR r2, [r1, #0x14]
	STR r2, [r1, #8]
	LDR r2, [r0, #0xc]
	cmp r2, #0
	movne r2, #7
	STRB r2, [r0]
	LDR r0, [r1, #0x18]
	mov r2, #0
	LDR r0, [r0, #0x14]
	bl sub_8005380
	LDMFD SP!, {r3, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8006FE4
sub_8006FE4 ;@ 0x08006FE4
	STMFD SP!, {r4, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r1, [r4, #0x20]
	cmpne r1, #0
	LDMEQFD SP!, {r4, lr}
	mvneq r0, #1
	bxeq lr
	LDR r0, [r0, #0x14]
	cmp r0, #0
	movne r1, r4
	blne sub_8006244
	LDR r0, [r4, #0x24]
	LDR r1, [r4, #0x18]
	LDR r3, [r4, #0x20]
	mov r2, #6
	mov lr, pc
	bx r3
	mov r0, #0
	STR r0, [r4, #0x18]
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_8007040
sub_8007040 ;@ 0x08007040
	STMFD SP!, {r4, r5, r6, lr}
	LDR r3, [r0, #0x1c]
	mov r4, r0
	LDR r0, [r0, #0x24]
	add lr, pc, #0xC ;@ =loc_08007064
	mov r5, #0xf
	mov r2, #6
	mov r1, #0x18
	bx r3
loc_08007064
	STR r0, [r4, #0x18]
	cmp r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #3
	bxeq lr
	mov r6, #0
	STR r6, [r0, #0x14]
	LDR r0, [r4, #0x18]
	mov r2, #0x8000
	STR r6, [r0, #0xc]
	LDR r0, [r4, #0x18]
	mov r1, #0
	STR r5, [r0, #0x10]
	mov r0, r4
	bl sub_80053F8
	LDR r1, [r4, #0x18]
	cmp r0, #0
	STR r0, [r1, #0x14]
	bne _080070F0
	cmp r4, #0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r0, [r4, #0x20]
	cmpne r0, #0
	beq _080070E4
	LDR r0, [r4, #0x24]
	LDR r1, [r4, #0x18]
	LDR r3, [r4, #0x20]
	mov r2, #6
	mov lr, pc
	bx r3
	STR r6, [r4, #0x18]
_080070E4
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #3
	bx lr
_080070F0
	mov r0, r4
	bl sub_8006F90
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8007104
sub_8007104 ;@ 0x08007104
	STMFD SP!, {r4, r5, r6, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r0, [r4]
	cmpne r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #1
	bxeq lr
	cmp r1, #4
	movne r6, #0
	mvneq r6, #4
	mvn r5, #4
_08007138
	LDR r0, [r4, #0x18]
	LDRB r0, [r0]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
jmpt_08007148
	b _08007658
jmpt_0800714C
	b _08007184
jmpt_08007150
	b _08007228
jmpt_08007154
	b _080072C0
jmpt_08007158
	b _08007314
jmpt_0800715C
	b _08007370
jmpt_08007160
	b _080073CC
jmpt_08007164
	b _0800742C
jmpt_08007168
	b _08007450
jmpt_0800716C
	b _080074E0
jmpt_08007170
	b _08007534
jmpt_08007174
	b _08007590
jmpt_08007178
	b _080075EC
jmpt_0800717C
	b _08007640
jmpt_08007180
	b _0800764C
_08007184
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	mov r5, r6
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	add r1, r0, #1
	STR r1, [r4]
	LDRB r1, [r0]
	LDR r0, [r4, #0x18]
	STR r1, [r0, #4]
	and r0, r1, #0xf
	cmp r0, #8
	beq _080071F0
	LDR r1, [r4, #0x18]
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STR r0, [r1, #4]
	b _08007138
_080071F0
	mov r2, #8
	LDR r0, [r4, #0x18]
	add r1, r2, r1, lsr #4
	LDR r2, [r0, #0x10]
	cmp r1, r2
	bls _08007220
	mov r1, #0xd
	STRB r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STR r0, [r1, #4]
	b _08007138
_08007220
	mov r1, #1
	STRB r1, [r0]
_08007228
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	LDR r3, _080077E0 ;@ =0x42108421
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	mov ip, #0
	add r1, r0, #1
	STR r1, [r4]
	LDR r1, [r4, #0x18]
	LDRB r0, [r0]
	LDR r2, [r1, #4]
	mov r5, r6
	add r2, r0, r2, lsl #8
	umlal r3, ip, r2, r3
	MOV r3, ip, LSR #3
	sub r3, r3, r3, lsl #5
	adds r2, r3, r2
	beq _080072A4
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STR r0, [r1, #4]
	b _08007138
_080072A4
	tst r0, #0x20
	moveq r0, #7
	STREQB r0, [r1]
	beq _08007138
	LDR r1, [r4, #0x18]
	mov r0, #2
	STRB r0, [r1]
_080072C0
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	mov r5, r6
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	add r1, r0, #1
	STR r1, [r4]
	LDRB r0, [r0]
	LDR r1, [r4, #0x18]
	MOV r0, r0, LSL #0x18
	STR r0, [r1, #8]
	LDR r1, [r4, #0x18]
	mov r0, #3
	STRB r0, [r1]
_08007314
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #16
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #4
	STRB r0, [r1]
_08007370
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #8
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #5
	STRB r0, [r1]
_080073CC
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r1, r1, #1
	LDR r0, [r4, #0x18]
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0, #8]!
	add r1, r1, r2
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #6
	STRB r0, [r1]
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #2
	bx lr
_0800742C
	LDR r1, [r4, #0x18]
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #0
	STR r0, [r1, #4]
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #1
	bx lr
_08007450
	LDR r0, [r4, #0x18]
	mov r2, r5
	mov r1, r4
	LDR r0, [r0, #0x14]
	bl sub_8005504
	mov r5, r0
	cmn r0, #3
	bne _0800748C
	LDR r1, [r4, #0x18]
	mov r0, #0xd
	STRB r0, [r1]
	LDR r1, [r4, #0x18]
	mov r0, #0
	STR r0, [r1, #4]
	b _08007138
_0800748C
	cmp r5, #0
	moveq r5, r6
	cmp r5, #1
	movne r0, r5
	LDMNEFD SP!, {r4, r5, r6, lr}
	bxne lr
	LDR r0, [r4, #0x18]
	mov r5, r6
	add r2, r0, #4
	LDR r0, [r0, #0x14]
	mov r1, r4
	bl sub_8005380
	LDR r0, [r4, #0x18]
	LDR r1, [r0, #0xc]
	cmp r1, #0
	movne r1, #0xc
	STRNEB r1, [r0]
	bne _08007138
	LDR r1, [r4, #0x18]
	mov r0, #8
	STRB r0, [r1]
_080074E0
	LDR r0, [r4, #4]
	cmp r0, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r0, r0, #1
	STR r0, [r4, #4]
	LDR r0, [r4, #8]
	mov r5, r6
	add r0, r0, #1
	STR r0, [r4, #8]
	LDR r0, [r4]
	add r1, r0, #1
	STR r1, [r4]
	LDRB r0, [r0]
	LDR r1, [r4, #0x18]
	MOV r0, r0, LSL #0x18
	STR r0, [r1, #8]
	LDR r1, [r4, #0x18]
	mov r0, #9
	STRB r0, [r1]
_08007534
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #16
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0xa
	STRB r0, [r1]
_08007590
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	LDR r0, [r4, #0x18]
	sub r1, r1, #1
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r0, r0, #8
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	mov r5, r6
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0]
	add r1, r2, r1, lsl #8
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0xb
	STRB r0, [r1]
_080075EC
	LDR r1, [r4, #4]
	cmp r1, #0
	moveq r0, r5
	LDMEQFD SP!, {r4, r5, r6, lr}
	bxeq lr
	sub r1, r1, #1
	LDR r0, [r4, #0x18]
	STR r1, [r4, #4]
	LDR r1, [r4, #8]
	add r1, r1, #1
	STR r1, [r4, #8]
	LDR r1, [r4]
	add r2, r1, #1
	STR r2, [r4]
	LDRB r1, [r1]
	LDR r2, [r0, #8]!
	add r1, r1, r2
	STR r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0xc
	STRB r0, [r1]
_08007640
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #1
	bx lr
_0800764C
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #2
	bx lr
_08007658
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #1
	bx lr

	arm_func_start sub_8007664
sub_8007664 ;@ 0x08007664
	STMFD SP!, {r4, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	mov ip, r2
	cmpne r0, #0
	beq _08007688
	LDRB r3, [r0]
	cmp r3, #6
	beq _08007694
_08007688
	LDMFD SP!, {r4, lr}
	mvn r0, #1
	bx lr
_08007694
	LDR lr, [r0, #0x10]
	mov r3, #1
	MOV r3, r3, LSL lr
	cmp r3, r2
	subls r2, r3, #1
	subls r3, ip, r2
	addls r1, r3, r1
	LDR r0, [r0, #0x14]
	bl sub_80062AC
	LDR r1, [r4, #0x18]
	mov r0, #7
	STRB r0, [r1]
	LDMFD SP!, {r4, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_80076D0
sub_80076D0 ;@ 0x080076D0
	STMFD SP!, {r4, r5, r6, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #1
	bxeq lr
	LDRB r1, [r0]
	cmp r1, #0xd
	beq _0800770C
	mov r1, #0xd
	STRB r1, [r0]
	LDR r1, [r4, #0x18]
	mov r0, #0
	STR r0, [r1, #4]
_0800770C
	LDR r2, [r4, #4]
	cmp r2, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #4
	bxeq lr
	LDR r1, [r4]
	LDR r5, [r4, #0x18]
	mov lr, r1
	LDR ip, _080077E4 ;@ =gUnknown_08049604
	LDR r0, [r5, #4]
	b _08007764
_08007738
	LDRB r3, [r1]
	LDRB r6, [ip, r0]
	cmp r3, r6
	addeq r0, r0, #1
	beq _08007758
	cmp r3, #0
	rsbeq r0, r0, #4
	movne r0, #0
_08007758
	add r1, r1, #1
	subs r2, r2, #1
	beq _0800776C
_08007764
	cmp r0, #4
	blo _08007738
_0800776C
	LDR r3, [r4, #8]
	sub ip, r1, lr
	add r3, r3, ip
	STMIA r4, {r1, r2, r3}
	STR r0, [r5, #4]
	cmp r0, #4
	LDMNEFD SP!, {r4, r5, r6, lr}
	mvnne r0, #2
	bxne lr
	LDR r5, [r4, #8]
	LDR r6, [r4, #0x14]
	mov r0, r4
	bl sub_8006F90
	STR r5, [r4, #8]
	STR r6, [r4, #0x14]
	LDR r1, [r4, #0x18]
	mov r0, #7
	STRB r0, [r1]
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_80077C0
sub_80077C0 ;@ 0x080077C0
	cmp r0, #0
	LDRNE r0, [r0, #0x18]
	cmpne r0, #0
	LDRNE r0, [r0, #0x14]
	cmpne r0, #0
	bne _080062D8
	mvn r0, #1
	bx lr
	ALIGN
_080077E0 DCDU 0x42108421
_080077E4 DCDU gUnknown_08049604

	arm_func_start sub_80077E8
sub_80077E8 ;@ 0x080077E8
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe0
	LDR r7, [sp, #0x11c]
	add lr, sp, #0x124
	LDMIA lr, {sl, lr}
	mov r6, #0
	STR r6, [sp, #0x90]
	STR r6, [sp, #0x94]
	STR r6, [sp, #0x98]
	STR r6, [sp, #0x9c]
	STR r6, [sp, #0xa0]
	STR r6, [sp, #0xa4]
	STR r6, [sp, #0xa8]
	STR r6, [sp, #0xac]
	add r2, sp, #0x90
	add r4, r2, #4
	STR r6, [sp, #0xcc]
	STR r6, [sp, #0xc8]
	STR r6, [sp, #0xc4]
	STR r6, [sp, #0xc0]
	STR r6, [sp, #0xbc]
	STR r6, [sp, #0xb8]
	STR r6, [sp, #0xb4]
	STR r6, [sp, #0xb0]
	mov r3, r1
	mov ip, r0
_08007850
	LDR r5, [ip], #4
	subs r3, r3, #1
	add r5, r2, r5, lsl #2
	LDR r8, [r5]
	add r8, r8, #1
	STR r8, [r5]
	bne _08007850
	LDR r3, [sp, #0x90]
	cmp r3, r1
	movne r3, #1
	LDRNE r5, [r7]
	bne _0800789C
	LDR r1, [sp, #0x118]
	mov r0, #0
	STR r6, [r1]
	STR r6, [r7]
	add sp, sp, #0xf0
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0800789C
	LDR ip, [r2, r3, lsl #2]
	mov sb, r2
	cmp ip, #0
	bne _080078B8
	add r3, r3, #1
	cmp r3, #0xf
	bls _0800789C
_080078B8
	cmp r5, r3
	movlo r5, r3
	mov ip, r3
	mov r2, #0xf
_080078C8
	LDR r8, [sb, r2, lsl #2]
	cmp r8, #0
	bne _080078DC
	subs r2, r2, #1
	bne _080078C8
_080078DC
	cmp r5, r2
	movhi r5, r2
	STR r2, [sp, #0x88]
	STR r5, [r7]
	mov r7, #1
	MOV r7, r7, LSL r3
	cmp r3, r2
	bhs _08007928
_080078FC
	LDR r8, [sb, r3, lsl #2]
	sub r7, r7, r8
	cmp r7, #0
	addlt sp, sp, #0xf0
	LDMLTFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvnlt r0, #2
	bxlt lr
	add r3, r3, #1
	cmp r3, r2
	MOV r7, r7, LSL #1
	blo _080078FC
_08007928
	LDR r8, [sb, r2, lsl #2]
	mov r3, sb
	sub r7, r7, r8
	STR r7, [sp]
	cmp r7, #0
	addlt sp, sp, #0xf0
	LDMLTFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvnlt r0, #2
	bxlt lr
	LDR r7, [sp]
	add r7, r8, r7
	STR r7, [r3, r2, lsl #2]
	mov r7, #0
	add r8, sp, #4
	add sb, r8, #8
	STR r7, [sp, #8]
	subs r2, r2, #1
	beq _08007984
_08007970
	LDR fp, [r4], #4
	subs r2, r2, #1
	add r7, fp, r7
	STR r7, [sb], #4
	bne _08007970
_08007984
	mov r4, r0
_08007988
	LDR r0, [r4], #4
	cmp r0, #0
	beq _080079A4
	LDR r7, [r8, r0, lsl #2]
	add sb, r7, #1
	STR sb, [r8, r0, lsl #2]
	STR r2, [lr, r7, lsl #2]
_080079A4
	add r2, r2, #1
	cmp r2, r1
	blo _08007988
	LDR r1, [sp, #0x88]
	add r8, sp, #4
	LDR r1, [r8, r1, lsl #2]
	STR r6, [sp, #0x44]
	LDR r8, [sp, #0x88]
	mov r2, #0
	STR r2, [sp, #4]
	mov r6, #0
	mvn r4, #0
	rsb r0, r5, #0
	mov r7, #0
	cmp ip, r8
	bgt _08007C54
	and r8, r5, #0xff
	add r1, lr, r1, lsl #2
	add sb, sp, #0xd8
	STMIA sb, {r1, r8}
_080079F4
	add r1, sp, #0x90
	LDR r1, [r1, ip, lsl #2]
	subs r3, r1, #1
	blo _08007C44
	add r1, sp, #0x90
	add r8, r1, ip, lsl #2
	STR r8, [sp, #0xd4]
	mov r8, #1
	sub r1, ip, #1
	MOV r1, r8, LSL r1
	STR r1, [sp, #0xd0]
_08007A20
	add r1, r0, r5
	cmp r1, ip
	bge _08007B2C
	add fp, r3, #1
_08007A30
	LDR r1, [sp, #0x88]
	add r0, r0, r5
	sub sb, r1, r0
	sub r1, ip, r0
	mov r6, #1
	cmp sb, r5
	movhi sb, r5
	MOV r6, r6, LSL r1
	cmp r6, fp
	add r4, r4, #1
	bls _08007A94
	cmp r1, sb
	addlo r1, r1, #1
	cmplo r1, sb
	sub r6, r6, fp
	LDR r8, [sp, #0xd4]
	bhs _08007A94
_08007A74
	LDR r7, [r8, #4]!
	MOV r6, r6, LSL #1
	cmp r6, r7
	bls _08007A94
	add r1, r1, #1
	cmp r1, sb
	sub r6, r6, r7
	blo _08007A74
_08007A94
	mov r6, #1
	LDR r7, [sl]
	MOV r6, r6, LSL r1
	add r8, r7, r6
	cmp r8, #0x5a0
	addhi sp, sp, #0xf0
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvnhi r0, #2
	bxhi lr
	LDR r8, [sp, #0x120]
	add sb, sp, #0x44
	add r7, r8, r7, lsl #3
	STR r7, [sb, r4, lsl #2]
	LDR r8, [sl]
	cmp r4, #0
	add r8, r8, r6
	STR r8, [sl]
	LDREQ r1, [sp, #0x118]
	STREQ r7, [r1]
	beq _08007B20
	add r8, sp, #4
	STR r2, [r8, r4, lsl #2]
	LDR r8, [sp, #0xdc]
	STRB r8, [sp, #0x81]
	STRB r1, [sp, #0x80]
	add r8, sb, r4, lsl #2
	LDR r8, [r8, #-4]
	sub r1, r0, r5
	MOV r1, r2, LSR r1
	sub sb, r7, r8
	rsb sb, r1, sb, asr #3
	add r1, r8, r1, lsl #3
	LDR r8, [sp, #0x80]
	STR sb, [sp, #0x84]
	STMIA r1, {r8, sb}
_08007B20
	add r1, r0, r5
	cmp r1, ip
	blt _08007A30
_08007B2C
	sub sb, ip, r0
	STRB sb, [sp, #0x81]
	LDR r1, [sp, #0xd8]
	cmp r1, lr
	movls r1, #0xc0
	STRLSB r1, [sp, #0x80]
	bls _08007BA4
	LDR r1, [lr]
	LDR r8, [sp, #0xe8]
	cmp r1, r8
	bhs _08007B74
	cmp r1, #0x100
	movhs r8, #0x60
	movlo r8, #0
	STRB r8, [sp, #0x80]
	STR r1, [sp, #0x84]
	add lr, lr, #4
	b _08007BA4
_08007B74
	LDR r8, [sp, #0xe8]
	LDR fp, [sp, #0x114]
	sub r8, r1, r8
	LDR r8, [fp, r8, lsl #2]
	add lr, lr, #4
	add r8, r8, #0x50
	STRB r8, [sp, #0x80]
	LDR r8, [sp, #0xe8]
	sub r1, r1, r8
	LDR r8, [sp, #0xec]
	LDR r1, [r8, r1, lsl #2]
	STR r1, [sp, #0x84]
_08007BA4
	mov r8, #1
	MOV r8, r8, LSL sb
	MOV r1, r2, LSR r0
	cmp r1, r6
	STR r8, [sp, #0x8c]
	bhs _08007BDC
_08007BBC
	add fp, sp, #0x80
	LDMIA fp, {sb, fp}
	add r8, r7, r1, lsl #3
	STMIA r8, {sb, fp}
	LDR r8, [sp, #0x8c]
	add r1, r1, r8
	cmp r1, r6
	blo _08007BBC
_08007BDC
	LDR r1, [sp, #0xd0]
	mov r8, #1
	tst r2, r1
	beq _08007BFC
_08007BEC
	eor r2, r2, r1
	MOV r1, r1, LSR #1
	tst r2, r1
	bne _08007BEC
_08007BFC
	eor r2, r2, r1
	MOV r1, r8, LSL r0
	add sb, sp, #4
	LDR fp, [sb, r4, lsl #2]
	sub r1, r1, #1
	and r1, r2, r1
	cmp r1, fp
	beq _08007C3C
_08007C1C
	sub r0, r0, r5
	MOV r1, r8, LSL r0
	sub r4, r4, #1
	LDR fp, [sb, r4, lsl #2]
	sub r1, r1, #1
	and r1, r2, r1
	cmp r1, fp
	bne _08007C1C
_08007C3C
	subs r3, r3, #1
	bhs _08007A20
_08007C44
	LDR r1, [sp, #0x88]
	add ip, ip, #1
	cmp ip, r1
	ble _080079F4
_08007C54
	LDR r7, [sp]
	cmp r7, #0
	LDRNE r1, [sp, #0x88]
	add sp, sp, #0xf0
	cmpne r1, #1
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #0
	mvnne r0, #4
	bx lr

	arm_func_start sub_8007C78
sub_8007C78 ;@ 0x08007C78
	STMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r0, #0
	LDR r4, [sp, #0x38]
	STR r0, [sp, #0x18]
	LDR r0, [r4, #0x24]
	mov sb, r3
	LDR r3, [r4, #0x1c]
	mov r8, r2
	mov r6, r1
	mov r1, #0x4c
	mov r2, #7
	mov lr, pc
	bx r3
	movs r5, r0
	addeq sp, sp, #0x1c
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	mvneq r0, #3
	bxeq lr
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	mov r2, #0
	STMIA sp, {r2, r8}
	mov r0, r7
	add r7, sp, #8
	STMIA r7, {r6, sb}
	mov r2, #0x13
	mov r3, #0
	mov r1, #0x13
	bl sub_80077E8
	mov r7, r0
	cmn r0, #5
	beq _08007D18
	cmn r7, #3
	beq _08007D1C
	LDR r0, [r6]
	cmp r0, #0
	bne _08007D1C
_08007D18
	mvn r7, #2
_08007D1C
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #7
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r7
	add sp, sp, #0x1c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr

	arm_func_start sub_8007D44
sub_8007D44 ;@ 0x08007D44
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r0, #0
	LDR r4, [sp, #0x60]
	STR r0, [sp, #0x18]
	LDR r6, [sp, #0x54]
	LDR r8, [sp, #0x50]
	LDR sb, [sp, #0x5c]
	LDR r0, [r4, #0x24]
	mov fp, r3
	LDR r3, [r4, #0x1c]
	mov sl, r2
	mov r2, #8
	add lr, pc, #0x4 ;@ =loc_8007D88
	mov r1, #0x480
	bx r3
loc_8007D88
	movs r5, r0
	addeq sp, sp, #0x2c
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mvneq r0, #3
	bxeq lr
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	LDR r2, _08007F00 ;@ =gUnknown_08049684
	mov r0, sl
	STMIA sp, {r2, r6, fp}
	mov r2, #1
	add r2, r2, #0x100
	STR sb, [sp, #0xc]
	LDR r3, _08007F04 ;@ =gUnknown_08049608
	mov r1, r7
	bl sub_80077E8
	movs r6, r0
	bne _08007DE4
	LDR r0, [fp]
	cmp r0, #0
	bne _08007E18
	b _08007DEC
_08007DE4
	cmn r6, #4
	beq _08007DF0
_08007DEC
	mvn r6, #2
_08007DF0
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r6
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08007E18
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	add r0, sp, #8
	STMIA r0, {r8, sb}
	LDR r2, _08007F08 ;@ =gUnknown_08049778
	LDR r3, [sp, #0x58]
	STMIA sp, {r2, r3}
	LDR r1, [sp, #0x20]
	LDR r3, _08007F0C ;@ =gUnknown_08049700
	mov r2, #0
	add r0, sl, r7, lsl #2
	bl sub_80077E8
	movs r6, r0
	bne _08007E70
	LDR r0, [r8]
	cmp r0, #0
	bne _08007EB0
	subs ip, r7, #0x100
	subhss ip, ip, #1
	bls _08007EB0
	b _08007E84
_08007E70
	cmn r6, #5
	mvneq r6, #2
	beq _08007E88
	cmn r6, #4
	beq _08007E88
_08007E84
	mvn r6, #2
_08007E88
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r6
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08007EB0
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #8
	mov r1, r5
	mov lr, pc
	bx r3
	add sp, sp, #0x2c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8007ED8
sub_8007ED8 ;@ 0x08007ED8
	mov ip, #9
	STR ip, [r0]
	mov r0, #5
	STR r0, [r1]
	LDR r0, _08007F10 ;@ =gUnknown_080497F0
	STR r0, [r2]
	LDR r0, _08007F14 ;@ =gUnknown_0804A7F0
	STR r0, [r3]
	mov r0, #0
	bx lr
	ALIGN
_08007F00 DCDU gUnknown_08049684
_08007F04 DCDU gUnknown_08049608
_08007F08 DCDU gUnknown_08049778
_08007F0C DCDU gUnknown_08049700
_08007F10 DCDU gUnknown_080497F0
_08007F14 DCDU gUnknown_0804A7F0
_08007F18
	STMFD SP!, {r3, r4, r5, r6, r7, r8, sb, lr}
	LDR sb, [r0, #0x30]
	mov r5, r0
	LDR r0, [r0, #0x34]
	LDR r8, [r1, #0xc]
	cmp r0, sb
	LDRLO r0, [r5, #0x2c]
	mov r4, r1
	sub r6, r0, sb
	LDR r0, [r4, #0x10]
	mov r7, r2
	cmp r0, r6
	movlo r6, r0
	cmp r6, #0
	beq _08007F5C
	cmn r7, #5
	moveq r7, #0
_08007F5C
	sub r0, r0, r6
	STR r0, [r4, #0x10]
	LDR r0, [r4, #0x14]
	mov r2, r6
	add r0, r0, r6
	STR r0, [r4, #0x14]
	mov r0, r8
	mov r1, sb
	bl sub_803BF10
	LDR r0, [r5, #0x2c]
	add r1, sb, r6
	cmp r0, r1
	add r8, r8, r6
	bne _08007FF4
	LDR r1, [r5, #0x34]
	LDR sb, [r5, #0x28]
	cmp r1, r0
	STREQ sb, [r5, #0x34]
	LDR r0, [r5, #0x34]
	sub r6, r0, sb
	LDR r0, [r4, #0x10]
	cmp r0, r6
	movlo r6, r0
	cmp r6, #0
	beq _08007FC8
	cmn r7, #5
	moveq r7, #0
_08007FC8
	sub r0, r0, r6
	STR r0, [r4, #0x10]
	LDR r0, [r4, #0x14]
	mov r2, r6
	add r0, r0, r6
	STR r0, [r4, #0x14]
	mov r0, r8
	mov r1, sb
	bl sub_803BF10
	add r8, r8, r6
	add r1, sb, r6
_08007FF4
	STR r8, [r4, #0xc]
	STR r1, [r5, #0x30]
	mov r0, r7
	LDMFD SP!, {r3, r4, r5, r6, r7, r8, sb, lr}
	bx lr

	thumb_func_start sub_8008008
sub_8008008 ;@ 0x08008008
	push {r3, lr}
	cmp r0, #0
	bne _08008018
	movs r0, #0x18
	bl sub_803D9F8
	cmp r0, #0
	beq _08008028
_08008018
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #1
	strb r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
_08008028
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800802E
sub_800802E ;@ 0x0800802E
	push {r3, lr}
	cmp r0, #0
	bne _0800803E
	movs r0, #0x20
	bl sub_803D9F8
	cmp r0, #0
	beq _08008058
_0800803E
	ldr r1, _080081C0 ;@ =_0803EEF0
	ldr r2, _080081C4 ;@ =gUnknown_030033F4
	str r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r2]
_08008058
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800805E
sub_800805E ;@ 0x0800805E
	ldr r2, _080081C0 ;@ =_0803EEF0
	push {r3, lr}
	str r2, [r0]
	cmp r1, #0
	beq _0800806C
	bl sub_803DA18
_0800806C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8008072
sub_8008072 ;@ 0x08008072
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	non_word_aligned_thumb_func_start nullsub_25
nullsub_25 ;@ 0x0800807A
	bx lr

	thumb_func_start sub_800807C
sub_800807C ;@ 0x0800807C
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x14]
	subs r3, r1, r3
	adds r2, r2, r3
	ldr r3, [r0, #0x10]
	str r1, [r0, #0xc]
	ands r2, r3
	str r2, [r0, #0x14]
	bx lr

	non_word_aligned_thumb_func_start sub_800808E
sub_800808E ;@ 0x0800808E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r1, #0xc]
	adds r5, r1, #0
	cmp r0, #1
	beq _080080A6
	cmp r0, #2
	bne _080080C2
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	b _080080C2
_080080A6
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bls _080080BC
_080080B0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	blo _080080B0
_080080BC
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
_080080C2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r5]
	bl sub_803B8CC
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x10]
	ands r0, r1
	adds r2, r0, #0
	str r2, [r4, #0x14]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x14]
	ldr r3, [r4, #0xc]
	str r0, [r4, #0xc]
	subs r3, r0, r3
	adds r2, r2, r3
	ands r2, r1
	str r2, [r4, #0x14]
	ldrb r0, [r5, #0xc]
	strh r0, [r4, #4]
	pop {r3, r4, r5}
	pop {r3}
	movs r0, #0
	bx r3

	thumb_func_start sub_80080FC
sub_80080FC ;@ 0x080080FC
	movs r0, #0
	bx lr

	thumb_func_start sub_8008100
sub_8008100 ;@ 0x08008100
	adds r1, r0, #0
	ldr r1, [r1, #0x18]
	movs r0, #1
	cmp r1, #0
	beq _0800810C
	movs r0, #0
_0800810C
	bx lr

	non_word_aligned_thumb_func_start sub_800810E
sub_800810E ;@ 0x0800810E
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8008112
sub_8008112 ;@ 0x08008112
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start nullsub_26
nullsub_26 ;@ 0x08008116
	bx lr

	thumb_func_start sub_8008118
sub_8008118 ;@ 0x08008118
	movs r0, #0
	bx lr

	thumb_func_start sub_800811C
sub_800811C ;@ 0x0800811C
	movs r0, #0
	bx lr

	thumb_func_start nullsub_27
nullsub_27 ;@ 0x08008120
	bx lr

	non_word_aligned_thumb_func_start sub_8008122
sub_8008122 ;@ 0x08008122
	ldr r1, _080081C4 ;@ =gUnknown_030033F4
	movs r0, #1
	str r0, [r1]
	bx lr

	non_word_aligned_thumb_func_start sub_800812A
sub_800812A ;@ 0x0800812A
	push {r3, r4, r5, lr}
	ldr r5, _080081C8 ;@ =0x04000100
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r1, _080081C4 ;@ =gUnknown_030033F4
	str r0, [r1]
	ldr r0, _080081CC ;@ =gUnknown_03003EAC
	str r4, [r1, #4]
	movs r3, #1
	movs r1, #5
	ldr r0, [r0]
	ldr r2, _080081D0 ;@ =sub_8008122
	bl sub_800B12C
	lsrs r0, r4, #6
	movs r1, #0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xc1
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #8]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8008160
sub_8008160 ;@ 0x08008160
	ldr r0, _080081C4 ;@ =gUnknown_030033F4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq _0800816E
	adds r1, r0, #0
	b _08008170
_0800816E
	movs r1, #0
_08008170
	ldr r2, _080081C8 ;@ =0x04000100
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8008182
sub_8008182 ;@ 0x08008182
	ldr r2, _080081C8 ;@ =0x04000100
	movs r0, #0
	strh r0, [r2, #0xa]
	ldr r0, _080081C4 ;@ =gUnknown_030033F4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq _08008196
	adds r1, r0, #0
	b _08008198
_08008196
	movs r1, #0
_08008198
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_80081A8
sub_80081A8 ;@ 0x080081A8
	ldr r1, _080081C8 ;@ =0x04000100
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _080081C4 ;@ =gUnknown_030033F4
	str r0, [r1]
	str r0, [r1, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80081B6
sub_80081B6 ;@ 0x080081B6
	movs r2, #0
	str r2, [r0]
	str r1, [r0, #8]
	str r2, [r0, #4]
	bx lr
	ALIGN
_080081C0 DCDU _0803EEF0
_080081C4 DCDU gUnknown_030033F4
_080081C8 DCDU 0x04000100
_080081CC DCDU gUnknown_03003EAC
_080081D0 DCDU sub_8008122

	arm_func_start sub_80081D4
sub_80081D4 ;@ 0x080081D4
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _080081F8
	mov r0, #0x54
	bl sub_803E104
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_080081F8
	mov r0, r4
	bl sub_803E110
	LDR r0, _08008AD8 ;@ =_0803EEC4
	STR r0, [r4]
	mov r0, #5
	strh r0, [r4, #6]
	mov r0, #0
	STR r0, [r4, #0x44]
	STR r0, [r4, #0x48]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start nullsub_28
nullsub_28 ;@ 0x08008228
	bx lr

	arm_func_start sub_800822C
sub_800822C ;@ 0x0800822C
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, _08008AD8 ;@ =_0803EEC4
	mov r5, r1
	STR r0, [r4]
	mov r0, r4
	mov r1, #0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne _0803E128
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8008264
sub_8008264 ;@ 0x08008264
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl sub_803E134
	LDR r0, [r5]
	add r1, r0, #4
	add r0, r4, #0x20
	bl sub_803E140
	mov r0, #0
	STR r0, [r4, #0x4c]
	STR r0, [r4, #0x50]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8008298
sub_8008298 ;@ 0x08008298
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	add r7, r4, #0x20
	LDR sl, _08008AE0 ;@ =gUnknown_030033F4
	LDR sb, _08008ADC ;@ =gUnknown_0804A948
	add r8, r0, r1
	b _08008418
_080082B8
	LDR r1, [r4, #0x24]
	cmp r1, #0xf
	bhs _080082EC
	add r2, r0, #2
	STR r2, [r4, #0x28]
	ldrh r0, [r0]
	rsb r2, r1, #0x10
	MOV r0, r0, LSL r2
	LDR r2, [r4, #0x20]
	orr r0, r0, r2
	STR r0, [r4, #0x20]
	add r0, r1, #0x10
	STR r0, [r4, #0x24]
_080082EC
	LDR r2, [r4, #0x20]
	LDR r1, [r4, #0x2c]
	MOV r0, r2, LSR #0x17
	add r0, r1, r0, lsl #1
	ldrh r1, [r0]
	LDR r3, [r4, #0x24]
	MOV r1, r1, LSR #9
	sub r3, r3, r1
	MOV r1, r2, LSL r1
	add r2, r4, #0x20
	STMIA r2, {r1, r3}
	ldrh r0, [r0]
	bic r1, r0, #0xfe00
	cmp r1, #0x100
	blo _080083E8
	subs r0, r1, #0x100
	moveq r0, #0
	STREQ r0, [r4, #0x4c]
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	add r0, sb, r0, lsl #3
	ldrh r5, [r0, #4]
	ldrh r1, [r0, #6]
	cmp r1, #0
	beq _0800835C
	mov r0, r7
	bl sub_803F4CC
	add r5, r0, r5
_0800835C
	mov r1, #5
	mov r0, r7
	bl sub_803F4CC
	add r0, sb, r0, lsl #3
	ldrh r6, [r0]
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _08008388
	mov r0, r7
	bl sub_803F4CC
	add r6, r0, r6
_08008388
	LDR r0, [r4, #0x1c]
	sub r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r0, [r4, #0xc]
	LDR r1, [r4, #0x10]
	sub r0, r0, r6
	and r2, r0, r1
	subs r0, r5, #1
	blo _08008418
_080083AC
	LDR r1, [r4, #8]
	add r3, r2, #1
	LDRB ip, [r1, r2]
	LDR r2, [r4, #0xc]
	subs r0, r0, #1
	add lr, r2, #1
	STR lr, [r4, #0xc]
	STRB ip, [r1, r2]
	LDR r1, [r4, #0x10]
	LDR r2, [r4, #0xc]
	and r2, r2, r1
	STR r2, [r4, #0xc]
	and r2, r1, r3
	bhs _080083AC
	b _08008418
_080083E8
	LDR r0, [r4, #0xc]
	add r2, r0, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r1, [r2, r0]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
	LDR r0, [r4, #0x1c]
	sub r0, r0, #1
	STR r0, [r4, #0x1c]
_08008418
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	LDMLEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
	LDR r0, [sl]
	cmp r0, #0
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxne lr
	LDR r0, [r4, #0x28]
	cmp r0, r8
	blo _080082B8
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	arm_func_start sub_800844C
sub_800844C ;@ 0x0800844C
	STMFD SP!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x280
	mov r1, #7
	STR r1, [r0, #4]
	mov r1, #9
	STR r1, [r0, #8]
	mov r1, #0
	add lr, sp, #0x270
	mov r4, #0
	mov r2, #0
	mov r3, #0
	STMIA lr, {r1, r2, r3, r4}
	LDR r1, _08008AE4 ;@ =gUnknown_0804AA38
	add r4, sp, #0x260
	LDMIA r1, {r2, r3, r5, r6}
	STMIA r4, {r2, r3, r5, r6}
	LDR r1, _08008AE8 ;@ =gUnknown_0804AA48
	add r6, sp, #0x250
	LDMIA r1, {r2, r3, r4, r5}
	STMIA r6, {r2, r3, r4, r5}
	LDR r1, _08008AEC ;@ =gUnknown_0804AA58
	add r5, sp, #0x240
	LDMIA r1, {r2, r3, r4, r7}
	STMIA r5, {r2, r3, r4, r7}
	LDR r1, [sp, #0x250]
	add r2, sp, #0x254
	STRB r1, [sp, #0x277]
	LDMIA r2, {r1, r2}
	add r7, sp, #0x260
	add r1, r1, r2
	STRB r1, [sp, #0x278]
	LDR r1, [sp, #0x25c]
	mov r2, sp
	STRB r1, [sp, #0x279]
	mov r1, #0
	mov r8, sp
_080084DC
	LDR ip, [r6, r1, lsl #2]
	mov r3, #0
	cmp ip, #0
	bls _08008528
_080084EC
	LDR ip, [r7, r1, lsl #2]
	ldrh r4, [r2]
	add ip, ip, r3
	bic ip, ip, #0xfe00
	and r4, r4, #0xfe00
	orr r4, r4, ip
	strh r4, [r2]
	LDR ip, [r5, r1, lsl #2]
	bic r4, r4, #0xfe00
	orr ip, r4, ip, lsl #9
	strh ip, [r2], #2
	LDR ip, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp ip, r3
	bhi _080084EC
_08008528
	add r1, r1, #1
	cmp r1, #4
	blo _080084DC
	mov r1, #4
	LDR r0, [r0]
	add r4, lr, #7
	add r5, lr, #9
	b _08008590
_08008548
	LDRB ip, [r4], #1
	cmp ip, #0
	beq _08008580
_08008554
	movs r2, r1
	beq _08008574
_0800855C
	ldrh lr, [r8]
	mov r3, r0
	add r0, r0, #2
	subs r2, r2, #1
	strh lr, [r3]
	bne _0800855C
_08008574
	subs ip, ip, #1
	add r8, r8, #2
	bne _08008554
_08008580
	MOVS r1, r1, ASR #1
	addeq sp, sp, #0x280
	LDMEQFD SP!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
_08008590
	cmp r4, r5
	bls _08008548
	add sp, sp, #0x280
	LDMFD SP!, {r4, r5, r6, r7, r8, lr}
	bx lr

	arm_func_start sub_80085A4
sub_80085A4 ;@ 0x080085A4
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	LDR r0, [r0, #0x50]
	add r8, r4, #0x20
	mov sl, #0
	mov sb, #8
	cmp r0, #0
	bne _08008658
	mov r1, #0x10
	mov r0, r8
	bl sub_803F4CC
	STR r0, [r4, #0x50]
	LDR r0, [r4, #0x24]
	cmp r0, #8
	blo _08008634
	LDR r2, [r4, #0x20]
	sub r0, r0, #8
	STR r0, [r4, #0x24]
	MOV r0, r2, LSL #8
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0xc]
	MOV r1, r2, LSR #0x18
	add r2, r0, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r1, [r2, r0]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
	LDR r0, [r4, #0x50]
	sub r0, r0, #1
	STR r0, [r4, #0x50]
	LDR r0, [r4, #0x1c]
	sub r0, r0, #1
	STR r0, [r4, #0x1c]
_08008634
	LDR r0, [r4, #0x24]
	STR sl, [r4, #0x24]
	LDR r1, [r4, #0x20]
	MOV r0, r1, LSL r0
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	LDMLEFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
_08008658
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x50]
	cmp r0, r1
	bge _08008678
	bic r1, r0, #1
	ands r0, r0, #1
	movne r0, #2
	add r1, r1, r0
_08008678
	bic r2, r1, #1
	mov r5, r1
	LDR r0, [r4, #0xc]
	LDR r1, [r4, #0x10]
	add r3, r0, r2
	add r1, r1, #1
	cmp r3, r1
	mov r7, r2
	bls _08008730
	sub r6, r1, r0
	LDR r2, [r4, #8]
	LDR r1, [r4, #0x28]
	add r0, r2, r0
	mov r2, r6
	bl sub_803BF10
	LDR r0, [r4, #0x28]
	MOV r1, r6, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	tst r6, #1
	beq _080086E4
	LDRB r1, [r0, #1]
	add r0, r0, #2
	STR r0, [r4, #0x28]
	add r0, r4, #0x20
	MOV r1, r1, LSL #0x18
	STMIA r0, {r1, sb}
_080086E4
	sub r6, r7, r6
	LDR r0, [r4, #8]
	LDR r1, [r4, #0x28]
	mov r2, r6
	bl sub_803BF10
	LDR r0, [r4, #0x28]
	MOV r1, r6, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	tst r6, #1
	beq _08008728
	LDRB r1, [r0, #1]
	add r0, r0, #2
	STR r0, [r4, #0x28]
	add r0, r4, #0x20
	MOV r1, r1, LSL #0x18
	STMIA r0, {r1, sb}
_08008728
	STR r6, [r4, #0xc]
	b _0800875C
_08008730
	LDR r3, [r4, #8]
	LDR r1, [r4, #0x28]
	add r0, r3, r0
	bl sub_803BF10
	LDR r0, [r4, #0x28]
	MOV r1, r7, LSR #1
	add r0, r0, r1, lsl #1
	STR r0, [r4, #0x28]
	LDR r0, [r4, #0xc]
	add r0, r0, r7
	STR r0, [r4, #0xc]
_0800875C
	tst r5, #1
	beq _08008794
	mov r1, #8
	mov r0, r8
	bl sub_803F4CC
	LDR r1, [r4, #0xc]
	add r2, r1, #1
	STR r2, [r4, #0xc]
	LDR r2, [r4, #8]
	STRB r0, [r2, r1]
	add r1, r4, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r4, #0xc]
_08008794
	LDR r0, [r4, #0x1c]
	sub r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r0, [r4, #0x50]
	subs r0, r0, r5
	STR r0, [r4, #0x50]
	STREQ sl, [r4, #0x4c]
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr

	arm_func_start sub_80087B8
sub_80087B8 ;@ 0x080087B8
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov sb, r2
	LDR r2, [r4, #0x18]
	LDR r0, [r0, #0x1c]
	cmp r1, #0
	sub r5, r2, r0
	moveq r1, r5
	cmp r5, r1
	movle r1, r5
	mov r5, r1
	LDR r1, [r4, #0xc]
	sub sp, sp, #0x144
	add r0, r1, r0
	LDR r1, [r4, #0x10]
	and r0, r0, r1
	LDR r1, [r4, #8]
	add r0, r0, r1
	STR r0, [sp, #0x140]
	b _08008AA0
_08008808
	LDR r0, [r4, #0x4c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
jmpt_08008814
	b _08008AA0
jmpt_08008818
	b _08008838
jmpt_0800881C
	b _08008924
jmpt_08008820
	b _080088C4
jmpt_08008824
	b _08008A64
jmpt_08008828
	b _080088E4
jmpt_0800882C
	b _08008884
jmpt_08008830
	b _08008AA0
jmpt_08008834
	b _08008AB8
_08008838
	mov r1, #2
	add r0, r4, #0x20
	bl sub_803F4CC
	cmp r0, #0
	moveq r0, #5
	STREQ r0, [r4, #0x4c]
	beq _08008AA0
	cmp r0, #1
	moveq r0, #2
	STREQ r0, [r4, #0x4c]
	beq _08008AA0
	cmp r0, #2
	moveq r0, #1
	STREQ r0, [r4, #0x4c]
	beq _08008AA0
	cmp r0, #3
	moveq r0, #7
	STREQ r0, [r4, #0x4c]
	b _08008AA0
_08008884
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_80085A4
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
	b _08008AA0
_080088C4
	LDR r0, [r4, #0x44]
	STR r0, [r4, #0x2c]
	add r0, r4, #0x2c
	bl sub_800844C
	mov r0, #0
	STR r0, [r4, #0x1c]
	mov r0, #4
	STR r0, [r4, #0x4c]
_080088E4
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_8008298
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
	b _08008AA0
_08008924
	LDR r0, [r4, #0x24]
	cmp r0, #0xe
	bhs _0800895C
	LDR r1, [r4, #0x28]
	add r2, r1, #2
	STR r2, [r4, #0x28]
	ldrh r1, [r1]
	rsb r2, r0, #0x10
	add r0, r0, #0x10
	MOV r1, r1, LSL r2
	LDR r2, [r4, #0x20]
	STR r0, [r4, #0x24]
	orr r1, r1, r2
	STR r1, [r4, #0x20]
_0800895C
	LDR r0, [r4, #0x20]
	LDR r2, [r4, #0x24]
	MOV r1, r0, LSR #0x1b
	add r7, r1, #0x100
	MOV r0, r0, LSL #5
	MOV r1, r0, LSR #0x1b
	add sl, r1, #1
	MOV r0, r0, LSL #5
	MOV r1, r0, LSR #0x1c
	add r8, r1, #4
	add r1, r4, #0x20
	MOV r0, r0, LSL #4
	sub r2, r2, #0xe
	STMIA r1, {r0, r2}
	mov r2, #0
	mov r1, #0
	mov r0, #0
	mov r6, sp
	mov r3, #0
	mov fp, #0
	STMIA r6, {r0, r1, r2, r3, fp}
	mov r6, #0
	cmp r8, #0
	add r7, r7, #1
	bls _080089E8
	add fp, r4, #0x20
_080089C4
	mov r1, #3
	mov r0, fp
	bl sub_803F4CC
	LDR r1, _08008AF0 ;@ =gUnknown_0804A934
	LDRB r1, [r1, r6]
	add r6, r6, #1
	cmp r6, r8
	STRB r0, [sp, r1]
	blo _080089C4
_080089E8
	LDR r0, [r4, #0x44]
	mov r6, sp
	STR r0, [r4, #0x38]
	add r0, r4, #0x38
	mov r8, r0
	mov r2, sp
	mov r1, #0x13
	bl sub_803DCE4
	add r2, r6, #1
	mov fp, r2
	add r1, r7, sl
	mov r0, r4
	bl sub_803DB3C
	LDR r0, [r4, #0x44]
	mov r2, fp
	STR r0, [r4, #0x2c]
	add r0, r4, #0x2c
	mov r1, r7
	bl sub_803DCE4
	LDR r1, [r4, #0x44]
	add r0, r1, r0, lsl #1
	STR r0, [r4, #0x38]
	add r0, r6, r7
	add r2, r0, #1
	mov r0, r8
	mov r1, sl
	bl sub_803DCE4
	mov r0, #0
	STR r0, [r4, #0x1c]
	mov r0, #3
	STR r0, [r4, #0x4c]
_08008A64
	LDR r0, [r4, #0x1c]
	add r0, r0, r5
	STR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	sub r0, r1, r0
	STR r0, [r4, #0x18]
	mov r0, r4
	mov r1, sb
	bl sub_803DEF8
	LDR r0, [r4, #0x1c]
	LDR r1, [r4, #0x18]
	add r1, r1, r0
	sub r0, r5, r0
	sub r5, r5, r0
	STR r1, [r4, #0x18]
_08008AA0
	cmp r5, #0
	ble _08008AB8
	LDR r0, _08008AE0 ;@ =gUnknown_030033F4
	LDR r0, [r0]
	cmp r0, #0
	beq _08008808
_08008AB8
	LDR r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #0
	STRGT r0, [r4, #0x1c]
	LDR r0, [sp, #0x140]
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	ALIGN
_08008AD8 DCDU _0803EEC4
_08008ADC DCDU gUnknown_0804A948
_08008AE0 DCDU gUnknown_030033F4
_08008AE4 DCDU gUnknown_0804AA38
_08008AE8 DCDU gUnknown_0804AA48
_08008AEC DCDU gUnknown_0804AA58
_08008AF0 DCDU gUnknown_0804A934

	arm_func_start sub_8008AF4
sub_8008AF4 ;@ 0x08008AF4
	LDR r0, [r1]
	bx lr

	arm_func_start sub_8008AFC
sub_8008AFC ;@ 0x08008AFC
	mov r0, #4
	bx lr

	arm_func_start sub_8008B04
sub_8008B04 ;@ 0x08008B04
	STR r1, [r0, #0x44]
	MOV r1, r2, LSR #1
	STR r1, [r0, #0x48]
	bx lr
_08008B14
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _08008B38
	mov r0, #0x3c
	bl sub_803E104
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_08008B38
	mov r0, r4
	bl sub_803E110
	LDR r0, _08008EAC ;@ =_0803EE6C
	STR r0, [r4]
	mov r0, #2
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_8008B5C
sub_8008B5C ;@ 0x08008B5C
	STR lr, [sp, #-4]!
	LDR r2, [r1]
	LDR r3, [r2]
	and ip, r3, #0xf0
	cmp ip, #0x10
	tsteq r3, #0xf
	bne _08008B80
	bics r3, r3, #0xff
	bne _08008B8C
_08008B80
	DCB 0x04, 0xE0, 0x9D, 0xE4 ; LDMFD SP!, {lr}
	mov r0, #0
	bx lr
_08008B8C
	LDRB r3, [r1, #0xc]
	mov ip, #0
	strh r3, [r0, #4]
	LDR r3, [r1]
	add r3, r3, #4
	STR r3, [r0, #0x20]
	LDR r3, [r1, #8]
	STR r3, [r0, #0x24]
	LDR r3, [r1, #8]
	STR r3, [r0, #0x28]
	LDRB r3, [r1, #0xc]
	LDR r1, [r1, #8]
	cmp r3, #2
	bne _08008BD8
	STR r1, [r0, #0x2c]
	LDR r1, [r2]
	MOV r1, r1, LSR #8
	STR r1, [r0, #0x30]
	b _08008BE8
_08008BD8
	LDR r2, [r2]
	add r1, r1, r2, lsr #8
	add r2, r0, #0x2c
	STMIA r2, {r1, ip}
_08008BE8
	STR ip, [r0, #0x34]
	STR ip, [r0, #0x38]
	DCB 0x04, 0xE0, 0x9D, 0xE4 ; LDMFD SP!, {lr}
	mov r0, #1
	bx lr

	arm_func_start sub_8008BFC
sub_8008BFC ;@ 0x08008BFC
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r0, #4]
	mov r5, r1
	LDR r1, [r4, #0x2c]
	sub sp, sp, #8
	cmp r0, #1
	bne _08008C34
	LDR r0, [r4, #0x28]
	add r0, r0, r5
	STR r0, [r4, #0x28]
	cmp r0, r1
	STRHI r1, [r4, #0x28]
	b _08008D38
_08008C34
	LDR ip, [r4, #0x24]
	sub r0, ip, r1
	cmp r0, #0x2000
	blt _08008CF8
	add r0, r1, #0x1000
	sub r2, ip, r0
	add ip, r2, #4
	mov r2, r1
	mov r3, r0
	cmp r0, r1
	mov lr, #0
	bhs _08008C78
	add r6, r3, ip
	cmp r6, r2
	movhi r3, r6
	addhi r2, r2, ip
	movhi lr, #0xa00000
_08008C78
	LDR r6, _08008EB0 ;@ =gUnknown_03003EB4
	LDR r6, [r6]
	cmp r6, #0
	beq _08008C9C
	MOV r2, ip, LSL #9
	mov r3, #0x4000000
	orr r2, r3, r2, lsr #11
	bl sub_803E14C
	b _08008CE0
_08008C9C
	orr r0, r2, r3
	mov r1, #0x4000000
	add r1, r1, #0xd4
	orr r0, r0, ip
	tst r0, #2
	STR r3, [r1]
	STR r2, [r1, #4]
	beq _08008CD0
	orr r0, lr, ip, lsr #1
	orr r0, r0, #0x80000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
	b _08008CE0
_08008CD0
	orr r0, lr, ip, lsr #2
	orr r0, r0, #0x84000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
_08008CE0
	LDR r0, [r4, #0x28]
	sub r0, r0, #0x1000
	STR r0, [r4, #0x28]
	LDR r0, [r4, #0x24]
	sub r0, r0, #0x1000
	STR r0, [r4, #0x24]
_08008CF8
	LDR r0, [r4, #0x30]
	cmp r0, r5
	bhs _08008D1C
	LDR r1, [r4, #0x24]
	add r0, r1, r0
	STR r0, [r4, #0x28]
	mov r0, #0
	STR r0, [r4, #0x30]
	b _08008D38
_08008D1C
	LDR r1, [r4, #0x28]
	add r1, r1, r5
	STR r1, [r4, #0x28]
	LDR r2, [r4, #0x24]
	sub r1, r1, r2
	sub r0, r0, r1
	STR r0, [r4, #0x30]
_08008D38
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	cmp r0, r1
	bhs _08008E2C
	mov lr, #8
	mov r6, #3
_08008D50
	LDR r0, [r4, #0x38]
	cmp r0, #0
	bne _08008D74
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r0, [r0]
	add r1, r4, #0x34
	STMIA r1, {r0, lr}
_08008D74
	LDR r0, [r4, #0x34]
	tst r0, #0x80
	LDR r0, [r4, #0x20]
	beq _08008DE8
	LDRB r1, [r0, #1]
	LDRB r0, [r0]
	orr r0, r1, r0, lsl #8
	strh r0, [sp, #4]
	ldrh r1, [sp, #4]
	LDR r0, [r4, #0x24]
	bic r1, r1, #0xf000
	sub r0, r0, r1
	sub r1, r0, #1
	LDR r0, [r4, #0x20]
	add r0, r0, #2
	STR r0, [r4, #0x20]
	ldrh r0, [sp, #4]
	add r0, r6, r0, lsr #12
	cmp r0, #0
	ble _08008E04
_08008DC4
	LDR r2, [r4, #0x24]
	LDRB r3, [r1], #1
	add ip, r2, #1
	STR ip, [r4, #0x24]
	sub r0, r0, #1
	cmp r0, #0
	STRB r3, [r2]
	bgt _08008DC4
	b _08008E04
_08008DE8
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r1, [r0]
	LDR r0, [r4, #0x24]
	add r2, r0, #1
	STR r2, [r4, #0x24]
	STRB r1, [r0]
_08008E04
	LDR r0, [r4, #0x34]
	add r1, r4, #0x24
	MOV r0, r0, LSL #1
	STR r0, [r4, #0x34]
	LDR r0, [r4, #0x38]
	sub r0, r0, #1
	STR r0, [r4, #0x38]
	LDMIA r1, {r0, r1}
	cmp r0, r1
	blo _08008D50
_08008E2C
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08008E50
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	sub r0, r0, r1
	LDR r1, [r4, #0x30]
	sub r0, r1, r0
	STR r0, [r4, #0x30]
_08008E50
	LDR r0, [r4, #0x28]
	add sp, sp, #8
	sub r0, r0, r5
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	arm_func_start sub_8008E64
sub_8008E64 ;@ 0x08008E64
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _08008E88
	LDR r1, [r0, #0x24]
	LDR r0, [r0, #0x2c]
	cmp r1, r0
	movlo r0, #0
	movhs r0, #1
	bx lr
_08008E88
	LDR r0, [r0, #0x30]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr

	arm_func_start sub_8008E98
sub_8008E98 ;@ 0x08008E98
	LDR r0, [r1]
	MOV r0, r0, LSR #8
	bx lr

	arm_func_start sub_8008EA4
sub_8008EA4 ;@ 0x08008EA4
	mov r0, #4
	bx lr
	ALIGN
_08008EAC DCDU _0803EE6C
_08008EB0 DCDU gUnknown_03003EB4
_08008EB4
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _08008EDC
	mov r0, #0x124
	add r0, r0, #0x5400
	bl sub_803E104
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_08008EDC
	mov r0, r4
	bl sub_803E110
	LDR r0, _08009E20 ;@ =_0803EDE8
	STR r0, [r4]
	mov r0, #6
	strh r0, [r4, #6]
	mov r0, #0
	STR r0, [r4, #0x20]
	STR r0, [r4, #0x24]
	STR r0, [r4, #0x28]
	STR r0, [r4, #0x2c]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start nullsub_29
nullsub_29 ;@ 0x08008F14
	bx lr

	arm_func_start sub_8008F18
sub_8008F18 ;@ 0x08008F18
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, _08009E20 ;@ =_0803EDE8
	mov r5, r1
	STR r0, [r4]
	mov r0, r4
	mov r1, #0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne _0803E128
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8008F50
sub_8008F50 ;@ 0x08008F50
	mov r0, #1
	cmp r2, #0xf
	blo _08008F64
	cmp r2, #0x15
	bls _08008F6C
_08008F64
	mov r0, #1
	bx lr
_08008F6C
	cmp r2, #0x14
	moveq r2, #0x2a
	beq _08008F84
	cmp r2, #0x15
	MOVNE r2, r2, LSL #1
	moveq r2, #0x32
_08008F84
	STR r0, [r1, #0xc]
	STR r3, [r1]
	STR r0, [r1, #8]
	STR r0, [r1, #4]
	mov r0, #0x100
	add r0, r0, r2, lsl #3
	strh r0, [r1, #0x10]
	mov r2, #0
	STR r2, [r1, #0x14]
	STR r2, [r1, #0x24]
	STR r2, [r1, #0x20]
	strh r2, [r1, #0x18]
	STR r2, [r1, #0x2c]
	STR r2, [r1, #0x30]
	mov r0, #0
_08008FC0
	add r3, r1, r0
	add r3, r3, #0x2000
	add r0, r0, #1
	cmp r0, #0x290
	STRB r2, [r3, #0xb98]
	blt _08008FC0
	mov r0, #0
_08008FDC
	add r3, r1, r0
	add r3, r3, #0x5000
	add r0, r0, #1
	cmp r0, #0xfa
	STRB r2, [r3, #0x250]
	blt _08008FDC
	mov r0, #0
	bx lr

	arm_func_start sub_8008FFC
sub_8008FFC ;@ 0x08008FFC
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r4, r0
	bl sub_803E134
	LDR r6, [r5]
	mov r1, #0xf4
	add r0, r4, #0x30
	mov r7, r0
	add r1, r1, #0x5400
	add r5, r6, #4
	bl sub_803BEB4
	LDR r0, [r6]
	mov r3, r5
	MOV r2, r0, LSR #0x1b
	mov r0, r4
	mov r1, r7
	bl sub_8008F50
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_800904C
sub_800904C ;@ 0x0800904C
	STR r1, [r0, #0x20]
	MOV r1, r2, LSR #1
	STR r1, [r0, #0x24]
	bx lr

	arm_func_start sub_800905C
sub_800905C ;@ 0x0800905C
	mov r0, #0
	bx lr

	arm_func_start sub_8009064
sub_8009064 ;@ 0x08009064
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDR lr, [sp, #8]
	mov r2, #1
	MOV r8, r2, LSL lr
	MOV sb, r8, LSR #1
	mov r5, sb
	LDR r4, [sp, #0x34]
	mov r0, #1
	mov ip, #0
	cmp lr, #1
	blo _08009114
_08009090
	mov r2, #0
	cmp r1, #0
	bls _080090FC
	sub sl, sb, #1
_080090A0
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne _080090EC
	mov lr, ip
	add ip, ip, sb
	cmp ip, r8
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
	mov r7, sl
	cmn sl, #1
	beq _080090EC
_080090D4
	mov r6, lr
	add r6, r4, r6, lsl #1
	strh r2, [r6]
	add lr, lr, #1
	subs r7, r7, #1
	bhs _080090D4
_080090EC
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo _080090A0
_080090FC
	add r0, r0, #1
	LDR r2, [sp, #8]
	and r0, r0, #0xff
	cmp r0, r2
	MOV sb, sb, LSR #1
	bls _08009090
_08009114
	cmp ip, r8
	beq _0800921C
	MOV r2, ip, LSL #0x10
	MOV r2, r2, LSR #0x10
	cmp r2, r8
	mov sb, #0
	bhs _08009148
_08009130
	add lr, r4, r2, lsl #1
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r8
	strh sb, [lr]
	blo _08009130
_08009148
	MOV ip, ip, LSL #0x10
	MOV r8, r8, LSL #0x10
	mov fp, #0x8000
	cmp r0, #0x10
	bhi _0800921C
_0800915C
	mov r2, #0
	cmp r1, #0
	bls _08009208
	LDR lr, [sp, #8]
	sub sl, r0, lr
_08009170
	LDRB lr, [r3, r2]
	cmp lr, r0
	bne _080091F8
	MOV r6, ip, LSR #0x10
	mov lr, #0
	cmp sl, #0
	bls _080091D8
_0800918C
	add r6, r4, r6, lsl #1
	ldrh r7, [r6]
	cmp r7, #0
	bne _080091B4
	add r7, r4, r5, lsl #2
	strh sb, [r7]
	strh sb, [r7, #2]
	mov r7, r5
	strh r7, [r6]
	add r5, r5, #1
_080091B4
	rsb r7, lr, #0xf
	ldrh r6, [r6]
	MOV r7, ip, LSR r7
	tst r7, #1
	MOV r6, r6, LSL #1
	addne r6, r6, #1
	add lr, lr, #1
	cmp sl, lr
	bhi _0800918C
_080091D8
	add lr, r4, r6, lsl #1
	add ip, ip, fp
	cmp ip, r8
	strh r2, [lr]
	addhi sp, sp, #0x10
	LDMHIFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movhi r0, #1
	bxhi lr
_080091F8
	add r2, r2, #1
	bic r2, r2, #0x10000
	cmp r2, r1
	blo _08009170
_08009208
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	MOV fp, fp, LSR #1
	bls _0800915C
_0800921C
	cmp ip, r8
	addeq sp, sp, #0x10
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bxeq lr
	cmp r1, #0
	bls _08009260
_08009238
	LDRB r2, [r3, r0]
	cmp r2, #0
	addne sp, sp, #0x10
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #1
	bxne lr
	add r0, r0, #1
	bic r0, r0, #0x10000
	cmp r0, r1
	blo _08009238
_08009260
	add sp, sp, #0x10
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_8009270
sub_8009270 ;@ 0x08009270
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	LDR sb, [sp, #0x3c]
	LDR fp, [sp, #0x38]
	ldmib sb, {r4, r6}
	LDR r5, [sb]
	mov r8, r1
	mov r1, #0
	mov r7, r2
_08009294
	cmp r4, #4
	bge _080092C0
_0800929C
	LDRB r2, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r2, r2, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r2, lsl r3
	blt _0800929C
_080092C0
	add r3, r8, r1
	MOV r2, r5, LSR #0x1c
	add r1, r1, #1
	cmp r1, #0x14
	STRB r2, [r3, #0x104]
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	blo _08009294
	add r3, r8, #0x34
	mov sl, r3
	STR r3, [sp]
	add r3, r8, #0x104
	mov r2, #6
	mov r1, #0x14
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x14
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r0, [sp, #0x10]
	cmp r0, fp
	bhs _080095A0
	mov r2, #0
_08009320
	cmp r4, #0x10
	bge _0800934C
_08009328
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r3
	blt _08009328
_0800934C
	MOV r1, r5, LSR #0x1a
	add r1, sl, r1, lsl #1
	ldrh r3, [r1]
	cmp r3, #0x14
	blo _0800939C
	mov r1, #0x4000000
_08009364
	MOV r1, r1, LSR #1
	MOV ip, r3, LSL #1
	ands r3, r5, r1
	movne r3, #1
	cmp r1, #0
	addeq sp, sp, #0x14
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r3, r3, ip
	bxeq lr
	add r3, sl, r3, lsl #1
	ldrh r3, [r3]
	cmp r3, #0x14
	bhs _08009364
_0800939C
	add r1, r3, r8
	LDRB r1, [r1, #0x104]
	cmp r3, #0x11
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	bne _08009410
	cmp r4, #4
	bge _080093E0
_080093BC
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #4
	orr r5, r5, r1, lsl r3
	blt _080093BC
_080093E0
	MOV r1, r5, LSR #0x1c
	add r3, r1, #3
	cmn r3, #1
	MOV r5, r5, LSL #4
	sub r4, r4, #4
	beq _08009598
_080093F8
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs _080093F8
	b _08009598
_08009410
	cmp r3, #0x12
	bne _08009474
	cmp r4, #5
	bge _08009444
_08009420
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #5
	orr r5, r5, r1, lsl r3
	blt _08009420
_08009444
	MOV r1, r5, LSR #0x1b
	add r3, r1, #0x13
	cmn r3, #1
	MOV r5, r5, LSL #5
	sub r4, r4, #5
	beq _08009598
_0800945C
	mov r1, r0
	STRB r2, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs _0800945C
	b _08009598
_08009474
	cmp r3, #0x13
	bne _0800957C
	cmp r4, #1
	bge _080094A8
_08009484
	LDRB r1, [r6]
	LDRB r3, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r3, lsl #8
	rsb r3, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #1
	orr r5, r5, r1, lsl r3
	blt _08009484
_080094A8
	MOV r1, r5, LSR #0x1f
	sub r3, r4, #1
	cmp r3, #0x10
	add r1, r1, #4
	MOV ip, r5, LSL #1
	bge _080094E4
_080094C0
	LDRB lr, [r6]
	LDRB r4, [r6, #1]
	add r6, r6, #2
	orr lr, lr, r4, lsl #8
	rsb r4, r3, #0x10
	add r3, r3, #0x10
	cmp r3, #0x10
	orr ip, ip, lr, lsl r4
	blt _080094C0
_080094E4
	MOV lr, ip, LSR #0x1a
	add lr, sl, lr, lsl #1
	ldrh r4, [lr]
	cmp r4, #0x14
	blo _08009534
	mov lr, #0x4000000
_080094FC
	MOV lr, lr, LSR #1
	MOV r5, r4, LSL #1
	ands r4, ip, lr
	movne r4, #1
	cmp lr, #0
	addeq sp, sp, #0x14
	orr r4, r4, r5
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	bxeq lr
	add r4, sl, r4, lsl #1
	ldrh r4, [r4]
	cmp r4, #0x14
	bhs _080094FC
_08009534
	mov lr, r4
	add r4, r4, r8
	LDRB r4, [r4, #0x104]
	MOV r5, ip, LSL r4
	sub r4, r3, r4
	LDRB r3, [r7, r0]
	sub ip, r3, lr
	cmp ip, #0
	addlt ip, ip, #0x11
	subs r3, r1, #1
	blo _08009598
	and ip, ip, #0xff
_08009564
	mov r1, r0
	STRB ip, [r7, r1]
	add r0, r0, #1
	subs r3, r3, #1
	bhs _08009564
	b _08009598
_0800957C
	LDRB r1, [r7, r0]
	sub r3, r1, r3
	cmp r3, #0
	mov r1, r0
	addlt r3, r3, #0x11
	STRB r3, [r7, r1]
	add r0, r0, #1
_08009598
	cmp r0, fp
	blo _08009320
_080095A0
	STR r5, [sb], #4
	STMIA sb, {r4, r6}
	add sp, sp, #0x14
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_80095B8
sub_80095B8 ;@ 0x080095B8
	STMFD SP!, {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDMIA r1, {r6, sb, fp}
	mov sl, r1
	LDR r1, [r1, #0xc]
	sub sp, sp, #0x38
	STR r1, [sp, #0x18]
	LDR r1, [sl, #0x14]
	mov r7, r0
	mov r0, #1
	mov r5, #0
	mov r4, #0
	cmp r1, #0
	bne _080096A4
	mov r3, #0
	mov ip, r3
_080095F4
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #1
	orr r5, r5, r1, lsl r2
	blt _080095F4
	MOVS r1, r5, LSR #0x1f
	MOV r5, r5, LSL #1
	sub r4, r4, #1
	beq _08009698
	cmp r4, #0x10
	bge _08009654
_08009630
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt _08009630
_08009654
	sub r1, r4, #0x10
	cmp r1, #0x10
	MOV r3, r5, LSR #0x10
	MOV r2, r5, LSL #0x10
	bge _0800968C
_08009668
	LDRB ip, [r6]
	LDRB lr, [r6, #1]
	add r6, r6, #2
	orr ip, ip, lr, lsl #8
	rsb lr, r1, #0x10
	add r1, r1, #0x10
	cmp r1, #0x10
	orr r2, r2, ip, lsl lr
	blt _08009668
_0800968C
	MOV ip, r2, LSR #0x10
	MOV r5, r2, LSL #0x10
	sub r4, r1, #0x10
_08009698
	orr r1, ip, r3, lsl #16
	STR r0, [sl, #0x14]
	STR r1, [sl, #0x28]
_080096A4
	LDR r1, [sp, #0x40]
	cmp r1, #0
	ble _0800A200
	add r3, sl, #0x5400
	add r2, sl, #0x2800
	add r2, r2, #0x398
	add r3, r3, #0xaa
	add r1, sl, #0x2000
	add r8, sp, #0x2c
	STMIA r8, {r1, r2, r3}
	add r3, sl, #0x158
	STR r3, [sp, #0x24]
	add r3, sl, #0x2c00
	add r3, r3, #0x268
	STR r3, [sp, #0x20]
	add r3, sl, #0x5300
	add r2, sl, #0x5000
	add r2, r2, #0x250
	add r3, r3, #0x8a
	STR r3, [sp, #0x1c]
	STR r2, [sp, #0x28]
_080096F8
	LDR r0, [sl, #0x20]
	cmp r0, #0
	bne _0800A1D8
	ldrh r0, [sl, #0x18]
	cmp r0, #3
	bne _08009728
	LDR r0, [sl, #0x1c]
	mov r4, #0
	tst r0, #1
	addne r6, r6, #1
	mov r5, #0
	b _08009730
_08009728
	cmp r4, #3
	bge _08009754
_08009730
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #3
	orr r5, r5, r0, lsl r1
	blt _08009730
_08009754
	MOV r0, r5, LSR #0x1d
	sub r2, r4, #3
	cmp r2, #0x10
	strh r0, [sl, #0x18]
	MOV r3, r5, LSL #3
	bge _08009790
_0800976C
	LDRB r1, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r1, r1, ip, lsl #8
	rsb ip, r2, #0x10
	add r2, r2, #0x10
	cmp r2, #0x10
	orr r3, r3, r1, lsl ip
	blt _0800976C
_08009790
	MOV r1, r3, LSR #0x10
	MOV ip, r3, LSL #0x10
	sub r3, r2, #0x10
	cmp r3, #8
	bge _080097C8
_080097A4
	LDRB r2, [r6]
	LDRB lr, [r6, #1]
	add r6, r6, #2
	orr r2, r2, lr, lsl #8
	rsb lr, r3, #0x10
	add r3, r3, #0x10
	cmp r3, #8
	orr ip, ip, r2, lsl lr
	blt _080097A4
_080097C8
	MOV r2, ip, LSR #0x18
	orr r1, r2, r1, lsl #8
	STR r1, [sl, #0x1c]
	STR r1, [sl, #0x20]
	MOV r5, ip, LSL #8
	sub r4, r3, #8
	cmp r0, #1
	beq _0800989C
	cmp r0, #2
	moveq r0, #0
	beq _0800981C
	cmp r0, #3
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	mov r0, #1
	STR r0, [sl, #0x30]
	cmp r4, #0x10
	bge _080099F4
	b _080099D0
_0800981C
	cmp r4, #3
	bge _08009848
_08009824
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #3
	orr r5, r5, r1, lsl r2
	blt _08009824
_08009848
	add r2, sl, r0
	MOV r1, r5, LSR #0x1d
	add r2, r2, #0x5000
	add r0, r0, #1
	cmp r0, #8
	STRB r1, [r2, #0x4aa]
	MOV r5, r5, LSL #3
	sub r4, r4, #3
	blo _0800981C
	LDR r3, [sp, #0x1c]
	mov r2, #7
	STR r3, [sp]
	LDR r3, [sp, #0x34]
	mov r1, #8
	mov r0, r7
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
_0800989C
	add r0, sp, #0x10
	STMIA r0, {r4, r6}
	STR r5, [sp, #0xc]
	add r8, sp, #0xc
	mov r2, #0x100
	STMIA sp, {r2, r8}
	LDR r2, [sp, #0x30]
	mov r0, r7
	mov r3, #0
	mov r1, sl
	bl sub_8009270
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	ldrh r2, [sl, #0x10]
	mov r3, #0x100
	mov r1, sl
	STMIA sp, {r2, r8}
	LDR r2, [sp, #0x30]
	mov r0, r7
	bl sub_8009270
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r3, [sp, #0x24]
	add r6, sp, #0xc
	LDMIA r6, {r4, r5, r6}
	STR r3, [sp]
	LDR r3, [sp, #0x30]
	mov r2, #0xc
	mov r1, #0x290
	mov r0, r7
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r0, [sp, #0x2c]
	mov r2, #0xf9
	LDRB r0, [r0, #0xc80]
	mov r3, #0
	mov r1, sl
	cmp r0, #0
	movne r0, #1
	STRNE r0, [sl, #0x30]
	STMIA sp, {r2, r8}
	add r0, sp, #0xc
	STMIA r0, {r4, r5, r6}
	LDR r2, [sp, #0x28]
	mov r0, r7
	bl sub_8009270
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	LDR r3, [sp, #0x20]
	add r6, sp, #0x10
	LDMIA r6, {r4, r6}
	STR r3, [sp]
	LDR r3, [sp, #0x28]
	LDR r5, [sp, #0xc]
	mov r2, #0xc
	mov r1, #0xfa
	mov r0, r7
	bl sub_8009064
	cmp r0, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	b _0800A1D8
_080099D0
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _080099D0
_080099F4
	cmp r4, #0x10
	subgt r6, r6, #2
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	LDRB r2, [r6, #5]
	orr r0, r0, r1, lsl #8
	LDRB r1, [r6, #2]
	orr r0, r0, r1, lsl #16
	LDRB r1, [r6, #3]
	orr sb, r0, r1, lsl #24
	LDRB r1, [r6, #4]
	orr r1, r1, r2, lsl #8
	LDRB r2, [r6, #6]
	orr r1, r1, r2, lsl #16
	LDRB r2, [r6, #7]
	orr fp, r1, r2, lsl #24
	LDRB r1, [r6, #8]
	LDRB r2, [r6, #9]
	orr r1, r1, r2, lsl #8
	LDRB r2, [r6, #0xa]
	orr r1, r1, r2, lsl #16
	LDRB r2, [r6, #0xb]
	add r6, r6, #0xc
	orr r1, r1, r2, lsl #24
	STR r1, [sp, #0x18]
	b _0800A1D8
_08009A5C
	LDR r1, [sp, #0x40]
	cmp r8, r1
	LDRGT r8, [sp, #0x40]
	LDR r1, [sp, #0x40]
	sub r0, r0, r8
	sub r1, r1, r8
	STR r1, [sp, #0x40]
	STR r0, [sl, #0x20]
	ldrh r0, [sl, #0x18]
	cmp r0, #1
	beq _08009AB0
	cmp r0, #2
	beq _08009D50
	cmp r0, #3
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	cmp r8, #0
	beq _0800A1D8
	b _0800A180
_08009AB0
	cmp r8, #0
	ble _0800A1D8
_08009AB8
	cmp r4, #0x10
	bge _08009AE4
_08009AC0
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009AC0
_08009AE4
	LDR r3, [sp, #0x24]
	MOV r0, r5, LSR #0x14
	add r0, r3, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0x290
	blo _08009B38
	mov r0, #0x100000
_08009B00
	MOV r0, r0, LSR #1
	MOV r2, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r2
	bxeq lr
	add r1, r3, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0x290
	bhs _08009B00
_08009B38
	add r0, r1, sl
	add r0, r0, #0x2000
	LDRB r0, [r0, #0xb98]
	cmp r1, #0x100
	MOV r5, r5, LSL r0
	sub r4, r4, r0
	bge _08009B80
	LDR r0, [r7, #0xc]
	sub r8, r8, #1
	add r2, r0, #1
	STR r2, [r7, #0xc]
	LDR r2, [r7, #8]
	STRB r1, [r2, r0]
	add r1, r7, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r7, #0xc]
	b _08009D44
_08009B80
	sub ip, r1, #0x100
	and r2, ip, #7
	cmp r2, #7
	bne _08009C28
	cmp r4, #0x10
	bge _08009BBC
_08009B98
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009B98
_08009BBC
	LDR lr, [sp, #0x20]
	MOV r0, r5, LSR #0x14
	add r0, lr, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0xfa
	blo _08009C10
	mov r0, #0x100000
_08009BD8
	MOV r0, r0, LSR #1
	MOV r3, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r3
	bxeq lr
	add r1, lr, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0xfa
	bhs _08009BD8
_08009C10
	add r0, r1, sl
	add r0, r0, #0x5000
	LDRB r0, [r0, #0x250]
	add r2, r2, r1
	MOV r5, r5, LSL r0
	sub r4, r4, r0
_08009C28
	MOV r1, ip, ASR #3
	cmp r1, #2
	add r0, r2, #2
	bls _08009CB4
	cmp r1, #3
	moveq r1, #1
	beq _08009CA4
	LDR r2, _08009E24 ;@ =gUnknown_0804AB34
	LDRB r2, [r2, r1]
	cmp r2, #0
	moveq r3, #0
	beq _08009C94
	cmp r4, r2
	bge _08009C84
_08009C60
	LDRB r3, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r3, r3, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r2
	orr r5, r5, r3, lsl ip
	blt _08009C60
_08009C84
	rsb r3, r2, #0x20
	MOV r3, r5, LSR r3
	MOV r5, r5, LSL r2
	sub r4, r4, r2
_08009C94
	LDR r2, _08009E28 ;@ =gUnknown_0804AA68
	LDR r1, [r2, r1, lsl #2]
	add r1, r1, r3
	sub r1, r1, #2
_08009CA4
	STR fp, [sp, #0x18]
	mov fp, sb
	mov sb, r1
	b _08009CE0
_08009CB4
	cmp r1, #0
	moveq r1, sb
	beq _08009CE0
	cmp r1, #1
	moveq r1, fp
	moveq fp, sb
	moveq sb, r1
	beq _08009CE0
	LDR r1, [sp, #0x18]
	STR sb, [sp, #0x18]
	mov sb, r1
_08009CE0
	LDR r2, [r7, #0xc]
	sub r8, r8, r0
	sub r1, r2, r1
	LDR r2, [r7, #0x10]
	and r2, r2, r1
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	ble _08009D44
_08009D04
	LDR r1, [r7, #8]
	add r3, r2, #1
	LDRB ip, [r1, r2]
	LDR r2, [r7, #0xc]
	add lr, r2, #1
	STR lr, [r7, #0xc]
	STRB ip, [r1, r2]
	LDR r1, [r7, #0x10]
	LDR r2, [r7, #0xc]
	and r2, r2, r1
	STR r2, [r7, #0xc]
	and r2, r1, r3
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	bgt _08009D04
_08009D44
	cmp r8, #0
	bgt _08009AB8
	b _0800A1D8
_08009D50
	cmp r8, #0
	ble _0800A1D8
_08009D58
	cmp r4, #0x10
	bge _08009D84
_08009D60
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009D60
_08009D84
	LDR r3, [sp, #0x24]
	MOV r0, r5, LSR #0x14
	add r0, r3, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0x290
	blo _08009DD8
	mov r0, #0x100000
_08009DA0
	MOV r0, r0, LSR #1
	MOV r2, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r2
	bxeq lr
	add r1, r3, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0x290
	bhs _08009DA0
_08009DD8
	add r0, r1, sl
	add r0, r0, #0x2000
	LDRB r0, [r0, #0xb98]
	cmp r1, #0x100
	MOV r5, r5, LSL r0
	sub r4, r4, r0
	bge _08009E2C
	LDR r0, [r7, #0xc]
	sub r8, r8, #1
	add r2, r0, #1
	STR r2, [r7, #0xc]
	LDR r2, [r7, #8]
	STRB r1, [r2, r0]
	add r1, r7, #0xc
	LDMIA r1, {r0, r1}
	and r0, r0, r1
	STR r0, [r7, #0xc]
	b _0800A174
	ALIGN
_08009E20 DCDU _0803EDE8
_08009E24 DCDU gUnknown_0804AB34
_08009E28 DCDU gUnknown_0804AA68
_08009E2C
	sub ip, r1, #0x100
	and r2, ip, #7
	cmp r2, #7
	bne _08009ED4
	cmp r4, #0x10
	bge _08009E68
_08009E44
	LDRB r0, [r6]
	LDRB r1, [r6, #1]
	add r6, r6, #2
	orr r0, r0, r1, lsl #8
	rsb r1, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r0, lsl r1
	blt _08009E44
_08009E68
	LDR lr, [sp, #0x20]
	MOV r0, r5, LSR #0x14
	add r0, lr, r0, lsl #1
	ldrh r1, [r0]
	cmp r1, #0xfa
	blo _08009EBC
	mov r0, #0x100000
_08009E84
	MOV r0, r0, LSR #1
	MOV r3, r1, LSL #1
	ands r1, r5, r0
	movne r1, #1
	cmp r0, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r1, r1, r3
	bxeq lr
	add r1, lr, r1, lsl #1
	ldrh r1, [r1]
	cmp r1, #0xfa
	bhs _08009E84
_08009EBC
	add r0, r1, sl
	add r0, r0, #0x5000
	LDRB r0, [r0, #0x250]
	add r2, r2, r1
	MOV r5, r5, LSL r0
	sub r4, r4, r0
_08009ED4
	add r0, r2, #2
	MOV r2, ip, ASR #3
	cmp r2, #2
	bls _0800A0E4
	LDR r1, _08009E24 ;@ =gUnknown_0804AB34
	LDR r3, _08009E28 ;@ =gUnknown_0804AA68
	LDRB r1, [r1, r2]
	LDR r2, [r3, r2, lsl #2]
	sub r3, r2, #2
	cmp r1, #3
	ble _08009FE8
	subs r1, r1, #3
	moveq r2, #0
	beq _08009F48
	cmp r4, r1
	bge _08009F38
_08009F14
	LDRB r2, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r2, r2, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r1
	orr r5, r5, r2, lsl ip
	blt _08009F14
_08009F38
	rsb r2, r1, #0x20
	MOV r2, r5, LSR r2
	MOV r5, r5, LSL r1
	sub r4, r4, r1
_08009F48
	add ip, r3, r2, lsl #3
	cmp r4, #0x10
	bge _08009F78
_08009F54
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt _08009F54
_08009F78
	LDR lr, [sp, #0x1c]
	MOV r1, r5, LSR #0x19
	add r1, lr, r1, lsl #1
	ldrh r2, [r1]
	cmp r2, #8
	blo _08009FCC
	mov r1, #0x2000000
_08009F94
	MOV r1, r1, LSR #1
	MOV r3, r2, LSL #1
	ands r2, r5, r1
	movne r2, #1
	cmp r1, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r2, r2, r3
	bxeq lr
	add r2, lr, r2, lsl #1
	ldrh r2, [r2]
	cmp r2, #8
	bhs _08009F94
_08009FCC
	add r1, r2, sl
	add r1, r1, #0x5000
	LDRB r1, [r1, #0x4aa]
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, ip, r2
	b _0800A0D4
_08009FE8
	bne _0800A088
	cmp r4, #0x10
	bge _0800A018
_08009FF4
	LDRB r1, [r6]
	LDRB r2, [r6, #1]
	add r6, r6, #2
	orr r1, r1, r2, lsl #8
	rsb r2, r4, #0x10
	add r4, r4, #0x10
	cmp r4, #0x10
	orr r5, r5, r1, lsl r2
	blt _08009FF4
_0800A018
	LDR lr, [sp, #0x1c]
	MOV r1, r5, LSR #0x19
	add r1, lr, r1, lsl #1
	ldrh r2, [r1]
	cmp r2, #8
	blo _0800A06C
	mov r1, #0x2000000
_0800A034
	MOV r1, r1, LSR #1
	MOV ip, r2, LSL #1
	ands r2, r5, r1
	movne r2, #1
	cmp r1, #0
	addeq sp, sp, #0x44
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	moveq r0, #2
	orr r2, r2, ip
	bxeq lr
	add r2, lr, r2, lsl #1
	ldrh r2, [r2]
	cmp r2, #8
	bhs _0800A034
_0800A06C
	add r1, r2, sl
	add r1, r1, #0x5000
	LDRB r1, [r1, #0x4aa]
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, r3, r2
	b _0800A0D4
_0800A088
	cmp r1, #0
	movle r1, #1
	ble _0800A0D4
	cmp r4, r1
	bge _0800A0C0
_0800A09C
	LDRB r2, [r6]
	LDRB ip, [r6, #1]
	add r6, r6, #2
	orr r2, r2, ip, lsl #8
	rsb ip, r4, #0x10
	add r4, r4, #0x10
	cmp r4, r1
	orr r5, r5, r2, lsl ip
	blt _0800A09C
_0800A0C0
	rsb r2, r1, #0x20
	MOV r2, r5, LSR r2
	MOV r5, r5, LSL r1
	sub r4, r4, r1
	add r1, r3, r2
_0800A0D4
	STR fp, [sp, #0x18]
	mov fp, sb
	mov sb, r1
	b _0800A110
_0800A0E4
	cmp r2, #0
	moveq r1, sb
	beq _0800A110
	cmp r2, #1
	moveq r1, fp
	moveq fp, sb
	moveq sb, r1
	beq _0800A110
	LDR r1, [sp, #0x18]
	STR sb, [sp, #0x18]
	mov sb, r1
_0800A110
	LDR r2, [r7, #0xc]
	sub r8, r8, r0
	sub r1, r2, r1
	LDR r2, [r7, #0x10]
	and r2, r2, r1
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	ble _0800A174
_0800A134
	LDR r1, [r7, #8]
	add r3, r2, #1
	LDRB ip, [r1, r2]
	LDR r2, [r7, #0xc]
	add lr, r2, #1
	STR lr, [r7, #0xc]
	STRB ip, [r1, r2]
	LDR r1, [r7, #0x10]
	LDR r2, [r7, #0xc]
	and r2, r2, r1
	STR r2, [r7, #0xc]
	and r2, r1, r3
	mov r1, r0
	cmp r1, #0
	sub r0, r0, #1
	bgt _0800A134
_0800A174
	cmp r8, #0
	bgt _08009D58
	b _0800A1D8
_0800A180
	LDR r0, [r7, #0x10]
	add r1, r0, #1
	LDR r0, [r7, #0xc]
	sub r1, r1, r0
	cmp r1, r8
	movhs r1, r8
	STR r1, [sp, #8]
	LDR r1, [r7, #8]
	LDR r2, [sp, #8]
	add r0, r1, r0
	mov r1, r6
	bl sub_803BF10
	LDR r0, [r7, #0xc]
	LDR r1, [sp, #8]
	add r0, r0, r1
	LDR r1, [r7, #0x10]
	and r0, r0, r1
	STR r0, [r7, #0xc]
	LDR r1, [sp, #8]
	add r6, r6, r1
	subs r8, r8, r1
	bne _0800A180
_0800A1D8
	LDR r0, [sl, #0x20]
	LDR r1, [sp, #0x40]
	mov r8, r0
	cmp r0, #0
	ble _0800A1F8
	cmp r1, #0
	bgt _08009A5C
	b _0800A200
_0800A1F8
	cmp r1, #0
	bgt _080096F8
_0800A200
	LDR r1, [sp, #0x40]
	cmp r1, #0
	addne sp, sp, #0x44
	LDMNEFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movne r0, #2
	bxne lr
	stmib sl, {sb, fp}
	LDR r1, [sp, #0x18]
	STR r1, [sl, #0xc]
	LDR r0, [sl, #0x24]
	add r1, r0, #1
	STR r1, [sl, #0x24]
	add sp, sp, #0x44
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_800A240
sub_800A240 ;@ 0x0800A240
	STMFD SP!, {r3, lr}
	mov r2, r1
	add r1, r0, #0x30
	bl sub_80095B8
	LDMFD SP!, {r3, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_800A25C
sub_800A25C ;@ 0x0800A25C
	LDR r0, [r1]
	bic r0, r0, #0xf8000000
	bx lr

	arm_func_start sub_800A268
sub_800A268 ;@ 0x0800A268
	mov r0, #4
	bx lr
_0800A270
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _0800A294
	mov r0, #0x3c
	bl sub_803E104
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_0800A294
	mov r0, r4
	bl sub_803E110
	LDR r0, _0800A9B4 ;@ =_0803EE14
	STR r0, [r4]
	mov r0, #4
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_800A2B8
sub_800A2B8 ;@ 0x0800A2B8
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl sub_803E134
	LDR r0, [r5]
	mov r1, #0
	add r0, r0, #4
	STR r0, [r4, #0x20]
	LDR r0, [r5, #8]
	STR r0, [r4, #0x24]
	LDR r0, [r5, #8]
	STR r0, [r4, #0x28]
	LDRB r0, [r5, #0xc]
	cmp r0, #2
	LDR r0, [r5, #8]
	bne _0800A30C
	STR r0, [r4, #0x2c]
	LDR r0, [r5]
	LDR r0, [r0]
	STR r0, [r4, #0x30]
	b _0800A320
_0800A30C
	LDR r2, [r5]
	LDR r2, [r2]
	add r0, r0, r2
	add r2, r4, #0x2c
	STMIA r2, {r0, r1}
_0800A320
	mov r0, #1
	STR r1, [r4, #0x34]!
	STR r0, [r4, #4]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_800A334
sub_800A334 ;@ 0x0800A334
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r0, #4]
	mov r5, r1
	LDR r1, [r4, #0x2c]
	cmp r0, #1
	bne _0800A368
	LDR r0, [r4, #0x28]
	add r0, r0, r5
	STR r0, [r4, #0x28]
	cmp r0, r1
	STRHI r1, [r4, #0x28]
	b _0800A46C
_0800A368
	LDR ip, [r4, #0x24]
	sub r0, ip, r1
	cmp r0, #0x10000
	blt _0800A42C
	add r0, r1, #0x8000
	sub r2, ip, r0
	add ip, r2, #4
	mov r2, r1
	mov r3, r0
	cmp r0, r1
	mov lr, #0
	bhs _0800A3AC
	add r6, r3, ip
	cmp r6, r2
	movhi r3, r6
	addhi r2, r2, ip
	movhi lr, #0xa00000
_0800A3AC
	LDR r6, _0800A9B8 ;@ =gUnknown_03003EB4
	LDR r6, [r6]
	cmp r6, #0
	beq _0800A3D0
	MOV r2, ip, LSL #9
	mov r3, #0x4000000
	orr r2, r3, r2, lsr #11
	bl sub_803E14C
	b _0800A414
_0800A3D0
	orr r0, r2, r3
	mov r1, #0x4000000
	add r1, r1, #0xd4
	orr r0, r0, ip
	tst r0, #2
	STR r3, [r1]
	STR r2, [r1, #4]
	beq _0800A404
	orr r0, lr, ip, lsr #1
	orr r0, r0, #0x80000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
	b _0800A414
_0800A404
	orr r0, lr, ip, lsr #2
	orr r0, r0, #0x84000000
	STR r0, [r1, #8]
	LDR r0, [r1, #8]
_0800A414
	LDR r0, [r4, #0x28]
	sub r0, r0, #0x8000
	STR r0, [r4, #0x28]
	LDR r0, [r4, #0x24]
	sub r0, r0, #0x8000
	STR r0, [r4, #0x24]
_0800A42C
	LDR r0, [r4, #0x30]
	cmp r0, r5
	bhs _0800A450
	LDR r1, [r4, #0x24]
	add r0, r1, r0
	STR r0, [r4, #0x28]
	mov r0, #0
	STR r0, [r4, #0x30]
	b _0800A46C
_0800A450
	LDR r1, [r4, #0x28]
	add r1, r1, r5
	STR r1, [r4, #0x28]
	LDR r2, [r4, #0x24]
	sub r1, r1, r2
	sub r0, r0, r1
	STR r0, [r4, #0x30]
_0800A46C
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	cmp r0, r1
	bhs _0800A76C
	mov lr, #3
	mov ip, #1
_0800A484
	LDR r0, [r4, #0x34]
	tst r0, #0x7f
	MOVNE r0, r0, LSL #1
	bne _0800A4A8
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
_0800A4A8
	STR r0, [r4, #0x34]
	MOVS r0, r0, LSL #0x17
	bpl _0800A504
_0800A4B4
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r1, [r0]
	LDR r0, [r4, #0x24]
	add r2, r0, #1
	STR r2, [r4, #0x24]
	STRB r1, [r0]
	LDR r0, [r4, #0x34]
	tst r0, #0x7f
	MOVNE r0, r0, LSL #1
	bne _0800A4F8
	LDR r0, [r4, #0x20]
	add r1, r0, #1
	STR r1, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
_0800A4F8
	STR r0, [r4, #0x34]
	MOVS r0, r0, LSL #0x17
	bmi _0800A4B4
_0800A504
	mov r0, #1
_0800A508
	LDR r1, [r4, #0x34]
	tst r1, #0x7f
	MOVNE r1, r1, LSL #1
	bne _0800A52C
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r1, ip, r1, lsl #1
_0800A52C
	MOV r2, r1, LSL #0x17
	MOV r2, r2, LSR #0x1f
	add r0, r2, r0, lsl #1
	tst r1, #0x7f
	MOVNE r2, r1, LSL #1
	STR r1, [r4, #0x34]
	bne _0800A55C
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r2, ip, r1, lsl #1
_0800A55C
	STR r2, [r4, #0x34]
	MOVS r1, r2, LSL #0x17
	bmi _0800A5A0
	tst r2, #0x7f
	MOVNE r1, r2, LSL #1
	bne _0800A588
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r1, ip, r1, lsl #1
_0800A588
	STR r1, [r4, #0x34]
	MOV r1, r1, LSL #0x17
	MOV r1, r1, LSR #0x1f
	add r0, r1, r0, lsl #1
	sub r0, r0, #2
	b _0800A508
_0800A5A0
	cmp r0, #2
	bne _0800A5E0
	add r1, r4, #0x34
	LDMIA r1, {r0, r1}
	tst r0, #0x7f
	MOVNE r0, r2, LSL #1
	bne _0800A5D0
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
_0800A5D0
	STR r0, [r4, #0x34]
	MOV r0, r0, LSL #0x17
	MOV r0, r0, LSR #0x1f
	b _0800A610
_0800A5E0
	LDR r1, [r4, #0x20]
	add r2, r1, #1
	STR r2, [r4, #0x20]
	LDRB r1, [r1]
	add r0, r1, r0, lsl #8
	sub r1, r0, #0x300
	cmn r1, #1
	beq _0800A76C
	bic r0, ip, r1
	MOV r1, r1, LSR #1
	add r1, r1, #1
	STR r1, [r4, #0x38]
_0800A610
	cmp r0, #0
	LDR r0, [r4, #0x34]
	and r2, r0, #0x7f
	beq _0800A650
	cmp r2, #0
	MOVNE r0, r0, LSL #1
	bne _0800A640
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
_0800A640
	STR r0, [r4, #0x34]
	MOV r0, r0, LSL #0x17
	add r0, ip, r0, lsr #31
	b _0800A718
_0800A650
	cmp r2, #0
	MOVNE r0, r0, LSL #1
	bne _0800A670
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
_0800A670
	MOV r2, r0, LSL #0x17
	cmp r2, #0
	STR r0, [r4, #0x34]
	movge r0, #1
	bge _0800A6B4
	tst r0, #0x7f
	MOVNE r0, r0, LSL #1
	bne _0800A6A4
	LDR r0, [r4, #0x20]
	add r2, r0, #1
	STR r2, [r4, #0x20]
	LDRB r0, [r0]
	add r0, ip, r0, lsl #1
_0800A6A4
	STR r0, [r4, #0x34]
	MOV r0, r0, LSL #0x17
	add r0, lr, r0, lsr #31
	b _0800A718
_0800A6B4
	LDR r2, [r4, #0x34]
	tst r2, #0x7f
	MOVNE r2, r2, LSL #1
	bne _0800A6D8
	LDR r2, [r4, #0x20]
	add r3, r2, #1
	STR r3, [r4, #0x20]
	LDRB r2, [r2]
	add r2, ip, r2, lsl #1
_0800A6D8
	MOV r3, r2, LSL #0x17
	MOV r3, r3, LSR #0x1f
	STR r2, [r4, #0x34]
	tst r2, #0x7f
	MOVNE r2, r2, LSL #1
	add r0, r3, r0, lsl #1
	bne _0800A708
	LDR r2, [r4, #0x20]
	add r3, r2, #1
	STR r3, [r4, #0x20]
	LDRB r2, [r2]
	add r2, ip, r2, lsl #1
_0800A708
	STR r2, [r4, #0x34]
	MOVS r2, r2, LSL #0x17
	bpl _0800A6B4
	add r0, r0, #3
_0800A718
	cmp r1, #0x500
	movls r2, #0
	movhi r2, #1
	add r0, r2, r0
	LDR r2, [r4, #0x24]
	sub r1, r2, r1
	LDRB r3, [r1], #1
	add r6, r2, #1
	STR r6, [r4, #0x24]
	STRB r3, [r2]
_0800A740
	LDR r2, [r4, #0x24]
	LDRB r3, [r1], #1
	add r6, r2, #1
	STR r6, [r4, #0x24]
	STRB r3, [r2]
	subs r0, r0, #1
	bne _0800A740
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	cmp r0, r1
	blo _0800A484
_0800A76C
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0800A790
	add r1, r4, #0x24
	LDMIA r1, {r0, r1}
	sub r0, r0, r1
	LDR r1, [r4, #0x30]
	sub r0, r1, r0
	STR r0, [r4, #0x30]
_0800A790
	LDR r0, [r4, #0x28]
	sub r0, r0, r5
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	arm_func_start sub_800A7A0
sub_800A7A0 ;@ 0x0800A7A0
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _0800A7C4
	LDR r1, [r0, #0x24]
	LDR r0, [r0, #0x2c]
	cmp r1, r0
	movlo r0, #0
	movhs r0, #1
	bx lr
_0800A7C4
	LDR r0, [r0, #0x30]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr

	arm_func_start sub_800A7D4
sub_800A7D4 ;@ 0x0800A7D4
	STMFD SP!, {r4, r5, r6, lr}
	mov lr, #1
	mov r5, #1
	mov r4, #3
	add r0, r0, #4
	mov r2, #0
_0800A7EC
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r3, r2, LSL #0x17
	bpl _0800A824
_0800A804
	LDRB r3, [r0], #1
	tst r2, #0x7f
	STRB r3, [r1], #1
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r3, r2, LSL #0x17
	bmi _0800A804
_0800A824
	mov r3, #1
_0800A828
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV ip, r2, LSL #0x17
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	add r3, r3, ip, lsr #31
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS ip, r2, LSL #0x17
	bmi _0800A880
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV ip, r2, LSL #0x17
	add r3, r3, ip, lsr #31
	sub r3, r3, #2
	b _0800A828
_0800A880
	cmp r3, #2
	bne _0800A8A8
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	mov ip, r5
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r3, r2, LSL #0x17
	MOV r3, r3, LSR #0x1f
	b _0800A8D8
_0800A8A8
	LDRB ip, [r0], #1
	add r3, ip, r3, lsl #8
	sub ip, r3, #0x300
	cmn ip, #1
	bicne r3, lr, ip
	MOVNE ip, ip, LSR #1
	addne ip, ip, #1
	movne r5, ip
	bne _0800A8D8
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #1
	bx lr
_0800A8D8
	cmp r3, #0
	and r3, r2, #0x7f
	beq _0800A900
	cmp r3, #0
	LDREQB r2, [r0], #1
	MOVNE r2, r2, LSL #1
	addeq r2, lr, r2, lsl #1
	MOV r3, r2, LSL #0x17
	add r3, lr, r3, lsr #31
	b _0800A974
_0800A900
	cmp r3, #0
	LDREQB r2, [r0], #1
	MOVNE r2, r2, LSL #1
	addeq r2, lr, r2, lsl #1
	MOV r3, r2, LSL #0x17
	cmp r3, #0
	movge r3, #1
	bge _0800A93C
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r3, r2, LSL #0x17
	add r3, r4, r3, lsr #31
	b _0800A974
_0800A93C
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	MOV r3, r3, LSL #1
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOV r6, r2, LSL #0x17
	tst r2, #0x7f
	LDREQB r2, [r0], #1
	add r3, r3, r6, lsr #31
	addeq r2, lr, r2, lsl #1
	MOVNE r2, r2, LSL #1
	MOVS r6, r2, LSL #0x17
	bpl _0800A93C
	add r3, r3, #3
_0800A974
	cmp ip, #0x500
	movls r6, #0
	movhi r6, #1
	add r3, r6, r3
	sub ip, r1, ip
	LDRB r6, [ip], #1
	STRB r6, [r1], #1
_0800A990
	LDRB r6, [ip], #1
	subs r3, r3, #1
	STRB r6, [r1], #1
	bne _0800A990
	b _0800A7EC

	arm_func_start sub_800A9A4
sub_800A9A4 ;@ 0x0800A9A4
	LDR r0, [r1]
	bx lr

	arm_func_start sub_800A9AC
sub_800A9AC ;@ 0x0800A9AC
	mov r0, #4
	bx lr
	ALIGN
_0800A9B4 DCDU _0803EE14
_0800A9B8 DCDU gUnknown_03003EB4
_0800A9BC
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _0800A9E0
	mov r0, #0x30
	bl sub_803E104
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_0800A9E0
	mov r0, r4
	bl sub_803E110
	LDR r0, _0800AA18 ;@ =_0803EE40
	STR r0, [r4]
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_800AA04
sub_800AA04 ;@ 0x0800AA04
	LDR r0, [r1]
	MOV r0, r0, LSR #8
	bx lr

	arm_func_start sub_800AA10
sub_800AA10 ;@ 0x0800AA10
	mov r0, #4
	bx lr
	ALIGN
_0800AA18 DCDU _0803EE40

	arm_func_start sub_800AA1C
sub_800AA1C ;@ 0x0800AA1C
	mov r0, r1
	mov r1, #0
	mov r2, #0
	b _0803E158

	arm_func_start sub_800AA2C
sub_800AA2C ;@ 0x0800AA2C
	mov r0, r1
	mov r1, #0
	mov r2, #0
	b _0803E164

	arm_func_start sub_800AA3C
sub_800AA3C ;@ 0x0800AA3C
	mov r1, #1
	add r3, r0, r2, lsl #2
	STR r1, [r3, #0x58]
	cmp r2, #8
	addls pc, pc, r2, lsl #2
jmpt_0800AA50
	b _0800AAE8
jmpt_0800AA54
	b _0800AAE8
jmpt_0800AA58
	b _0800AA78
jmpt_0800AA5C
	b _0800AA80
jmpt_0800AA60
	b _0800AA8C
jmpt_0800AA64
	b _0800AA98
jmpt_0800AA68
	b _0800AAA8
jmpt_0800AA6C
	b _0800AAB8
jmpt_0800AA70
	b _0800AAC8
jmpt_0800AA74
	b _0800AAD8
_0800AA78
	LDR r0, [r0, #0x54]
	bx lr
_0800AA80
	LDR r0, [r0, #0x54]
	add r0, r0, #0x40
	bx lr
_0800AA8C
	LDR r0, [r0, #0x54]
	add r0, r0, #0x2d40
	bx lr
_0800AA98
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x2d40
	bx lr
_0800AAA8
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x3240
	bx lr
_0800AAB8
	LDR r0, [r0, #0x54]
	add r0, r0, #0xb000
	add r0, r0, #0x25c
	bx lr
_0800AAC8
	LDR r0, [r0, #0x54]
	add r0, r0, #0xb000
	add r0, r0, #0x274
	bx lr
_0800AAD8
	LDR r0, [r0, #0x54]
	add r0, r0, #0x8000
	add r0, r0, #0x32c0
	bx lr
_0800AAE8
	mov r0, #0
	bx lr

	arm_func_start sub_800AAF0
sub_800AAF0 ;@ 0x0800AAF0
	mov r1, #0
	add r0, r0, r2, lsl #2
	STR r1, [r0, #0x58]
	bx lr

	arm_func_start sub_800AB00
sub_800AB00 ;@ 0x0800AB00
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	add r5, r4, #0x24
	cmp r0, #0
	movne r0, r5
	blne sub_8006FE4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r5!, {r0, r1, r2, r3, ip, lr}
	STMIA r5, {r0, r1, r2, r3, ip, lr}
	LDR r0, [r4, #0x54]
	cmp r0, #0
	beq _0800AB5C
	mov r2, #0
	mov r1, #0
	bl _0803E164
	mov r0, #0
	STR r0, [r4, #0x54]
_0800AB5C
	add r0, r4, #0x58
	mov r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, r4, r5, ip, lr}
	STMIA r0, {r1, r2, r3}
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_800AB8C
sub_800AB8C ;@ 0x0800AB8C
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r0
	LDR r0, _0800AFC8 ;@ =_0803EE98
	add r5, r4, #0x24
	STR r0, [r4]
	LDR r0, [r4, #0x28]
	mov r6, r1
	cmp r0, #0
	movne r0, r5
	blne sub_8006FE4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r5!, {r0, r1, r2, r3, ip, lr}
	STMIA r5, {r0, r1, r2, r3, ip, lr}
	LDR r0, [r4, #0x54]
	cmp r0, #0
	beq _0800ABF4
	mov r2, #0
	mov r1, #0
	bl _0803E164
	mov r0, #0
	STR r0, [r4, #0x54]
_0800ABF4
	add r0, r4, #0x58
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, r5, ip, lr}
	STMIA r0, {r1, r2, r3, r5}
	mov r1, #0
	mov r0, r4
	bl sub_803E11C
	cmp r6, #0
	movne r0, r4
	LDMNEFD SP!, {r4, r5, r6, lr}
	bne _0803E128
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

	arm_func_start sub_800AC3C
sub_800AC3C ;@ 0x0800AC3C
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrh r0, [r0, #4]
	mov r5, r1
	mov r1, #2
	cmp r0, #0
	LDRNE r0, [r4, #0x20]
	STRNE r0, [r4, #0x30]
	add r0, r4, #0x24
	mov r6, r0
	STR r5, [r4, #0x34]
	bl sub_8007104
	mov r7, #0
	cmp r0, #1
	bne _0800AC98
	mov r0, r6
	bl sub_8006FE4
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl _0803E164
	STR r7, [r4, #0x54]
	b _0800ACC0
_0800AC98
	cmp r0, #0
	beq _0800ACC0
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl _0803E164
	STR r7, [r4, #0x54]
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
_0800ACC0
	LDR r0, [r4, #0x30]
	sub r0, r0, r5
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	arm_func_start sub_800ACD0
sub_800ACD0 ;@ 0x0800ACD0
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	LDR r1, [r0]
	add lr, pc, #0xC ;@ =loc_800ACF0
	LDR r2, [r1, #4]
	mov r4, r0
	add r1, r2, r1
	bx r1
loc_800ACF0
	mov r1, r5
	mov r0, r4
	bl sub_803E134
	LDR r0, [r5, #8]
	add r3, r4, #0x30
	STR r0, [r4, #0x20]
	LDR r0, [r5]
	mov r2, #0
	add r0, r0, #4
	STR r0, [r4, #0x24]
	mov r0, #0x40000000
	STR r0, [r4, #0x28]
	LDR r0, [r5, #8]
	mov r5, #0
	STMIA r3, {r0, r5}
	mov r0, #0x3740
	add r0, r0, #0x8000
	mov r1, #0
	bl _0803E158
	STR r0, [r4, #0x54]
	LDR r0, _0800AFCC ;@ =sub_800AA3C
	STR r0, [r4, #0x40]
	LDR r0, _0800AFD0 ;@ =sub_800AAF0
	STR r0, [r4, #0x44]
	STR r4, [r4, #0x48]
	add r0, r4, #0x24
	bl sub_8007040
	cmp r0, #0
	LDMEQFD SP!, {r3, r4, r5, lr}
	moveq r0, #1
	bxeq lr
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl _0803E164
	STR r5, [r4, #0x54]
	LDMFD SP!, {r3, r4, r5, lr}
	mov r0, #0
	bx lr
_0800AD8C
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _0800ADB0
	mov r0, #0x80
	bl sub_803E104
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_0800ADB0
	mov r0, r4
	bl sub_803E110
	LDR r0, _0800AFC8 ;@ =_0803EE98
	mov r1, #0
	STR r0, [r4]
	mov r0, #3
	strh r0, [r4, #6]
	add r0, r4, #0x24
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0, {r1, r2}
	mov r0, #0
	STR r0, [r4, #0x54]
	add r0, r4, #0x58
	mov r2, #0
	mov r1, #0
	mov lr, #0
	mov ip, #0
	mov r3, #0
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0, {r1, r2, r3, ip, lr}
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_800AE20
sub_800AE20 ;@ 0x0800AE20
	STMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x9c
	add r5, sp, #0x1c
	mov r8, r0
	mov r0, r5
	mov sb, r1
	bl sub_803E110
	LDR r0, _0800AFC8 ;@ =_0803EE98
	add r4, r5, #0x24
	STR r0, [sp, #0x1c]
	mov r0, #3
	strh r0, [sp, #0x22]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0
	mov r7, #0
	mov ip, #0
	mov lr, #0
	STMIA r4!, {r0, r1, r2, r3, r6, r7, ip, lr}
	STMIA r4, {r0, r1, r2, r3}
	mov r6, #0
	STR r6, [sp, #0x70]
	add r0, r5, #0x58
	mov r3, #0
	mov r2, #0
	mov r1, #0
	mov r7, #0
	mov lr, #0
	mov ip, #0
	STMIA r0!, {r1, r2, r3, r7, ip, lr}
	STMIA r0, {r1, r2, r3, r7}
	add r7, sp, #4
	mov r0, r7
	sub r4, r4, #0x20
	bl sub_803E170
	mov r1, r7
	mov r0, r5
	STR r8, [sp, #4]
	STR sb, [sp, #0xc]
	bl sub_800ACD0
	cmp r0, #0
	bne _0800AEF0
	mov r4, #0
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
_0800AEF0
	ldrh r0, [sp, #0x20]
	mov r1, #2
	cmp r0, #0
	LDRNE r0, [sp, #0x3c]
	STRNE r0, [sp, #0x4c]
	mov r0, #0x1000000
	STR r0, [sp, #0x50]
	mov r0, r4
	bl sub_8007104
	cmp r0, #1
	bne _0800AF3C
	mov r0, r4
	bl sub_8006FE4
	mov r2, #0
	mov r1, #0
	LDR r0, [sp, #0x70]
	bl _0803E164
	STR r6, [sp, #0x70]
	b _0800AF5C
_0800AF3C
	cmp r0, #0
	beq _0800AF5C
	mov r2, #0
	mov r1, #0
	LDR r0, [sp, #0x70]
	bl _0803E164
	STR r6, [sp, #0x70]
	b _0800AF68
_0800AF5C
	LDR r0, [sp, #0x4c]
	adds r0, r0, #-0x1000000
	bne _0800AF88
_0800AF68
	mov r4, #0
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
_0800AF88
	mov r4, #1
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr

	arm_func_start sub_800AFA8
sub_800AFA8 ;@ 0x0800AFA8
	LDR r0, [r0, #0x3c]
	rsbs r0, r0, #1
	movlo r0, #0
	bx lr

	arm_func_start sub_800AFB8
sub_800AFB8 ;@ 0x0800AFB8
	LDR r0, [r1]
	bx lr

	arm_func_start sub_800AFC0
sub_800AFC0 ;@ 0x0800AFC0
	mov r0, #4
	bx lr
	ALIGN
_0800AFC8 DCDU _0803EE98
_0800AFCC DCDU sub_800AA3C
_0800AFD0 DCDU sub_800AAF0

	thumb_func_start sub_800AFD4
sub_800AFD4 ;@ 0x0800AFD4
	push {r3, lr}
	cmp r0, #0
	bne _0800AFE4
	movs r0, #0xc
	bl sub_803D9F8
	cmp r0, #0
	beq _0800B014
_0800AFE4
	ldr r1, _0800B0C8 ;@ =_0803ECD4
	str r1, [r0]
	ldr r1, _0800B0CC ;@ =gUnknown_03003E98
	str r0, [r1]
	ldr r1, _0800B0D0 ;@ =_0803EB34
	str r1, [r0]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r1]
	movs r3, #0x40
	orrs r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #0x80
	bics r2, r3
	strh r2, [r1]
	ldr r1, _0800B0D4 ;@ =0x00007FFF
	movs r2, #5
	lsls r2, r2, #0x18
	strh r1, [r2]
	lsls r1, r3, #1
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
_0800B014
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B01A
sub_800B01A ;@ 0x0800B01A
	push {r3, lr}
	ldr r2, _0800B0C8 ;@ =_0803ECD4
	ldr r3, _0800B0CC ;@ =gUnknown_03003E98
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0800B02E
	bl sub_803DA18
_0800B02E
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B034
sub_800B034 ;@ 0x0800B034
	movs r0, #1
	lsls r0, r0, #0xc
	lsls r2, r0, #0xe
	cmp r1, #0
	ldrh r1, [r2]
	beq _0800B046
	orrs r0, r1
	strh r0, [r2]
	bx lr
_0800B046
	bics r1, r0
	strh r1, [r2]
	bx lr

	thumb_func_start sub_800B04C
sub_800B04C ;@ 0x0800B04C
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800B058
sub_800B058 ;@ 0x0800B058
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r2, [r0]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	strh r2, [r0]
	ldrh r2, [r0]
	orrs r2, r1
	strh r2, [r0]
	cmp r1, #2
	bls _0800B080
	ldrh r1, [r0]
	movs r2, #0xf
	lsls r2, r2, #8
	bics r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	lsrs r2, r0, #0x10
	orrs r1, r2
	strh r1, [r0]
_0800B080
	bx lr

	non_word_aligned_thumb_func_start sub_800B082
sub_800B082 ;@ 0x0800B082
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	bx lr

	non_word_aligned_thumb_func_start sub_800B08E
sub_800B08E ;@ 0x0800B08E
	push {r3, lr}
	bl sub_803D498
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B09A
sub_800B09A ;@ 0x0800B09A
	movs r0, #3
	lsls r0, r0, #0x19
	bx lr

	thumb_func_start sub_800B0A0
sub_800B0A0 ;@ 0x0800B0A0
	lsls r3, r2, #0x10
	lsls r0, r2, #8
	lsls r2, r2, #0x18
	lsrs r3, r3, #0x1b
	lsls r3, r3, #5
	lsrs r2, r2, #0x1b
	lsrs r0, r0, #0x1b
	orrs r0, r3
	lsls r2, r2, #0xa
	orrs r0, r2
	movs r2, #5
	lsls r2, r2, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	strh r0, [r1]
	bx lr

	thumb_func_start sub_800B0C0
sub_800B0C0 ;@ 0x0800B0C0
	movs r0, #1
	lsls r0, r0, #0x1a
	ldrh r0, [r0, #6]
	bx lr
	ALIGN
_0800B0C8 DCDU _0803ECD4
_0800B0CC DCDU gUnknown_03003E98
_0800B0D0 DCDU _0803EB34
_0800B0D4 DCDU 0x00007FFF

	thumb_func_start sub_800B0D8
sub_800B0D8 ;@ 0x0800B0D8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800B124 ;@ =0x00004014
	ldr r1, _0800B128 ;@ =0x04000200
	sub sp, #0x14
	strh r0, [r1, #4]
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_800AFD4
	add r6, sp, #4
	adds r0, r6, #0
	bl sub_800B1F6
	mov r7, sp
	mov r0, sp
	bl sub_800525C
	bl sub_800EA22
	movs r4, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_800527E
	movs r1, #0
	adds r0, r6, #0
	bl sub_800B286
	movs r1, #0
	adds r0, r5, #0
	bl sub_800B01A
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800B124 DCDU 0x00004014
_0800B128 DCDU 0x04000200

	thumb_func_start sub_800B12C
sub_800B12C ;@ 0x0800B12C
	push {r3, r4, r5, lr}
	ldr r5, _0800B150 ;@ =gUnknown_030033FC
	lsls r4, r1, #2
	str r2, [r5, r4]
	movs r4, #0
	cmp r2, #0
	beq _0800B13C
	adds r4, r3, #0
_0800B13C
	adds r2, r4, #0
	bl sub_800B154
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800B148
sub_800B148 ;@ 0x0800B148
	lsls r0, r1, #2
	ldr r1, _0800B150 ;@ =gUnknown_030033FC
	ldr r0, [r1, r0]
	bx lr
	ALIGN
_0800B150 DCDU gUnknown_030033FC

	thumb_func_start sub_800B154
sub_800B154 ;@ 0x0800B154
	movs r0, #1
	lsls r0, r1
	ldr r1, _0800B2B4 ;@ =0x04000200
	push {r4}
	ldrh r3, [r1, #8]
	movs r4, #0
	strh r4, [r1, #8]
	ldrh r4, [r1]
	cmp r2, #0
	beq _0800B16E
	orrs r4, r0
	strh r4, [r1]
	b _0800B172
_0800B16E
	bics r4, r0
	strh r4, [r1]
_0800B172
	strh r3, [r1, #8]
	cmp r0, #4
	bgt _0800B18C
	ldr r3, _0800B2B8 ;@ =0x04000004
	ldrh r1, [r3]
	lsls r0, r0, #3
	bics r1, r0
	strh r1, [r3]
	cmp r2, #0
	beq _0800B18C
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
_0800B18C
	pop {r4}
	bx lr

	thumb_func_start sub_800B190
sub_800B190 ;@ 0x0800B190
	ldr r2, _0800B2B4 ;@ =0x04000200
	push {r4}
	movs r1, #1
	adds r3, r2, #0
	subs r3, #0xe0
	lsls r1, r1, #0xc
	movs r4, #0
	cmp r0, #0
	beq _0800B1B2
	strh r4, [r3, #0x10]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800B2BC ;@ =0x0000C00F
	strh r0, [r3, #0x12]
_0800B1AE
	pop {r4}
	bx lr
_0800B1B2
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	strh r4, [r3, #0x12]
	b _0800B1AE

	thumb_func_start sub_800B1BC
sub_800B1BC ;@ 0x0800B1BC
	ldr r1, _0800B2B4 ;@ =0x04000200
	push {r3, lr}
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0x1f
	bl sub_80002E2

	non_word_aligned_thumb_func_start sub_800B1CA
sub_800B1CA ;@ 0x0800B1CA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B1D0
sub_800B1D0 ;@ 0x0800B1D0
	push {r3, lr}
	movs r0, #0xfb
	bl sub_0803D480
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_9
nullsub_9 ;@ 0x0800B1DE
	bx lr

	thumb_func_start nullsub_10
nullsub_10 ;@ 0x0800B1E0
	bx lr

	non_word_aligned_thumb_func_start nullsub_11
nullsub_11 ;@ 0x0800B1E2
	bx lr

	thumb_func_start nullsub_12
nullsub_12 ;@ 0x0800B1E4
	bx lr

	non_word_aligned_thumb_func_start nullsub_13
nullsub_13 ;@ 0x0800B1E6
	bx lr

	thumb_func_start nullsub_14
nullsub_14 ;@ 0x0800B1E8
	bx lr

	non_word_aligned_thumb_func_start nullsub_15
nullsub_15 ;@ 0x0800B1EA
	bx lr

	thumb_func_start nullsub_16
nullsub_16 ;@ 0x0800B1EC
	bx lr

	non_word_aligned_thumb_func_start nullsub_17
nullsub_17 ;@ 0x0800B1EE
	bx lr

	thumb_func_start nullsub_18
nullsub_18 ;@ 0x0800B1F0
	bx lr

	non_word_aligned_thumb_func_start nullsub_19
nullsub_19 ;@ 0x0800B1F2
	bx lr

	thumb_func_start nullsub_4
nullsub_4 ;@ 0x0800B1F4
	bx lr

	non_word_aligned_thumb_func_start sub_800B1F6
sub_800B1F6 ;@ 0x0800B1F6
	push {r4, lr}
	adds r4, r0, #0
	bne _0800B20E
	movs r0, #4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800B20E
	adds r0, r4, #0
_0800B208
	pop {r4}
	pop {r3}
	bx r3
_0800B20E
	ldr r0, _0800B2C0 ;@ =_0803ECE8
	ldr r3, _0800B2B4 ;@ =0x04000200
	str r0, [r4]
	ldr r0, _0800B2C4 ;@ =gUnknown_03003EAC
	movs r2, #0
	str r4, [r0]
	ldr r0, _0800B2C8 ;@ =_0803EC70
	str r0, [r4]
	strh r2, [r3, #8]
	movs r0, #0
	strh r0, [r3]
	lsls r1, r3, #0x11
	strh r0, [r1, #4]
	ldr r0, _0800B2CC ;@ =gUnknown_03002BEC
	ldr r1, _0800B2D0 ;@ =gUnknown_03007FC0
	str r0, [r1, #0x3c]
	ldr r1, _0800B2D4 ;@ =nullsub_4
	ldr r0, _0800B2D8 ;@ =gUnknown_030033FC
	str r1, [r0]
	ldr r1, _0800B2DC ;@ =nullsub_19
	str r1, [r0, #4]
	ldr r1, _0800B2E0 ;@ =nullsub_18
	str r1, [r0, #8]
	ldr r1, _0800B2E4 ;@ =nullsub_17
	str r1, [r0, #0xc]
	ldr r1, _0800B2E8 ;@ =nullsub_16
	str r1, [r0, #0x10]
	ldr r1, _0800B2EC ;@ =nullsub_15
	str r1, [r0, #0x14]
	ldr r1, _0800B2F0 ;@ =nullsub_14
	str r1, [r0, #0x18]
	ldr r1, _0800B2F4 ;@ =nullsub_13
	str r1, [r0, #0x1c]
	ldr r1, _0800B2F8 ;@ =nullsub_12
	str r1, [r0, #0x20]
	ldr r1, _0800B2FC ;@ =nullsub_11
	str r1, [r0, #0x24]
	ldr r1, _0800B300 ;@ =nullsub_10
	str r1, [r0, #0x28]
	ldr r1, _0800B304 ;@ =nullsub_9
	str r1, [r0, #0x2c]
	ldr r1, _0800B308 ;@ =sub_800B1D0
	str r1, [r0, #0x30]
	ldr r1, _0800B30C ;@ =sub_800B1BC
	str r1, [r0, #0x34]
	ldr r0, _0800B310 ;@ =0x04000120
	strh r2, [r0, #0x10]
	ldrh r1, [r3]
	lsrs r2, r0, #0xe
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _0800B2BC ;@ =0x0000C00F
	strh r1, [r0, #0x12]
	movs r2, #1
	movs r1, #0xd
	adds r0, r4, #0
	bl sub_800B154
	adds r0, r4, #0
	b _0800B208

	non_word_aligned_thumb_func_start sub_800B286
sub_800B286 ;@ 0x0800B286
	push {r3, lr}
	ldr r2, _0800B2C0 ;@ =_0803ECE8
	ldr r3, _0800B2C4 ;@ =gUnknown_03003EAC
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0800B29A
	bl sub_803DA18
_0800B29A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start nullsub_30
nullsub_30 ;@ 0x0800B2A0
	bx lr

	non_word_aligned_thumb_func_start nullsub_31
nullsub_31 ;@ 0x0800B2A2
	bx lr

	thumb_func_start sub_800B2A4
sub_800B2A4 ;@ 0x0800B2A4
	ldr r0, _0800B2B4 ;@ =0x04000200
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bx lr

	non_word_aligned_thumb_func_start sub_800B2AE
sub_800B2AE ;@ 0x0800B2AE
	movs r0, #0
	bx lr
	ALIGN
_0800B2B4 DCDU 0x04000200
_0800B2B8 DCDU 0x04000004
_0800B2BC DCDU 0x0000C00F
_0800B2C0 DCDU _0803ECE8
_0800B2C4 DCDU gUnknown_03003EAC
_0800B2C8 DCDU _0803EC70
_0800B2CC DCDU gUnknown_03002BEC
_0800B2D0 DCDU gUnknown_03007FC0
_0800B2D4 DCDU nullsub_4
_0800B2D8 DCDU gUnknown_030033FC
_0800B2DC DCDU nullsub_19
_0800B2E0 DCDU nullsub_18
_0800B2E4 DCDU nullsub_17
_0800B2E8 DCDU nullsub_16
_0800B2EC DCDU nullsub_15
_0800B2F0 DCDU nullsub_14
_0800B2F4 DCDU nullsub_13
_0800B2F8 DCDU nullsub_12
_0800B2FC DCDU nullsub_11
_0800B300 DCDU nullsub_10
_0800B304 DCDU nullsub_9
_0800B308 DCDU sub_800B1D0
_0800B30C DCDU sub_800B1BC
_0800B310 DCDU 0x04000120

	thumb_func_start sub_800B314
sub_800B314 ;@ 0x0800B314
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r6, [sp, #0x30]
	bl sub_8004C2C
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	movs r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B33E
	bl sub_800B66A
	cmp r0, #0
	beq _0800B33E
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B652
	movs r5, #1
_0800B33E
	cmp r4, #0
	beq _0800B366
	cmp r4, #1
	bne _0800B34C
	movs r0, #0x40
	bl sub_803B4D8
_0800B34C
	cmp r4, #0
	beq _0800B354
	cmp r4, #1
	bne _0800B3AA
_0800B354
	adds r6, #7
	lsrs r6, r6, #3
	movs r4, #0
	cmp r6, #0
	bls _0800B3AA
	lsrs r0, r7, #3
	str r0, [sp, #8]
	mov r7, sp
	b _0800B36E
_0800B366
	movs r0, #4
	bl sub_803B4D8
	b _0800B34C
_0800B36E
	ldr r1, [sp, #0x18]
	lsls r0, r4, #3
	adds r1, r0, r1
	movs r2, #8
	adds r0, r7, #0
	bl sub_803BF0C
	ldr r0, [sp, #8]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_803B81C
	cmp r0, #0
	beq _0800B3A4
	cmp r5, #0
	beq _0800B39A
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B39A
	movs r0, #0
_0800B39C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800B3A4
	adds r4, #1
	cmp r4, r6
	blo _0800B36E
_0800B3AA
	cmp r5, #0
	beq _0800B3B6
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B3B6
	movs r0, #1
	b _0800B39C

	non_word_aligned_thumb_func_start sub_800B3BA
sub_800B3BA ;@ 0x0800B3BA
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r6, [sp, #0x30]
	bl sub_8004C2C
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	movs r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B3E4
	bl sub_800B66A
	cmp r0, #0
	beq _0800B3E4
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B652
	movs r5, #1
_0800B3E4
	cmp r4, #0
	beq _0800B40C
	cmp r4, #1
	bne _0800B3F2
	movs r0, #0x40
	bl sub_803B4D8
_0800B3F2
	cmp r4, #0
	beq _0800B3FA
	cmp r4, #1
	bne _0800B450
_0800B3FA
	adds r6, #7
	lsrs r6, r6, #3
	movs r4, #0
	cmp r6, #0
	bls _0800B450
	lsrs r0, r7, #3
	str r0, [sp, #8]
	mov r7, sp
	b _0800B414
_0800B40C
	movs r0, #4
	bl sub_803B4D8
	b _0800B3F2
_0800B414
	ldr r0, [sp, #8]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_803B5A0
	cmp r0, #0
	beq _0800B43C
	cmp r5, #0
	beq _0800B432
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B432
	movs r0, #0
_0800B434
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800B43C
	ldr r1, [sp, #0x18]
	lsls r0, r4, #3
	adds r0, r0, r1
	movs r2, #8
	adds r1, r7, #0
	bl sub_803BF0C
	adds r4, #1
	cmp r4, r6
	blo _0800B414
_0800B450
	cmp r5, #0
	beq _0800B45C
	ldr r0, _0800B460 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B646
_0800B45C
	movs r0, #1
	b _0800B434
	ALIGN
_0800B460 DCDU gUnknown_03003E94

	thumb_func_start sub_800B464
sub_800B464 ;@ 0x0800B464
	adds r1, r0, #0
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	ldr r0, [r0]
	adds r0, #8
	cmp r1, #0
	beq _0800B482
	cmp r1, #1
	beq _0800B48C
	cmp r1, #2
	bne _0800B480
	ldr r1, [r0]
	movs r2, #2
	bics r1, r2
	str r1, [r0]
_0800B480
	bx lr
_0800B482
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
	bx lr
_0800B48C
	ldr r1, [r0]
	movs r2, #4
	bics r1, r2
	str r1, [r0]
	bx lr

	non_word_aligned_thumb_func_start sub_800B496
sub_800B496 ;@ 0x0800B496
	adds r2, r0, #0
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #8
	cmp r2, #0
	beq _0800B4BE
	cmp r2, #1
	beq _0800B4CA
	cmp r2, #2
	bne _0800B4DC
	ldr r2, [r0]
	movs r3, #2
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	movs r1, #0x51
	lsls r1, r1, #5
	adds r0, r0, r1
	bx lr
_0800B4BE
	ldr r2, [r0]
	movs r3, #1
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	bx lr
_0800B4CA
	ldr r2, [r0]
	movs r3, #4
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #4]
	movs r1, #7
	lsls r1, r1, #8
	adds r0, r0, r1
	bx lr
_0800B4DC
	movs r0, #0
	bx lr

	thumb_func_start sub_800B4E0
sub_800B4E0 ;@ 0x0800B4E0
	push {r3, lr}
	ldr r1, _0800B6D0 ;@ =sub_800B464
	ldr r0, _0800B6D4 ;@ =sub_800B496
	bl sub_80114B0
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B4F0
sub_800B4F0 ;@ 0x0800B4F0
	push {r4, lr}
	adds r4, r0, #0
	bne _0800B508
	movs r0, #0x14
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800B508
	adds r0, r4, #0
_0800B502
	pop {r4}
	pop {r3}
	bx r3
_0800B508
	ldr r0, _0800B6D8 ;@ =_0803ECD0
	movs r1, #0x61
	str r0, [r4]
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	lsls r1, r1, #5
	str r4, [r0]
	ldr r0, _0800B6DC ;@ =_0803EA8C
	movs r3, #0
	movs r2, #0
	str r0, [r4]
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	movs r1, #4
	bics r0, r1
	movs r1, #8
	bics r0, r1
	movs r1, #0x10
	bics r0, r1
	str r0, [r4, #8]
	ldr r0, _0800B6D4 ;@ =sub_800B496
	ldr r1, _0800B6D0 ;@ =sub_800B464
	bl sub_80114B0
	adds r0, r4, #0
	b _0800B502

	thumb_func_start sub_800B548
sub_800B548 ;@ 0x0800B548
	push {r3, lr}
	bl sub_801175C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B554
sub_800B554 ;@ 0x0800B554
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800B6DC ;@ =_0803EA8C
	adds r6, r1, #0
	str r0, [r4]
	bl sub_801175C
	ldr r0, [r4, #8]
	movs r5, #0
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0800B578
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	bl sub_803D9A8
	str r5, [r4, #4]
_0800B578
	ldr r0, _0800B6D8 ;@ =_0803ECD0
	cmp r6, #0
	str r0, [r4]
	ldr r0, _0800B6CC ;@ =gUnknown_03003E94
	str r5, [r0]
	beq _0800B58A
	adds r0, r4, #0
	bl sub_803DA18
_0800B58A
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_800B590
sub_800B590 ;@ 0x0800B590
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_801175C
	ldr r0, [r4, #8]
	lsls r0, r0, #0x1c
	bmi _0800B5AA
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	bl sub_803D9A8
_0800B5AA
	movs r6, #8
	cmp r5, #0
	bne _0800B5C8
	movs r1, #0x61
	lsls r1, r1, #5
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bics r0, r6
	str r0, [r4, #8]
	b _0800B5D0
_0800B5C8
	str r5, [r4, #4]
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
_0800B5D0
	ldr r0, [r4, #8]
	movs r1, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	movs r1, #4
	bics r0, r1
	str r0, [r4, #8]
	ldr r0, _0800B6D4 ;@ =sub_800B496
	ldr r1, _0800B6D0 ;@ =sub_800B464
	bl sub_80114B0
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B5EE
sub_800B5EE ;@ 0x0800B5EE
	adds r0, r1, #0
	adds r1, r2, #0
	push {r3, lr}
	adds r2, r3, #0
	bl sub_8011912
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B600
sub_800B600 ;@ 0x0800B600
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80115EC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B60E
sub_800B60E ;@ 0x0800B60E
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011596
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B61C
sub_800B61C ;@ 0x0800B61C
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011898
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B62A
sub_800B62A ;@ 0x0800B62A
	push {r3, lr}
	adds r0, r1, #0
	bl sub_801196A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B638
sub_800B638 ;@ 0x0800B638
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80117B0
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B646
sub_800B646 ;@ 0x0800B646
	push {r3, lr}
	bl sub_801197C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B652
sub_800B652 ;@ 0x0800B652
	push {r3, lr}
	bl _08011562
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B65E
sub_800B65E ;@ 0x0800B65E
	push {r3, lr}
	bl sub_8011A80
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B66A
sub_800B66A ;@ 0x0800B66A
	push {r3, lr}
	bl sub_80117A4
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B676
sub_800B676 ;@ 0x0800B676
	push {r3, lr}
	adds r3, r0, #0
	adds r0, r1, #0
	movs r2, #0
	str r2, [r3, #0xc]
	bl sub_8011AC2
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B68A
sub_800B68A ;@ 0x0800B68A
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011B22
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B698
sub_800B698 ;@ 0x0800B698
	push {r3, lr}
	str r1, [r0, #0xc]
	adds r0, r1, #0
	bl sub_8011D3C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B6A8
sub_800B6A8 ;@ 0x0800B6A8
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start sub_800B6AC
sub_800B6AC ;@ 0x0800B6AC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80116D4
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B6BE
sub_800B6BE ;@ 0x0800B6BE
	push {r3, lr}
	bl sub_8011D56
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_0800B6CC DCDU gUnknown_03003E94
_0800B6D0 DCDU sub_800B464
_0800B6D4 DCDU sub_800B496
_0800B6D8 DCDU _0803ECD0
_0800B6DC DCDU _0803EA8C

	thumb_func_start sub_800B6E0
sub_800B6E0 ;@ 0x0800B6E0
	push {r3, lr}
	bl sub_8011DB2
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B6EC
sub_800B6EC ;@ 0x0800B6EC
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011E52
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B6FA
sub_800B6FA ;@ 0x0800B6FA
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011DE4
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B708
sub_800B708 ;@ 0x0800B708
	push {r3, lr}
	bl sub_8011F0E
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B714
sub_800B714 ;@ 0x0800B714
	push {r3, lr}
	bl sub_8011E22
	cmp r0, #0
	beq _0800B726
	movs r0, #1
_0800B720
	add sp, #4
	pop {r3}
	bx r3
_0800B726
	movs r0, #0
	b _0800B720

	non_word_aligned_thumb_func_start sub_800B72A
sub_800B72A ;@ 0x0800B72A
	push {r3, lr}
	bl sub_8011E10
	cmp r0, #0
	beq _0800B73C
	movs r0, #1
_0800B736
	add sp, #4
	pop {r3}
	bx r3
_0800B73C
	movs r0, #0
	b _0800B736

	thumb_func_start sub_800B740
sub_800B740 ;@ 0x0800B740
	push {r3, lr}
	bl sub_8011E3C
	cmp r0, #0
	beq _0800B752
	movs r0, #1
_0800B74C
	add sp, #4
	pop {r3}
	bx r3
_0800B752
	movs r0, #0
	b _0800B74C

	non_word_aligned_thumb_func_start sub_800B756
sub_800B756 ;@ 0x0800B756
	push {r3, lr}
	movs r0, #5
	bl sub_8011B28
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B764
sub_800B764 ;@ 0x0800B764
	push {r3, lr}
	movs r0, #3
	bl sub_8011B28
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B772
sub_800B772 ;@ 0x0800B772
	push {r3, lr}
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80120FA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B782
sub_800B782 ;@ 0x0800B782
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8012180
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B790
sub_800B790 ;@ 0x0800B790
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [r4, #8]
	lsls r3, r3, #0x1b
	bmi _0800B7A4
	bl sub_8012126
_0800B7A4
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B7AA
sub_800B7AA ;@ 0x0800B7AA
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80121C4
	cmp r0, #0
	beq _0800B7BE
	movs r0, #1
_0800B7B8
	add sp, #4
	pop {r3}
	bx r3
_0800B7BE
	movs r0, #0
	b _0800B7B8

	non_word_aligned_thumb_func_start sub_800B7C2
sub_800B7C2 ;@ 0x0800B7C2
	ldr r2, [r0, #8]
	movs r3, #0x10
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1b
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #8]
	bx lr

	non_word_aligned_thumb_func_start sub_800B7D2
sub_800B7D2 ;@ 0x0800B7D2
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr
	ALIGN

	thumb_func_start sub_800B7DC
sub_800B7DC ;@ 0x0800B7DC
	push {r4, lr}
	adds r4, r0, #0
	bne _0800B7F4
	ldr r0, _0800BB94 ;@ =0x000019B0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800B7F4
	adds r0, r4, #0
_0800B7EE
	pop {r4}
	pop {r3}
	bx r3
_0800B7F4
	ldr r0, _0800BB98 ;@ =_0803ECDC
	adds r1, r4, #0
	str r0, [r4]
	ldr r0, _0800BB9C ;@ =gUnknown_03003EA0
	adds r1, #0x60
	str r4, [r0]
	ldr r0, _0800BBA0 ;@ =_0803EB3C
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	ldr r1, [r4, #0x78]
	str r0, [r4, #0x7c]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r4, #0x78]
	movs r1, #0x13
	lsls r1, r1, #8
	adds r1, r4, r1
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	movs r1, #0x3c
	adds r0, r4, #4
	bl sub_803BEB0
	movs r1, #0x19
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_803BEB0
	movs r0, #0x1d
	lsls r0, r0, #5
	movs r1, #0x22
	adds r0, r4, r0
	bl sub_803BEB0
	ldr r1, _0800BBA4 ;@ =0x00000409
	adds r0, r1, #0
	subs r0, #0x47
	adds r0, r4, r0
	bl sub_803BE68
	ldr r0, _0800BBAC ;@ =0x000007CC
	ldr r1, _0800BBA8 ;@ =0x00000404
	adds r0, r4, r0
	bl sub_803BEB0
	ldr r0, _0800BBB4 ;@ =0x00001318
	ldr r1, _0800BBB0 ;@ =0x0000050C
	adds r0, r4, r0
	bl sub_803BEB0
	movs r1, #0xff
	ldr r0, _0800BBB8 ;@ =0x00001824
	adds r1, #0x8d
	adds r0, r4, r0
	bl sub_803BEB0
	movs r0, #0xbd
	lsls r0, r0, #4
	movs r1, #0x80
	adds r0, r4, r0
	bl sub_803BEB0
	movs r1, #0x1b
	movs r0, #0xc5
	lsls r0, r0, #4
	lsls r1, r1, #6
	adds r0, r4, r0
	bl sub_803BEB0
	adds r0, r4, #0
	b _0800B7EE

	thumb_func_start sub_800B8A4
sub_800B8A4 ;@ 0x0800B8A4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800BBA0 ;@ =_0803EB3C
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8000CCE
	ldr r0, _0800BB98 ;@ =_0803ECDC
	ldr r1, _0800BB9C ;@ =gUnknown_03003EA0
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq _0800B8C8
	adds r0, r4, #0
	bl sub_803DA18
_0800B8C8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B8CE
sub_800B8CE ;@ 0x0800B8CE
	movs r1, #0xbd
	lsls r1, r1, #4
	adds r2, r0, r1
	movs r1, #0x13
	lsls r1, r1, #8
	adds r1, r0, r1
	push {r4}
	str r2, [r1, #0x10]
	movs r2, #0xc5
	lsls r2, r2, #4
	adds r2, r0, r2
	str r2, [r1, #0x14]
	movs r1, #0xcd
	lsls r1, r1, #5
	adds r1, r0, r1
	ldrb r1, [r1, #0xd]
	movs r4, #0
	cmp r1, #0
	beq _0800B902
	ldr r1, _0800BBB8 ;@ =0x00001824
	adds r1, r0, r1
	movs r2, #0x1f
_0800B8FA
	strb r4, [r1, #0xb]
	adds r1, #0xc
	subs r2, #1
	bhs _0800B8FA
_0800B902
	movs r1, #3
	lsls r1, r1, #0xb
	adds r1, r0, r1
	str r4, [r1, #0x18]
	movs r1, #0x33
	lsls r1, r1, #7
	adds r0, r0, r1
	str r4, [r0, #0x24]
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_800B916
sub_800B916 ;@ 0x0800B916
	push {r4, r5, r6, r7}
	movs r3, #1
	lsls r3, r3, #9
	movs r0, #7
	lsls r0, r0, #0x18
	adds r4, r3, #0
	adds r4, #0xff
	adds r1, r0, #0
	movs r2, #0
	adds r4, #1
	add r5, pc, #0x290 ;@ =_0800BBBC
_0800B92C
	ldm r5!, {r6, r7}
	stm r1!, {r6, r7}
	ldr r6, [r0]
	subs r1, #8
	bics r6, r4
	adds r6, r6, r3
	str r6, [r0]
	adds r0, #8
	adds r1, #8
	subs r5, #8
	adds r2, #1
	cmp r2, #0x80
	blt _0800B92C
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800B94A
sub_800B94A ;@ 0x0800B94A
	ldr r0, _0800BBC4 ;@ =gUnknown_03003E98
	push {r3, lr}
	ldr r0, [r0]
	bl sub_800B082
	ldr r1, _0800BBCC ;@ =gUnknown_03003EB4
	cmp r0, #3
	ldr r0, [r1]
	ldr r3, _0800BBC8 ;@ =0x040000D4
	blo _0800B98C
	ldr r1, _0800BBD0 ;@ =0x06014000
	cmp r0, #0
	beq _0800B976
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	ldr r2, _0800BBD4 ;@ =0x05001000
	bl sub_803D468
_0800B970
	add sp, #4
	pop {r3}
	bx r3
_0800B976
	adds r2, r1, #0
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	str r1, [r3]
	adds r0, r3, #0
	str r2, [r0, #4]
	ldr r1, _0800BBD8 ;@ =0x85001000
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0800B970
_0800B98C
	ldr r1, _0800BBDC ;@ =0x06010000
	cmp r0, #0
	beq _0800B9A0
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	ldr r2, _0800BBE0 ;@ =0x05002000
	bl sub_803D468
	b _0800B970
_0800B9A0
	adds r2, r1, #0
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	str r1, [r3]
	adds r0, r3, #0
	str r2, [r0, #4]
	ldr r1, _0800BBE4 ;@ =0x85002000
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0800B970

	non_word_aligned_thumb_func_start sub_800B9B6
sub_800B9B6 ;@ 0x0800B9B6
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_800B94A
	movs r1, #0x19
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_803BEB0
	movs r0, #0
	movs r3, #0x1d
	lsls r3, r3, #5
_0800B9D0
	adds r1, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #0
	cmp r1, #0x10
	blt _0800B9D0
	movs r0, #0xf
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r0, #0
	movs r5, #0x1f
	lsls r5, r5, #6
_0800B9F6
	adds r1, r0, #1
	movs r5, #0x1f
	lsls r5, r5, #6
	adds r0, r4, r0
	adds r0, r0, r5
	strb r1, [r0, #2]
	adds r0, r1, #0
	cmp r1, #8
	blt _0800B9F6
	movs r0, #0
	mov lr, r0
_0800BA0C
	mov r0, lr
	lsls r0, r0, #7
	ldr r1, _0800BBE8 ;@ =0x000003C2
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #8
	orrs r1, r2
	strb r1, [r0]
	adds r0, #1
	movs r2, #1
_0800BA28
	subs r6, r2, #1
	movs r5, #1
	movs r1, #8
	subs r3, r1, r2
	lsls r5, r6
	movs r1, #0
	cmp r5, #0
	mov ip, r5
	bls _0800BA60
	lsls r6, r3, #0x1d
	lsrs r6, r6, #0x1d
	lsls r5, r6, #3
_0800BA40
	ldrb r3, [r0]
	movs r7, #0x38
	adds r1, #1
	lsrs r3, r3, #3
	lsls r3, r3, #3
	orrs r3, r6
	bics r3, r7
	orrs r3, r5
	movs r7, #0x40
	orrs r3, r7
	movs r7, #0x80
	orrs r3, r7
	strb r3, [r0]
	adds r0, #1
	cmp ip, r1
	bhi _0800BA40
_0800BA60
	adds r2, #1
	cmp r2, #8
	blo _0800BA28
	mov r0, lr
	adds r0, #1
	mov lr, r0
	cmp r0, #8
	blt _0800BA0C
	ldr r0, _0800BBC4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B082
	movs r1, #0x1f
	lsls r1, r1, #6
	adds r1, r4, r1
	cmp r0, #3
	blo _0800BA88
	movs r0, #4
	strb r0, [r1, #0xa]
	b _0800BA8C
_0800BA88
	movs r5, #0
	strb r5, [r1, #0xa]
_0800BA8C
	movs r1, #1
	ldr r0, _0800BBAC ;@ =0x000007CC
	lsls r1, r1, #0xa
	adds r0, r4, r0
	bl sub_803BEB0
	movs r1, #0xff
	lsls r1, r1, #0x10
	movs r0, #0
	movs r5, #0x1f
	lsls r5, r5, #6
_0800BAA2
	lsls r2, r0, #3
	adds r2, r2, r4
	adds r2, r2, r5
	ldr r3, [r2, #0x10]
	adds r0, #1
	lsls r3, r3, #8
	lsrs r3, r3, #8
	lsls r6, r0, #0x18
	orrs r3, r6
	orrs r3, r1
	str r3, [r2, #0x10]
	cmp r0, #0x80
	blt _0800BAA2
	movs r0, #0x2f
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r5, #0
	strb r5, [r0, #0xc]
	movs r1, #0xff
	strb r1, [r0, #0xd]
	strb r5, [r0, #0xe]
	ldr r0, _0800BBB4 ;@ =0x00001318
	movs r1, #5
	lsls r1, r1, #8
	adds r0, r4, r0
	bl sub_803BEB0
	movs r0, #7
	lsls r0, r0, #0x18
	adds r1, r0, #0
	movs r2, #0
	movs r6, #3
	lsls r6, r6, #8
_0800BAE4
	add r7, pc, #0xD4 ;@ =_0800BBBC
	ldm r7!, {r3, r7}
	stm r1!, {r3, r7}
	ldr r3, [r0]
	movs r7, #1
	lsls r7, r7, #9
	bics r3, r6
	adds r3, r3, r7
	str r3, [r0]
	subs r1, #8
	adds r1, #8
	adds r0, #8
	adds r2, #1
	cmp r2, #0x80
	blt _0800BAE4
	movs r0, #0
	movs r1, #0xff
_0800BB06
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #1
	movs r3, #0x13
	lsls r3, r3, #8
	adds r2, r2, r4
	adds r3, r2, r3
	ldrh r6, [r3, #0x18]
	movs r7, #3
	lsls r7, r7, #8
	bics r6, r7
	subs r7, #0xff
	subs r7, #1
	adds r6, r6, r7
	strh r6, [r3, #0x18]
	ldr r3, _0800BBEC ;@ =0x00001310
	adds r0, #1
	adds r3, r2, r3
	strb r0, [r3, #0xf]
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r3
	strb r1, [r2]
	cmp r0, #0x80
	blt _0800BB06
	ldr r0, _0800BBF0 ;@ =0x00001810
	movs r7, #0xc1
	adds r0, r4, r0
	strb r5, [r0, #0xe]
	strb r1, [r0, #0xf]
	lsls r7, r7, #5
	adds r0, r4, r7
	strb r5, [r0]
	adds r6, r1, #0
	movs r1, #0xff
	strb r5, [r0, #1]
	adds r0, r7, #4
	adds r1, #0x81
	adds r0, r4, r0
	bl sub_803BEB0
	movs r0, #0
	movs r1, #0xff
	adds r1, #1
_0800BB5E
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r4
	adds r2, r2, r7
	strh r1, [r2, #4]
	strh r5, [r2, #6]
	strh r5, [r2, #8]
	strh r1, [r2, #0xa]
	adds r0, #1
	strb r5, [r2, #0xc]
	strb r0, [r2, #0xd]
	strb r6, [r2, #0xe]
	cmp r0, #0x20
	blt _0800BB5E
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r4, r0
	strb r5, [r0, #0xa]
	strb r6, [r0, #0xb]
	strb r5, [r0, #0xd]
	adds r0, r4, #0
	bl sub_800B8CE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800BB94 DCDU 0x000019B0
_0800BB98 DCDU _0803ECDC
_0800BB9C DCDU gUnknown_03003EA0
_0800BBA0 DCDU _0803EB3C
_0800BBA4 DCDU 0x00000409
_0800BBA8 DCDU 0x00000404
_0800BBAC DCDU 0x000007CC
_0800BBB0 DCDU 0x0000050C
_0800BBB4 DCDU 0x00001318
_0800BBB8 DCDU 0x00001824
_0800BBBC DCDU 0x00000000
_0800BBC0 DCDU 0x00000000
_0800BBC4 DCDU gUnknown_03003E98
_0800BBC8 DCDU 0x040000D4
_0800BBCC DCDU gUnknown_03003EB4
_0800BBD0 DCDU 0x06014000
_0800BBD4 DCDU 0x05001000
_0800BBD8 DCDU 0x85001000
_0800BBDC DCDU 0x06010000
_0800BBE0 DCDU 0x05002000
_0800BBE4 DCDU 0x85002000
_0800BBE8 DCDU 0x000003C2
_0800BBEC DCDU 0x00001310
_0800BBF0 DCDU 0x00001810

	thumb_func_start sub_800BBF4
sub_800BBF4 ;@ 0x0800BBF4
	push {r4, r5, r6, r7}
	movs r2, #0xf
	lsls r2, r2, #6
	adds r2, r0, r2
	movs r3, #0
	cmp r1, #0
	ldrb r7, [r2]
	bls _0800BC24
	movs r6, #0x1d
	lsls r6, r6, #5
_0800BC08
	ldrb r4, [r2]
	adds r3, #1
	lsls r5, r4, #1
	adds r5, r5, r0
	adds r5, r5, r6
	ldrh r5, [r5]
	lsls r4, r4, #1
	adds r4, r4, r0
	strb r5, [r2]
	ldr r5, _0800BFF4 ;@ =0x00000FFF
	adds r4, r4, r6
	strh r5, [r4]
	cmp r3, r1
	blo _0800BC08
_0800BC24
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	strb r0, [r2, #1]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_800BC30
sub_800BC30 ;@ 0x0800BC30
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r0, r1, #1
	adds r5, r0, r4
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, #0x80
	ldrh r0, [r5]
	lsrs r0, r0, #8
	bne _0800BCC6
	movs r0, #0xf
	lsls r0, r0, #6
	adds r1, r4, r0
	movs r0, #0x13
	lsls r0, r0, #8
	adds r0, r4, r0
	lsls r2, r7, #5
	cmp r6, #0
	ldr r3, [r4, #0x1c]
	beq _0800BC7E
	adds r2, r3, r2
	ldr r3, [r0, #0x14]
	str r2, [r3, #4]
	ldrb r1, [r1]
	ldr r2, _0800BFF8 ;@ =0x05000200
	lsls r1, r1, #5
	adds r1, r1, r2
	ldr r2, [r0, #0x14]
	str r1, [r2]
	ldr r2, [r0, #0x14]
	lsls r1, r6, #5
	strh r1, [r2, #8]
	ldr r2, [r0, #0x14]
	movs r1, #0
	strh r1, [r2, #0xa]
	ldr r1, [r0, #0x14]
	adds r1, #0xc
	str r1, [r0, #0x14]
	b _0800BC96
_0800BC7E
	adds r2, r3, r2
	ldr r3, [r0, #0x10]
	str r2, [r3, #4]
	ldrb r1, [r1]
	ldr r2, _0800BFF8 ;@ =0x05000200
	lsls r1, r1, #5
	adds r1, r1, r2
	ldr r2, [r0, #0x10]
	str r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #8
	str r1, [r0, #0x10]
_0800BC96
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_800BBF4
	ldrh r1, [r5]
	movs r2, #0xf0
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	bics r1, r2
	orrs r0, r1
	lsrs r0, r0, #4
	lsls r1, r6, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #4
	orrs r0, r1
	strh r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r0, r0, r4
	adds r0, r0, r1
	strh r7, [r0]
_0800BCC6
	ldrh r0, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r0, #0xff
	adds r0, #1
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	strh r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r3}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bx r3

	thumb_func_start sub_800BCE4
sub_800BCE4 ;@ 0x0800BCE4
	push {r4, r5, r6, r7}
	ldr r5, [sp, #0x10]
	movs r0, #0
	cmp r5, #0
	beq _0800BCF0
	adds r0, r3, #0
_0800BCF0
	cmp r3, #8
	bhs _0800BD62
_0800BCF4
	lsrs r6, r2, #1
	adds r4, r6, r1
	lsls r2, r2, #0x1f
	ldrb r2, [r4]
	bge _0800BD14
	movs r7, #0x38
	bics r2, r7
	lsls r7, r0, #0x1d
	lsrs r7, r7, #0x1a
	orrs r2, r7
	movs r7, #0x80
	bics r2, r7
	lsls r5, r5, #7
	orrs r2, r5
	strb r2, [r4]
	b _0800BD28
_0800BD14
	lsrs r2, r2, #3
	lsls r7, r0, #0x1d
	lsrs r7, r7, #0x1d
	lsls r2, r2, #3
	orrs r2, r7
	movs r7, #0x40
	bics r2, r7
	lsls r5, r5, #6
	orrs r2, r5
	strb r2, [r4]
_0800BD28
	ldrb r4, [r4]
	adds r2, r6, #0
	lsls r6, r4, #0x1a
	lsls r5, r4, #0x1d
	lsrs r5, r5, #0x1d
	lsrs r6, r6, #0x1d
	cmp r5, r6
	bne _0800BD44
	lsls r5, r4, #0x19
	bpl _0800BD4E
	lsrs r5, r4, #7
	beq _0800BD4E
	adds r0, #1
	b _0800BD4E
_0800BD44
	cmp r5, r6
	bls _0800BD4C
	adds r0, r5, #0
	b _0800BD4E
_0800BD4C
	adds r0, r6, #0
_0800BD4E
	lsls r5, r4, #0x19
	bpl _0800BD5A
	lsrs r4, r4, #7
	beq _0800BD5A
	movs r5, #1
	b _0800BD5C
_0800BD5A
	movs r5, #0
_0800BD5C
	adds r3, #1
	cmp r3, #8
	blo _0800BCF4
_0800BD62
	ldrb r2, [r1]
	movs r3, #0x10
	lsls r0, r0, #0x1c
	bics r2, r3
	lsls r3, r5, #4
	orrs r2, r3
	lsrs r2, r2, #4
	lsls r2, r2, #4
	lsrs r0, r0, #0x1c
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_800BD7C
sub_800BD7C ;@ 0x0800BD7C
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0x1f
	lsls r4, r4, #6
	adds r2, r0, r4
	ldrb r2, [r2, #0xa]
	ldr r5, _0800BFFC ;@ =0x000003C2
	lsls r3, r2, #7
	adds r3, r3, r0
	adds r6, r3, r5
	ldrb r3, [r6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	cmp r3, r1
	bhs _0800BDAE
_0800BD98
	adds r2, r0, r2
	adds r2, r2, r4
	ldrb r2, [r2, #2]
	lsls r3, r2, #7
	adds r3, r3, r0
	adds r6, r3, r5
	ldrb r3, [r6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	cmp r3, r1
	blo _0800BD98
_0800BDAE
	movs r5, #1
	movs r3, #8
	cmp r1, #8
	bhs _0800BDE6
_0800BDB6
	adds r4, r6, r5
	ldrb r7, [r4]
	lsls r4, r7, #0x1d
	lsrs r4, r4, #0x1d
	cmp r4, r1
	bhs _0800BDC8
	lsls r5, r5, #1
	adds r5, #1
	b _0800BDE0
_0800BDC8
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x1d
	cmp r7, r1
	bhs _0800BDD4
	lsls r5, r5, #1
	b _0800BDE0
_0800BDD4
	cmp r4, r7
	bhi _0800BDDC
	lsls r5, r5, #1
	b _0800BDE0
_0800BDDC
	lsls r5, r5, #1
	adds r5, #1
_0800BDE0
	subs r3, #1
	cmp r3, r1
	bhi _0800BDB6
_0800BDE6
	movs r4, #8
	subs r4, r4, r3
	movs r3, #1
	lsls r3, r4
	subs r3, r5, r3
	subs r4, r1, #1
	lsls r3, r4
	lsls r2, r2, #7
	adds r4, r2, r3
	movs r2, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r1, #0
	adds r1, r6, #0
	bl sub_800BCE4
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800BE0E
sub_800BE0E ;@ 0x0800BE0E
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x78]
	movs r1, #1
	orrs r0, r1
	sub sp, #0x10
	str r0, [r5, #0x78]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	ldr r3, [sp, #0x14]
	ldr r2, [r3, #0x44]
	cmp r2, #0
	beq _0800BE2C
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x48]
_0800BE2C
	ldr r3, [sp, #0x14]
	ldr r2, [r3, #0x18]
	cmp r2, #0
	beq _0800BE38
	adds r7, r2, #0
	b _0800BE48
_0800BE38
	ldr r4, [r5, #0x18]
	ldr r3, [r0]
	lsls r6, r3, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r7, r4, r3
_0800BE48
	ldr r3, [sp, #0x14]
	ldr r4, [r3, #0x14]
	adds r3, r1, #0
	cmp r2, #0
	bne _0800BE58
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x1c
_0800BE58
	subs r0, r3, #1
	str r0, [sp]
	adds r3, r0, #1
	beq _0800BF40
	ldr r1, _0800C004 ;@ =0x000007CC
	ldr r0, _0800C000 ;@ =0x00001810
	adds r2, r5, r1
	movs r1, #0x2f
	lsls r1, r1, #6
	adds r6, r5, r1
	adds r1, r0, #0
	adds r1, #0x10
	adds r1, r5, r1
	str r2, [sp, #0xc]
	adds r2, r5, r0
	str r2, [sp, #4]
	str r1, [sp, #8]
_0800BE7A
	ldr r2, [sp, #4]
	ldr r1, [r4]
	ldrb r0, [r2, #0xe]
	movs r2, #0xff
	lsls r2, r2, #0xd
	bics r1, r2
	lsls r0, r0, #0xd
	orrs r0, r1
	str r0, [r4]
	ldr r2, [sp, #4]
	ldr r1, _0800C008 ;@ =0x00001310
	ldrb r0, [r2, #0xe]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	strb r0, [r2, #0xe]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #0xf]
	ldr r2, [r4]
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x18
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r1, r2, r1
	strb r0, [r1, #0xf]
	ldr r1, [r4]
	movs r0, #0xff
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r2, r1, r5
	movs r1, #0x99
	lsls r1, r1, #5
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0800BEEC
	ldr r0, [r4]
	ldr r2, [sp, #4]
	lsls r0, r0, #0xb
	ldrb r2, [r2, #0xf]
	lsrs r0, r0, #0x18
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	adds r1, r2, r1
	strb r0, [r1]
_0800BEEC
	ldr r0, [r4]
	ldr r2, [sp, #4]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	strb r0, [r2, #0xf]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	ldr r1, [sp, #8]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r0, [r7, #4]
	lsls r1, r0, #0x14
	lsls r2, r0, #0xc
	lsrs r1, r1, #0x18
	lsls r1, r1, #4
	lsrs r2, r2, #0x18
	orrs r1, r2
	ldr r2, _0800C00C ;@ =gUnknown_0804AB68
	lsls r0, r0, #0x1c
	ldrb r2, [r2, r1]
	movs r1, #1
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0800BF1E
	movs r1, #0
_0800BF1E
	ldr r0, [sp, #0x14]
	mov lr, r2
	ldr r0, [r0, #0x44]
	add lr, r1
	cmp r0, #0
	beq _0800BF42
	mov r1, lr
	adds r0, r5, #0
	bl sub_800BD7C
	ldr r1, [r4]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0xb
	lsls r0, r0, #0x15
	orrs r0, r1
	str r0, [r4]
	b _0800C062
_0800BF40
	b _0800C0CE
_0800BF42
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0800BFAE
	ldr r0, _0800C010 ;@ =0x0FFFFFFF
	ldr r1, [r7]
	bics r0, r1
	beq _0800BFAE
	ldrb r0, [r6, #0xd]
	ldr r2, _0800C004 ;@ =0x000007CC
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r2, [r6, #0xe]
	subs r2, #1
	mov ip, r2
	adds r3, r2, #1
	beq _0800BFAE
	lsls r1, r1, #4
	lsrs r1, r1, #4
_0800BF6A
	ldr r2, [r0]
	cmp r1, r2
	bne _0800C054
	ldr r1, [r0, #4]
	ldr r2, [r4]
	lsls r1, r1, #0x16
	lsls r2, r2, #0xb
	lsrs r2, r2, #0xb
	lsrs r1, r1, #1
	orrs r1, r2
	ldr r2, [sp, #0xc]
	lsrs r1, r1, #8
	subs r2, r0, r2
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	lsls r1, r1, #8
	orrs r1, r2
	str r1, [r4]
	ldr r1, [r0, #4]
	movs r3, #0x3f
	lsls r3, r3, #0xa
	adds r2, r1, #0
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xa
	adds r1, r1, r3
	movs r3, #0x3f
	lsls r3, r3, #0xa
	ands r1, r3
	orrs r1, r2
	mov r2, ip
	cmp r2, #0
	str r1, [r0, #4]
	bpl _0800C062
_0800BFAE
	mov r1, lr
	adds r0, r5, #0
	bl sub_800BD7C
	ldr r1, [r4]
	lsls r0, r0, #0x15
	lsls r1, r1, #0xb
	lsrs r1, r1, #0xb
	orrs r1, r0
	str r1, [r4]
	ldrb r0, [r6, #0xc]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
	ldrb r0, [r6, #0xc]
	ldr r1, _0800C004 ;@ =0x000007CC
	movs r3, #0xff
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r1, [r0, #4]
	lsrs r1, r1, #0x18
	strb r1, [r6, #0xc]
	ldrb r1, [r6, #0xd]
	ldr r2, [r0, #4]
	lsls r2, r2, #8
	lsrs r2, r2, #8
	lsls r1, r1, #0x18
	orrs r1, r2
	lsls r3, r3, #0x10
	orrs r1, r3
	str r1, [r0, #4]
	ldr r2, [r7]
	b _0800C014
	ALIGN
_0800BFF4 DCDU 0x00000FFF
_0800BFF8 DCDU 0x05000200
_0800BFFC DCDU 0x000003C2
_0800C000 DCDU 0x00001810
_0800C004 DCDU 0x000007CC
_0800C008 DCDU 0x00001310
_0800C00C DCDU gUnknown_0804AB68
_0800C010 DCDU 0x0FFFFFFF
_0800C014
	lsls r2, r2, #4
	lsrs r2, r2, #4
	str r2, [r0]
	ldr r2, [r4]
	lsrs r1, r1, #0xa
	lsls r2, r2, #1
	lsrs r2, r2, #0x16
	lsls r1, r1, #0xa
	orrs r1, r2
	movs r2, #0x3f
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	adds r1, r1, r2
	str r1, [r0, #4]
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0800C058
	ldr r0, [r4]
	movs r2, #0x7d
	lsls r1, r0, #0x18
	ldrb r0, [r6, #0xd]
	lsls r2, r2, #4
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r1, r1, #8
	bics r2, r3
	orrs r1, r2
	b _0800C056
_0800C054
	b _0800C080
_0800C056
	str r1, [r0]
_0800C058
	ldr r0, [r4]
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
_0800C062
	ldr r0, [r4, #4]
	lsls r0, r0, #0x1f
	bmi _0800C0BE
	ldr r0, [r7, #4]
	ldr r2, _0800C44C ;@ =0x00000FFF
	lsrs r1, r0, #0x14
	cmp r1, r2
	beq _0800C0BE
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r2, #0
	cmp r0, #8
	bne _0800C098
	movs r2, #1
	b _0800C0A8
_0800C080
	ldr r0, [r0, #4]
	ldr r2, _0800C450 ;@ =0x000007CC
	lsrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, r0, r2
	mov r2, ip
	subs r2, #1
	mov ip, r2
	adds r3, r2, #1
	beq _0800BFAE
	b _0800BF6A
_0800C098
	cmp r0, #9
	bne _0800C0A8
	ldr r0, [r7, #0xc]
	movs r2, #0x10
	lsls r3, r0, #0x1c
	beq _0800C0A8
	lsls r2, r0, #0x1c
	lsrs r2, r2, #0x1c
_0800C0A8
	adds r0, r5, #0
	bl sub_800BC30
	movs r2, #0x1f
	lsls r2, r2, #8
	ldr r1, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x13
	bics r1, r2
	orrs r0, r1
	str r0, [r4]
_0800C0BE
	ldr r0, [sp]
	adds r7, #0x14
	subs r0, #1
	adds r4, #8
	adds r3, r0, #1
	str r0, [sp]
	beq _0800C0CE
	b _0800BE7A
_0800C0CE
	ldr r0, [sp, #0x14]
	movs r1, #1
	ldr r0, [r0]
	ldr r3, [sp, #0x14]
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r5, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800C0EC
	push {r4, r5, r6, r7}
	movs r3, #0
	subs r4, r2, #1
	beq _0800C112
	movs r7, #0x1d
	lsls r7, r7, #5
	subs r6, r2, #1
_0800C0FA
	adds r4, r1, r3
	adds r5, r4, #0
	adds r4, #1
	lsls r5, r5, #1
	adds r5, r5, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r5, r5, r7
	adds r3, #1
	cmp r3, r6
	strh r4, [r5]
	blo _0800C0FA
_0800C112
	movs r3, #0xf
	lsls r3, r3, #6
	adds r3, r0, r3
	adds r5, r1, r2
	lsls r5, r5, #1
	adds r0, r5, r0
	movs r5, #7
	ldrb r4, [r3]
	lsls r5, r5, #7
	adds r0, r0, r5
	strh r4, [r0, #0x1e]
	strb r1, [r3]
	ldrb r0, [r3, #1]
	subs r0, r0, r2
	strb r0, [r3, #1]
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_800C134
sub_800C134 ;@ 0x0800C134
	lsls r1, r1, #1
	adds r2, r1, r0
	adds r2, #0x80
	push {r4}
	ldrh r1, [r2]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r4, r1, #0
	subs r1, #0xff
	subs r1, #1
	ands r1, r3
	bics r4, r3
	orrs r1, r4
	strh r1, [r2]
	lsrs r2, r1, #8
	bne _0800C160
	lsls r2, r1, #0x1c
	lsrs r2, r2, #0x1c
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	pop {r4}
	b _0800C0EC
_0800C160
	pop {r4}
	bx lr

	thumb_func_start sub_800C164
sub_800C164 ;@ 0x0800C164
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	cmp r1, #0x1f
	beq _0800C192
	lsls r1, r1, #1
	adds r2, r1, r0
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r1, r2, r1
	ldrh r1, [r1]
	ldr r2, _0800C44C ;@ =0x00000FFF
	cmp r1, r2
	beq _0800C192
	bl sub_800C134
	movs r1, #0x1f
	ldr r0, [r4]
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4]
_0800C192
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800C198
sub_800C198 ;@ 0x0800C198
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	lsrs r1, r1, #7
	adds r3, r2, #0
	ldr r2, _0800C454 ;@ =0x000003C2
	lsls r1, r1, #7
	adds r1, r1, r0
	adds r1, r1, r2
	movs r2, #8
	subs r5, r2, r3
	movs r2, #1
	lsls r2, r5
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x19
	subs r5, r3, #1
	lsrs r4, r5
	adds r4, r2, r4
	movs r2, #1
	str r2, [sp]
	adds r2, r4, #0
	bl sub_800BCE4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800C1CA
sub_800C1CA ;@ 0x0800C1CA
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x78]
	movs r2, #1
	orrs r0, r2
	sub sp, #0x18
	str r0, [r4, #0x78]
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x44]
	cmp r0, #0
	beq _0800C1E6
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x48]
	b _0800C1EA
_0800C1E6
	ldr r1, [sp, #0x1c]
	ldr r0, [r1, #0x10]
_0800C1EA
	ldr r1, [sp, #0x1c]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq _0800C1F6
	adds r3, r1, #0
	b _0800C206
_0800C1F6
	ldr r5, [r4, #0x18]
	ldr r3, [r0]
	lsls r6, r3, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r3, r5, r3
_0800C206
	str r3, [sp, #8]
	ldr r3, [sp, #0x1c]
	ldr r5, [r3, #0x14]
	adds r3, r2, #0
	cmp r1, #0
	bne _0800C218
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x1c
_0800C218
	subs r0, r3, #1
	str r0, [sp, #4]
	adds r3, r0, #1
	beq _0800C304
	movs r0, #3
	lsls r0, r0, #0xb
	adds r0, r4, r0
	movs r1, #0xc1
	lsls r1, r1, #5
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r2, #0x2f
	lsls r2, r2, #6
	adds r1, r4, r1
	adds r7, r4, r2
	subs r0, #0x10
	adds r2, r4, r0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
_0800C23E
	ldr r0, [r5]
	ldr r1, _0800C458 ;@ =0x00001318
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #3
	lsls r2, r2, #8
	bics r1, r2
	subs r2, #0xff
	subs r2, #1
	adds r1, r1, r2
	strh r1, [r0]
	ldr r1, [r5]
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xb
	ldrb r2, [r2, #0xf]
	lsrs r1, r1, #0x18
	cmp r1, r2
	bne _0800C274
	ldrb r1, [r0, #7]
	ldr r2, [sp, #0xc]
	strb r1, [r2, #0xf]
_0800C274
	ldrb r2, [r0, #7]
	cmp r2, #0x80
	bhs _0800C28C
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	movs r3, #0x99
	ldrb r1, [r0, #8]
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2]
_0800C28C
	ldrb r2, [r0, #8]
	cmp r2, #0x80
	bhs _0800C2A2
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	ldr r3, _0800C45C ;@ =0x00001310
	ldrb r1, [r0, #7]
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2, #0xf]
_0800C2A2
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #0xe]
	strb r1, [r0, #7]
	ldr r0, [r5]
	ldr r2, [sp, #0xc]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	strb r0, [r2, #0xe]
	ldr r1, [sp, #0x10]
	movs r2, #1
	ldrb r0, [r1, #1]
	adds r0, #0xff
	strb r0, [r1, #1]
	ldr r0, [sp, #0x14]
	movs r1, #0xff
	str r2, [r0, #0x18]
	ldr r0, [r5]
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r5]
	ldr r1, [sp, #8]
	ldr r1, [r1, #4]
	lsls r3, r1, #0x14
	lsls r6, r1, #0xc
	lsrs r3, r3, #0x18
	lsls r3, r3, #4
	lsrs r6, r6, #0x18
	orrs r3, r6
	ldr r6, _0800C460 ;@ =gUnknown_0804AB68
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #9
	ldrb r3, [r6, r3]
	beq _0800C2E8
	movs r2, #0
_0800C2E8
	ldr r1, [sp, #0x1c]
	adds r3, r3, r2
	ldr r1, [r1, #0x44]
	cmp r1, #0
	beq _0800C322
	lsrs r0, r0, #0x15
	lsrs r1, r0, #7
	lsls r1, r1, #7
	ldr r2, _0800C454 ;@ =0x000003C2
	adds r1, r1, r4
	adds r1, r1, r2
	movs r2, #8
	subs r6, r2, r3
	b _0800C306
_0800C304
	b _0800C446
_0800C306
	movs r2, #1
	lsls r2, r6
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	subs r6, r3, #1
	lsrs r0, r6
	adds r0, r2, r0
	movs r2, #1
	str r2, [sp]
	adds r2, r0, #0
	adds r0, r4, #0
	bl sub_800BCE4
	b _0800C3EC
_0800C322
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	ldr r1, _0800C450 ;@ =0x000007CC
	adds r0, r0, r4
	adds r6, r0, r1
	ldr r0, [r6, #4]
	movs r2, #0x3f
	lsls r2, r2, #0xa
	adds r1, r0, #0
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	subs r0, r0, r2
	movs r2, #0x3f
	lsls r2, r2, #0xa
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	bne _0800C3EC
	ldr r0, [r5]
	ldr r2, _0800C454 ;@ =0x000003C2
	lsrs r0, r0, #0x15
	lsrs r1, r0, #7
	lsls r1, r1, #7
	adds r1, r1, r4
	mov ip, r1
	add ip, r2
	movs r1, #8
	subs r2, r1, r3
	movs r1, #1
	lsls r1, r2
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	subs r2, r3, #1
	lsrs r0, r2
	adds r0, r1, r0
	movs r2, #1
	str r2, [sp]
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, ip
	bl sub_800BCE4
	ldr r0, [r5]
	ldrb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne _0800C38E
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x18
	strb r0, [r7, #0xd]
_0800C38E
	ldr r1, [r6, #4]
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	bhs _0800C3B2
	lsls r0, r0, #3
	movs r2, #0x7d
	lsls r2, r2, #4
	adds r0, r0, r4
	adds r0, r0, r2
	movs r3, #0xff
	lsls r3, r3, #0x10
	ldr r2, [r0]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x10
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
_0800C3B2
	ldr r1, [r6, #4]
	lsls r0, r1, #8
	lsrs r0, r0, #0x18
	cmp r0, #0x80
	bhs _0800C3D4
	lsls r0, r0, #3
	movs r2, #0x7d
	lsls r2, r2, #4
	adds r0, r0, r4
	adds r0, r0, r2
	ldr r2, [r0]
	lsrs r1, r1, #0x18
	lsls r2, r2, #8
	lsrs r2, r2, #8
	lsls r1, r1, #0x18
	orrs r1, r2
	str r1, [r0]
_0800C3D4
	ldrb r0, [r7, #0xc]
	ldr r1, [r6, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #8
	lsls r0, r0, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldr r0, [r5]
	strb r0, [r7, #0xc]
	ldrb r0, [r7, #0xe]
	adds r0, #0xff
	strb r0, [r7, #0xe]
_0800C3EC
	ldr r1, _0800C464 ;@ =0xFFE00000
	ldr r0, [r5]
	orrs r0, r1
	movs r1, #0xff
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1f
	bmi _0800C432
	ldr r1, [sp, #8]
	ldr r2, _0800C44C ;@ =0x00000FFF
	ldr r1, [r1, #4]
	lsrs r1, r1, #0x14
	cmp r1, r2
	beq _0800C432
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1b
	cmp r0, #0x1f
	beq _0800C432
	lsls r0, r0, #1
	adds r1, r0, r4
	movs r0, #0x1d
	lsls r0, r0, #5
	adds r0, r1, r0
	ldrh r1, [r0]
	cmp r1, r2
	beq _0800C432
	adds r0, r4, #0
	bl sub_800C134
	movs r1, #0x1f
	ldr r0, [r5]
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5]
_0800C432
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r1, #0x14
	subs r0, #1
	adds r5, #8
	adds r3, r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	beq _0800C446
	b _0800C23E
_0800C446
	ldr r1, [sp, #0x1c]
	ldr r0, [r1]
	b _0800C468
	ALIGN
_0800C44C DCDU 0x00000FFF
_0800C450 DCDU 0x000007CC
_0800C454 DCDU 0x000003C2
_0800C458 DCDU 0x00001318
_0800C45C DCDU 0x00001310
_0800C460 DCDU gUnknown_0804AB68
_0800C464 DCDU 0xFFE00000
_0800C468
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800C482
sub_800C482 ;@ 0x0800C482
	push {r4, r5}
	movs r4, #0xc1
	adds r2, r0, #0
	adds r0, r1, #0
	lsls r4, r4, #5
	cmp r1, #0x20
	bhs _0800C4A4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r2, [r1, #0xc]
	adds r2, #1
	strb r2, [r1, #0xc]
_0800C4A0
	pop {r4, r5}
	bx lr
_0800C4A4
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r1, r2, r0
	ldrb r0, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r3, [r3, #0xd]
	strb r3, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r5, [r3, #0xc]
	adds r5, #1
	strb r5, [r3, #0xc]
	ldrb r5, [r1, #0xb]
	strb r5, [r3, #0xd]
	movs r5, #0xff
	strb r5, [r3, #0xe]
	ldrb r3, [r1, #0xd]
	cmp r3, #0
	beq _0800C4E6
	ldrb r5, [r1, #0xb]
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r2, r3, r2
	adds r2, r2, r4
	strb r0, [r2, #0xe]
_0800C4E6
	strb r0, [r1, #0xb]
	ldrb r2, [r1, #0xd]
	adds r2, #1
	strb r2, [r1, #0xd]
	b _0800C4A0

	thumb_func_start sub_800C4F0
sub_800C4F0 ;@ 0x0800C4F0
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r3, _0800C8A4 ;@ =0x00001824
	adds r2, r2, r0
	adds r2, r2, r3
	push {r4, r5, r6, r7}
	ldrb r3, [r2, #8]
	adds r3, #0xff
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r2, #8]
	bne _0800C55A
	movs r3, #0xcd
	lsls r3, r3, #5
	adds r4, r0, r3
	ldrb r3, [r4, #0xb]
	cmp r3, r1
	bne _0800C51A
	ldrb r3, [r2, #9]
	strb r3, [r4, #0xb]
_0800C51A
	ldrb r3, [r2, #9]
	movs r6, #0xc1
	lsls r6, r6, #5
	cmp r3, #0x20
	bhs _0800C534
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #0xa]
	adds r3, r3, r0
	adds r3, r3, r6
	strb r5, [r3, #0xe]
_0800C534
	ldrb r3, [r2, #0xa]
	cmp r3, #0x20
	bhs _0800C54A
	adds r7, r3, #0
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #2
	ldrb r5, [r2, #9]
	adds r0, r3, r0
	adds r0, r0, r6
	strb r5, [r0, #0xd]
_0800C54A
	movs r0, #0
	strb r0, [r2, #0xb]
	ldrb r0, [r4, #0xa]
	strb r0, [r2, #9]
	strb r1, [r4, #0xa]
	ldrb r0, [r4, #0xd]
	adds r0, #0xff
	strb r0, [r4, #0xd]
_0800C55A
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800C55E
sub_800C55E ;@ 0x0800C55E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x78]
	movs r6, #1
	orrs r0, r6
	sub sp, #0x24
	str r0, [r5, #0x78]
	ldrh r0, [r1, #0x28]
	adds r4, r1, #0
	ldr r1, _0800C8A4 ;@ =0x00001824
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1b
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r1, r0, r1
	str r1, [sp, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #0x1b
	bpl _0800C60C
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _0800C600
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	ldr r7, _0800C8A8 ;@ =gUnknown_080414B8
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r0, r0, #2
	NEGS r1, r0
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x24]
	lsls r1, r6, #0xc
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r7, r0]
	lsls r1, r0, #2
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	bl sub_803C04C
	ldr r1, [sp, #0x18]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x18]
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r5, r0
	strb r6, [r1, #0xb]
	str r6, [r0, #0x24]
_0800C600
	ldr r0, [r4]
	movs r1, #0x10
	bics r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0800C60C
	ldr r0, [r4, #0x44]
	ldr r2, [r4, #0x10]
	cmp r0, #0
	beq _0800C616
	ldr r2, [r4, #0x48]
_0800C616
	ldr r7, [r4, #0x18]
	cmp r7, #0
	beq _0800C620
	adds r1, r7, #0
	b _0800C630
_0800C620
	ldr r0, [r5, #0x18]
	ldr r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
_0800C630
	ldr r3, [r4, #0x14]
	adds r0, r6, #0
	mov ip, r3
	adds r3, r6, #0
	cmp r7, #0
	bne _0800C642
	ldr r2, [r2]
	lsls r2, r2, #0xc
	lsrs r3, r2, #0x1c
_0800C642
	subs r2, r3, #1
	str r2, [sp, #0x14]
	adds r3, r2, #1
	beq _0800C72E
	movs r3, #3
	lsls r3, r3, #0xb
	adds r3, r5, r3
	movs r2, #0x13
	lsls r2, r2, #8
	adds r2, r5, r2
	str r3, [sp, #0x20]
_0800C658
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	bpl _0800C710
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldr r0, [r1]
	beq _0800C670
	lsls r0, r0, #4
	ldr r3, [r2, #0x14]
	lsrs r0, r0, #4
	str r0, [r3, #4]
	b _0800C68A
_0800C670
	ldr r6, _0800C8AC ;@ =0x0FFFFFFF
	adds r3, r6, #0
	bics r3, r0
	bne _0800C67E
	ldr r0, [r2, #0x14]
	str r6, [r0, #4]
	b _0800C68A
_0800C67E
	lsls r0, r0, #4
	ldr r3, [r5, #0x20]
	lsrs r0, r0, #2
	adds r0, r3, r0
	ldr r3, [r2, #0x14]
	str r0, [r3, #4]
_0800C68A
	mov r3, ip
	ldr r0, [r3]
	ldr r3, _0800C8B0 ;@ =0x06010000
	lsrs r0, r0, #0x15
	lsls r0, r0, #5
	adds r0, r0, r3
	ldr r3, [r2, #0x14]
	str r0, [r3]
	ldr r0, [r1, #4]
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r6, r3, #1
	lsls r3, r0, #0xc
	lsrs r3, r3, #0x18
	adds r3, #1
	lsrs r3, r3, #1
	muls r6, r3
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	movs r3, #0x40
	cmp r0, #9
	beq _0800C6BA
	movs r3, #0x20
_0800C6BA
	ldr r0, [r2, #0x14]
	muls r6, r3
	strh r6, [r0, #8]
	ldr r0, [r2, #0x14]
	ldr r6, _0800C8AC ;@ =0x0FFFFFFF
	ldr r3, [r0, #4]
	cmp r3, r6
	beq _0800C6D2
	ldr r3, [r1]
	lsrs r3, r3, #0x1c
	strh r3, [r0, #0xa]
	b _0800C6DA
_0800C6D2
	movs r3, #0
	str r3, [r0, #4]
	ldr r0, [r2, #0x14]
	strh r3, [r0, #0xa]
_0800C6DA
	ldr r0, [r2, #0x14]
	adds r0, #0xc
	str r0, [r2, #0x14]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bmi _0800C710
	mov r3, ip
	ldr r3, [r3]
	lsrs r0, r3, #0x15
	lsls r3, r3, #0xb
	lsrs r6, r3, #0x18
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	ldr r6, _0800C8B4 ;@ =0x0000131C
	adds r3, r3, r5
	adds r3, r3, r6
	ldrh r6, [r3]
	lsls r0, r0, #0x16
	lsrs r6, r6, #0xa
	lsls r6, r6, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r6
	strh r0, [r3]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
_0800C710
	ldr r0, [r4]
	lsls r0, r0, #0x18
	bpl _0800C7EA
	mov r3, ip
	ldr r0, [r3]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	ldr r3, _0800C8B8 ;@ =0x00001318
	adds r0, r0, r5
	adds r0, r0, r3
	ldrh r3, [r4, #0x26]
	b _0800C730
_0800C72E
	b _0800C91A
_0800C730
	strh r3, [r0]
	ldrh r3, [r4, #0x28]
	movs r7, #3
	lsls r7, r7, #0xe
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x2a]
	strh r3, [r0, #4]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsrs r6, r6, #0x18
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r6, r6, #4
	orrs r3, r6
	ldr r6, _0800C8BC ;@ =gUnknown_0804AC68
	ldrb r3, [r6, r3]
	ldrh r6, [r0, #2]
	bics r6, r7
	lsls r7, r3, #0x1e
	lsrs r7, r7, #0x10
	orrs r6, r7
	strh r6, [r0, #2]
	mov lr, r6
	ldrh r6, [r0]
	movs r7, #3
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1e
	lsls r7, r7, #0xe
	bics r6, r7
	lsls r3, r3, #0xe
	orrs r6, r3
	strh r6, [r0]
	str r6, [sp, #0x1c]
	ldr r3, [r1, #4]
	lsls r6, r3, #0x14
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x18
	lsls r3, r3, #2
	lsrs r6, r6, #0x18
	lsls r7, r6, #2
	adds r3, #4
	str r3, [sp, #0xc]
	adds r7, #4
	str r7, [sp, #0x10]
	ldrh r6, [r0, #4]
	mov r3, ip
	ldr r3, [r3]
	lsrs r6, r6, #0xa
	lsls r3, r3, #1
	lsrs r3, r3, #0x16
	lsls r6, r6, #0xa
	orrs r3, r6
	strh r3, [r0, #4]
	adds r6, r3, #0
	mov r3, ip
	ldr r3, [r3]
	lsls r3, r3, #0x13
	lsrs r7, r3, #0x1b
	adds r3, r6, #0
	movs r6, #0xf
	lsls r6, r6, #0xc
	bics r3, r6
	lsls r6, r7, #0xc
	orrs r3, r6
	strh r3, [r0, #4]
	ldrb r3, [r4, #5]
	strb r3, [r0, #6]
	ldrh r3, [r4, #0x26]
	lsls r3, r3, #0x16
	lsrs r6, r3, #0x1e
	beq _0800C892
	lsrs r3, r3, #0x1e
	cmp r3, #3
	bne _0800C7EC
	mov r6, lr
	lsrs r3, r6, #9
	ldr r7, [sp, #0x10]
	lsls r3, r3, #9
	subs r6, r6, r7
	lsls r6, r6, #0x17
	lsrs r6, r6, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0xc]
	lsrs r3, r6, #8
	subs r6, r6, r7
	lsls r6, r6, #0x18
	lsls r3, r3, #8
	lsrs r6, r6, #0x18
	orrs r3, r6
	strh r3, [r0]
	b _0800C814
_0800C7EA
	b _0800C906
_0800C7EC
	ldr r7, [sp, #0x10]
	mov r6, lr
	asrs r3, r7, #1
	subs r3, r6, r3
	lsls r3, r3, #0x17
	lsrs r6, r6, #9
	lsls r6, r6, #9
	lsrs r3, r3, #0x17
	orrs r3, r6
	strh r3, [r0, #2]
	ldr r3, [sp, #0xc]
	ldr r6, [sp, #0x1c]
	asrs r3, r3, #1
	subs r3, r6, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r6, r6, #8
	lsls r6, r6, #8
	orrs r3, r6
	strh r3, [r0]
_0800C814
	ldr r7, [sp, #0x10]
	movs r3, #0x10
	asrs r6, r7, #1
	ldrsh r7, [r1, r3]
	movs r3, #0x20
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	mov lr, r3
	ldr r3, [sp, #0xc]
	asrs r6, r3, #1
	movs r3, #0x12
	ldrsh r7, [r1, r3]
	movs r3, #0x22
	subs r7, r6, r7
	ldrsh r6, [r4, r3]
	muls r7, r6
	muls r7, r6
	asrs r3, r7, #0x10
	str r3, [sp, #8]
	ldr r7, [sp, #0x18]
	movs r3, #0
	ldrsh r6, [r7, r3]
	mov r3, lr
	muls r6, r3
	movs r3, #2
	ldrsh r7, [r7, r3]
	ldr r3, [sp, #8]
	muls r7, r3
	subs r3, r6, r7
	asrs r7, r3, #8
	str r7, [sp, #4]
	ldr r7, [sp, #0x18]
	mov r6, lr
	ldrh r3, [r7, #4]
	NEGS r3, r3
	muls r3, r6
	ldrh r6, [r7, #6]
	ldr r7, [sp, #8]
	muls r6, r7
	adds r3, r3, r6
	asrs r7, r3, #8
	ldrh r3, [r0, #2]
	mov lr, r7
	ldr r7, [sp, #4]
	lsrs r6, r3, #9
	adds r3, r3, r7
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r0]
	lsrs r6, r3, #8
	add r3, lr
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
	b _0800C900
_0800C892
	b _0800C894
_0800C894
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x13
	bpl _0800C8C0
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	ldr r7, [sp, #0x10]
	subs r3, r7, r6
	b _0800C8C6
	ALIGN
_0800C8A4 DCDU 0x00001824
_0800C8A8 DCDU gUnknown_080414B8
_0800C8AC DCDU 0x0FFFFFFF
_0800C8B0 DCDU 0x06010000
_0800C8B4 DCDU 0x0000131C
_0800C8B8 DCDU 0x00001318
_0800C8BC DCDU gUnknown_0804AC68
_0800C8C0
	movs r3, #0x10
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
_0800C8C6
	mov r7, lr
	subs r3, r7, r3
	mov r6, lr
	lsrs r6, r6, #9
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	lsls r6, r6, #9
	orrs r3, r6
	strh r3, [r0, #2]
	ldrh r3, [r4, #0x28]
	lsls r3, r3, #0x12
	bpl _0800C8E8
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	ldr r3, [sp, #0xc]
	subs r3, r3, r6
	b _0800C8EE
_0800C8E8
	movs r3, #0x12
	ldrsh r6, [r1, r3]
	adds r3, r6, #0
_0800C8EE
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x1c]
	lsrs r6, r6, #8
	subs r3, r7, r3
	lsls r3, r3, #0x18
	lsls r6, r6, #8
	lsrs r3, r3, #0x18
	orrs r3, r6
	strh r3, [r0]
_0800C900
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [r3, #0x18]
_0800C906
	ldr r0, [sp, #0x14]
	mov r3, ip
	adds r3, #8
	subs r0, #1
	mov ip, r3
	adds r1, #0x14
	adds r3, r0, #1
	str r0, [sp, #0x14]
	beq _0800C91A
	b _0800C658
_0800C91A
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r1
	movs r1, #0x40
	bics r0, r1
	movs r1, #0x80
	bics r0, r1
	str r0, [r4]
	ldr r0, [r5, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800C93A
sub_800C93A ;@ 0x0800C93A
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #4
	adds r4, r5, r0
	movs r0, #0x13
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x14]
	cmp r0, r4
	bls _0800C9B2
	ldr r7, _0800CCE0 ;@ =0x040000D4
_0800C952
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0800C996
	ldr r1, _0800CCE4 ;@ =gUnknown_03003EB4
	ldr r0, [r1]
	cmp r0, #0
	beq _0800C97A
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r4, #8]
	movs r1, #5
	lsls r1, r1, #0x18
	lsrs r0, r0, #2
	orrs r0, r1
	adds r2, r0, #0
	mov r0, sp
	ldr r1, [r4]
	bl sub_803D468
	b _0800C9AA
_0800C97A
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	str r0, [r7]
	ldr r0, [r4]
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x85
	lsrs r0, r0, #2
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _0800C9AA
_0800C996
	ldrh r1, [r4, #0xa]
	cmp r1, #0
	beq _0800C9C0
	cmp r1, #1
	beq _0800C9F0
	cmp r1, #2
	bne _0800C9AA
	ldr r1, [r4]
	bl sub_803D478
_0800C9AA
	ldr r0, [r6, #0x14]
	adds r4, #0xc
	cmp r0, r4
	bhi _0800C952
_0800C9B2
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r1, [r6, #0x10]
	adds r0, r5, r0
	cmp r1, r0
	bls _0800CA10
	b _0800C9F8
_0800C9C0
	ldr r1, _0800CCE4 ;@ =gUnknown_03003EB4
	ldr r1, [r1]
	cmp r1, #0
	beq _0800C9DA
	ldrh r1, [r4, #8]
	movs r2, #1
	lsrs r1, r1, #2
	lsls r2, r2, #0x1a
	orrs r2, r1
	ldr r1, [r4]
	bl sub_803D468
	b _0800C9AA
_0800C9DA
	str r0, [r7]
	ldr r0, [r4]
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x21
	lsrs r0, r0, #2
	lsls r1, r1, #0x1a
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _0800C9AA
_0800C9F0
	ldr r1, [r4]
	bl sub_803D47C
	b _0800C9AA
_0800C9F8
	ldr r4, [r0, #4]
	ldr r7, [r0]
	ldm r4!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r4!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r1, [r6, #0x10]
	adds r0, #8
	cmp r1, r0
	bhi _0800C9F8
_0800CA10
	movs r0, #3
	lsls r0, r0, #0xb
	adds r0, r5, r0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0800CA90
	movs r0, #0xc1
	lsls r0, r0, #5
	adds r1, r5, r0
	ldrb r3, [r1, #1]
	movs r0, #7
	movs r2, #1
	lsls r2, r2, #9
	lsls r0, r0, #0x18
	cmp r3, #0
	bne _0800CA4C
	adds r3, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800CA46
_0800CA38
	stm r3!, {r2}
	ldr r4, [r3]
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x10
	stm r3!, {r4}
	subs r0, #1
	bne _0800CA38
_0800CA46
	movs r0, #0
	strb r0, [r1]
	b _0800CA90
_0800CA4C
	ldr r3, _0800CCE8 ;@ =0x00001818
	ldr r4, _0800CCEC ;@ =0x00001318
	adds r3, r5, r3
_0800CA52
	ldrb r6, [r3, #7]
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	adds r3, r3, r5
	adds r3, r3, r4
	ldrh r6, [r3]
	strh r6, [r0]
	ldrh r6, [r3, #2]
	strh r6, [r0, #2]
	ldrh r6, [r3, #4]
	strh r6, [r0, #4]
	ldrb r6, [r3, #7]
	adds r0, #8
	cmp r6, #0x80
	blo _0800CA52
	ldrb r3, [r1, #1]
	ldrb r4, [r1]
	cmp r4, r3
	bls _0800CA8C
_0800CA7A
	stm r0!, {r2}
	ldr r4, [r0]
	adds r3, #1
	lsrs r4, r4, #0x10
	lsls r4, r4, #0x10
	stm r0!, {r4}
	ldrb r4, [r1]
	cmp r4, r3
	bhi _0800CA7A
_0800CA8C
	ldrb r0, [r1, #1]
	strb r0, [r1]
_0800CA90
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r5, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0800CACE
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r5, r0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _0800CACE
	ldr r0, _0800CCF0 ;@ =0x00001824
	ldr r1, _0800CCF4 ;@ =0x07000006
	adds r0, r5, r0
	movs r2, #0x1f
_0800CAB0
	ldrb r3, [r0, #8]
	cmp r3, #0
	beq _0800CAC6
	ldrh r3, [r0]
	strh r3, [r1]
	ldrh r3, [r0, #2]
	strh r3, [r1, #8]
	ldrh r3, [r0, #4]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #6]
	strh r3, [r1, #0x18]
_0800CAC6
	adds r0, #0xc
	adds r1, #0x20
	subs r2, #1
	bhs _0800CAB0
_0800CACE
	adds r0, r5, #0
	bl sub_800B8CE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800CADA
sub_800CADA ;@ 0x0800CADA
	ldr r0, [r0, #0x78]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	non_word_aligned_thumb_func_start sub_800CAE2
sub_800CAE2 ;@ 0x0800CAE2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800CCF8 ;@ =gUnknown_03003EA0
	movs r1, #0xc1
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	sub sp, #0x1fc
	sub sp, #0x18
	cmp r0, #1
	bls _0800CB5C
	ldr r0, [r4, #0x78]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x78]
	ldr r0, _0800CCFC ;@ =0x00001810
	movs r1, #0
	adds r2, r4, r0
	str r2, [sp, #0x210]
	ldrb r0, [r2, #0xf]
	movs r2, #0
	add r7, sp, #0x200
	lsls r3, r0, #2
	adds r0, r3, r0
	movs r3, #0
	stm r7!, {r1, r2, r3}
	lsls r0, r0, #1
	ldr r6, _0800CCEC ;@ =0x00001318
	adds r0, r0, r4
	adds r0, r0, r6
	stm r7!, {r3}
	movs r5, #0
	subs r7, #0x10
_0800CB26
	ldrb r2, [r0, #6]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	adds r2, r2, r7
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	ldrb r2, [r0, #6]
	cmp r2, r5
	bhs _0800CB3C
	movs r1, #1
_0800CB3C
	ldrb r0, [r0, #7]
	cmp r0, #0x80
	bhs _0800CB50
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r2, #0
	adds r0, r0, r6
	b _0800CB26
_0800CB50
	cmp r1, #0
	bne _0800CB66
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
_0800CB5C
	add sp, #0x1fc
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800CB66
	movs r0, #0
	movs r2, #0
	adds r1, r7, #0
_0800CB6C
	ldrb r3, [r1, r0]
	strb r2, [r1, r0]
	adds r0, #1
	adds r2, r2, r3
	cmp r0, #0x10
	blt _0800CB6C
	ldr r2, [sp, #0x210]
	adds r7, r6, #0
	ldrb r0, [r2, #0xf]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r0, r6
	adds r6, r4, r6
_0800CB8A
	subs r0, r5, r6
	bl sub_8040444
	ldrb r0, [r5, #6]
	adds r2, r1, #0
	add r1, sp, #0x200
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, r1, #1
	strb r3, [r0]
	add r0, sp, #0x100
	strb r2, [r0, r1]
	ldrb r1, [r5, #7]
	cmp r1, #0x80
	bhs _0800CBB8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, r0, r7
	b _0800CB8A
_0800CBB8
	add r5, sp, #0x200
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	movs r1, #0xc1
	lsls r1, r1, #5
	adds r1, r4, r1
	stm r5!, {r3}
	ldrb r3, [r1, #1]
	subs r5, #0x10
	cmp r3, #0
	ble _0800CBF4
	ldr r7, _0800CD00 ;@ =0x00001310
_0800CBD4
	ldrb r6, [r0, r2]
	adds r2, #1
	lsls r3, r6, #2
	adds r3, r3, r6
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, r3, r7
	ldrb r3, [r3, #0xe]
	lsrs r3, r3, #4
	adds r3, r3, r5
	ldrb r6, [r3]
	adds r6, #1
	strb r6, [r3]
	ldrb r3, [r1, #1]
	cmp r3, r2
	bgt _0800CBD4
_0800CBF4
	movs r2, #0
	movs r3, #0
_0800CBF8
	ldrb r6, [r5, r2]
	strb r3, [r5, r2]
	adds r2, #1
	adds r3, r3, r6
	cmp r2, #0x10
	blt _0800CBF8
	ldrb r3, [r1, #1]
	movs r2, #0
	cmp r3, #0
	ble _0800CC34
_0800CC0C
	ldrb r5, [r0, r2]
	ldr r6, _0800CD00 ;@ =0x00001310
	adds r2, #1
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, r3, r6
	ldrb r3, [r3, #0xe]
	add r6, sp, #0x200
	lsrs r3, r3, #4
	adds r3, r3, r6
	ldrb r6, [r3]
	adds r7, r6, #1
	strb r7, [r3]
	mov r3, sp
	strb r5, [r3, r6]
	ldrb r3, [r1, #1]
	cmp r3, r2
	bgt _0800CC0C
_0800CC34
	add r3, sp, #0
	ldrb r0, [r3]
	ldr r2, [sp, #0x210]
	strb r0, [r2, #0xf]
	ldrb r2, [r3]
	movs r0, #0xff
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r0, [r2]
	add r3, sp, #0
	ldrb r2, [r3]
	ldrb r0, [r3, #1]
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	ldr r3, _0800CD00 ;@ =0x00001310
	adds r2, r2, r4
	adds r2, r2, r3
	strb r0, [r2, #0xf]
	ldrb r2, [r1, #1]
	movs r0, #1
	subs r2, #1
	cmp r2, #1
	ble _0800CCA8
	mov r6, sp
_0800CC70
	movs r3, #0
	ldrb r7, [r6, r0]
	mvns r3, r3
	adds r2, r6, r0
	ldrb r5, [r3, r2]
	lsls r3, r7, #2
	adds r3, r3, r7
	lsls r3, r3, #1
	movs r7, #0x99
	lsls r7, r7, #5
	adds r3, r3, r4
	adds r3, r3, r7
	strb r5, [r3]
	ldrb r5, [r6, r0]
	ldrb r2, [r2, #1]
	adds r0, #1
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #1
	adds r5, r7, #0
	subs r5, #0x10
	adds r3, r3, r4
	adds r3, r3, r5
	strb r2, [r3, #0xf]
	ldrb r2, [r1, #1]
	subs r2, #1
	cmp r2, r0
	bgt _0800CC70
_0800CCA8
	mov r6, sp
	ldrb r2, [r6, r0]
	mov r1, sp
	adds r1, r1, r0
	lsls r3, r2, #2
	adds r2, r3, r2
	subs r1, #0x10
	ldrb r1, [r1, #0xf]
	lsls r2, r2, #1
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r4
	adds r2, r2, r3
	strb r1, [r2]
	ldrb r0, [r6, r0]
	movs r1, #0xff
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #1
	ldr r3, _0800CD00 ;@ =0x00001310
	adds r0, r0, r4
	adds r0, r0, r3
	strb r1, [r0, #0xf]
	ldr r0, [r4, #0x78]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4, #0x78]
	b _0800CB5C
	ALIGN
_0800CCE0 DCDU 0x040000D4
_0800CCE4 DCDU gUnknown_03003EB4
_0800CCE8 DCDU 0x00001818
_0800CCEC DCDU 0x00001318
_0800CCF0 DCDU 0x00001824
_0800CCF4 DCDU 0x07000006
_0800CCF8 DCDU gUnknown_03003EA0
_0800CCFC DCDU 0x00001810
_0800CD00 DCDU 0x00001310

	thumb_func_start sub_800CD04
sub_800CD04 ;@ 0x0800CD04
	push {r4}
	lsls r4, r2, #1
	adds r0, r4, r0
	movs r4, #0x1d
	lsls r4, r4, #5
	ldr r3, _0800CD90 ;@ =0x00000FFF
	adds r0, r0, r4
	strh r3, [r0]
	movs r3, #0x1f
	lsls r3, r3, #8
	ldr r0, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	bics r0, r3
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	bx lr

	thumb_func_start sub_800CD28
sub_800CD28 ;@ 0x0800CD28
	ldr r1, [r1, #0x14]
	ldr r2, _0800CD94 ;@ =0x00001318
	ldr r1, [r1]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #8
	bics r2, r3
	subs r3, #0xff
	subs r3, #1
	adds r2, r2, r3
	strh r2, [r1]
	movs r2, #3
	lsls r2, r2, #0xb
	movs r1, #1
	adds r0, r0, r2
	str r1, [r0, #0x18]
	bx lr

	thumb_func_start sub_800CD58
sub_800CD58 ;@ 0x0800CD58
	push {r4}
	ldrh r2, [r1, #0x26]
	ldr r1, [r1, #0x14]
	movs r4, #3
	ldr r1, [r1]
	lsls r2, r2, #0x16
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	ldr r3, _0800CD94 ;@ =0x00001318
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsrs r2, r2, #0x1e
	lsls r4, r4, #8
	bics r3, r4
	lsls r2, r2, #8
	orrs r2, r3
	strh r2, [r1]
	lsls r2, r4, #3
	movs r1, #1
	adds r0, r0, r2
	str r1, [r0, #0x18]
	pop {r4}
	bx lr
	ALIGN
_0800CD90 DCDU 0x00000FFF
_0800CD94 DCDU 0x00001318

	thumb_func_start sub_800CD98
sub_800CD98 ;@ 0x0800CD98
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r1, #0x10]
	adds r6, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
	cmp r0, #0
	beq _0800CE00
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0800CE00
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r5]
	bl sub_803C034
	ldrb r1, [r4, #0x10]
	movs r0, #0
	cmp r1, #0
	bls _0800CDDE
	movs r3, #0
_0800CDCE
	ldr r2, [r4, #0x14]
	ldr r1, [r5]
	ldrb r2, [r2, r0]
	adds r0, #1
	strb r3, [r1, r2]
	ldrb r1, [r4, #0x10]
	cmp r1, r0
	bhi _0800CDCE
_0800CDDE
	movs r1, #0
	movs r0, #0
_0800CDE2
	ldr r2, [r5]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800CDF6
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
_0800CDF6
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo _0800CDE2
_0800CE00
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0800CE0C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0800CE12
_0800CE0C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0800CE66
_0800CE12
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r6]
	bl sub_803C034
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0800CE66
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	bls _0800CE48
	movs r1, #0
_0800CE38
	ldr r3, [r4, #0x1c]
	ldr r2, [r6]
	ldrb r3, [r3, r0]
	adds r0, #1
	strb r1, [r2, r3]
	ldrb r2, [r4, #0x18]
	cmp r2, r0
	bhi _0800CE38
_0800CE48
	movs r1, #0
	movs r0, #0
_0800CE4C
	ldr r2, [r6]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800CE60
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r4, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r4, [r2, r0]
_0800CE60
	adds r0, #1
	cmp r0, r7
	blo _0800CE4C
_0800CE66
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800CE6C
sub_800CE6C ;@ 0x0800CE6C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldrb r1, [r2, #3]
	adds r7, r3, #0
	movs r6, #0
	adds r4, r2, #0
	cmp r1, #0
	sub sp, #0x6c
	beq _0800CE8C
	adds r3, r6, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r2, [sp, #0x6c]
	str r0, [r2, #0xc]
_0800CE8C
	movs r6, #0
	adds r3, r6, #0
	movs r1, #0xff
	adds r1, #1
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	adds r3, r6, #0
	movs r1, #0xff
	adds r1, #1
	str r0, [sp, #0x50]
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [sp, #0x4c]
	movs r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x6c]
	adds r1, r5, #0
	add r3, sp, #0x44
	add r2, sp, #0x48
	bl sub_800CD98
	ldr r2, [sp, #0x6c]
	ldr r0, [r2, #8]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldrb r1, [r7]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r7, #3]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r7, #1]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r6, r0, r1
	ldm r7!, {r1, r2, r3}
	ldr r0, [sp, #0x40]
	adds r6, #0x14
	stm r0!, {r1, r2, r3}
	ldm r7!, {r2, r3}
	stm r0!, {r2, r3}
	add r1, sp, #0x3c
	ldm r1!, {r0, r1}
	subs r7, #0x14
	str r0, [r1, #4]
	ldrb r0, [r7]
	ldr r1, [sp, #0x3c]
	lsls r3, r0, #3
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x10]
	ldrb r0, [r7]
	ldr r1, [sp, #0x3c]
	lsls r3, r0, #3
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r7, #3]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x40]
	str r0, [r1, #0xc]
	movs r1, #0
	str r1, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, #0
	bls _0800D01C
	add r7, sp, #0x24
	str r7, [sp, #0x68]
_0800CF3C
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0800CF4A
	ldr r1, [sp, #0x38]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D01E
_0800CF4A
	ldr r0, [sp, #0x3c]
	add r7, sp, #0x10
	str r0, [sp, #0x34]
	adds r0, #0x24
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x38]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x1c]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x1e]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x20]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x22]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x68]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x28]
	ldr r1, [r5]
	add r7, sp, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldm r7!, {r1, r2, r3}
	ldr r0, [sp, #0x34]
	stm r0!, {r1, r2, r3}
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldr r0, [sp, #0x34]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	ldrh r1, [r1, #0xe]
	muls r0, r1
	lsls r0, r0, #1
	adds r0, #3
	ldr r1, [sp, #0x10]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	beq _0800CFD6
	ldr r1, [sp, #0x34]
	adds r2, r6, #0
	str r6, [r1, #0x18]
	adds r6, r6, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_803D5A4
_0800CFD6
	ldr r0, [sp, #0x34]
	str r6, [r0, #0x1c]
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r7, r1, r6
	movs r1, #0
	str r1, [sp, #0xc]
	cmp r0, #0
	bls _0800D05E
_0800CFF2
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x2c]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r6, r2, r1
	ldm r6!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r6!, {r2, r3}
	stm r0!, {r2, r3}
	subs r0, #0x14
	ldr r2, [r0, #8]
	subs r6, #0x14
	lsls r3, r2, #0x15
	lsrs r1, r3, #0x1c
	mov ip, r2
	beq _0800D044
	b _0800D020
_0800D01C
	b _0800D0BC
_0800D01E
	b _0800D0AE
_0800D020
	ldrh r1, [r0, #4]
	ldrh r2, [r0, #6]
	str r7, [r0, #0x10]
	ldr r0, [r6, #0x10]
	muls r1, r2
	mov r2, ip
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	lsls r1, r1, #1
	muls r1, r2
	adds r2, r7, #0
	adds r7, r7, r1
	ldr r1, [r5]
	adds r1, r0, r1
	lsrs r0, r3, #0x1c
	bl sub_803D5A4
	b _0800D04C
_0800D044
	ldr r1, [r0, #0x10]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [r0, #0x10]
_0800D04C
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x34]
	adds r1, #1
	str r1, [sp, #0xc]
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	cmp r0, r1
	bhi _0800CFF2
_0800D05E
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D094
	movs r1, #0
	ldr r0, [sp, #0x18]
	str r1, [sp, #0xc]
	cmp r0, #0
	bls _0800D094
	movs r6, #0
_0800D070
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	bl sub_8040490
	ldr r0, [sp, #0x44]
	strb r6, [r0, r1]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r0, r1
	bhi _0800D070
_0800D094
	ldr r1, [sp, #0x34]
	str r7, [r1, #0x20]
	ldr r0, [sp, #0x34]
	movs r1, #1
	ldr r0, [r0, #8]
	lsls r0, r0, #2
	adds r6, r0, r7
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r1, [r2, r0]
_0800D0AE
	ldr r1, [sp, #0x38]
	adds r1, #1
	str r1, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, r1
	bls _0800D0BC
	b _0800CF3C
_0800D0BC
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D0E8
	movs r1, #0
	movs r0, #0
	movs r2, #0xff
	adds r2, #1
_0800D0CA
	ldr r2, [sp, #0x44]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800D0DE
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
_0800D0DE
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo _0800D0CA
_0800D0E8
	movs r1, #0
	str r1, [sp, #0x38]
	ldrb r0, [r4, #3]
	cmp r0, #0
	bls _0800D184
_0800D0F2
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0800D100
	ldr r1, [sp, #0x38]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D178
_0800D100
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x38]
	add r7, sp, #0x24
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r2, [r0]
	str r1, [sp, #0x28]
	str r2, [sp, #0x24]
	ldrh r2, [r0, #8]
	add r3, sp, #0
	strh r2, [r3, #0x2c]
	ldrh r1, [r0, #0xa]
	strh r1, [r3, #0x2e]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [sp, #0x34]
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r7!, {r2, r3}
	stm r0!, {r2, r3}
	subs r0, #0x14
	ldr r1, [r0]
	movs r2, #0
	mov ip, r1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #1
	beq _0800D19A
	cmp r1, #2
	bne _0800D15C
	ldr r1, [r0, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
_0800D15C
	adds r2, #3
	lsrs r1, r2, #2
	mov r3, ip
	lsls r3, r3, #0x18
	lsls r1, r1, #2
	lsrs r2, r3, #0x1c
	beq _0800D178
	adds r2, r6, #0
	str r6, [r0, #0x10]
	adds r6, r6, r1
	ldr r1, [sp, #0x34]
	lsrs r0, r3, #0x1c
	bl sub_803D5A4
_0800D178
	ldr r1, [sp, #0x38]
	adds r1, #1
	str r1, [sp, #0x38]
	ldrb r0, [r4, #3]
	cmp r0, r1
	bhi _0800D0F2
_0800D184
	ldr r0, [sp, #0x40]
	movs r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #0x34]
	str r0, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, #0
	bls _0800D278
	add r7, sp, #0x24
	str r7, [sp, #0x64]
	b _0800D1B4
_0800D19A
	ldrh r2, [r0, #8]
	ldrh r1, [r0, #0xa]
	mov r3, ip
	lsls r3, r3, #8
	muls r2, r1
	movs r1, #1
	lsls r7, r1, #8
	lsrs r3, r3, #0x10
	cmp r3, r7
	bls _0800D1B0
	movs r1, #2
_0800D1B0
	muls r2, r1
	b _0800D15C
_0800D1B4
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0800D1C2
	ldr r1, [sp, #0x34]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D28E
_0800D1C2
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x34]
	add r7, sp, #0x10
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x1c]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x1e]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x20]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x22]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x64]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x38]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0800D288
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x38]
	movs r7, #0
	ldr r1, [r1, #0x20]
	cmp r0, #0
	str r1, [sp, #8]
	bls _0800D27A
_0800D210
	ldr r0, [sp, #0x30]
	lsls r1, r7, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x60]
	cmp r0, #0
	beq _0800D236
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
	ldr r0, [sp, #0x60]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D26C
_0800D236
	ldr r0, [sp, #0x60]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	beq _0800D24C
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
	ldr r0, [sp, #0x60]
	ldrb r1, [r0, r1]
	b _0800D254
_0800D24C
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
_0800D254
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	lsls r0, r0, #2
	ldr r1, [r1, #0x10]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	stm r1!, {r0}
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #0xc]
_0800D26C
	ldr r0, [sp, #0x38]
	adds r7, #1
	ldr r0, [r0, #8]
	cmp r0, r7
	bhi _0800D210
	b _0800D27A
_0800D278
	b _0800D29A
_0800D27A
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	cmp r0, #0
	str r0, [r1, #8]
	bne _0800D288
	ldr r1, [sp, #0x38]
	str r0, [r1, #0x20]
_0800D288
	ldr r0, [sp, #0x38]
	adds r0, #0x24
	str r0, [sp, #0x38]
_0800D28E
	ldr r1, [sp, #0x34]
	adds r1, #1
	str r1, [sp, #0x34]
	ldrb r0, [r4]
	cmp r0, r1
	bhi _0800D1B4
_0800D29A
	movs r0, #0
	str r0, [sp, #0x38]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _0800D388
_0800D2A4
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x50]
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0800D2B8
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x50]
	movs r0, #0xff
	strb r0, [r2, r1]
	b _0800D3BC
_0800D2B8
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x38]
	add r7, sp, #0x24
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r7, [sp, #0x3c]
	adds r0, r7, #0
	adds r0, #0x14
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x34]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r7!, {r2, r3}
	subs r7, #0x14
	ldr r0, [r7, #4]
	lsls r1, r0, #5
	lsrs r2, r1, #0x1d
	movs r1, #1
	lsls r1, r2
	lsls r2, r0, #2
	lsrs r3, r2, #0x1d
	movs r2, #1
	lsls r2, r3
	muls r1, r2
	lsls r2, r0, #8
	lsrs r2, r2, #0x1c
	cmp r2, #8
	bne _0800D310
	lsrs r1, r1, #1
_0800D310
	ldrh r2, [r7]
	lsls r0, r0, #0xc
	muls r1, r2
	ldrh r2, [r7, #2]
	lsls r2, r2, #2
	str r2, [sp, #0x20]
	lsrs r2, r0, #0x1c
	beq _0800D32E
	adds r2, r6, #0
	str r6, [r7, #0xc]
	adds r6, r6, r1
	ldr r1, [sp, #0x30]
	lsrs r0, r0, #0x1c
	bl sub_803D5A4
_0800D32E
	str r6, [r7, #0x10]
	ldr r2, [sp, #0x20]
	ldr r1, [r7, #4]
	adds r0, r6, #0
	adds r6, r6, r2
	lsls r2, r1, #0xc
	lsrs r1, r2, #0x1c
	beq _0800D34C
	lsrs r3, r2, #0x1c
	adds r2, r0, #0
	adds r0, r3, #0
	ldr r1, [sp, #0x34]
	bl sub_803D5A4
	b _0800D354
_0800D34C
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x20]
	bl sub_803BF0C
_0800D354
	ldr r0, [r7, #4]
	movs r1, #0x10
	lsls r0, r0, #8
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0800D362
	movs r1, #1
_0800D362
	mov lr, r1
	ldrh r0, [r7, #2]
	movs r1, #0
	mov ip, r1
	cmp r0, #0
	bls _0800D3AC
	movs r2, #1
_0800D370
	mov r1, ip
	lsls r3, r1, #2
	ldr r0, [r7, #0x10]
	str r3, [sp, #0x5c]
	ldr r0, [r0, r3]
	cmp r0, #0
	blt _0800D3A0
	movs r0, #0
	mov r1, lr
	cmp r1, #0
	bls _0800D3A0
	b _0800D38A
_0800D388
	b _0800D3CC
_0800D38A
	ldr r1, [r7, #0x10]
	ldr r3, [sp, #0x5c]
	ldr r1, [r1, r3]
	ldr r3, [sp, #0x4c]
	lsls r1, r1, #6
	lsrs r1, r1, #0x18
	adds r1, r1, r0
	adds r0, #1
	cmp r0, lr
	strb r2, [r3, r1]
	blo _0800D38A
_0800D3A0
	mov r1, ip
	ldrh r0, [r7, #2]
	adds r1, #1
	mov ip, r1
	cmp r0, r1
	bhi _0800D370
_0800D3AC
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #8]
	subs r0, r7, r0
	bl sub_8040490
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x50]
	strb r1, [r2, r0]
_0800D3BC
	ldr r0, [sp, #0x38]
	adds r0, #1
	str r0, [sp, #0x38]
	ldrb r0, [r4, #1]
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bls _0800D3CC
	b _0800D2A4
_0800D3CC
	ldrb r2, [r4, #2]
	movs r1, #0
	movs r0, #0
	cmp r2, #0
	bls _0800D3FC
	movs r7, #0xff
_0800D3D8
	ldr r2, [sp, #0x4c]
	ldrb r2, [r2, r0]
	cmp r2, #0
	beq _0800D3F0
	adds r2, r1, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	adds r1, r2, #0
	ldr r2, [sp, #0x4c]
	strb r3, [r2, r0]
	b _0800D3F4
_0800D3F0
	ldr r2, [sp, #0x4c]
	strb r7, [r2, r0]
_0800D3F4
	ldrb r2, [r4, #2]
	adds r0, #1
	cmp r2, r0
	bhi _0800D3D8
_0800D3FC
	ldr r0, [sp, #0x40]
	movs r1, #0
	ldr r0, [r0, #4]
	ldrb r2, [r4]
	cmp r2, #0
	bls _0800D434
_0800D408
	ldr r2, [sp, #0x48]
	cmp r2, #0
	beq _0800D414
	ldrb r2, [r2, r1]
	cmp r2, #0xff
	beq _0800D42C
_0800D414
	ldr r3, [r0]
	ldr r7, [sp, #0x50]
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x18
	ldrb r2, [r7, r2]
	movs r7, #0xff
	lsls r7, r7, #8
	bics r3, r7
	lsls r2, r2, #8
	orrs r2, r3
	str r2, [r0]
	adds r0, #0x24
_0800D42C
	ldrb r2, [r4]
	adds r1, #1
	cmp r2, r1
	bhi _0800D408
_0800D434
	ldr r0, [sp, #0x40]
	ldr r1, [r0, #8]
	movs r0, #0
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _0800D48E
_0800D442
	ldr r2, [sp, #0x50]
	mov r0, ip
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	beq _0800D482
	ldrh r2, [r1, #2]
	movs r0, #0
	cmp r2, #0
	bls _0800D480
_0800D454
	ldr r2, [r1, #0x10]
	lsls r3, r0, #2
	adds r2, r2, r3
	ldr r3, [r2]
	ldr r7, [sp, #0x4c]
	str r3, [sp, #0x58]
	lsls r3, r3, #6
	lsrs r3, r3, #0x18
	ldrb r3, [r7, r3]
	movs r7, #0xff
	lsls r7, r7, #0x12
	mov lr, r3
	ldr r3, [sp, #0x58]
	adds r0, #1
	bics r3, r7
	mov r7, lr
	lsls r7, r7, #0x12
	orrs r3, r7
	str r3, [r2]
	ldrh r2, [r1, #2]
	cmp r2, r0
	bhi _0800D454
_0800D480
	adds r1, #0x14
_0800D482
	mov r0, ip
	adds r0, #1
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, ip
	bhi _0800D442
_0800D48E
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0800D508
	movs r0, #5
	lsls r0, r0, #0x18
	str r0, [sp, #0x38]
	ldr r0, _0800D878 ;@ =0x00007C1F
	movs r7, #0
	str r0, [sp, #0x34]
	ldrb r1, [r4, #2]
	cmp r1, #0
	bls _0800D500
	movs r1, #0x27
	ldr r2, [sp, #0x6c]
	lsls r1, r1, #6
	adds r1, r2, r1
	str r1, [sp, #0x54]
_0800D4B0
	ldr r3, [sp, #0x4c]
	ldrb r0, [r3, r7]
	cmp r0, #0xff
	beq _0800D4F8
	ldr r0, [sp, #0x54]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #5
	bpl _0800D4D0
	ldr r0, [r4, #0xc]
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, [sp, #0x38]
	ldr r2, _0800D87C ;@ =0x04000008
	bl sub_803D468
	b _0800D4E4
_0800D4D0
	ldr r0, [r4, #0xc]
	ldr r1, _0800D880 ;@ =0x040000D4
	lsls r2, r7, #5
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, [sp, #0x38]
	str r0, [r1, #4]
	ldr r0, _0800D884 ;@ =0x84000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800D4E4
	ldr r0, [r4, #0xc]
	lsls r1, r7, #5
	ldrh r0, [r0, r1]
	ldr r1, _0800D878 ;@ =0x00007C1F
	cmp r0, r1
	beq _0800D4F2
	str r0, [sp, #0x34]
_0800D4F2
	ldr r0, [sp, #0x38]
	adds r0, #0x20
	str r0, [sp, #0x38]
_0800D4F8
	ldrb r0, [r4, #2]
	adds r7, #1
	cmp r0, r7
	bhi _0800D4B0
_0800D500
	movs r1, #5
	ldr r0, [sp, #0x34]
	lsls r1, r1, #0x18
	strh r0, [r1]
_0800D508
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq _0800D532
	movs r0, #0
	cmp r1, #0
	bls _0800D532
_0800D514
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq _0800D524
	ldrb r1, [r1, r0]
	ldr r2, [sp, #0x6c]
	ldr r2, [r2, #0xc]
	strb r1, [r2, r0]
	b _0800D52A
_0800D524
	ldr r2, [sp, #0x6c]
	ldr r1, [r2, #0xc]
	strb r0, [r1, r0]
_0800D52A
	ldrb r1, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bhi _0800D514
_0800D532
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0]
	cmp r1, #0
	beq _0800D570
	ldr r2, [sp, #0x6c]
	movs r1, #0
	str r6, [r2, #0x10]
	ldrb r2, [r0]
	subs r2, #1
	cmp r2, #0
	ble _0800D560
_0800D54A
	ldr r2, [sp, #0x6c]
	lsls r3, r1, #2
	ldr r2, [r2, #0x10]
	adds r1, #1
	adds r4, r2, r3
	adds r4, #4
	str r4, [r2, r3]
	ldrb r2, [r0]
	subs r2, #1
	cmp r2, r1
	bgt _0800D54A
_0800D560
	ldr r2, [sp, #0x6c]
	ldrb r0, [r0]
	ldr r1, [r2, #0x10]
	movs r6, #0
	lsls r0, r0, #2
	adds r0, r1, r0
	subs r0, #0x40
	str r6, [r0, #0x3c]
_0800D570
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0800D57E
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D57E
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0800D58C
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D58C
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x50]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x4c]
	bl sub_803D9A8
	add sp, #0x7c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800D5A8
sub_800D5A8 ;@ 0x0800D5A8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	movs r7, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r1, #0xff
	adds r3, r7, #0
	adds r1, #1
	movs r2, #0
	movs r6, #0x14
	movs r0, #1
	sub sp, #0x44
	bl sub_803D9C4
	adds r3, r7, #0
	movs r1, #0xff
	adds r1, #1
	str r0, [sp, #0x38]
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	adds r1, r5, #0
	add r3, sp, #0x2c
	add r2, sp, #0x30
	bl sub_800CD98
	movs r1, #0
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, #0
	bls _0800D6D6
	add r7, sp, #0x18
	str r7, [sp, #0x40]
_0800D5F4
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0800D602
	ldr r1, [sp, #0x28]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D6D8
_0800D602
	ldr r1, [sp, #0x50]
	add r7, sp, #4
	ldrb r0, [r1]
	adds r6, #0x24
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x28]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x10]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x12]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x14]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x16]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x40]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x1c]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq _0800D66C
	add r3, sp, #0
	ldrh r0, [r3, #0x10]
	ldrh r1, [r3, #0x12]
	muls r0, r1
	lsls r0, r0, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r6, r6, r0
_0800D66C
	ldr r0, [sp, #0xc]
	lsls r0, r0, #2
	adds r7, r0, r6
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D6A0
	ldr r0, [sp, #0xc]
	movs r6, #0
	cmp r0, #0
	bls _0800D6A0
_0800D680
	ldr r0, [sp, #0x24]
	lsls r1, r6, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	bl sub_8040490
	ldr r0, [sp, #0x2c]
	movs r2, #0
	strb r2, [r0, r1]
	ldr r0, [sp, #0xc]
	adds r6, #1
	cmp r0, r6
	bhi _0800D680
_0800D6A0
	ldr r0, [sp, #4]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r7
	movs r0, #0
	cmp r1, #0
	mov ip, r1
	bls _0800D6E4
_0800D6B6
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [sp, #0x20]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #8]
	lsls r3, r2, #0x15
	lsrs r3, r3, #0x1c
	beq _0800D6DE
	ldrh r3, [r1, #4]
	ldrh r1, [r1, #6]
	lsls r2, r2, #0x19
	muls r3, r1
	lsls r1, r3, #1
	lsrs r2, r2, #0x19
	b _0800D6DA
_0800D6D6
	b _0800D6FE
_0800D6D8
	b _0800D6F0
_0800D6DA
	muls r1, r2
	adds r6, r1, r6
_0800D6DE
	adds r0, #1
	cmp ip, r0
	bhi _0800D6B6
_0800D6E4
	ldr r0, [sp, #4]
	movs r1, #1
	ldr r2, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r1, [r2, r0]
_0800D6F0
	ldr r1, [sp, #0x28]
	adds r1, #1
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, r1
	bls _0800D6FE
	b _0800D5F4
_0800D6FE
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D72A
	movs r1, #0
	movs r0, #0
	movs r2, #0xff
	adds r2, #1
_0800D70C
	ldr r2, [sp, #0x2c]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800D720
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
_0800D720
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo _0800D70C
_0800D72A
	ldrb r1, [r4, #3]
	movs r0, #0
	cmp r1, #0
	bls _0800D7A4
_0800D732
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _0800D73E
	ldrb r1, [r1, r0]
	cmp r1, #0xff
	beq _0800D79C
_0800D73E
	ldr r1, [sp, #0x50]
	adds r6, #0x14
	ldrb r1, [r1, #3]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #3]
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [r4, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #4]
	ldr r3, [r1]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x18]
	ldrh r7, [r1, #8]
	add r3, sp, #0
	strh r7, [r3, #0x20]
	ldrh r2, [r1, #0xa]
	strh r2, [r3, #0x22]
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #0x10]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	beq _0800D79C
	ldr r1, [sp, #0x18]
	movs r2, #0
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #1
	beq _0800D7B0
	cmp r1, #2
	bne _0800D794
	ldr r1, [sp, #0x1c]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
_0800D794
	adds r2, #3
	lsrs r1, r2, #2
	lsls r1, r1, #2
	adds r6, r6, r1
_0800D79C
	ldrb r1, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bhi _0800D732
_0800D7A4
	movs r0, #0
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _0800D876
	b _0800D7CC
_0800D7B0
	add r3, sp, #0
	ldrh r2, [r3, #0x20]
	ldrh r1, [r3, #0x22]
	ldr r3, [sp, #0x18]
	muls r2, r1
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	lsls r7, r1, #8
	cmp r3, r7
	bls _0800D7C8
	movs r1, #2
_0800D7C8
	muls r2, r1
	b _0800D794
_0800D7CC
	ldr r2, [sp, #0x38]
	mov r0, ip
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0800D8A2
	ldr r1, [sp, #0x50]
	adds r0, r6, #0
	ldrb r1, [r1, #1]
	ldr r2, [sp, #0x50]
	add r7, sp, #0x18
	adds r1, #1
	strb r1, [r2, #1]
	mov r2, ip
	lsls r3, r2, #2
	adds r2, r3, r2
	ldr r1, [r4, #8]
	lsls r2, r2, #2
	adds r6, r1, r2
	ldm r6!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r6!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r2, [sp, #0x28]
	ldr r1, [r5]
	adds r0, #0x14
	adds r2, r2, r1
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x24]
	adds r1, r2, r1
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #5
	lsrs r2, r1, #0x1d
	movs r1, #1
	adds r6, r1, #0
	lsls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #2
	lsrs r3, r2, #0x1d
	adds r2, r1, #0
	lsls r2, r3
	muls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #8
	bne _0800D82C
	lsrs r6, r6, #1
_0800D82C
	ldr r3, [sp, #0x1c]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	beq _0800D83C
	add r3, sp, #0
	ldrh r3, [r3, #0x18]
	muls r3, r6
	adds r0, r3, r0
_0800D83C
	add r3, sp, #0
	ldrh r3, [r3, #0x1a]
	lsls r3, r3, #2
	adds r6, r3, r0
	movs r0, #0x10
	cmp r2, #9
	beq _0800D84C
	movs r0, #1
_0800D84C
	add r3, sp, #0
	ldrh r2, [r3, #0x1a]
	mov lr, r0
	movs r0, #0
	cmp r2, #0
	bls _0800D8A2
_0800D858
	lsls r7, r0, #2
	ldr r1, [sp, #0x28]
	str r7, [sp, #0x3c]
	ldr r1, [r1, r7]
	cmp r1, #0
	blt _0800D898
	movs r1, #0
	mov r2, lr
	cmp r2, #0
	bls _0800D898
	movs r3, #1
_0800D86E
	ldr r2, [sp, #0x28]
	ldr r7, [sp, #0x3c]
	ldr r2, [r2, r7]
	b _0800D888
_0800D876
	b _0800D8AE
	ALIGN
_0800D878 DCDU 0x00007C1F
_0800D87C DCDU 0x04000008
_0800D880 DCDU 0x040000D4
_0800D884 DCDU 0x84000008
_0800D888
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	ldr r7, [sp, #0x34]
	adds r1, #1
	cmp r1, lr
	strb r3, [r7, r2]
	blo _0800D86E
_0800D898
	add r3, sp, #0
	ldrh r1, [r3, #0x1a]
	adds r0, #1
	cmp r1, r0
	bhi _0800D858
_0800D8A2
	mov r0, ip
	adds r0, #1
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, ip
	bhi _0800D7CC
_0800D8AE
	ldrb r1, [r4, #2]
	movs r0, #0
	cmp r1, #0
	bls _0800D8D0
_0800D8B6
	ldr r7, [sp, #0x34]
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq _0800D8C8
	ldr r1, [sp, #0x50]
	ldrb r1, [r1, #2]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #2]
_0800D8C8
	ldrb r1, [r4, #2]
	adds r0, #1
	cmp r1, r0
	bhi _0800D8B6
_0800D8D0
	adds r5, #0x20
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r4, r0, r6
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0800D8E6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D8E6
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0800D8F4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D8F4
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x38]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x34]
	bl sub_803D9A8
	adds r0, r4, #0
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800D912
sub_800D912 ;@ 0x0800D912
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r6, r4, r0
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	sub sp, #4
	str r0, [r6, #0x3c]
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	str r5, [sp]
	ldr r1, [r4, #8]
	movs r0, #0
	movs r7, #0
	cmp r1, #0
	beq _0800D93C
	ldrb r0, [r1]
_0800D93C
	cmp r0, #0
	bls _0800D964
_0800D940
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0800D952
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r5, #0x30]
_0800D952
	ldr r1, [r4, #8]
	adds r7, #1
	adds r5, #0x58
	movs r0, #0
	cmp r1, #0
	beq _0800D960
	ldrb r0, [r1]
_0800D960
	cmp r0, r7
	bhi _0800D940
_0800D964
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _0800D976
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r6, #0x14]
_0800D976
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800D986
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
_0800D986
	ldr r0, _0800DD64 ;@ =gUnknown_03003EB0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800D992
	bl sub_80025D6
_0800D992
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0800D9A4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #8]
_0800D9A4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0800D9B6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #0xc]
_0800D9B6
	movs r5, #0
	str r5, [r4, #4]
	movs r1, #0xff
	adds r1, #0x61
	ldr r0, [sp]
	bl sub_803BEB0
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	str r5, [r0, #0x20]
	str r5, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r6, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800D9E0
sub_800D9E0 ;@ 0x0800D9E0
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0x28]
	movs r1, #0x27
	ldr r2, [sp, #0x44]
	lsls r1, r1, #6
	adds r1, r2, r1
	str r1, [sp, #0x40]
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r1, #0x3c]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #5
	bics r1, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	ldr r0, [sp, #0x44]
	movs r1, #1
	bl sub_800D912
	ldr r1, [sp, #0x48]
	movs r4, #0
	ldr r0, [r1]
	ldr r2, [sp, #0x44]
	str r0, [r2, #4]
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	movs r0, #0x13
	ldr r2, [sp, #0x44]
	lsls r0, r0, #7
	adds r0, r2, r0
	str r0, [sp, #0x3c]
	str r4, [r0, #0x20]
	ldr r1, [sp, #0x40]
	movs r0, #0
	str r0, [r1, #0x18]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DA4C
	movs r3, #1
	lsls r3, r3, #0x1a
	ldrh r0, [r3]
	movs r1, #0xf
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r3]
_0800DA4C
	ldr r1, [sp, #0x48]
	add r6, sp, #0x18
	ldr r0, [r1]
	add r5, sp, #4
	ldm r0!, {r1, r2, r3}
	stm r6!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r6!, {r2, r3}
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1]
	movs r3, #0
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x20]
	ldr r1, [r1]
	movs r2, #0
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x24]
	ldr r1, [r1]
	subs r6, #0x14
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x28]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [sp, #0x28]
	movs r0, #0
	movs r1, #0
	stm r5!, {r0, r1, r2, r3}
	stm r5!, {r3}
	subs r5, #0x14
	add r1, sp, #0x44
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800D5A8
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r2, [sp, #0x44]
	add r1, sp, #0x44
	str r0, [r2, #8]
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800CE6C
	ldr r2, [sp, #0x44]
	ldr r6, [r2, #8]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DAD4
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
_0800DAD4
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r0, [sp, #0x40]
	str r2, [sp, #0x28]
	ldr r1, [r0, #0x3c]
	ldr r0, _0800DD68 ;@ =0xFF800FFF
	ands r1, r0
	asrs r2, r0, #0xb
	ands r1, r2
	ldr r2, [sp, #0x40]
	str r1, [r2, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0800DB0C
	ldr r2, [sp, #0x28]
	movs r3, #0x80
	ldrh r1, [r2]
	movs r2, #1
	lsls r2, r2, #0xd
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	ldr r2, [sp, #0x28]
	bics r1, r3
	strh r1, [r2]
_0800DB0C
	movs r3, #0
	str r3, [sp, #0x24]
	add r4, sp, #0x14
	movs r1, #0
	movs r2, #0
	stm r4!, {r1, r2, r3}
	stm r4!, {r3}
	ldrb r2, [r6]
	subs r4, #0x10
	cmp r2, #0
	bls _0800DB42
_0800DB22
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r2, [r6, #4]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	adds r1, #1
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1c
	adds r2, r2, r4
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	ldrb r2, [r6]
	cmp r2, r1
	bhi _0800DB22
_0800DB42
	ldrb r1, [r6]
	adds r1, #0xff
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	adds r2, r4, #0
_0800DB4E
	ldrb r5, [r2, r1]
	strb r3, [r2, r1]
	adds r1, #1
	subs r3, r3, r5
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r1, #0x10
	blo _0800DB4E
	ldrb r3, [r6]
	movs r1, #0
	cmp r3, #0
	bls _0800DB8A
	add r7, sp, #0x24
_0800DB68
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r4, [r6, #4]
	lsls r3, r3, #2
	adds r3, r4, r3
	ldr r3, [r3]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	adds r3, r3, r2
	ldrb r4, [r3]
	adds r5, r4, #1
	strb r5, [r3]
	strb r1, [r7, r4]
	ldrb r3, [r6]
	adds r1, #1
	cmp r3, r1
	bhi _0800DB68
_0800DB8A
	movs r2, #0
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x44]
	movs r1, #0x21
	lsls r1, r1, #6
	adds r4, r2, r1
	ldr r1, _0800DD6C ;@ =0x04000008
	str r4, [sp, #0x38]
	movs r2, #0x20
	movs r7, #0
	movs r3, #0
	str r3, [sp, #0x10]
	str r7, [sp, #0x20]
	str r2, [sp, #0x18]
	str r1, [sp, #0x14]
	ldrb r1, [r6]
	cmp r1, #0
	bls _0800DC94
_0800DBAE
	ldr r0, [r6, #4]
	ldr r3, [sp, #0x10]
	add r1, sp, #0x24
	ldrb r1, [r1, r3]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r6, #8]
	ldr r1, [r5]
	ldr r2, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	subs r2, #1
	str r2, [sp, #0x18]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0800DC42
	ldr r1, [sp, #0x14]
	movs r2, #0xc
	ldrh r1, [r1]
	ldr r3, [sp, #0x10]
	bics r1, r2
	movs r2, #3
	subs r2, r2, r3
	lsls r2, r2, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	lsrs r2, r2, #0x1e
	orrs r1, r2
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	ldr r2, [sp, #0x18]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	orrs r1, r2
	movs r2, #3
	lsls r2, r2, #0xe
	bics r1, r2
	movs r2, #0
	orrs r2, r1
	ldr r1, [sp, #0x14]
	strh r2, [r1]
	ldr r3, [r0, #4]
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	cmp r3, #9
	beq _0800DC1E
	movs r1, #0
_0800DC1E
	movs r3, #0x80
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	movs r2, #0x40
	bics r1, r2
	ldr r2, [sp, #0x14]
	lsls r3, r3, #0x13
	strh r1, [r2]
	ldr r1, [sp, #0x14]
	str r1, [r4, #8]
	ldrh r1, [r3]
	ldr r7, [sp, #0x20]
	lsrs r2, r3, #0x12
	lsls r2, r7
	orrs r1, r2
	strh r1, [r3]
_0800DC42
	ldr r1, [sp, #0x14]
	ldr r7, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x14]
	movs r1, #3
	adds r7, #1
	str r7, [sp, #0x20]
	lsls r1, r1, #0x19
	str r1, [r4, #4]
	ldr r2, [sp, #0x18]
	movs r3, #0
	lsls r2, r2, #0xb
	adds r1, r2, r1
	str r1, [r4]
	ldr r1, [r4, #0x48]
	ldr r2, [sp, #0x18]
	lsrs r1, r1, #0xa
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x16
	lsls r1, r1, #0xa
	orrs r1, r2
	str r1, [r4, #0x48]
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	ldr r2, [r0, #4]
	movs r1, #1
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #9
	beq _0800DC80
	movs r1, #0
_0800DC80
	movs r7, #1
	lsls r7, r7, #0xa
	ldr r2, [r4, #0x48]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x15
	bics r2, r7
	orrs r1, r2
	str r1, [r4, #0x48]
	movs r3, #0
	b _0800DC96
_0800DC94
	b _0800DE22
_0800DC96
	adds r2, r4, #0
	adds r2, #0x40
	strh r3, [r2, #0xa]
	ldr r3, [r0, #4]
	lsls r7, r7, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	adds r1, r7, #0
	cmp r3, #9
	beq _0800DCAC
	lsrs r1, r1, #1
_0800DCAC
	strh r1, [r2, #0xc]
	ldr r1, [r4, #0x48]
	bics r1, r7
	str r1, [r4, #0x48]
	ldr r1, [r5, #0x1c]
	str r0, [r4, #0x54]
	str r1, [r4, #0x34]
	str r5, [r4, #0x50]
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	beq _0800DDA8
	lsrs r0, r0, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x50]
	movs r0, #0
	ldr r1, [r1]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	beq _0800DDB2
_0800DCE4
	lsls r7, r0, #2
	adds r7, r7, r0
	lsls r7, r7, #2
	ldr r1, [r5, #0x1c]
	mov lr, r7
	adds r1, r1, r7
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r2, [r4, #0x30]
	lsls r1, r1, #0xf
	lsrs r7, r1, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, r2, r1
	str r2, [sp, #0x34]
	mov ip, r3
	movs r3, #0xff
	ldr r2, [r2]
	lsls r3, r3, #7
	bics r2, r3
	lsls r3, r7, #7
	orrs r2, r3
	ldr r3, [sp, #0x34]
	str r2, [r3]
	str r2, [sp, #0x30]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldr r2, [r2, #8]
	lsls r2, r2, #0xf
	lsrs r3, r2, #0x1a
	ldr r2, [r4, #0x30]
	adds r7, r2, r1
	ldr r2, [sp, #0x30]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	orrs r2, r3
	str r2, [r7]
	ldr r3, [r4, #0x30]
	movs r7, #0x40
	bics r2, r7
	adds r3, r3, r1
	str r2, [r3]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldrh r3, [r2, #4]
	ldrh r7, [r2, #6]
	muls r3, r7
	adds r2, r3, #0
	ldr r3, [r4, #0x30]
	adds r3, r3, r1
	strh r2, [r3, #2]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0xc]
	ldr r2, [r4, #0x30]
	adds r2, r2, r1
	str r2, [sp, #0x2c]
	ldr r3, [r5, #0x1c]
	ldrh r2, [r2, #2]
	add r3, lr
	ldr r3, [r3, #8]
	b _0800DD70
	ALIGN
_0800DD64 DCDU gUnknown_03003EB0
_0800DD68 DCDU 0xFF800FFF
_0800DD6C DCDU 0x04000008
_0800DD70
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	subs r3, #1
	muls r2, r3
	lsls r2, r2, #1
	adds r3, r2, #0
	ldr r2, [sp, #0x2c]
	add r3, ip
	str r3, [r2, #0x10]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0x14]
	ldr r2, [sp, #0x1c]
	ldr r3, [r4, #0x30]
	adds r2, #1
	adds r3, r3, r1
	strh r2, [r3, #4]
	ldr r2, [r4, #0x30]
	adds r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r2, [sp, #0x1c]
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x50]
	adds r0, #1
	ldr r1, [r1]
	b _0800DDAA
_0800DDA8
	b _0800DDCA
_0800DDAA
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bhi _0800DCE4
_0800DDB2
	ldrh r1, [r5, #4]
	ldr r0, [sp, #0x40]
	ldr r2, _0800E15C ;@ =0x007FF000
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0xc
	adds r1, r0, r1
	ands r1, r2
	mvns r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
_0800DDCA
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0800DDDA
	ldr r0, [sp, #0x3c]
	str r4, [r0, #0x20]
_0800DDDA
	movs r7, #0
	ldr r1, _0800E160 ;@ =gUnknown_08041448
	str r7, [r4, #0xc]
	ldr r0, [r1, #4]
	ldr r2, _0800E164 ;@ =gUnknown_08041468
	str r0, [r4, #0x10]
	ldr r0, [r2, #4]
	ldr r3, _0800E168 ;@ =gUnknown_08041488
	str r0, [r4, #0x14]
	ldr r0, [r3, #4]
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	ldr r0, [r1, #0x14]
	adds r1, r5, #0
	str r0, [r4, #0x20]
	ldr r0, [r2, #0x14]
	add r2, sp, #0x44
	str r0, [r4, #0x24]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x28]
	ldr r0, _0800E16C ;@ =gUnknown_080414A8
	ldr r0, [r0, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x50]
	ldr r3, [r0, #0x18]
	ldm r2!, {r0, r2}
	bl sub_8001BB4
	ldr r3, [sp, #0x10]
	adds r4, #0x58
	adds r3, #1
	str r3, [sp, #0x10]
	ldrb r0, [r6]
	cmp r0, r3
	bls _0800DE22
	b _0800DBAE
_0800DE22
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #9
	lsrs r1, r0, #0x15
	beq _0800DE46
	lsrs r0, r0, #0x15
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0xc
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x14]
	b _0800DE4C
_0800DE46
	ldr r0, [sp, #0x40]
	movs r3, #0
	str r3, [r0, #0x14]
_0800DE4C
	ldr r0, [sp, #0x40]
	ldr r2, _0800E170 ;@ =0xFFFFF001
	ldr r0, [r0, #0x3c]
	ldr r1, [sp, #0x40]
	ands r0, r2
	str r0, [r1, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DE90
	ldr r4, _0800E174 ;@ =gUnknown_03003EB0
	ldr r0, [r4]
	bl sub_8002698
	ldrb r0, [r6]
	movs r5, #0
	ldr r7, [sp, #0x38]
	cmp r0, #0
	bls _0800DE86
_0800DE72
	movs r2, #1
	adds r1, r7, #0
	ldr r0, [r4]
	bl sub_800288A
	ldrb r0, [r6]
	adds r5, #1
	adds r7, #0x58
	cmp r0, r5
	bhi _0800DE72
_0800DE86
	ldr r2, [sp, #0x28]
	ldrh r0, [r2]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	strh r0, [r2]
_0800DE90
	ldr r0, [sp, #0x3c]
	movs r5, #1
	ldr r1, [r0, #0x20]
	adds r6, r5, #0
	ldr r0, [r1, #0x50]
	ldr r1, [r1, #0x54]
	ldrh r2, [r0, #0xc]
	ldr r1, [r1, #4]
	ldrh r0, [r0, #0xe]
	lsls r4, r1, #5
	lsls r1, r1, #2
	lsrs r1, r1, #0x1d
	lsls r5, r1
	lsrs r4, r4, #0x1d
	lsls r6, r4
	ldr r1, [sp, #0x3c]
	movs r3, #0
	str r3, [r1, #0x28]
	muls r2, r6
	lsls r2, r2, #0x10
	ldr r1, [sp, #0x3c]
	asrs r2, r2, #0x10
	subs r2, #0xf0
	str r3, [r1, #0x2c]
	lsls r1, r2, #0x10
	ldr r2, [sp, #0x3c]
	muls r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r1, [r2, #0x30]
	ldr r1, [sp, #0x3c]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [r1, #0x34]
	movs r0, #1
	ldr r1, [sp, #0x3c]
	lsls r0, r0, #0x13
	str r0, [r1, #0x38]
	ldr r0, [sp, #0x40]
	movs r1, #1
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0x18
	bics r0, r1
	lsrs r1, r1, #1
	bics r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	movs r0, #1
	bx r3

	thumb_func_start sub_800DEF8
sub_800DEF8 ;@ 0x0800DEF8
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	movs r2, #0x27
	lsls r2, r2, #6
	adds r1, r0, r2
	sub sp, #0x10
	str r1, [sp, #0xc]
	adds r7, r0, #0
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0xc]
	movs r6, #0
	str r0, [r1, #0x3c]
	adds r0, r2, #0
	subs r0, #0xff
	subs r0, #0x81
	adds r4, r7, r0
	ldr r1, [r7, #8]
	movs r0, #0
	cmp r1, #0
	beq _0800DF26
	ldrb r0, [r1]
_0800DF26
	cmp r0, #0
	bls _0800DFFA
_0800DF2A
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r1, [r4, #0x44]
	mov ip, r0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0800DF78
	ldr r0, [r4, #0x50]
	ldr r2, [r0]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq _0800DF4A
	cmp r2, #2
	bne _0800DF78
_0800DF4A
	ldr r2, [sp, #0x14]
	ldr r2, [r2]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x10
	ldrsh r5, [r0, r3]
	asrs r2, r2, #8
	muls r2, r5
	add r2, ip
	str r2, [r4, #0x38]
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #4]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	asrs r2, r2, #8
	muls r2, r0
	adds r0, r2, r1
	str r0, [r4, #0x3c]
	b _0800DFA0
_0800DF78
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0800E068
	lsls r0, r6, #2
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _0800DFA0
	adds r1, r4, #0
	adds r1, #0x38
	ldr r2, [r0, #0x2c]
	adds r0, r6, #0
	bl sub_803B8CE
_0800DFA0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	cmp r1, #3
	bne _0800E00E
	ldr r1, [sp, #4]
	cmp r1, #7
	ble _0800DFD6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #4]
	b _0800DFE6
_0800DFD6
	ldr r1, [sp, #4]
	adds r3, r1, #7
	bge _0800DFE6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #4]
_0800DFE6
	ldr r0, [sp, #8]
	cmp r0, #7
	ble _0800DFFC
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #8]
	b _0800E00E
_0800DFFA
	b _0800E144
_0800DFFC
	ldr r0, [sp, #8]
	adds r3, r0, #7
	bge _0800E00E
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #8]
_0800E00E
	ldr r1, [sp, #4]
	movs r5, #0
	movs r0, #0
	cmp r1, #0
	beq _0800E05A
	ldr r1, [r4, #0x40]
	lsls r2, r1, #0xd
	mov ip, r2
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x38]
	bne _0800E02E
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq _0800E036
	movs r5, #1
	b _0800E036
_0800E02E
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _0800E036
	movs r0, #1
_0800E036
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x38]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq _0800E050
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq _0800E048
	movs r0, #1
_0800E048
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq _0800E050
	movs r5, #1
_0800E050
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
_0800E05A
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0800E0AE
	ldr r1, [r4, #0x44]
	lsls r2, r1, #0xd
	mov ip, r2
	b _0800E06A
_0800E068
	b _0800E130
_0800E06A
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x3c]
	bne _0800E07C
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq _0800E086
	movs r2, #2
	orrs r5, r2
	b _0800E086
_0800E07C
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _0800E086
	movs r2, #2
	orrs r0, r2
_0800E086
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x3c]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq _0800E0A4
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq _0800E09A
	movs r2, #2
	orrs r0, r2
_0800E09A
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq _0800E0A4
	movs r2, #2
	orrs r5, r2
_0800E0A4
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
_0800E0AE
	cmp r0, #0
	beq _0800E0C8
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _0800E0C8
	ldr r0, _0800E174 ;@ =gUnknown_03003EB0
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_803B8CE
_0800E0C8
	cmp r5, #0
	beq _0800E0E2
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r3, [r0, #0xc]
	cmp r3, #0
	beq _0800E0E2
	ldr r0, _0800E174 ;@ =gUnknown_03003EB0
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_803B8CE
_0800E0E2
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	ldr r2, [r4, #0x38]
	lsls r0, r0, #0x13
	lsls r1, r1, #0x13
	cmp r2, r0
	ble _0800E0FE
	subs r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	subs r0, r2, r0
	str r0, [r4, #0x40]
	b _0800E10E
_0800E0FE
	NEGS r3, r0
	cmp r2, r3
	bge _0800E10E
	adds r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [r4, #0x40]
_0800E10E
	ldr r0, [r4, #0x3c]
	cmp r0, r1
	ble _0800E120
	subs r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	b _0800E130
_0800E120
	NEGS r2, r1
	cmp r0, r2
	bge _0800E130
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0800E130
	ldr r1, [r7, #8]
	adds r6, #1
	adds r4, #0x58
	movs r0, #0
	cmp r1, #0
	beq _0800E13E
	ldrb r0, [r1]
_0800E13E
	cmp r0, r6
	bls _0800E144
	b _0800DF2A
_0800E144
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x3c]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800E15C DCDU 0x007FF000
_0800E160 DCDU gUnknown_08041448
_0800E164 DCDU gUnknown_08041468
_0800E168 DCDU gUnknown_08041488
_0800E16C DCDU gUnknown_080414A8
_0800E170 DCDU 0xFFFFF001
_0800E174 DCDU gUnknown_03003EB0

	thumb_func_start sub_800E178
sub_800E178 ;@ 0x0800E178
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r0, r4, r0
	mov ip, r0
	ldr r0, [r0, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x17
	bics r0, r1
	mov r1, ip
	str r0, [r1, #0x3c]
	lsls r0, r0, #7
	bmi _0800E1B0
	ldr r5, _0800E220 ;@ =gUnknown_03003434
	ldr r0, [r5]
	cmp r0, #0
	bne _0800E1B0
	movs r0, #1
	str r0, [r5]
	ldr r3, [r4, #8]
	movs r6, #0
	cmp r3, #0
	beq _0800E1AE
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0800E1B6
_0800E1AE
	str r6, [r5]
_0800E1B0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800E1B6
	movs r1, #0x21
	ldrb r3, [r3]
	lsls r1, r1, #6
	adds r1, r4, r1
	movs r2, #0
	cmp r3, #0
	ldr r0, _0800E224 ;@ =0x04000010
	bls _0800E1F2
_0800E1C6
	ldr r3, [r1, #0x38]
	adds r2, #1
	asrs r7, r3, #0x1f
	lsrs r7, r7, #0x10
	adds r3, r7, r3
	asrs r3, r3, #0x10
	strh r3, [r0]
	ldr r3, [r1, #0x3c]
	adds r1, #0x58
	asrs r7, r3, #0x1f
	lsrs r7, r7, #0x10
	adds r3, r7, r3
	asrs r3, r3, #0x10
	strh r3, [r0, #2]
	ldr r7, [r4, #8]
	adds r3, r6, #0
	adds r0, #4
	cmp r7, #0
	beq _0800E1EE
	ldrb r3, [r7]
_0800E1EE
	cmp r3, r2
	bhi _0800E1C6
_0800E1F2
	ldr r0, _0800E228 ;@ =gUnknown_03003EB0
	mov r1, ip
	ldr r0, [r0]
	ldr r1, [r1, #0x3c]
	lsls r1, r1, #5
	lsrs r1, r1, #0x1f
	bl sub_8002762
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	movs r2, #1
	adds r0, #0x48
	ldr r1, [r0]
	lsls r2, r2, #0xb
	bics r1, r2
	str r1, [r0]
	adds r0, r4, #0
	bl sub_80022E2
	str r6, [r5]
	b _0800E1B0
	ALIGN
_0800E220 DCDU gUnknown_03003434
_0800E224 DCDU 0x04000010
_0800E228 DCDU gUnknown_03003EB0

	thumb_func_start sub_800E22C
sub_800E22C ;@ 0x0800E22C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	adds r4, r1, #0
	movs r3, #0
	movs r2, #0x48
	subs r1, r5, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0, #4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x16
	strh r0, [r4]
	strh r1, [r4, #2]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800E254
sub_800E254 ;@ 0x0800E254
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r3, _0800E4AC ;@ =0xFFFFE880
	adds r5, r2, #0
	add sp, r3
	add r6, sp, #0x54
	adds r0, r6, #0
	bl sub_803B15C
	add r7, sp, #0x38
	adds r0, r7, #0
	bl sub_80103C8
	movs r1, #3
	lsls r1, r1, #0xb
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	adds r4, r0, #0
	str r0, [sp, #0x38]
	lsls r0, r5, #0x1e
	bpl _0800E2A0
	movs r2, #0
	movs r1, #0
	ldr r0, _0800E4B0 ;@ =0x0000146C
	bl sub_803D984
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	movs r0, #1
	movs r2, #0
	movs r1, #0
	lsls r0, r0, #0xd
	bl sub_803D984
	str r0, [sp, #0x3c]
	b _0800E2AC
_0800E2A0
	ldr r0, _0800E4B4 ;@ =0x06014C00
	str r0, [sp, #0x44]
	ldr r0, _0800E4B8 ;@ =0x0601606C
	str r0, [sp, #0x40]
	ldr r0, _0800E4BC ;@ =0x06012C00
	str r0, [sp, #0x3c]
_0800E2AC
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_8010604
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	ldr r1, [r3]
	adds r0, r6, #0
	bl sub_803B1AE
	lsls r0, r5, #0x1e
	bpl _0800E2DA
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x44]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x3c]
	bl sub_803D9A8
_0800E2DA
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803D9A8
	movs r1, #0
	adds r0, r6, #0
	bl sub_803B184
	ldr r3, _0800E4C0 ;@ =0x0000178C
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800E2F6
sub_800E2F6 ;@ 0x0800E2F6
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	movs r7, #0
	adds r4, r1, #0
	subs r1, r6, #4
	adds r3, r7, #0
	movs r2, #0x50
	adds r5, r1, #0
	sub sp, #0x80
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0, #4]
	lsrs r1, r0, #0x1c
	bne _0800E3E2
	add r0, sp, #0x24
	bl sub_803E17C
	add r0, sp, #0x24
	bl sub_803E188
	adds r2, r0, #0
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	adds r2, #0x48
	movs r3, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r7, r0, #0
	adds r5, r0, #4
	adds r0, r5, #4
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r6, r0
	str r1, [sp, #0x20]
	ldr r2, [r7]
	adds r1, r5, r0
	lsls r2, r2, #4
	lsrs r2, r2, #2
	subs r7, r2, r0
	add r0, sp, #0x24
	bl sub_803E194
	adds r5, r0, #0
	adds r1, r7, #0
	cmp r7, r0
	bhi _0800E362
	adds r1, r5, #0
_0800E362
	adds r1, #3
	lsrs r0, r1, #2
	lsls r0, r0, #2
	adds r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1f
	bpl _0800E382
	movs r3, #0
	movs r2, #0
	movs r0, #1
	ldr r1, [sp, #0x1c]
	bl sub_803D9C4
	adds r6, r0, #0
	b _0800E39C
_0800E382
	cmp r4, #0
	bne _0800E39A
	movs r1, #0
	add r0, sp, #0x24
	ldr r5, [sp, #0x1c]
	bl sub_803E1A0
	adds r0, r5, #0
_0800E392
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800E39A
	adds r6, r4, #0
_0800E39C
	ldr r0, [sp, #0x1c]
	adds r0, r6, r0
	subs r3, r0, r7
	ldr r0, _0800E4A8 ;@ =gUnknown_03003E84
	str r3, [sp, #0x18]
	ldr r0, [r0]
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	bl sub_800529A
	bl sub_80081A8
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1e
	bpl _0800E3C8
	movs r2, #0
	movs r1, #0
	ldr r0, _0800E4B0 ;@ =0x0000146C
	bl sub_803D984
	adds r7, r0, #0
	b _0800E3CA
_0800E3C8
	ldr r7, _0800E4B8 ;@ =0x0601606C
_0800E3CA
	ldr r0, _0800E4C4 ;@ =gUnknown_03003EB4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E3E4
	movs r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	adds r1, r7, #0
	ldr r2, _0800E4C8 ;@ =0x0500051B
	bl sub_803D468
	b _0800E40E
_0800E3E2
	b _0800E482
_0800E3E4
	lsls r1, r7, #0x1e
	ldr r0, _0800E4CC ;@ =0x040000D4
	bpl _0800E3FE
	movs r1, #0
	add r3, sp, #0
	strh r1, [r3, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r7, [r0, #4]
	ldr r1, _0800E4D0 ;@ =0x81000A36
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0800E40E
_0800E3FE
	movs r1, #0
	str r1, [sp, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r7, [r0, #4]
	ldr r1, _0800E4D4 ;@ =0x8500051B
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0800E40E
	ldr r2, _0800E4B0 ;@ =0x0000146C
	adds r1, r7, #0
	add r0, sp, #0x24
	bl sub_803E1AC
	mov r0, sp
	bl sub_8008008
	ldr r3, [sp, #0x18]
	movs r0, #0
	str r3, [sp]
	add r3, sp, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r1, #2
	strb r1, [r3, #0xc]
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	mov r1, sp
	bl sub_803E1B8
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r5, #0
	add r0, sp, #0x24
	bl sub_803E1C4
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1e
	bpl _0800E458
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D9A8
_0800E458
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1f
	bpl _0800E476
	cmp r4, #0
	beq _0800E476
	adds r2, r5, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803F3E8
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
_0800E476
	movs r1, #0
	add r0, sp, #0x24
	bl sub_803E1A0
	adds r0, r5, #0
_0800E480
	b _0800E392
_0800E482
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _0800E496
	adds r1, r4, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x88]
	bl sub_800E254
	movs r0, #0
	b _0800E392
_0800E496
	cmp r0, #3
	bne _0800E480
	adds r1, r4, #0
	adds r0, r6, #0
	bl sub_803E1D0
	movs r0, #0
	b _0800E392
	ALIGN
_0800E4A8 DCDU gUnknown_03003E84
_0800E4AC DCDU 0xFFFFE880
_0800E4B0 DCDU 0x0000146C
_0800E4B4 DCDU 0x06014C00
_0800E4B8 DCDU 0x0601606C
_0800E4BC DCDU 0x06012C00
_0800E4C0 DCDU 0x0000178C
_0800E4C4 DCDU gUnknown_03003EB4
_0800E4C8 DCDU 0x0500051B
_0800E4CC DCDU 0x040000D4
_0800E4D0 DCDU 0x81000A36
_0800E4D4 DCDU 0x8500051B

	thumb_func_start sub_800E4D8
sub_800E4D8 ;@ 0x0800E4D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	movs r1, #0
	bl sub_80412A8
	movs r2, #0
	movs r1, #0
	bl sub_803D984
	adds r4, r0, #0
	movs r2, #2
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80412A8
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800E500
sub_800E500 ;@ 0x0800E500
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r3, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #0
	beq _0800E528
	cmp r6, #1
	bne _0800E522
	movs r2, #0
	movs r1, #0
	bl sub_80052C0
	adds r2, r4, #0
	adds r1, r5, #0
	bl sub_80052C0
_0800E522
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0800E528
	movs r1, #0
	cmp r4, #0
	bls _0800E522
_0800E52E
	ldrb r2, [r5, r1]
	adds r1, #1
	adds r0, r2, r0
	cmp r1, r4
	blo _0800E52E
	b _0800E522
	ALIGN

	thumb_func_start sub_800E53C
sub_800E53C ;@ 0x0800E53C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0800E920 ;@ =0x04000200
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #8]
	ldr r6, _0800E924 ;@ =gUnknown_03003438
	ldr r0, [r6, #0x30]
	bl sub_80050FA
	adds r0, r6, #0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0800E564
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
	str r4, [r6, #0x18]
_0800E564
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _0800E576
	cmp r5, #0
	bne _0800E576
	movs r1, #1
	bl sub_802693A
	str r4, [r6, #0x24]
_0800E576
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _0800E58A
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
	str r4, [r6, #0x2c]
_0800E58A
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0800E5B6
	cmp r5, #0
	bne _0800E5B6
	movs r1, #0
	bl sub_800B782
	movs r1, #0
	ldr r0, [r6, #0x28]
	bl sub_800B6FA
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0800E5B4
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_0800E5B4
	str r4, [r6, #0x28]
_0800E5B6
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0800E5DA
	movs r0, #1
	bl sub_8013DEA
	bl sub_8014DD4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0800E5D8
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_0800E5D8
	str r4, [r6, #0x10]
_0800E5DA
	movs r0, #0
	bl sub_80050FA
	movs r0, #1
	strh r0, [r7, #8]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800E5EA
sub_800E5EA ;@ 0x0800E5EA
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0800E924 ;@ =gUnknown_03003438
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	bne _0800E672
	movs r3, #1
	str r3, [r6, #0x3c]
	ldr r0, [r6, #0x28]
	ldr r7, _0800E928 ;@ =gUnknown_03003E94
	cmp r0, #0
	beq _0800E606
	ldr r0, [r7]
	bl sub_800B65E
_0800E606
	ldr r0, _0800E92C ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E63C
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r1, [r4, #0x28]
	lsls r2, r1, #0xf
	bpl _0800E624
	movs r0, #1
	lsls r0, r0, #0x11
	orrs r0, r1
	str r0, [r4, #0x28]
	b _0800E63C
_0800E624
	adds r0, #4
	adds r5, r0, #0
	bl sub_800CADA
	cmp r0, #0
	bne _0800E63C
	ldr r0, [r4, #0x28]
	lsls r0, r0, #0xd
	bmi _0800E63C
	adds r0, r5, #0
	bl sub_800C93A
_0800E63C
	ldr r0, _0800E930 ;@ =gUnknown_03003EA4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E648
	bl sub_800E178
_0800E648
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0800E654
	ldr r0, [r7]
	bl sub_800B708
_0800E654
	ldr r2, _0800E934 ;@ =gUnknown_03007FF8
	ldrh r1, [r2]
	movs r0, #0
	movs r3, #1
	orrs r1, r3
	strh r1, [r2]
	ldr r1, _0800E938 ;@ =gUnknown_03003E98
	ldr r1, [r1]
	cmp r1, #0
	beq _0800E670
	adds r1, #8
	ldr r2, [r1]
	adds r2, #1
	str r2, [r1]
_0800E670
	str r0, [r6, #0x3c]
_0800E672
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800E678
sub_800E678 ;@ 0x0800E678
	push {r4, lr}
	sub sp, #8
	movs r0, #2
	bl sub_801333E
	add r1, pc, #0x2B8 ;@ =_0800E93C
	movs r0, #0
	bl sub_80133F0
	add r1, pc, #0x2C4 ;@ =_0800E950
	movs r0, #1
	bl sub_80133F0
	movs r0, #1
	bl sub_80133A0
	movs r2, #0
	ldr r4, _0800E964 ;@ =0x0000777F
	movs r3, #0
	movs r1, #1
	str r2, [sp, #4]
	str r4, [sp]
	bl sub_803FDB8
	movs r0, #0
	bl sub_80133A0
	movs r2, #0
	adds r3, r4, #0
	movs r1, #2
	str r2, [sp]
	str r2, [sp, #4]
	bl sub_803FDB8
	movs r0, #0
	bl sub_80133A0
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r2, _0800E96C ;@ =0x000050FC
	movs r1, #3
	ldr r3, _0800E968 ;@ =0x0000FFFF
	bl sub_803FDB8
	ldr r0, _0800E970 ;@ =gUnknown_03003EBC
	add r1, pc, #0x29C ;@ =_0800E974
	ldr r4, [r0]
	ldr r0, _0800E988 ;@ =gUnknown_03003EA8
	ldr r0, [r0]
	bl sub_8004FFC
	ldr r1, [r0]
	ldr r2, [r4, #4]
	str r1, [r2]
	ldrh r2, [r0, #4]
	ldr r3, [r4, #4]
	adds r1, r0, #0
	strh r2, [r3, #4]
	ldrb r2, [r0, #6]
	ldr r3, [r4, #4]
	adds r1, #8
	strb r2, [r3, #6]
	ldrb r2, [r0, #7]
	ldr r3, [r4, #4]
	strb r2, [r3, #7]
	ldr r2, [r4, #4]
	str r1, [r2, #8]
	ldr r1, [r4, #4]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1, #0xc]
	ldr r1, _0800E98C ;@ =gUnknown_03003D30
	ldr r0, _0800E924 ;@ =gUnknown_03003438
	ldr r1, [r1]
	ldr r0, [r0, #0x14]
	ldrb r1, [r1, #3]
	strb r1, [r0, #9]
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800E71C
sub_800E71C ;@ 0x0800E71C
	push {r0, r4, r5, r6, r7, lr}
	ldr r5, _0800E938 ;@ =gUnknown_03003E98
	ldr r0, [r5]
	bl sub_800B082
	ldr r7, _0800E920 ;@ =0x04000200
	movs r4, #0
	strh r4, [r7, #8]
	ldr r0, _0800E924 ;@ =gUnknown_03003438
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0800E756
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0xc
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E752
	movs r2, #0
	lsls r1, r7, #0xa
	adds r0, r5, #0
	bl sub_8004DE6
_0800E752
	ldr r0, _0800E924 ;@ =gUnknown_03003438
	str r5, [r0, #8]
_0800E756
	ldr r6, _0800E924 ;@ =gUnknown_03003438
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _0800E77A
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E778
	adds r0, r5, #0
	bl sub_8004924
_0800E778
	str r5, [r6, #0xc]
_0800E77A
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _0800E7A0
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x67
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #4
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E79E
	add r1, pc, #0x1F8 ;@ =_0800E990
	adds r0, r5, #0
	bl sub_8017474
_0800E79E
	str r5, [r6, #0x1c]
_0800E7A0
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0800E7C8
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0xc
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E7C2
	movs r1, #1
	adds r0, r5, #0
	bl sub_801343C
_0800E7C2
	str r5, [r6, #0x14]
	bl sub_800E678
_0800E7C8
	ldr r0, [r6, #0x20]
	cmp r0, #0
	bne _0800E7EA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	ldr r0, _0800E9A0 ;@ =0x00000524
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E7E8
	adds r0, r5, #0
	bl sub_801B10C
_0800E7E8
	str r5, [r6, #0x20]
_0800E7EA
	ldr r0, [r6, #0x30]
	bl sub_80050FA
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	bne _0800E814
	adds r3, r4, #0
	movs r2, #0
	movs r0, #4
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	cmp r0, #0
	beq _0800E812
	ldr r1, _0800E9A4 ;@ =_0803ECCC
	ldr r2, _0800E9A8 ;@ =gUnknown_03003E90
	str r1, [r0]
	ldr r1, _0800E9AC ;@ =_0803E86C
	str r0, [r2]
	str r1, [r0]
_0800E812
	str r0, [r6, #0x2c]
_0800E814
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _0800E842
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0xdf
	lsls r0, r0, #5
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E832
	adds r0, r5, #0
	bl sub_8000D64
_0800E832
	movs r2, #0
	movs r1, #0
	adds r0, r5, #0
	str r5, [r6, #0x10]
	bl sub_800194E
	bl sub_8014DD4
_0800E842
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0800E860
	adds r3, r4, #0
	movs r2, #0
	ldr r0, _0800E9B0 ;@ =0x00000A08
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E85E
	adds r0, r5, #0
	bl sub_8001A90
_0800E85E
	str r5, [r6, #0x18]
_0800E860
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne _0800E8DC
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x14
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E87C
	adds r0, r5, #0
	bl sub_800B4F0
_0800E87C
	adds r0, r5, #0
	adds r3, r4, #0
	movs r1, #0
	ldr r2, _0800E9B4 ;@ =0x00003442
	str r5, [r6, #0x28]
	bl sub_800B5EE
	add r1, pc, #0x12C ;@ =_0800E9B8
	ldr r0, [r6, #8]
	bl sub_8004FFC
	adds r1, r0, #0
	ldr r0, [r6, #0x28]
	bl sub_800B676
	add r1, pc, #0x128 ;@ =_0800E9C4
	ldr r0, [r6, #8]
	bl sub_8004FFC
	adds r2, r0, #0
	ldr r0, [r6, #0x28]
	movs r1, #5
	bl sub_800B772
	ldr r5, _0800E98C ;@ =gUnknown_03003D30
	ldr r0, [r5]
	ldrb r0, [r0]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040574
	ldr r0, [r6, #0x28]
	bl sub_800B782
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040574
	ldr r0, [r6, #0x28]
	bl sub_800B6FA
	ldr r0, [r6, #0x28]
	bl sub_800B652
_0800E8DC
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bne _0800E900
	adds r3, r4, #0
	movs r2, #0
	ldr r0, _0800E9CC ;@ =0x00001308
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800E8F8
	adds r0, r5, #0
	bl sub_8026908
_0800E8F8
	adds r0, r5, #0
	str r5, [r6, #0x24]
	bl sub_8026962
_0800E900
	ldr r5, _0800E938 ;@ =gUnknown_03003E98
	ldr r0, [r5]
	ldr r1, [sp]
	bl sub_800B058
	movs r1, #1
	ldr r0, [r5]
	bl sub_800B034
	ldr r0, [r6, #0x10]
	movs r5, #1
	cmp r0, #0
	beq _0800E9FE
	movs r1, #0x67
	lsls r1, r1, #6
	b _0800E9D0
	ALIGN
_0800E920 DCDU 0x04000200
_0800E924 DCDU gUnknown_03003438
_0800E928 DCDU gUnknown_03003E94
_0800E92C DCDU gUnknown_03003EB8
_0800E930 DCDU gUnknown_03003EA4
_0800E934 DCDU gUnknown_03007FF8
_0800E938 DCDU gUnknown_03003E98
_0800E93C DCDU 0x746E6F66
_0800E940 DCDU 0x68746F67
_0800E944 DCDU 0x32316369
_0800E948 DCDU 0x746E662E
_0800E94C DCDU 0x00000000
_0800E950 DCDU 0x746E6F66
_0800E954 DCDU 0x646E6F70
_0800E958 DCDU 0x7365726F
_0800E95C DCDU 0x2E323161
_0800E960 DCDU 0x00746E66
_0800E964 DCDU 0x0000777F
_0800E968 DCDU 0x0000FFFF
_0800E96C DCDU 0x000050FC
_0800E970 DCDU gUnknown_03003EBC
_0800E974 DCDU 0x50747854
_0800E978 DCDU 0x616B6361
_0800E97C DCDU 0x415F6567
_0800E980 DCDU 0x622E6C6C
_0800E984 DCDU 0x00006E69
_0800E988 DCDU gUnknown_03003EA8
_0800E98C DCDU gUnknown_03003D30
_0800E990 DCDU 0x69726353
_0800E994 DCDU 0x61447470
_0800E998 DCDU 0x622E6174
_0800E99C DCDU 0x00006E69
_0800E9A0 DCDU 0x00000524
_0800E9A4 DCDU _0803ECCC
_0800E9A8 DCDU gUnknown_03003E90
_0800E9AC DCDU _0803E86C
_0800E9B0 DCDU 0x00000A08
_0800E9B4 DCDU 0x00003442
_0800E9B8 DCDU 0x73754D58
_0800E9BC DCDU 0x622E6369
_0800E9C0 DCDU 0x00006E69
_0800E9C4 DCDU 0x2E784673
_0800E9C8 DCDU 0x006E6962
_0800E9CC DCDU 0x00001308
_0800E9D0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800E9FE
	ldr r0, _0800ECBC ;@ =gUnknown_03003EA8
	add r1, pc, #0x2E4 ;@ =_0800ECC0
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #6
	bl sub_802EF0A
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0x40
	ldr r0, [r6, #0x10]
	bl sub_8000F4C
	movs r2, #1
	lsls r1, r2, #8
	b _0800EA00
_0800E9FE
	b _0800EA06
_0800EA00
	ldr r0, [r6, #0x10]
	bl sub_800106A
_0800EA06
	movs r0, #0
	bl sub_80050FA
	ldr r0, _0800ECC8 ;@ =gUnknown_03003EAC
	adds r3, r5, #0
	movs r1, #0
	ldr r2, _0800ECCC ;@ =sub_800E5EA
	ldr r0, [r0]
	bl sub_800B12C
	strh r5, [r7, #8]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800EA22
sub_800EA22 ;@ 0x0800EA22
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, sp, #0x18
	adds r0, r5, #0
	bl sub_8031578
	ldr r4, _0800ECD0 ;@ =gUnknown_03003E9C
	ldr r1, _0800ECD4 ;@ =gUnknown_080517C8
	ldr r0, [r4]
	bl sub_80315FC
	movs r1, #3
	ldr r0, [r4]
	bl sub_80315CE
	ldr r0, [r4]
	ldr r2, _0800ECD8 ;@ =0x00000018
	ldr r1, _0800ECDC ;@ =gUnknown_0300142C
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #0
	ldr r2, _0800ECE4 ;@ =gUnknown_03000000
	ldr r3, _0800ECE0 ;@ =0x0000142C
	bl sub_8031600
	ldr r0, [r4]
	ldr r2, _0800ECE8 ;@ =0x00000000
	ldr r1, _0800ECEC ;@ =gUnknown_03001140
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #1
	ldr r2, _0800ECF4 ;@ =gUnknown_03000000
	ldr r3, _0800ECF0 ;@ =0x00001140
	bl sub_8031600
	ldr r0, [r4]
	ldr r2, _0800ECF8 ;@ =0x00000AFC
	ldr r1, _0800ECFC ;@ =gUnknown_030033C8
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #2
	ldr r2, _0800ED04 ;@ =gUnknown_03001444
	ldr r3, _0800ED00 ;@ =0x00001F84
	bl sub_8031600
	movs r1, #1
	adds r0, r5, #0
	bl sub_8031622
	movs r1, #1
	ldr r0, _0800ED08 ;@ =sub_8017FFE
	bl sub_801837C
	movs r1, #0
	ldr r0, _0800ED0C ;@ =sub_8017DE6
	bl sub_801837C
	movs r1, #0x10
	ldr r0, _0800ED10 ;@ =sub_8028CE8
	bl sub_801837C
	movs r1, #0x13
	ldr r0, _0800ED14 ;@ =sub_80397DC
	bl sub_801837C
	movs r1, #0x11
	ldr r0, _0800ED18 ;@ =sub_8028C7C
	bl sub_801837C
	movs r1, #0x12
	ldr r0, _0800ED1C ;@ =sub_8028D60
	bl sub_801837C
	movs r1, #0x14
	ldr r0, _0800ED20 ;@ =sub_8038D2C
	bl sub_801837C
	movs r1, #2
	ldr r0, _0800ED24 ;@ =sub_801AB34
	bl sub_801837C
	movs r1, #0xf
	ldr r0, _0800ED28 ;@ =sub_8026014
	bl sub_801837C
	movs r1, #0x15
	ldr r0, _0800ED2C ;@ =sub_8028F64
	bl sub_801837C
	movs r1, #3
	ldr r0, _0800ED30 ;@ =sub_80192CE
	bl sub_801837C
	movs r1, #4
	ldr r0, _0800ED34 ;@ =sub_8019BE2
	bl sub_801837C
	movs r1, #5
	ldr r0, _0800ED38 ;@ =sub_801A4DA
	bl sub_801837C
	movs r1, #6
	ldr r0, _0800ED3C ;@ =sub_801AED0
	bl sub_801837C
	movs r1, #7
	ldr r0, _0800ED40 ;@ =sub_8022D6E
	bl sub_801837C
	movs r1, #8
	ldr r0, _0800ED44 ;@ =sub_8023486
	bl sub_801837C
	movs r1, #9
	ldr r0, _0800ED48 ;@ =sub_801D360
	bl sub_801837C
	movs r1, #0xa
	ldr r0, _0800ED4C ;@ =sub_8022726
	bl sub_801837C
	movs r1, #0xd
	ldr r0, _0800ED50 ;@ =sub_8031B98
	bl sub_801837C
	movs r1, #0x16
	ldr r0, _0800ED54 ;@ =sub_80305CC
	bl sub_801837C
	movs r1, #0x17
	ldr r0, _0800ED58 ;@ =sub_803B406
	bl sub_801837C
	movs r1, #0xb
	ldr r0, _0800ED5C ;@ =sub_8035324
	bl sub_801837C
	movs r1, #0xc
	ldr r0, _0800ED60 ;@ =sub_8038754
	bl sub_801837C
	ldr r0, _0800ED64 ;@ =gUnknown_03003D28
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0800ED68 ;@ =gUnknown_03003D35
	strb r4, [r0]
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl sub_80050C0
	ldr r6, _0800ED6C ;@ =gUnknown_03003438
	str r0, [r6, #0x30]
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #1
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #0xb
	bl sub_803DA9C
	movs r1, #1
	lsls r1, r1, #0xb
	bl sub_80050C0
	str r0, [r6, #0x34]
	movs r0, #0
	bl sub_800B190
	bl sub_802363C
	movs r2, #0x4b
	lsls r2, r2, #0xa
	mvns r1, r4
	movs r0, #3
	lsls r0, r0, #0x19
	bl sub_803C034
	movs r0, #3
	bl sub_800E71C
	add r5, sp, #0xc
	adds r0, r5, #0
	bl sub_8004716
	movs r2, #0
	movs r1, #1
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #3
	adds r3, r4, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	movs r1, #0xce
	ldr r0, [r6, #0x1c]
	bl sub_8017884
	ldr r2, _0800ED6C ;@ =gUnknown_03003438
	movs r0, #8
	adds r2, #0x40
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
_0800EBE4
	movs r0, #1
	bl sub_8018386
	bl sub_8018398
	cmp r0, #0
	bne _0800EBE4
	bl sub_800E53C
	ldr r0, _0800ED70 ;@ =gUnknown_03003D2C
	ldr r0, [r0]
	bl sub_803DA18
	movs r1, #0
	add r0, sp, #0x18
	bl sub_80315A2
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800EC0E
sub_800EC0E ;@ 0x0800EC0E
	push {r4, r5, r6, lr}
	sub sp, #8
	cmp r0, #2
	bne _0800EC78
	ldr r4, _0800ED6C ;@ =gUnknown_03003438
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800EC24
	ldrh r1, [r4, #4]
	cmp r2, r1
	blo _0800EC78
_0800EC24
	cmp r0, #0
	bne _0800EC32
	bl sub_8008160
	ldr r1, _0800ED74 ;@ =0x0000C350
	cmp r0, r1
	bhs _0800EC42
_0800EC32
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800EC78
	bl sub_8008160
	ldr r1, _0800ED78 ;@ =0x000249F0
	cmp r0, r1
	blo _0800EC78
_0800EC42
	ldrb r0, [r4]
	movs r5, #0
	cmp r0, #0
	bne _0800EC80
	ldr r0, [r4, #0x14]
	ldrh r1, [r4, #2]
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r5, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r5
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	movs r2, #0
	adds r0, r0, r1
	adds r1, r0, #5
	ldr r0, [r4, #0x38]
	bl _080137F8
	movs r1, #1
	ldr r0, [r4, #0x38]
	bl sub_80139AC
	movs r0, #1
	strb r0, [r4]
_0800EC78
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0800EC80
	movs r1, #2
	ldr r0, [r4, #0x38]
	bl sub_80139AC
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r4, #2]
	ldr r0, [r4, #0x14]
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r6
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	strb r5, [r3, #4]
	mov r0, sp
	bl sub_803B8A4
	strh r0, [r4, #4]
	strb r5, [r4]
	b _0800EC78
	ALIGN
_0800ECBC DCDU gUnknown_03003EA8
_0800ECC0 DCDU 0x69727073
_0800ECC4 DCDU 0x00736574
_0800ECC8 DCDU gUnknown_03003EAC
_0800ECCC DCDU sub_800E5EA
_0800ECD0 DCDU gUnknown_03003E9C
_0800ECD4 DCDU gUnknown_080517C8
_0800ECD8 DCDU 0x00000018
_0800ECDC DCDU gUnknown_0300142C
_0800ECE0 DCDU 0x0000142C
_0800ECE4 DCDU gUnknown_03000000
_0800ECE8 DCDU 0x00000000
_0800ECEC DCDU gUnknown_03001140
_0800ECF0 DCDU 0x00001140
_0800ECF4 DCDU gUnknown_03000000
_0800ECF8 DCDU 0x00000AFC
_0800ECFC DCDU gUnknown_030033C8
_0800ED00 DCDU 0x00001F84
_0800ED04 DCDU gUnknown_03001444
_0800ED08 DCDU sub_8017FFE
_0800ED0C DCDU sub_8017DE6
_0800ED10 DCDU sub_8028CE8
_0800ED14 DCDU sub_80397DC
_0800ED18 DCDU sub_8028C7C
_0800ED1C DCDU sub_8028D60
_0800ED20 DCDU sub_8038D2C
_0800ED24 DCDU sub_801AB34
_0800ED28 DCDU sub_8026014
_0800ED2C DCDU sub_8028F64
_0800ED30 DCDU sub_80192CE
_0800ED34 DCDU sub_8019BE2
_0800ED38 DCDU sub_801A4DA
_0800ED3C DCDU sub_801AED0
_0800ED40 DCDU sub_8022D6E
_0800ED44 DCDU sub_8023486
_0800ED48 DCDU sub_801D360
_0800ED4C DCDU sub_8022726
_0800ED50 DCDU sub_8031B98
_0800ED54 DCDU sub_80305CC
_0800ED58 DCDU sub_803B406
_0800ED5C DCDU sub_8035324
_0800ED60 DCDU sub_8038754
_0800ED64 DCDU gUnknown_03003D28
_0800ED68 DCDU gUnknown_03003D35
_0800ED6C DCDU gUnknown_03003438
_0800ED70 DCDU gUnknown_03003D2C
_0800ED74 DCDU 0x0000C350
_0800ED78 DCDU 0x000249F0

	thumb_func_start sub_800ED7C
sub_800ED7C ;@ 0x0800ED7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _0800EFC4 ;@ =0xFFFFE81C
	ldr r0, _0800EFC8 ;@ =gUnknown_03003EAC
	ldr r2, _0800EFCC ;@ =0x04000200
	add sp, r3
	ldr r0, [r0]
	movs r1, #0
	strh r1, [r2, #8]
	movs r3, #1
	movs r2, #0
	bl sub_800B12C
	add r0, sp, #0xb0
	bl sub_8010234
	add r0, sp, #0x88
	bl sub_800FF00
	add r0, sp, #0x68
	bl sub_800FE90
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_8013FF8
	movs r0, #0
	ldr r6, _0800EFD0 ;@ =gUnknown_03003438
	mvns r0, r0
	strh r0, [r6, #4]
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	str r5, [r6, #0x38]
	lsls r0, r4, #1
	ldr r1, _0800EFD4 ;@ =gUnknown_0804AE1E
	str r0, [r3, #0x60]
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0800EE94
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #3
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	movs r2, #0
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #8]
	adds r7, r0, r1
	movs r1, #4
	adds r0, r5, #0
	bl sub_803B8D6
	ldr r1, [sp, #8]
	adds r0, r5, #0
	ldr r1, [r1, #0x10]
	ldr r2, [sp, #8]
	adds r7, r1, r2
	movs r2, #0x16
	movs r1, #0xe8
	bl sub_803B8D6
	adds r0, r5, #0
	bl sub_8013B76
	ldr r0, _0800EFD8 ;@ =0x060102C0
	movs r1, #0x5c
	str r0, [sp, #0x5c]
	movs r0, #0xa5
	lsls r0, r0, #6
	str r0, [sp, #0x60]
	movs r0, #0xf0
	strh r0, [r1, r5]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #2
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x30]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #1
	adds r0, r5, #0
	bl sub_803B8CC
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x60]
	ldr r1, _0800EFD4 ;@ =gUnknown_0804AE1E
	ldrh r1, [r1, r0]
	strh r1, [r6, #2]
	ldr r0, [r6, #0x14]
	adds r3, r1, #0
	ldrb r1, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r7, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r1, #2
	lsls r3, r7
	adds r2, r2, r3
	ldr r1, [r2, r1]
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	adds r7, r0, r1
	ldr r0, [r7]
	str r0, [sp]
	movs r0, #0
	strb r0, [r3, #4]
	mov r0, sp
	bl sub_803B8A4
	strh r0, [r6, #4]
	movs r0, #1
	strb r0, [r6]
	movs r2, #0
	adds r1, r7, #5
	ldr r0, [r6, #0x38]
	bl _080137F8
	movs r1, #1
	ldr r0, [r6, #0x38]
	bl sub_80139AC
_0800EE94
	ldr r0, _0800EFDC ;@ =gUnknown_03003EA8
	ldr r2, _0800EFD4 ;@ =gUnknown_0804AE1E
	lsls r1, r4, #2
	subs r2, #0xb6
	ldr r0, [r0]
	ldr r1, [r2, r1]
	bl sub_8004FFC
	add r7, sp, #0xb0
	str r7, [sp, #0x6c]
	str r0, [sp, #0x68]
	cmp r4, #0
	beq _0800EEB2
	cmp r4, #1
	bne _0800EEB8
_0800EEB2
	ldr r0, _0800EFE0 ;@ =0xFFFF0000
	str r0, [sp, #0x70]
	b _0800EEBE
_0800EEB8
	movs r0, #1
	lsls r0, r0, #0x13
	str r0, [sp, #0x70]
_0800EEBE
	ldrh r0, [r6, #4]
	ldr r1, _0800EFE4 ;@ =0x0000FFFF
	cmp r0, r1
	beq _0800EECC
	ldr r0, _0800EFE8 ;@ =sub_800EC0E
	str r0, [sp, #0x84]
	b _0800EED0
_0800EECC
	movs r0, #0
	str r0, [sp, #0x84]
_0800EED0
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _0800EEDE
	add r1, sp, #0x68
	add r0, sp, #0x88
	bl sub_801006A
_0800EEDE
	movs r1, #0
	adds r0, r5, #0
	bl sub_801402C
	movs r1, #0
	add r0, sp, #0x88
	bl sub_800FF5E
	movs r1, #0
	adds r0, r7, #0
	bl sub_8010278
	movs r0, #0
	str r0, [r6, #0x38]
	ldr r0, _0800EFC8 ;@ =gUnknown_03003EAC
	movs r4, #1
	movs r1, #0
	adds r3, r4, #0
	ldr r2, _0800EFEC ;@ =sub_800E5EA
	ldr r0, [r0]
	bl sub_800B12C
	ldr r0, _0800EFCC ;@ =0x04000200
	strh r4, [r0, #8]
	bl _080180BE
	ldr r3, _0800EFF0 ;@ =0x000017E4
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800EF1C
sub_800EF1C ;@ 0x0800EF1C
	push {r3, lr}
	movs r0, #3
	bl sub_8013DEA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800EF2A
sub_800EF2A ;@ 0x0800EF2A
	push {r4, lr}
	movs r0, #1
	bl sub_8013D52
	ldr r4, _0800EFD0 ;@ =gUnknown_03003438
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0800EF3E
	bl sub_80049B4
_0800EF3E
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800EF48
	bl sub_80014E4
_0800EF48
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0800EF52
	bl sub_8028B2C
_0800EF52
	ldr r0, _0800EFF4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800EF60
sub_800EF60 ;@ 0x0800EF60
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800EFD0 ;@ =gUnknown_03003438
	ldr r0, [r0, #0x30]
	bl sub_80050FA
	ldr r0, _0800EFDC ;@ =gUnknown_03003EA8
	add r1, pc, #0x88 ;@ =_0800EFF8
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #4
	bl sub_802EF0A
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r5, _0800F00C ;@ =gUnknown_03003E9C
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0800EF94
	movs r1, #0
	ldr r0, [r5]
	bl sub_8031622
_0800EF94
	ldr r0, _0800EFF4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B09A
	adds r1, r0, #0
	movs r2, #3
	adds r0, r4, #0
	bl sub_800E2F6
	ldr r0, [r4]
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0800EFB6
	movs r1, #1
	ldr r0, [r5]
	bl sub_8031622
_0800EFB6
	movs r0, #0
	bl sub_80050FA
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0800EFC4 DCDU 0xFFFFE81C
_0800EFC8 DCDU gUnknown_03003EAC
_0800EFCC DCDU 0x04000200
_0800EFD0 DCDU gUnknown_03003438
_0800EFD4 DCDU gUnknown_0804AE1E
_0800EFD8 DCDU 0x060102C0
_0800EFDC DCDU gUnknown_03003EA8
_0800EFE0 DCDU 0xFFFF0000
_0800EFE4 DCDU 0x0000FFFF
_0800EFE8 DCDU sub_800EC0E
_0800EFEC DCDU sub_800E5EA
_0800EFF0 DCDU 0x000017E4
_0800EFF4 DCDU gUnknown_03003E98
_0800EFF8 DCDU 0x706D6F43
_0800EFFC DCDU 0x73736572
_0800F000 DCDU 0x2E636950
_0800F004 DCDU 0x74736D6D
_0800F008 DCDU 0x00000072
_0800F00C DCDU gUnknown_03003E9C

	thumb_func_start sub_800F010
sub_800F010 ;@ 0x0800F010
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r1, #0x10]
	adds r4, r1, #0
	ldr r0, [r0]
	ldr r1, [r1, #0x2c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	adds r0, #4
	lsls r5, r0, #0x10
	ldr r0, [r2, #0x10]
	adds r4, #0x2c
	ldr r0, [r0]
	ldr r6, [r4, #4]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	adds r0, #4
	adds r2, #0x2c
	str r2, [sp]
	lsls r7, r0, #0x10
	subs r0, r1, r5
	ldr r2, [r2]
	adds r1, r1, r5
	subs r4, r6, r5
	adds r5, r6, r5
	subs r6, r2, r7
	mov lr, r2
	ldr r2, [sp]
	mov ip, r6
	ldr r2, [r2, #4]
	add lr, r7
	subs r6, r2, r7
	adds r7, r2, r7
	ldr r2, [r3]
	cmp r2, #0
	ble _0800F05A
	adds r1, r2, r1
	b _0800F05C
_0800F05A
	adds r0, r2, r0
_0800F05C
	ldr r2, [r3, #4]
	cmp r2, #0
	ble _0800F066
	adds r5, r2, r5
	b _0800F068
_0800F066
	adds r4, r2, r4
_0800F068
	cmp r0, lr
	ble _0800F074
	movs r0, #0
_0800F06E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F074
	cmp r1, ip
	bge _0800F07C
	movs r0, #0
	b _0800F06E
_0800F07C
	cmp r4, r7
	ble _0800F084
	movs r0, #0
	b _0800F06E
_0800F084
	cmp r5, r6
	bge _0800F08C
	movs r0, #0
	b _0800F06E
_0800F08C
	movs r0, #1
	b _0800F06E

	thumb_func_start sub_800F090
sub_800F090 ;@ 0x0800F090
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r3, sp, #0x20
	ldm r3!, {r1, r2, r3}
	adds r4, r0, #0
	bl sub_800F010
	cmp r0, #0
	bne _0800F0AA
_0800F0A2
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F0AA
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	lsls r0, r0, #1
	ldr r1, [r2, #0x10]
	lsrs r0, r0, #0x16
	ldr r1, [r1]
	lsls r0, r0, #0x10
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	adds r1, r0, r1
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldm r0!, {r6, r7}
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r0, #0
	adds r2, r7, #0
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r0, r5, r0
	bl sub_803E1DC
	asrs r0, r0, #8
	movs r5, #0
	cmp r0, #2
	bgt _0800F0FA
	movs r5, #1
	b _0800F110
_0800F0FA
	cmp r0, #4
	bgt _0800F102
	movs r5, #2
	b _0800F110
_0800F102
	cmp r0, #8
	bgt _0800F10A
	movs r5, #3
	b _0800F110
_0800F10A
	cmp r0, #0x10
	bgt _0800F110
	movs r5, #4
_0800F110
	movs r0, #1
	lsls r0, r5
	movs r1, #1
	str r1, [sp, #8]
	cmp r0, #1
	str r0, [sp, #0x18]
	blt _0800F1D6
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r2, #0x2c
	adds r0, #0x2c
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
_0800F12A
	ldr r0, [sp, #0x10]
	adds r2, r6, #0
	ldr r1, [r0]
	asrs r2, r5
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x10]
	adds r1, r1, r2
	adds r2, r7, #0
	ldr r0, [r0, #4]
	asrs r2, r5
	adds r0, r0, r2
	str r0, [r4, #0x14]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [r2]
	ldr r2, [r2, #4]
	subs r1, r3, r1
	subs r0, r2, r0
	str r0, [sp]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r2, [sp]
	str r0, [sp, #4]
	adds r1, r2, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bgt _0800F1BE
	ldr r0, [sp, #0x28]
	ldr r2, _0800F1E0 ;@ =gUnknown_030033D0
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	subs r0, r6, r0
	ldr r1, [r3, #4]
	asrs r0, r5
	subs r1, r7, r1
	asrs r1, r5
	ldr r5, _0800F1E4 ;@ =gUnknown_03003EA0
	stm r2!, {r0, r1}
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0x20]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc0
	str r0, [r4, #0x28]
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [r2, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x34]
	ldr r2, [sp, #0x24]
	movs r0, #1
	str r2, [r4, #0x38]
	b _0800F0A2
_0800F1BE
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	adds r6, r0, r6
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #4]
	ldr r1, [sp, #8]
	adds r7, r0, r7
	ldr r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, r1
	bge _0800F12A
_0800F1D6
	movs r0, #0
	b _0800F0A2

	non_word_aligned_thumb_func_start sub_800F1DA
sub_800F1DA ;@ 0x0800F1DA
	adds r0, #0xe8
	bx lr
	ALIGN
_0800F1E0 DCDU gUnknown_030033D0
_0800F1E4 DCDU gUnknown_03003EA0

	thumb_func_start sub_800F1E8
sub_800F1E8 ;@ 0x0800F1E8
	push {r4}
	movs r1, #0x11
	lsls r1, r1, #0xb
	str r1, [r0]
	movs r1, #0
	movs r4, #1
	movs r3, #0
_0800F1F6
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x18]
	adds r1, #1
	cmp r1, #1
	str r4, [r2, #4]
	blo _0800F1F6
	movs r1, #0
_0800F206
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x10]
	str r4, [r2, #8]
	adds r2, r0, r1
	adds r2, #0x70
	adds r1, #1
	cmp r1, #2
	strb r3, [r2, #0xc]
	blo _0800F206
	str r3, [r0, #0x34]
	pop {r4}
	bx lr

	thumb_func_start sub_800F220
sub_800F220 ;@ 0x0800F220
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	bl sub_803BEB0
	movs r0, #0x11
	lsls r0, r0, #0xb
	str r0, [r4]
	movs r0, #0
	movs r3, #1
	movs r2, #0
_0800F236
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x18]
	adds r0, #1
	cmp r0, #1
	str r3, [r1, #4]
	blo _0800F236
	movs r0, #0
_0800F246
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x10]
	str r3, [r1, #8]
	adds r1, r4, r0
	adds r1, #0x70
	adds r0, #1
	cmp r0, #2
	strb r2, [r1, #0xc]
	blo _0800F246
	str r2, [r4, #0x34]
	pop {r4}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_800F264
sub_800F264 ;@ 0x0800F264
	push {r4, lr}
	adds r4, r0, #0
	bne _0800F27C
	movs r0, #0x78
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800F27C
	adds r0, r4, #0
_0800F276
	pop {r4}
	pop {r3}
	bx r3
_0800F27C
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800F4E8 ;@ =_0803E870
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	b _0800F276

	non_word_aligned_thumb_func_start sub_800F292
sub_800F292 ;@ 0x0800F292
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800F4E8 ;@ =_0803E870
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq _0800F2AE
	adds r0, r4, #0
	bl sub_803DA18
_0800F2AE
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F2B4
sub_800F2B4 ;@ 0x0800F2B4
	movs r0, #0x98
	bx lr

	thumb_func_start sub_800F2B8
sub_800F2B8 ;@ 0x0800F2B8
	str r1, [r0, #0x70]
	bx lr

	thumb_func_start sub_800F2BC
sub_800F2BC ;@ 0x0800F2BC
	push {r3, lr}
	ldr r1, [r0, #0x74]
	cmp r1, #0
	beq _0800F2DC
	ldr r2, [r0, #0x70]
	adds r2, #0x80
	ldr r2, [r2, #0x10]
	cmp r2, #0
	beq _0800F2DC
	ldr r0, [r0, #0x5c]
	lsls r0, r0, #0x1e
	beq _0800F2DC
	ldr r0, _0800F4EC ;@ =gUnknown_03003E84
	ldr r0, [r0]
	bl nullsub_5
_0800F2DC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800F2E2
sub_800F2E2 ;@ 0x0800F2E2
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r1, r0
	bhs _0800F306
	subs r0, r0, r1
_0800F300
	pop {r4}
	pop {r3}
	bx r3
_0800F306
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	adds r0, r1, r0
	b _0800F300

	non_word_aligned_thumb_func_start sub_800F312
sub_800F312 ;@ 0x0800F312
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	adds r5, r1, #0
	adds r0, #0x80
	ldr r1, [r0, #0x10]
	movs r6, #0
	cmp r1, r5
	bhs _0800F32A
	subs r6, r5, r1
	adds r5, r1, #0
_0800F32A
	cmp r1, #0
	beq _0800F3C6
	ldr r0, _0800F4EC ;@ =gUnknown_03003E84
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	bl sub_803DAC0
	str r0, [sp]
	ldr r1, [r4, #0x70]
	str r0, [r1, #0x2c]
	ldr r0, [r4, #0x70]
	movs r1, #1
	mov ip, r0
	adds r0, #0x80
	ldr r0, [r0, #0xc]
	ldr r3, [r4, #8]
	adds r2, r0, r5
	lsls r1, r3
	cmp r2, r1
	bls _0800F38A
	subs r2, r1, r0
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	bl sub_8012468
	ldr r0, [r4, #0x70]
	movs r1, #0x8c
	ldr r1, [r1, r0]
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	subs r2, r5, r1
	adds r1, r7, #0
	bl sub_8012468
	ldr r0, [r4, #8]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r2, [r0, #0xc]
	subs r1, r1, r2
	subs r1, r5, r1
	str r1, [r0, #0xc]
	b _0800F3AC
_0800F38A
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	mov r0, ip
	adds r2, r5, #0
	bl sub_8012468
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #8]
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r3, #1
	lsls r3, r2
	adds r1, r1, r5
	subs r3, #1
	ands r1, r3
	str r1, [r0, #0xc]
_0800F3AC
	ldr r0, [r4, #0x70]
	adds r0, #0x90
	ldr r1, [r0]
	subs r1, r1, r5
	str r1, [r0]
	ldr r1, [r4, #0x70]
	ldr r0, [r4, #0x74]
	ldr r1, [r1, #0x2c]
	ldr r2, [sp]
	subs r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #0x74]
	b _0800F3D4
_0800F3C6
	movs r1, #4
	str r1, [r4, #0x5c]
	ldr r2, [r4, #8]
	movs r1, #1
	lsls r1, r2
	str r1, [r0, #0x10]
	movs r5, #0
_0800F3D4
	cmp r6, #0
	ble _0800F400
	movs r0, #0
_0800F3DA
	ldr r1, [r4, #0x70]
	ldr r3, [r4, #8]
	movs r2, #1
	adds r1, #0x80
	ldr r1, [r1, #0xc]
	lsls r2, r3
	subs r2, #1
	ands r1, r2
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r0, [r7, r1]
	ldr r1, [r4, #0x70]
	subs r6, #2
	adds r1, #0x8c
	ldr r2, [r1]
	adds r2, #2
	str r2, [r1]
	cmp r6, #0
	bgt _0800F3DA
_0800F400
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800F408
sub_800F408 ;@ 0x0800F408
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x5c]
	movs r6, #1
	cmp r0, #4
	beq _0800F46A
	bgt _0800F438
	cmp r0, #1
	beq _0800F444
	cmp r0, #2
	bne _0800F4DE
	ldr r1, [r4]
	ldr r5, [r4, #0x10]
	ldr r2, [r1, #0x18]
	adds r0, r4, #0
	adds r1, r2, r1
	bl sub_803B8CA
	bics r0, r6
	str r0, [r4, #0x10]
	cmp r0, r5
	bls _0800F45A
	subs r1, r0, r5
	b _0800F462
_0800F438
	cmp r0, #8
	bne _0800F4DE
	movs r0, #0
_0800F43E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F444
	ldr r0, [r4, #0x68]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	adds r0, r4, #0
	bl sub_800FE3A
	movs r0, #2
	str r0, [r4, #0x5c]
	b _0800F4DE
_0800F45A
	ldr r1, [r4, #8]
	lsls r6, r1
	subs r1, r6, r5
	adds r1, r1, r0
_0800F462
	adds r0, r4, #0
	bl sub_800F312
	b _0800F4DE
_0800F46A
	adds r0, r4, #0
	ldm r4!, {r1, r5}
	ldr r2, [r1, #0x18]
	subs r4, #8
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #0x70]
	lsrs r0, r0, #1
	str r1, [sp]
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsls r0, r0, #1
	cmp r2, r0
	bhs _0800F48C
	subs r0, r0, r2
	b _0800F496
_0800F48C
	ldr r7, [r4, #8]
	adds r3, r6, #0
	lsls r3, r7
	subs r2, r3, r2
	adds r0, r2, r0
_0800F496
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r1, [r1, #0x10]
	subs r0, #0x20
	cmp r1, r0
	bhs _0800F4A8
	adds r0, r1, #0
	movs r1, #8
	str r1, [r4, #0x5c]
_0800F4A8
	ldr r1, [sp]
	adds r1, #0x90
	ldr r2, [r1]
	subs r2, r2, r0
	str r2, [r1]
	cmp r0, #0
	ble _0800F4DE
	movs r1, #0
_0800F4B8
	ldr r2, [r4, #0x70]
	ldr r7, [r4, #8]
	adds r3, r6, #0
	adds r2, #0x80
	ldr r2, [r2, #0xc]
	lsls r3, r7
	subs r3, #1
	ands r2, r3
	lsrs r2, r2, #1
	lsls r2, r2, #1
	strh r1, [r5, r2]
	ldr r2, [r4, #0x70]
	subs r0, #2
	adds r2, #0x8c
	ldr r3, [r2]
	adds r3, #2
	str r3, [r2]
	cmp r0, #0
	bgt _0800F4B8
_0800F4DE
	adds r0, r4, #0
	bl nullsub_6
	movs r0, #1
	b _0800F43E
	ALIGN
_0800F4E8 DCDU _0803E870
_0800F4EC DCDU gUnknown_03003E84

	thumb_func_start sub_800F4F0
sub_800F4F0 ;@ 0x0800F4F0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	movs r5, #0
	adds r0, #0x80
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x70]
	bl sub_800F220
	ldr r0, [r4, #0x70]
	adds r0, #0x1c
	str r5, [r0, #0x14]
	str r5, [r0]
	str r5, [r0, #8]
	str r5, [r0, #0x10]
	str r5, [r0, #4]
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r0, [r0, #8]
	str r0, [r4, #0x74]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F528
sub_800F528 ;@ 0x0800F528
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r2, #0
	sub sp, #0xc
	str r2, [sp, #8]
	bl sub_800F4F0
	cmp r5, #0
	beq _0800F624
	adds r0, r5, #0
	movs r1, #0
	ldr r2, [r4, #0x60]
	bl sub_803B914
	movs r2, #8
	bl sub_803BD84
	lsrs r6, r0, #1
	lsls r6, r6, #1
	adds r0, r6, #0
	bl sub_80405F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x70]
	adds r5, r1, #0
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	cmp r1, r6
	bhi _0800F570
	movs r5, #0
	str r5, [r0, #0x10]
_0800F568
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F570
	ldr r2, [sp, #4]
	subs r1, r1, r6
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r0, #0x6e
	ldrh r0, [r0, r4]
	lsls r0, r0, #1
	adds r0, #3
	lsrs r6, r0, #2
	ldr r0, [r4, #0x70]
	lsls r6, r6, #2
	adds r0, #0x80
	ldr r7, [r0, #4]
_0800F58A
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	movs r3, #0
	adds r2, r6, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_800529A
	str r0, [sp]
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	adds r2, r6, #0
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_803DABC
	b _0800F5BE
_0800F5A8
	ldr r2, [sp]
	subs r0, #2
	ldrh r1, [r2]
	adds r2, #2
	str r2, [sp]
	ldr r2, [sp, #8]
	subs r5, #1
	adds r2, r1, r2
	subs r6, #2
	adds r7, #2
	str r2, [sp, #8]
_0800F5BE
	cmp r0, #0
	beq _0800F5C8
	cmp r5, #0
	bne _0800F5A8
	b _0800F5D0
_0800F5C8
	cmp r5, #0
	beq _0800F5D0
	cmp r6, #0
	bne _0800F58A
_0800F5D0
	ldr r0, [r4, #0x70]
	movs r1, #0x88
	ldr r1, [r1, r0]
	ldr r2, [sp, #8]
	adds r0, #0x1c
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r4, #0x74]
	movs r7, #0
	str r7, [r0, #0x14]
	str r7, [r0]
	str r7, [r0, #8]
	str r7, [r0, #0x10]
	str r7, [r0, #4]
	str r7, [r0, #0xc]
	ldr r0, [r4, #0x70]
	movs r1, #0x88
	ldr r1, [r1, r0]
	str r1, [r0, #0x30]
	ldr r0, [r4, #0x70]
	str r7, [r0, #0x34]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800F624
	ldr r1, _0800F71C ;@ =gUnknown_030030B8
	ldr r0, _0800F720 ;@ =0xE1A09009
	ldr r5, [r1]
	str r0, [r1]
	movs r6, #1
_0800F60A
	ldr r1, [r4, #0x70]
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	adds r1, #0x80
	ldr r2, [r1, #0x10]
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	adds r3, r7, #0
	bl sub_800529A
	ldr r0, [r4, #8]
	adds r1, r6, #0
	lsls r1, r0
	b _0800F626
_0800F624
	b _0800F64C
_0800F626
	ldr r0, [sp, #4]
	cmp r1, r0
	bhs _0800F640
	adds r0, r4, #0
	bl sub_800F312
	ldr r1, [r4, #8]
	adds r0, r6, #0
	lsls r0, r1
	ldr r1, [sp, #4]
	subs r0, r1, r0
	str r0, [sp, #4]
	b _0800F60A
_0800F640
	adds r0, r4, #0
	ldr r1, [sp, #4]
	bl sub_800F312
	ldr r1, _0800F71C ;@ =gUnknown_030030B8
	str r5, [r1]
_0800F64C
	ldr r0, [r4, #0x70]
	movs r5, #0
	adds r0, #0x80
	str r5, [r0, #0xc]
	ldr r1, [r4, #0x70]
	ldr r0, _0800F718 ;@ =gUnknown_03003E84
	adds r1, #0x80
	ldr r2, [r1, #0x10]
	ldr r0, [r0]
	ldr r1, [r4, #0x74]
	adds r3, r5, #0
	bl sub_800529A
	movs r6, #1
	ldr r0, [r4, #8]
	adds r1, r6, #0
	lsls r1, r0
	adds r0, r4, #0
	bl sub_800F312
	str r5, [r4, #0x10]
	str r6, [r4, #0x5c]
	b _0800F568

	non_word_aligned_thumb_func_start sub_800F67A
sub_800F67A ;@ 0x0800F67A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #4
	bl sub_800FC76
	cmp r0, #0
	bne _0800F690
_0800F68A
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0800F690
	ldrh r2, [r0, #0xc]
	adds r1, r4, #0
	adds r1, #0x6c
	strh r2, [r1]
	ldrh r2, [r0, #0xe]
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r1, #2]
	ldrh r2, [r0, #0xe]
	lsls r1, r2, #1
	lsls r3, r2, #1
	adds r2, r3, r2
	ldrh r3, [r0, #0xc]
	lsls r2, r2, #2
	adds r1, #3
	adds r2, r2, r3
	ldr r3, [r4, #0x70]
	subs r2, #0xc
	adds r3, #0x80
	str r2, [r3]
	adds r2, r5, #0
	ldr r3, [r4, #0x70]
	adds r2, #0x10
	adds r3, #0x80
	str r2, [r3, #4]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	ldr r3, [r4, #0x70]
	adds r1, r2, r1
	adds r3, #0x80
	str r1, [r3, #8]
	ldrh r1, [r0, #0xe]
	ldrh r0, [r0, #0xc]
	ldr r2, _0800F728 ;@ =0x0000055B
	ldr r3, _0800F724 ;@ =0x0000404A
	muls r2, r0
	muls r1, r3
	adds r1, r1, r2
	lsrs r0, r0, #1
	adds r0, r1, r0
	NEGS r1, r3
	adds r0, r0, r1
	ldr r1, [r4, #0x70]
	adds r1, #0x80
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x70]
	adds r0, #0x94
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
	adds r0, r4, #0
	bl sub_800F4F0
	movs r0, #1
	b _0800F68A

	thumb_func_start sub_800F700
sub_800F700 ;@ 0x0800F700
	ldr r0, [r0, #0x18]
	lsls r1, r0, #6
	lsrs r1, r1, #0x10
	beq _0800F712
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	beq _0800F712
	movs r0, #1
	bx lr
_0800F712
	movs r0, #0
	bx lr
	ALIGN
_0800F718 DCDU gUnknown_03003E84
_0800F71C DCDU gUnknown_030030B8
_0800F720 DCDU 0xE1A09009
_0800F724 DCDU 0x0000404A
_0800F728 DCDU 0x0000055B

	thumb_func_start sub_800F72C
sub_800F72C ;@ 0x0800F72C
	push {r4, lr}
	adds r4, r0, #0
	bne _0800F744
	movs r0, #0x8c
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800F744
	adds r0, r4, #0
_0800F73E
	pop {r4}
	pop {r3}
	bx r3
_0800F744
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800FA38 ;@ =_0803E5C8
	movs r1, #0x88
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x6c]
	str r0, [r1, r4]
	adds r0, r4, #0
	b _0800F73E

	non_word_aligned_thumb_func_start sub_800F75A
sub_800F75A ;@ 0x0800F75A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800FA38 ;@ =_0803E5C8
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq _0800F776
	adds r0, r4, #0
	bl sub_803DA18
_0800F776
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F77C
sub_800F77C ;@ 0x0800F77C
	movs r0, #0x89
	lsls r0, r0, #2
	bx lr

	non_word_aligned_thumb_func_start sub_800F782
sub_800F782 ;@ 0x0800F782
	str r1, [r0, #0x6c]
	bx lr

	non_word_aligned_thumb_func_start sub_800F786
sub_800F786 ;@ 0x0800F786
	adds r2, r0, #0
	adds r2, #0x80
	push {r3, lr}
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _0800F7A2
	ldr r0, [r0, #0x5c]
	lsls r0, r0, #0x1e
	beq _0800F7A2
	ldr r0, _0800FA3C ;@ =gUnknown_03003E84
	ldr r0, [r0]
	ldr r2, [r2]
	bl nullsub_5
_0800F7A2
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800F7A8
sub_800F7A8 ;@ 0x0800F7A8
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r1, #0x84
	ldrh r1, [r1, r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	cmp r1, r0
	bhs _0800F7CA
	subs r0, r0, r1
_0800F7C4
	pop {r4}
	pop {r3}
	bx r3
_0800F7CA
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	adds r0, r1, r0
	b _0800F7C4

	non_word_aligned_thumb_func_start sub_800F7D6
sub_800F7D6 ;@ 0x0800F7D6
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #4]
	sub sp, #0xc
	adds r4, r0, #0
	adds r4, #0x80
	str r2, [sp, #8]
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r1, #0
	movs r6, #0
	cmp r0, r1
	bhs _0800F7F2
	subs r6, r7, r0
	adds r7, r0, #0
_0800F7F2
	ldr r0, _0800FA3C ;@ =gUnknown_03003E84
	ldr r0, [r0]
	ldr r1, [r4, #8]
	bl sub_803DAC0
	str r0, [sp, #4]
	ldr r1, [r5, #0x6c]
	movs r2, #1
	lsls r2, r2, #9
	adds r1, r1, r2
	str r0, [r1, #0x20]
	cmp r7, #0
	beq _0800F82A
	ldrh r3, [r4, #4]
	str r7, [sp]
	ldr r0, [r5, #8]
	movs r2, #1
	lsls r2, r0
	ldr r0, [r5, #0x6c]
	ldr r1, [sp, #8]
	subs r2, #1
	bl sub_803E1E4
	strh r0, [r4, #4]
	ldr r0, [r4]
	subs r0, r0, r7
	str r0, [r4]
	b _0800F836
_0800F82A
	movs r0, #4
	str r0, [r5, #0x5c]
	ldr r1, [r5, #8]
	movs r0, #1
	lsls r0, r1
	str r0, [r4]
_0800F836
	movs r2, #1
	ldr r1, [r5, #0x6c]
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r0, [r4, #8]
	ldr r1, [r1, #0x20]
	ldr r2, [sp, #4]
	subs r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #8]
	cmp r6, #0
	ble _0800F870
	movs r0, #0
_0800F850
	ldrh r1, [r4, #4]
	ldr r3, [r5, #8]
	movs r2, #1
	lsls r2, r3
	subs r2, #1
	ands r1, r2
	lsrs r1, r1, #1
	ldr r2, [sp, #8]
	lsls r1, r1, #1
	strh r0, [r2, r1]
	ldrh r1, [r4, #4]
	subs r6, #2
	adds r1, #2
	strh r1, [r4, #4]
	cmp r6, #0
	bgt _0800F850
_0800F870
	adds r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800F87A
sub_800F87A ;@ 0x0800F87A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x5c]
	movs r6, #1
	cmp r0, #4
	beq _0800F8DC
	bgt _0800F8AA
	cmp r0, #1
	beq _0800F8B6
	cmp r0, #2
	bne _0800F940
	ldr r1, [r4]
	ldr r5, [r4, #0x10]
	ldr r2, [r1, #0x18]
	adds r0, r4, #0
	adds r1, r2, r1
	bl sub_803B8CA
	bics r0, r6
	str r0, [r4, #0x10]
	cmp r0, r5
	bls _0800F8CC
	subs r1, r0, r5
	b _0800F8D4
_0800F8AA
	cmp r0, #8
	bne _0800F940
	movs r0, #0
_0800F8B0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F8B6
	ldr r0, [r4, #0x68]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	adds r0, r4, #0
	bl sub_800FE3A
	movs r0, #2
	str r0, [r4, #0x5c]
	b _0800F940
_0800F8CC
	ldr r1, [r4, #8]
	lsls r6, r1
	subs r1, r6, r5
	adds r1, r1, r0
_0800F8D4
	adds r0, r4, #0
	bl sub_800F7D6
	b _0800F940
_0800F8DC
	adds r0, r4, #0
	ldm r4!, {r1, r5}
	ldr r2, [r1, #0x18]
	subs r4, #8
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r2, [r1, #4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	cmp r2, r0
	bhs _0800F8FC
	subs r0, r0, r2
	b _0800F906
_0800F8FC
	ldr r7, [r4, #8]
	adds r3, r6, #0
	lsls r3, r7
	subs r2, r3, r2
	adds r0, r2, r0
_0800F906
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r2, [r1]
	subs r0, #0x20
	cmp r2, r0
	bhs _0800F918
	adds r0, r2, #0
	movs r3, #8
	str r3, [r4, #0x5c]
_0800F918
	subs r2, r2, r0
	str r2, [r1]
	cmp r0, #0
	ble _0800F940
_0800F920
	ldr r7, [r4, #8]
	movs r3, #1
	ldrh r2, [r1, #4]
	lsls r3, r7
	subs r3, #1
	ands r2, r3
	lsrs r2, r2, #1
	lsls r2, r2, #1
	movs r6, #0
	strh r6, [r5, r2]
	ldrh r2, [r1, #4]
	subs r0, #2
	adds r2, #2
	strh r2, [r1, #4]
	cmp r0, #0
	bgt _0800F920
_0800F940
	movs r0, #1
	b _0800F8B0

	thumb_func_start sub_800F944
sub_800F944 ;@ 0x0800F944
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r0, #0
	adds r0, #0x80
	strh r5, [r0, #4]
	ldr r1, [r4, #0x7c]
	str r1, [r0]
	ldr r1, [r4, #0x78]
	str r1, [r0, #8]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #9
	ldr r0, [r4, #0x78]
	adds r2, r2, r1
	str r0, [r2, #0x20]
	ldr r0, [r4, #0x6c]
	adds r0, r0, r1
	str r5, [r0, #0x1c]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800F974
sub_800F974 ;@ 0x0800F974
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r0, #0
	movs r3, #0
	adds r5, #0x80
	strh r3, [r5, #4]
	ldr r0, [r0, #0x7c]
	str r0, [r5]
	ldr r0, [r4, #0x78]
	str r0, [r5, #8]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r2, #1
	ldr r1, [r4, #0x6c]
	lsls r2, r2, #9
	ldr r0, [r4, #0x78]
	adds r1, r1, r2
	str r0, [r1, #0x20]
	ldr r1, [r4, #0x6c]
	movs r0, #0
	adds r1, r1, r2
	str r0, [r1, #0x1c]
	cmp r6, #0
	beq _0800FA12
	adds r0, r6, #0
	movs r1, #0
	ldr r2, [r4, #0x60]
	bl sub_803B914
	movs r2, #8
	bl sub_803BD84
	ldr r1, [r4, #0x7c]
	lsrs r6, r0, #1
	lsls r6, r6, #1
	cmp r1, r6
	str r1, [sp]
	bhi _0800F9CE
	movs r3, #0
	str r3, [r5]
_0800F9C8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800F9CE
	adds r0, r6, #0
	bl sub_804061C
	adds r7, r0, #0
	lsls r0, r1, #6
	adds r0, r0, r1
	ldr r1, [sp]
	lsls r0, r0, #6
	subs r1, r1, r6
	str r1, [r5]
	ldr r1, [r4, #0x78]
	movs r2, #1
	adds r0, r1, r0
	str r0, [r5, #8]
	ldr r1, [r4, #0x6c]
	lsls r2, r2, #9
	adds r1, r1, r2
	str r0, [r1, #0x20]
	cmp r7, #0
	beq _0800FA0C
	ldr r0, _0800FA3C ;@ =gUnknown_03003E84
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r2, [r5]
	movs r3, #0
	bl sub_800529A
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_800F7D6
_0800FA0C
	ldr r0, [r4, #0x7c]
	subs r0, r0, r6
	str r0, [r5]
_0800FA12
	movs r6, #0
	strh r6, [r5, #4]
	ldr r0, _0800FA3C ;@ =gUnknown_03003E84
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldr r2, [r5]
	adds r3, r6, #0
	bl sub_800529A
	movs r5, #1
	ldr r0, [r4, #8]
	adds r1, r5, #0
	lsls r1, r0
	adds r0, r4, #0
	bl sub_800F7D6
	str r5, [r4, #0x5c]
	str r6, [r4, #0x10]
	b _0800F9C8
	ALIGN
_0800FA38 DCDU _0803E5C8
_0800FA3C DCDU gUnknown_03003E84

	thumb_func_start sub_800FA40
sub_800FA40 ;@ 0x0800FA40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #8
	bl sub_800FC76
	cmp r0, #0
	bne _0800FA56
_0800FA50
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0800FA56
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x74]
	adds r2, r0, #0
	str r1, [r4, #0x70]
	lsls r1, r1, #7
	adds r1, r1, r2
	lsls r2, r1, #2
	adds r0, r5, #0
	adds r2, r2, r1
	adds r0, #0x14
	lsls r2, r2, #5
	str r0, [r4, #0x78]
	adds r1, r4, #0
	movs r5, #0
	adds r1, #0x80
	str r2, [r4, #0x7c]
	strh r5, [r1, #4]
	str r0, [r1, #8]
	str r2, [r1]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #9
	ldr r0, [r4, #0x78]
	adds r2, r2, r1
	str r0, [r2, #0x20]
	ldr r0, [r4, #0x6c]
	adds r0, r0, r1
	str r5, [r0, #0x1c]
	movs r0, #1
	b _0800FA50

	non_word_aligned_thumb_func_start sub_800FA9A
sub_800FA9A ;@ 0x0800FA9A
	ldr r0, [r0, #0x18]
	lsls r1, r0, #6
	lsrs r1, r1, #0x10
	beq _0800FAAC
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	beq _0800FAAC
	movs r0, #1
	bx lr
_0800FAAC
	movs r0, #0
	bx lr

	thumb_func_start sub_800FAB0
sub_800FAB0 ;@ 0x0800FAB0
	push {r4, lr}
	adds r4, r0, #0
	bne _0800FAC8
	movs r0, #0x6c
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800FAC8
	adds r0, r4, #0
_0800FAC2
	pop {r4}
	pop {r3}
	bx r3
_0800FAC8
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800FB14 ;@ =_0803EAE0
	str r0, [r4]
	adds r0, r4, #0
	b _0800FAC2

	non_word_aligned_thumb_func_start sub_800FAD6
sub_800FAD6 ;@ 0x0800FAD6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800FB14 ;@ =_0803EAE0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq _0800FAF2
	adds r0, r4, #0
	bl sub_803DA18
_0800FAF2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start nullsub_32
nullsub_32 ;@ 0x0800FAF8
	bx lr

	non_word_aligned_thumb_func_start nullsub_33
nullsub_33 ;@ 0x0800FAFA
	bx lr

	thumb_func_start nullsub_34
nullsub_34 ;@ 0x0800FAFC
	bx lr

	non_word_aligned_thumb_func_start sub_800FAFE
sub_800FAFE ;@ 0x0800FAFE
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_800FB02
sub_800FB02 ;@ 0x0800FB02
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_800FB06
sub_800FB06 ;@ 0x0800FB06
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start nullsub_35
nullsub_35 ;@ 0x0800FB0A
	bx lr

	thumb_func_start nullsub_36
nullsub_36 ;@ 0x0800FB0C
	bx lr

	non_word_aligned_thumb_func_start sub_800FB0E
sub_800FB0E ;@ 0x0800FB0E
	movs r0, #0
	bx lr
	ALIGN
_0800FB14 DCDU _0803EAE0

	thumb_func_start sub_800FB18
sub_800FB18 ;@ 0x0800FB18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0800FB2E
	ldr r2, [r4, #8]
	movs r1, #1
	lsls r1, r2
	adds r1, #0x10
	bl sub_803BE68
_0800FB2E
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x48
	adds r0, #0x14
	bl sub_803BEB0
	movs r0, #8
	str r0, [r4, #0x5c]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800FB48
sub_800FB48 ;@ 0x0800FB48
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FD30 ;@ =_0803ECB8
	str r0, [r4]
	ldr r0, _0800FD34 ;@ =gUnknown_03003E7C
	str r4, [r0]
	ldr r0, _0800FD38 ;@ =_0803E59C
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	adds r0, r4, #0
	bl sub_800FB18
	adds r0, r4, #0
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FB72
sub_800FB72 ;@ 0x0800FB72
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FD38 ;@ =_0803E59C
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FD48
	adds r0, r4, #0
	bl sub_800FB18
	ldr r0, _0800FD30 ;@ =_0803ECB8
	ldr r1, _0800FD34 ;@ =gUnknown_03003E7C
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FB96
sub_800FB96 ;@ 0x0800FB96
	ldr r0, [r0, #0x18]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	bx lr

	non_word_aligned_thumb_func_start nullsub_37
nullsub_37 ;@ 0x0800FB9E
	bx lr

	thumb_func_start sub_800FBA0
sub_800FBA0 ;@ 0x0800FBA0
	push {r3, lr}
	adds r1, r0, #0
	bne _0800FBAC
_0800FBA6
	add sp, #4
	pop {r3}
	bx r3
_0800FBAC
	ldr r0, _0800FD3C ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x48
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	b _0800FBA6

	thumb_func_start sub_800FBC0
sub_800FBC0 ;@ 0x0800FBC0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	beq _0800FBCA
	cmp r0, #0
	bne _0800FBD2
_0800FBCA
	movs r0, #0
_0800FBCC
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0800FBD2
	ldr r1, _0800FD3C ;@ =gUnknown_03003E84
	movs r3, #0
	ldr r5, [r1]
	adds r1, r0, #0
	movs r2, #0x48
	adds r0, r5, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bhs _0800FC58
	add r3, pc, #0x8 ;@ =_0800FBF8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0800FBF8
	DCB 0x30
_0800FBF9
	DCB 0x03
_0800FBFA
	DCB 0x03
_0800FBFB
	DCB 0x12
_0800FBFC
	DCB 0x32
_0800FBFD
	DCB 0x21
loc_800fbfe
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x6c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800FC18
	adds r0, r5, #0
	bl sub_800FAB0
_0800FC18
	str r5, [r4]
	b _0800FC5C
loc_800fc1c
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x78
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800FC36
	adds r0, r5, #0
	bl sub_800F264
_0800FC36
	str r5, [r4]
	b _0800FC5C
loc_800fc3a
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x8c
	bl sub_803DA80
	adds r5, r0, #0
	beq _0800FC54
	adds r0, r5, #0
	bl sub_800F72C
_0800FC54
	str r5, [r4]
	b _0800FC5C
_0800FC58
	movs r0, #0
	str r0, [r4]
_0800FC5C
	ldr r1, [r4]
	movs r0, #0
	cmp r1, #0
	beq _0800FBCC
	ldr r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	b _0800FBCC

	thumb_func_start sub_800FC6C
sub_800FC6C ;@ 0x0800FC6C
	adds r0, #4
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_800FC72
sub_800FC72 ;@ 0x0800FC72
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_800FC76
sub_800FC76 ;@ 0x0800FC76
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x14
	adds r4, r0, #0
	adds r2, r3, #0
	cmp r1, #0
	sub sp, #4
	bne _0800FC9C
	movs r1, #0x48
	adds r0, r6, #0
	bl sub_803BEB0
	movs r0, #8
	str r0, [r4, #0x5c]
	movs r0, #0
_0800FC94
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0800FC9C
	ldr r0, _0800FD3C ;@ =gUnknown_03003E84
	movs r3, #0
	adds r2, #0x48
	ldr r0, [r0]
	bl sub_800529A
	adds r5, r0, #0
	movs r2, #0x48
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0803BFC4
	ldr r0, [r4, #0x18]
	movs r2, #1
	lsls r0, r0, #6
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	asrs r1, r0, #0x1f
	adds r7, r1, #0
	adds r6, r0, #0
	lsls r2, r2, #0x18
	bl sub_803B920
	add r2, pc, #0x74 ;@ =_0800FD40
	ldm r2!, {r2, r3}
	bl sub_803BA24
	str r0, [r4, #0x68]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #8
	bl sub_803B998
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	adds r3, r1, #0
	asrs r1, r0, #0x1f
	bl sub_803B9C4
	str r0, [r4, #0x60]
	adds r0, r5, #0
	b _0800FC94

	thumb_func_start sub_800FCF0
sub_800FCF0 ;@ 0x0800FCF0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, r3, #0
	bl sub_800FB18
	cmp r5, #0
	beq _0800FD24
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	adds r2, r7, #0
	adds r1, r5, #0
	bl sub_803B8CE
	cmp r6, #0
	beq _0800FD24
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r2, r2, r1
	movs r1, #0
	bl sub_803B8CC
_0800FD24
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_38
nullsub_38 ;@ 0x0800FD2A
	bx lr

	thumb_func_start sub_800FD2C
sub_800FD2C ;@ 0x0800FD2C
	movs r0, #0
	bx lr
	ALIGN
_0800FD30 DCDU _0803ECB8
_0800FD34 DCDU gUnknown_03003E7C
_0800FD38 DCDU _0803E59C
_0800FD3C DCDU gUnknown_03003E84
_0800FD40 DCDU 0x01012B00
_0800FD44 DCDU 0x00000000

	thumb_func_start sub_800FD48
sub_800FD48 ;@ 0x0800FD48
	ldr r1, _0800FE6C ;@ =0x040000BC
	push {r3, lr}
	ldrh r2, [r1, #0xa]
	movs r3, #0x1d
	lsls r3, r3, #9
	bics r2, r3
	strh r2, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	lsrs r3, r1, #0xb
	bics r2, r3
	strh r2, [r1, #0xa]
	ldrh r1, [r1, #0xa]
	ldr r2, _0800FE70 ;@ =0x04000100
	movs r1, #0
	str r1, [r2, #4]
	str r1, [r2]
	ldr r1, _0800FE74 ;@ =0x04000082
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #8
	bics r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #4
	ands r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #3
	lsls r3, r3, #0xc
	bics r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	movs r3, #8
	bics r2, r3
	strh r2, [r1]
	str r3, [r0, #0x5c]
	ldr r0, _0800FE78 ;@ =gUnknown_03003EAC
	movs r3, #1
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_800B12C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800FDA4
sub_800FDA4 ;@ 0x0800FDA4
	ldr r0, _0800FE6C ;@ =0x040000BC
	ldrh r1, [r0, #0xa]
	movs r2, #0x1d
	lsls r2, r2, #9
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	lsrs r2, r0, #0xb
	bics r1, r2
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldr r1, _0800FE7C ;@ =gUnknown_03003E7C
	ldr r1, [r1]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, _0800FE80 ;@ =0x040000A0
	str r1, [r0, #4]
	ldr r1, _0800FE84 ;@ =0xB6400004
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bx lr

	non_word_aligned_thumb_func_start sub_800FDCE
sub_800FDCE ;@ 0x0800FDCE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800FE78 ;@ =gUnknown_03003EAC
	adds r6, r1, #0
	movs r5, #1
	adds r3, r5, #0
	movs r1, #4
	ldr r2, _0800FE88 ;@ =sub_800FDA4
	ldr r0, [r0]
	bl sub_800B12C
	ldr r0, _0800FE6C ;@ =0x040000BC
	ldr r1, [r4, #4]
	str r1, [r0]
	ldr r1, _0800FE80 ;@ =0x040000A0
	str r1, [r0, #4]
	ldr r1, _0800FE84 ;@ =0xB6400004
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r4, #8]
	movs r2, #0x31
	lsls r5, r0
	lsls r0, r1, #0xe
	subs r1, r0, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x12
	orrs r2, r1
	ldr r1, _0800FE70 ;@ =0x04000100
	str r2, [r1, #4]
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r1, #0xf
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0800FE8C ;@ =0x04000080
	movs r0, #0x80
	strh r0, [r1, #4]
	adds r0, r1, #2
	ldrh r1, [r0]
	movs r2, #0xb
	lsls r2, r2, #8
	orrs r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0
	str r0, [r4, #0x64]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FE3A
sub_800FE3A ;@ 0x0800FE3A
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #1
	lsls r1, r1, #0x18
	bl sub_803C124
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800FDCE
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FE56
sub_800FE56 ;@ 0x0800FE56
	ldr r1, _0800FE70 ;@ =0x04000100
	ldrh r1, [r1, #4]
	ldr r2, [r0, #8]
	movs r0, #1
	lsls r0, r2
	movs r2, #1
	lsls r2, r2, #0x10
	subs r0, r2, r0
	subs r0, r1, r0
	bx lr

	non_word_aligned_thumb_func_start nullsub_6
nullsub_6 ;@ 0x0800FE6A
	bx lr
	ALIGN
_0800FE6C DCDU 0x040000BC
_0800FE70 DCDU 0x04000100
_0800FE74 DCDU 0x04000082
_0800FE78 DCDU gUnknown_03003EAC
_0800FE7C DCDU gUnknown_03003E7C
_0800FE80 DCDU 0x040000A0
_0800FE84 DCDU 0xB6400004
_0800FE88 DCDU sub_800FDA4
_0800FE8C DCDU 0x04000080

	thumb_func_start sub_800FE90
sub_800FE90 ;@ 0x0800FE90
	push {r3, lr}
	cmp r0, #0
	bne _0800FEA0
	movs r0, #0x20
	bl sub_803D9F8
	cmp r0, #0
	beq _0800FEB6
_0800FEA0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
	mvns r1, r1
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
_0800FEB6
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800FEBC
sub_800FEBC ;@ 0x0800FEBC
	ldr r0, _080101E4 ;@ =gUnknown_03003E98
	push {r4, lr}
	ldr r0, [r0]
	adds r0, #8
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, _080101E8 ;@ =gUnknown_03003E8C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0800FEDE
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
_0800FEDE
	ldr r4, _080101EC ;@ =gUnknown_03003E94
	ldr r0, [r4]
	cmp r0, #0
	beq _0800FEF0
	bl sub_800B65E
	ldr r0, [r4]
	bl sub_800B708
_0800FEF0
	ldr r2, _080101F0 ;@ =gUnknown_03007FF8
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800FF00
sub_800FF00 ;@ 0x0800FF00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _0800FF18
	movs r0, #0x28
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0800FF18
	adds r0, r4, #0
_0800FF12
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0800FF18
	ldr r0, _080101F4 ;@ =_0803ECC8
	movs r5, #0
	str r0, [r4]
	ldr r0, _080101E8 ;@ =gUnknown_03003E8C
	ldr r6, _080101FC ;@ =gUnknown_03003EAC
	str r4, [r0]
	ldr r0, _080101F8 ;@ =_0803E868
	stm r4!, {r0, r5}
	subs r4, #8
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x14]
	str r5, [r4, #0x20]
	str r5, [r4, #0x24]
	ldr r0, [r6]
	movs r1, #0
	bl sub_800B148
	str r0, [r4, #0x1c]
	ldr r1, _08010200 ;@ =0x04000200
	ldr r0, [r6]
	strh r5, [r1, #8]
	movs r3, #1
	movs r1, #0
	ldr r2, _08010204 ;@ =sub_800FEBC
	bl sub_800B12C
	ldr r0, _080101E4 ;@ =gUnknown_03003E98
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	adds r0, r4, #0
	b _0800FF12

	non_word_aligned_thumb_func_start sub_800FF5E
sub_800FF5E ;@ 0x0800FF5E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080101F8 ;@ =_0803E868
	adds r5, r1, #0
	str r0, [r4]
	ldr r2, [r4, #0x1c]
	ldr r0, _080101FC ;@ =gUnknown_03003EAC
	cmp r2, #0
	beq _0800FF82
	ldr r1, _08010208 ;@ =nullsub_4
	cmp r2, r1
	beq _0800FF82
	movs r3, #1
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B12C
	b _0800FF8C
_0800FF82
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B154
_0800FF8C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800FF9E
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_0800FF9E
	ldr r0, _080101F4 ;@ =_0803ECC8
	movs r1, #0
	str r0, [r4]
	ldr r0, _080101E8 ;@ =gUnknown_03003E8C
	str r1, [r4, #0x10]
	str r1, [r0]
	cmp r5, #0
	beq _0800FFB4
	adds r0, r4, #0
	bl sub_803DA18
_0800FFB4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FFBA
sub_800FFBA ;@ 0x0800FFBA
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	str r1, [r0, #0x14]
	adds r4, r0, #0
	adds r0, r1, #0
	adds r6, r3, #0
	cmp r3, #0
	beq _0800FFD0
	cmp r5, #0
	bne _0800FFD4
_0800FFD0
	ldr r5, [r4, #0x24]
	ldr r6, [r4, #0x20]
_0800FFD4
	movs r3, #0
	movs r2, #0
	str r5, [r4, #0x24]
	str r6, [r4, #0x20]
	movs r1, #2
	bl sub_802EF0A
	adds r7, r0, #0
	beq _08010020
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08010016
	adds r0, r7, #0
	bl sub_800FBA0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	bl sub_800FB96
	ldr r1, [sp]
	cmp r1, r0
	beq _08010020
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08010016
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
	movs r3, #0
	str r3, [r4, #0x10]
_08010016
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r7, #0
	bl sub_800FBC0
_08010020
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08010062
	adds r1, r5, #0
	adds r0, r6, #0
	bl sub_803BE68
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl sub_803B8CE
	ldr r1, _0801020C ;@ =0x060174D8
	movs r2, #0xb
	ldr r0, [r4, #0x10]
	bl sub_800FC6C
	ldr r4, [r4, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_80106B0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	ldr r1, [r0, #4]
	adds r5, r1, r0
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_803B8D2
_08010062
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801006A
sub_801006A ;@ 0x0801006A
	push {r4, r5, r6, r7, lr}
	ldr r3, _08010210 ;@ =0xFFFFE5DC
	adds r5, r0, #0
	add sp, r3
	ldr r0, [r1]
	adds r4, r1, #0
	movs r1, #1
	movs r7, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_802EF0A
	adds r1, r0, #0
	beq _0801016C
	movs r2, #0
	ldr r0, [r4, #4]
	bl sub_8010920
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x18]
	adds r6, r2, r1
	ldr r2, [r4, #0xc]
	mvns r1, r7
	cmp r2, #0
	beq _080100A0
	ldr r1, [r2]
_080100A0
	movs r2, #0
	bl sub_803B8D4
	ldr r6, _08010214 ;@ =0x00001A08
	add r6, sp
	adds r0, r6, #0
	bl sub_80103C8
	movs r3, #0xd
	lsls r3, r3, #9
	ldr r0, [r4, #8]
	add r3, sp
	str r0, [r3, #0x18]
	add r0, sp, #0x208
	str r0, [r3, #8]
	ldr r0, _08010218 ;@ =0x06012C00
	adds r1, r6, #0
	str r0, [r3, #0xc]
	ldr r0, _0801021C ;@ =0x06014C00
	str r0, [r3, #0x14]
	ldr r0, _08010220 ;@ =0x0601606C
	str r0, [r3, #0x10]
	ldr r0, [r4, #0x10]
	strb r0, [r3, #0x1c]
	ldr r0, [r4, #0x14]
	strb r0, [r3, #0x1d]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0x1e]
	ldrh r0, [r4, #0x1a]
	strh r0, [r3, #0x20]
	ldr r0, [r4, #4]
	bl sub_8010604
	ldr r0, [r4, #4]
	bl sub_80106B0
	movs r1, #0xf
	lsls r1, r1, #0x12
	bl sub_803C04C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #8]
	movs r2, #1
	lsls r2, r2, #9
	str r7, [r5, #0xc]
	str r2, [sp]
	ldm r4!, {r1, r2}
	adds r0, r5, #0
	subs r4, #8
	add r3, sp, #8
	bl sub_800FFBA
	ldr r0, [r4, #4]
	ldr r1, _08010200 ;@ =0x04000200
	str r0, [r5, #4]
	movs r0, #1
	strh r0, [r1, #8]
_08010114
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq _08010126
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #0
	bl sub_803B8D4
_08010126
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq _08010144
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #1
	bl sub_803B8D4
_08010144
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	bl sub_80081A8
	ldr r6, _080101E4 ;@ =gUnknown_03003E98
_08010152
	ldr r0, [r6]
	bl sub_800B08E
	ldr r0, [r6]
	ldr r0, [r0, #8]
	ldr r1, [r5, #0xc]
	lsrs r1, r1, #8
	cmp r0, r1
	blo _08010152
	ldr r0, [r6]
	str r7, [r0, #8]
	ldr r0, [r5, #0xc]
	b _0801016E
_0801016C
	b _080101DA
_0801016E
	ldr r3, _08010224 ;@ =0x00044940
	lsrs r0, r0, #8
	ldr r1, _08010228 ;@ =0xFFFF63C0
	muls r0, r3
	adds r0, r0, r1
	bl sub_800812A
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r6, r0, #0
	bne _080101B8
	ldr r0, _0801022C ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _080101AE
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _080101AE
	ldr r0, [r4, #4]
	ldr r6, [r0, #0x64]
	bl sub_8008160
	adds r1, r0, #0
	adds r2, r6, #0
	movs r0, #2
	ldr r3, [r4, #0x1c]
	bl sub_803B8CE
_080101AE
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0xc]
	b _08010144
_080101B8
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl sub_803B8CA
	cmp r6, #1
	bne _08010114
	str r7, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _080101D6
	ldr r1, [r4, #4]
	ldr r1, [r1, #0x6c]
	str r1, [r0]
_080101D6
	str r7, [r5, #0x20]
	str r7, [r5, #0x24]
_080101DA
	ldr r3, _08010230 ;@ =0x00001A24
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080101E4 DCDU gUnknown_03003E98
_080101E8 DCDU gUnknown_03003E8C
_080101EC DCDU gUnknown_03003E94
_080101F0 DCDU gUnknown_03007FF8
_080101F4 DCDU _0803ECC8
_080101F8 DCDU _0803E868
_080101FC DCDU gUnknown_03003EAC
_08010200 DCDU 0x04000200
_08010204 DCDU sub_800FEBC
_08010208 DCDU nullsub_4
_0801020C DCDU 0x060174D8
_08010210 DCDU 0xFFFFE5DC
_08010214 DCDU 0x00001A08
_08010218 DCDU 0x06012C00
_0801021C DCDU 0x06014C00
_08010220 DCDU 0x0601606C
_08010224 DCDU 0x00044940
_08010228 DCDU 0xFFFF63C0
_0801022C DCDU gUnknown_030033F4
_08010230 DCDU 0x00001A24

	thumb_func_start sub_8010234
sub_8010234 ;@ 0x08010234
	push {r4, lr}
	adds r4, r0, #0
	bne _0801024C
	ldr r0, _080103AC ;@ =0x00001730
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0801024C
	adds r0, r4, #0
_08010246
	pop {r4}
	pop {r3}
	bx r3
_0801024C
	adds r0, r4, #0
	bl sub_801053C
	ldr r0, _080103B0 ;@ =_0803EC98
	movs r1, #0xb9
	lsls r1, r1, #5
	str r0, [r4]
	movs r0, #0
	adds r1, r4, r1
	strb r0, [r1, #0xc]
	ldr r1, _080103B8 ;@ =gUnknown_030031EC
	movs r3, #0
	ldrsb r1, [r1, r3]
	ldr r0, _080103B4 ;@ =gUnknown_03003E98
	ldr r2, _080103BC ;@ =gUnknown_0804AE44
	ldr r0, [r0]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_8004670
	adds r0, r4, #0
	b _08010246

	thumb_func_start sub_8010278
sub_8010278 ;@ 0x08010278
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080103B0 ;@ =_0803EC98
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80105AE
	cmp r5, #0
	beq _08010294
	adds r0, r4, #0
	bl sub_803DA18
_08010294
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801029A
sub_801029A ;@ 0x0801029A
	push {r3, r4, r5, lr}
	ldr r5, _080103C0 ;@ =gUnknown_03003E80
	adds r4, r0, #0
	ldr r0, [r5]
	bl sub_80049B4
	movs r0, #0x17
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	lsls r1, r0, #0x1f
	bmi _080102D2
	ldr r1, [r5]
	lsrs r0, r0, #0x10
	ldr r3, [r1, #0x14]
	movs r2, #0
	lsls r3, r3, #0x1c
	bmi _080102C0
	ldrh r2, [r1, #6]
_080102C0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	ands r1, r0
	beq _080102D2
	movs r1, #0xb9
	lsls r1, r1, #5
	movs r0, #1
	adds r1, r4, r1
	strb r0, [r1, #0xc]
_080102D2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80102D8
sub_80102D8 ;@ 0x080102D8
	push {r3, r4, r5, lr}
	ldr r5, _080103C4 ;@ =gUnknown_03003E7C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _080102EE
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl sub_803B8CA
_080102EE
	movs r0, #0x54
	ldrb r0, [r0, r4]
	cmp r0, #0xb
	beq _08010302
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl sub_803B8CA
_08010302
	bl sub_80081A8
	movs r0, #0xb9
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #4]
	adds r0, r4, #0
	bl sub_8011040
	ldr r0, [r5]
	cmp r0, #0
	beq _08010338
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl sub_803B8CA
	cmp r0, #0
	beq _08010338
	ldr r0, [r5]
	ldr r1, [r4, #0x64]
	ldr r2, [r0]
	ldr r3, [r2, #0xc]
	adds r2, r3, r2
	bl sub_803B8CC
_08010338
	adds r0, r4, #0
	bl sub_801115C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8010344
sub_8010344 ;@ 0x08010344
	push {r3, r4, r5, lr}
	ldr r5, _080103C4 ;@ =gUnknown_03003E7C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0801035A
	ldr r1, [r0]
	ldr r2, [r1, #0x24]
	adds r1, r2, r1
	bl sub_803B8CA
_0801035A
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r1, #1
	adds r0, r4, #0
	bl sub_8010B3E
	ldr r0, [r5]
	cmp r0, #0
	beq _0801037E
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r1, r2, r1
	bl sub_803B8CA
_0801037E
	movs r0, #0xb9
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r1, [r0, #0xc]
	cmp r1, #1
	bne _08010392
	movs r0, #1
_0801038C
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08010392
	movs r1, #0
	strb r1, [r0, #0xc]
	adds r0, r4, #0
	bl sub_801115C
	cmp r0, #0
	bne _080103A4
	movs r0, #1
	b _0801038C
_080103A4
	movs r0, #0
	b _0801038C

	thumb_func_start nullsub_39
nullsub_39 ;@ 0x080103A8
	bx lr
	ALIGN
_080103AC DCDU 0x00001730
_080103B0 DCDU _0803EC98
_080103B4 DCDU gUnknown_03003E98
_080103B8 DCDU gUnknown_030031EC
_080103BC DCDU gUnknown_0804AE44
_080103C0 DCDU gUnknown_03003E80
_080103C4 DCDU gUnknown_03003E7C

	thumb_func_start sub_80103C8
sub_80103C8 ;@ 0x080103C8
	push {r3, lr}
	cmp r0, #0
	bne _080103D8
	movs r0, #0x1c
	bl sub_803D9F8
	cmp r0, #0
	beq _080103E6
_080103D8
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_080103E6
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80103EC
sub_80103EC ;@ 0x080103EC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r6, #0xb
	strb r6, [r0, #4]
	movs r5, #0
	ldr r0, _0801068C ;@ =0x0000064C
	adds r7, r1, #0
	movs r1, #0x90
	str r5, [r4, #0x58]
	str r5, [r4, #0x60]
	adds r0, r4, r0
	bl sub_803BEB0
	movs r0, #0x1b
	lsls r0, r0, #6
	movs r1, #0x6d
	lsls r1, r1, #4
	adds r0, r4, r0
	str r7, [r0, #0x14]
	adds r1, r4, r1
	strb r6, [r1, #1]
	ldr r2, [r4, #0x5c]
	movs r3, #0x6f
	lsls r3, r3, #4
	adds r3, r4, r3
	str r2, [r0, #0x18]
	strb r6, [r3]
	str r2, [r0, #0x34]
	ldr r2, _08010690 ;@ =0x0001FEEB
	str r5, [r0, #0x38]
	str r2, [r0, #0x3c]
	movs r2, #7
	lsls r2, r2, #8
	adds r2, r4, r2
	str r5, [r2]
	str r5, [r2, #4]
	str r5, [r2, #8]
	str r5, [r2, #0xc]
	str r5, [r4, #0x7c]
	movs r2, #1
	strb r2, [r1, #0xc]
	strb r5, [r1, #0xd]
	movs r2, #0xff
	strb r2, [r1, #0xe]
	strb r5, [r1, #0xf]
	ldr r1, _08010694 ;@ =0x000007FF
	str r1, [r0, #0x20]
	str r5, [r0, #0x28]
	str r5, [r0, #0x2c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010456
sub_8010456 ;@ 0x08010456
	movs r2, #0x1f
	asrs r3, r0, #3
	cmp r3, #0x1f
	bge _08010478
	movs r2, #0
	cmp r0, #0
	blt _08010478
	ldr r2, _08010698 ;@ =gUnknown_0804AE70
	lsls r0, r0, #0x1d
	ldrb r1, [r2, r1]
	lsrs r0, r0, #0x1d
	cmp r1, r0
	bhs _08010474
	movs r0, #1
	b _08010476
_08010474
	movs r0, #0
_08010476
	adds r2, r0, r3
_08010478
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_801047C
sub_801047C ;@ 0x0801047C
	push {r4, r5, r6, r7}
	movs r6, #0xff
	ldr r5, _08010698 ;@ =gUnknown_0804AE70
	movs r4, #0
	adds r6, #1
_08010486
	movs r1, #0
_08010488
	movs r2, #0x1f
	asrs r3, r1, #3
	cmp r3, #0x1f
	bge _080104A8
	movs r2, #0
	cmp r1, #0
	blt _080104A8
	ldrb r2, [r5, r4]
	lsls r7, r1, #0x1d
	lsrs r7, r7, #0x1d
	cmp r2, r7
	bhs _080104A4
	movs r2, #1
	b _080104A6
_080104A4
	movs r2, #0
_080104A6
	adds r2, r2, r3
_080104A8
	strb r2, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r6
	blo _08010488
	adds r4, #1
	cmp r4, #0x10
	blo _08010486
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_80104BC
sub_80104BC ;@ 0x080104BC
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	str r6, [r0, #0x74]
	str r6, [r0, #0x70]
	str r6, [r0, #4]
	str r6, [r0, #0x5c]
	str r6, [r0, #0x60]
	str r6, [r0, #0x68]
	str r6, [r0, #0x64]
	adds r7, r1, #0
	adds r4, r0, #0
	movs r0, #0xb
	movs r1, #0x54
	strb r0, [r1, r4]
	str r6, [r4, #0x6c]
	cmp r7, #0
	beq _080104F0
	adds r3, r6, #0
	movs r1, #1
	lsls r1, r1, #0x11
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x78]
	b _080104F2
_080104F0
	str r6, [r4, #0x78]
_080104F2
	adds r5, r4, #0
	adds r5, #0x80
	str r6, [r4, #0x7c]
	str r6, [r5, #4]
	ldr r0, _0801069C ;@ =0x0001FFFF
	str r6, [r4, #0x58]
	str r0, [r5]
	movs r0, #0x71
	lsls r0, r0, #4
	adds r0, r4, r0
	bl sub_801047C
	str r6, [r5, #8]
	str r6, [r5, #0xc]
	movs r0, #0x1b
	lsls r0, r0, #6
	str r6, [r5, #0x10]
	adds r5, r4, r0
	cmp r7, #0
	beq _0801052C
	adds r3, r6, #0
	movs r1, #0x21
	lsls r1, r1, #0xb
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r5, #0x24]
	b _0801052E
_0801052C
	str r6, [r5, #0x24]
_0801052E
	movs r1, #0
	adds r0, r4, #0
	bl sub_80103EC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801053C
sub_801053C ;@ 0x0801053C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080106A0 ;@ =_0803E684
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x94
	bl sub_803E17C
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_803E17C
	ldr r0, _080106A4 ;@ =0x00001710
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r1, #1
	adds r0, r4, #0
	bl sub_80104BC
	adds r0, r4, #0
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8010574
sub_8010574 ;@ 0x08010574
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080106A0 ;@ =_0803E684
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x94
	bl sub_803E17C
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_803E17C
	ldr r0, _080106A4 ;@ =0x00001710
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80104BC
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80105AE
sub_80105AE ;@ 0x080105AE
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080106A0 ;@ =_0803E684
	str r0, [r4]
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _080105C4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_080105C4
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _080105D6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r4, #0x78]
_080105D6
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r0, r4, r0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _080105EA
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_080105EA
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_803E1A0
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x94
	bl sub_803E1A0
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8010604
sub_8010604 ;@ 0x08010604
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080106A4 ;@ =0x00001710
	adds r5, r1, #0
	adds r0, r4, r0
	movs r2, #0x1a
	bl sub_0803BFC4
	ldrh r0, [r5, #0x16]
	ldr r2, _080106A8 ;@ =0x0000FFFF
	cmp r0, r2
	bne _0801062E
	ldr r0, [r4, #0xc]
	movs r1, #0xf0
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	strh r0, [r5, #0x16]
_0801062E
	ldrh r0, [r5, #0x18]
	cmp r0, r2
	bne _08010644
	ldr r0, [r4, #0xc]
	movs r1, #0xa0
	lsrs r0, r0, #0x16
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	strh r0, [r5, #0x18]
_08010644
	movs r3, #0x16
	ldrsh r0, [r5, r3]
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	lsls r3, r1, #4
	subs r1, r3, r1
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x90
	str r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r3, r2, r1
	movs r1, #0x17
	lsls r1, r1, #8
	adds r5, r4, r1
	ldr r1, [r5, #0x18]
	ldr r2, _080106AC ;@ =0x0000146C
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r3, r2, r1
	ldr r2, _080106AC ;@ =0x0000146C
	ldr r1, [r5, #0x1c]
	bl sub_803B8CE
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801068C DCDU 0x0000064C
_08010690 DCDU 0x0001FEEB
_08010694 DCDU 0x000007FF
_08010698 DCDU gUnknown_0804AE70
_0801069C DCDU 0x0001FFFF
_080106A0 DCDU _0803E684
_080106A4 DCDU 0x00001710
_080106A8 DCDU 0x0000FFFF
_080106AC DCDU 0x0000146C

	thumb_func_start sub_80106B0
sub_80106B0 ;@ 0x080106B0
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	lsls r0, r0, #6
	bx lr

	non_word_aligned_thumb_func_start nullsub_40
nullsub_40 ;@ 0x080106BA
	bx lr

	thumb_func_start sub_80106BC
sub_80106BC ;@ 0x080106BC
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r6, [r0, #4]
	movs r5, #0
	adds r4, r0, #0
	mvns r0, r5
	str r0, [r4, #0x6c]
	ldr r0, [sp, #4]
	movs r7, #0
	cmp r0, #0
	bls _08010720
_080106D0
	ldr r0, _08010994 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x10
	lsls r2, r0, #0x13
	adds r5, r1, r5
	adds r1, r6, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r6, r0, r1
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r2, r0, #0
	adds r0, #1
	cmp r0, r1
	bge _08010718
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	cmp r1, r5
	bhi _08010718
	str r0, [r4, #0x6c]
_08010718
	ldr r0, [sp, #4]
	adds r7, #1
	cmp r7, r0
	blo _080106D0
_08010720
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x5c]
	str r5, [r4, #0x64]
	str r5, [r4, #0x68]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0801073E
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_80103EC
_0801073E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010746
sub_8010746 ;@ 0x08010746
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	sub sp, #0x5c
	cmp r0, #0
	beq _0801075A
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0801075A
	ldr r0, [r4, #8]
	movs r5, #0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _080107A4
	movs r0, #1
	adds r3, r5, #0
	movs r2, #0
	movs r1, #0xc
	str r0, [r4, #0x74]
	bl sub_803D9C4
	str r0, [r4, #0x70]
	adds r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #0x12
	lsls r1, r1, #0x12
	str r1, [r0]
	ldr r0, [r4, #0x70]
	str r5, [r0, #8]
	ldr r0, [sp, #0x60]
	ldr r1, [r4, #0x70]
	str r0, [r1]
	ldr r0, [r4, #0x70]
	adds r0, #4
	ldr r1, [r0]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	str r1, [r0]
	ldr r0, [sp, #0x60]
	str r0, [r4, #4]
	movs r0, #1
_0801079C
	add sp, #0x64
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080107A4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	str r0, [r4, #0x74]
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x70]
	movs r2, #0
	movs r1, #0
	str r1, [sp, #0x48]
	str r2, [sp, #0x4c]
	ldr r5, [sp, #0x60]
	adds r6, r0, #0
	ldr r0, [r4, #8]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	beq _0801080C
	add r0, sp, #4
	adds r0, #2
	str r0, [sp, #0x58]
_080107D8
	ldr r0, _08010994 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x42
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #0x42
	bl sub_803BF0C
	ldr r0, [sp, #0x58]
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #2
	adds r5, r0, r5
	ldr r0, [r4, #8]
	adds r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bhi _080107D8
_0801080C
	adds r5, #3
	lsrs r5, r5, #2
	lsls r5, r5, #2
	str r5, [r4, #4]
	ldr r0, [sp, #0x60]
	movs r1, #0
	str r1, [sp, #0x44]
	str r0, [sp, #0x50]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	beq _080108D6
	add r0, sp, #0
	adds r0, #2
	str r0, [sp, #0x54]
_0801082A
	ldr r0, _08010994 ;@ =gUnknown_03003E84
	movs r3, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x50]
	movs r2, #0x42
	bl sub_800529A
	adds r1, r0, #0
	mov r0, sp
	movs r2, #0x42
	bl sub_803BF0C
	add r3, sp, #0
	ldrh r0, [r3]
	ldr r1, [sp, #0x48]
	movs r7, #0
	subs r0, r0, r1
	beq _08010886
_0801084E
	ldr r0, _08010994 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x4c]
	lsrs r1, r1, #0x10
	adds r2, r1, r2
	str r2, [sp, #0x4c]
	lsls r2, r0, #0x13
	adds r1, r5, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r5, r0, r1
	add r3, sp, #0
	ldrh r0, [r3]
	ldr r1, [sp, #0x48]
	adds r7, #1
	subs r0, r0, r1
	cmp r0, r7
	bhi _0801084E
_08010886
	str r5, [r6]
	ldr r0, [r6, #4]
	ldr r2, [sp, #0x4c]
	lsrs r0, r0, #0x12
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x12
	orrs r0, r1
	str r0, [r6, #4]
	add r3, sp, #0
	ldrh r1, [r3]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0xe
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r6, #4]
	ldr r0, [sp, #0x50]
	adds r0, #2
	str r0, [r6, #8]
	ldrh r1, [r3]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x48]
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, #2
	adds r1, r0, r1
	str r1, [sp, #0x50]
	ldr r1, [sp, #0x44]
	adds r6, #0xc
	adds r1, #1
	str r1, [sp, #0x44]
	ldr r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bhi _0801082A
_080108D6
	movs r0, #1
	b _0801079C

	non_word_aligned_thumb_func_start sub_80108DA
sub_80108DA ;@ 0x080108DA
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #1
	lsls r6, r6, #9
	adds r5, r1, #0
	adds r1, r6, #0
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_803BE68
	adds r0, r5, r6
	lsrs r5, r6, #1
	movs r1, #0
	movs r7, #0xff
_080108F4
	adds r2, r1, #0
	muls r2, r4
	lsrs r2, r2, #8
	adds r3, r7, #0
	cmp r2, #0xff
	bhi _08010904
	lsls r3, r2, #0x18
	lsrs r3, r3, #0x18
_08010904
	strb r3, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r5
	blo _080108F4
	movs r1, #0
	mvns r1, r1
	ldrb r1, [r1, r0]
	adds r2, r6, #0
	bl sub_803C034
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8010920
sub_8010920 ;@ 0x08010920
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08010994 ;@ =gUnknown_03003E84
	adds r5, r1, #0
	adds r7, r2, #0
	movs r3, #0
	movs r2, #0x4c
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #8
	movs r2, #0x4c
	adds r6, r0, #0
	bl sub_0803BFC4
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #0xc
	adds r5, r0, r5
	cmp r7, #0
	bne _08010984
	ldr r0, _08010998 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8010746
	adds r0, r4, #0
	ldr r1, [r4, #4]
	bl sub_80103EC
	movs r2, #1
	movs r1, #0
	adds r0, r4, #0
	bl sub_80106BC
_08010984
	ldr r1, [r4, #8]
	movs r0, #1
	lsls r1, r1, #0x18
	bne _0801098E
	movs r0, #0
_0801098E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08010994 DCDU gUnknown_03003E84
_08010998 DCDU gUnknown_03003E98

	thumb_func_start sub_801099C
sub_801099C ;@ 0x0801099C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r6, #0
	movs r4, #0
	cmp r1, #0
	ldr r5, [r0, #4]
	bls _080109D6
_080109AA
	ldr r0, _08010D58 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x10
	lsls r2, r0, #0x13
	adds r6, r1, r6
	adds r1, r5, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r2, r1
	adds r5, r0, r1
	adds r4, #1
	cmp r4, r7
	blo _080109AA
_080109D6
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80109DE
sub_80109DE ;@ 0x080109DE
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x5c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #1
	bx lr

	thumb_func_start sub_80109EC
sub_80109EC ;@ 0x080109EC
	movs r1, #0x54
	ldrb r1, [r1, r0]
	movs r2, #0x19
	lsls r2, r2, #6
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0x60]
	lsrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8010A0A
sub_8010A0A ;@ 0x08010A0A
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	movs r5, #0
	adds r4, r0, #0
	mvns r0, r5
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x10]
	movs r6, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	beq _08010A9E
_08010A20
	ldr r0, _08010D58 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r1, r0, #0
	ldr r1, [r1, #4]
	ldr r0, [r0]
	mov ip, r1
	ldr r1, [r4, #0x6c]
	ldr r3, [r4, #0x74]
	adds r2, r1, #0
	adds r1, #1
	lsrs r0, r0, #0x10
	adds r0, r0, r5
	cmp r1, r3
	mov lr, r1
	bge _08010A60
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0xe
	cmp r1, r0
	bhi _08010A60
	mov r1, lr
	str r1, [r4, #0x6c]
_08010A60
	ldr r1, [sp, #4]
	cmp r1, r5
	blo _08010A7C
	ldr r1, [sp, #4]
	cmp r1, r0
	bhs _08010A7C
	str r5, [r4, #0x68]
	str r5, [r4, #0x64]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r6
	str r0, [r4, #0x5c]
	b _08010A9E
_08010A7C
	mov r2, ip
	lsls r2, r2, #0x13
	adds r1, r7, #0
	adds r1, #8
	lsrs r2, r2, #0x11
	adds r1, r2, r1
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	mov r2, ip
	lsrs r2, r2, #0xd
	lsls r2, r2, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r2, r1
	adds r6, #1
	cmp r0, r6
	bhi _08010A20
_08010A9E
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08010AAC
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_80103EC
_08010AAC
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8010AB4
sub_8010AB4 ;@ 0x08010AB4
	push {r4, r5, r6, lr}
	ldr r4, [r0, #0x74]
	cmp r4, #0
	beq _08010AC0
	adds r3, r1, #1
	bne _08010AD8
_08010AC0
	movs r2, #0
	mvns r2, r2
	ldr r1, [r0, #4]
	str r2, [r0, #0x6c]
	movs r2, #0
	str r2, [r0, #0x68]
	str r2, [r0, #0x64]
	ldr r2, [r0, #0x10]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [r0, #0x5c]
	b _08010B34
_08010AD8
	cmp r4, r1
	bgt _08010ADE
	subs r1, r4, #1
_08010ADE
	str r1, [r0, #0x6c]
	lsls r3, r1, #1
	adds r3, r3, r1
	ldr r6, [r0, #0x70]
	lsls r3, r3, #2
	adds r5, r1, #0
	ldr r1, [r6, r3]
	adds r3, r6, r3
	ldr r6, [r3, #4]
	lsls r6, r6, #0xe
	lsrs r6, r6, #0xe
	str r6, [r0, #0x64]
	ldr r6, [r3, #4]
	lsls r6, r6, #0xe
	lsrs r6, r6, #0xe
	str r6, [r0, #0x68]
	cmp r2, #0
	beq _08010B26
	subs r4, #1
	cmp r4, r5
	bne _08010B18
	ldr r2, [r3, #4]
	ldr r3, [r0, #0x10]
	lsrs r2, r2, #0x12
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r2, r3, r2
	str r2, [r0, #0x5c]
	b _08010B34
_08010B18
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #4]
	lsrs r2, r2, #0x12
	lsrs r3, r3, #0x12
	subs r2, r2, r3
	str r2, [r0, #0x5c]
	b _08010B34
_08010B26
	ldr r2, [r3, #4]
	ldr r3, [r0, #0x10]
	lsrs r2, r2, #0x12
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r2, r3, r2
	str r2, [r0, #0x5c]
_08010B34
	bl sub_80103EC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010B3E
sub_8010B3E ;@ 0x08010B3E
	push {r4}
	ldr r2, [r0, #0x58]
	ldr r3, [r0, #0x7c]
	movs r4, #0x80
	ldr r4, [r4, r0]
	muls r2, r1
	adds r3, r3, r2
	ands r3, r4
	str r3, [r0, #0x7c]
	movs r3, #0x1b
	lsls r3, r3, #6
	adds r3, r0, r3
	ldr r4, [r3, #0x3c]
	adds r2, r4, r2
	str r2, [r3, #0x3c]
	ldr r2, [r0, #0x60]
	subs r2, r2, r1
	str r2, [r0, #0x60]
	ldr r2, [r0, #0x64]
	adds r1, r2, r1
	str r1, [r0, #0x64]
	pop {r4}
	bx lr

	thumb_func_start sub_8010B6C
sub_8010B6C ;@ 0x08010B6C
	push {r3, lr}
	ldr r1, [r0, #0x64]
	ldr r2, [r0, #0x68]
	movs r3, #0x7d
	lsls r3, r3, #3
	subs r1, r1, r2
	ldr r0, [r0, #0xc]
	muls r1, r3
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	bl sub_803C04C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8010B8A
sub_8010B8A ;@ 0x08010B8A
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #7
	lsls r0, r0, #8
	adds r2, r0, #0
	adds r4, r7, r0
	movs r1, #0
	str r1, [sp, #0x28]
	ldr r1, [r4]
	ldr r0, _08010D58 ;@ =gUnknown_03003E84
	subs r2, #0x40
	adds r5, r7, #0
	adds r5, #0x94
	adds r6, r7, r2
	cmp r1, #0
	ldr r0, [r0]
	bgt _08010C98
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x34]
	cmp r1, r2
	blt _08010BC4
	movs r0, #0
_08010BBC
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08010BC4
	movs r1, #0x6f
	lsls r1, r1, #4
	adds r1, r7, r1
	cmp r2, #0
	bne _08010BDE
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	b _08010BBC
_08010BDE
	subs r2, #1
	str r2, [r6, #0x34]
	ldrb r2, [r1]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r1]
	cmp r2, #0xb
	blo _08010BF4
	movs r3, #0
	strb r3, [r1]
_08010BF4
	ldrb r1, [r1]
	ldr r2, _08010D5C ;@ =0x0000064C
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r7
	adds r1, r1, r2
	str r1, [sp, #0x20]
	ldr r2, [r1]
	cmp r2, #0
	bne _08010C10
	movs r0, #0
	str r0, [r6, #0x3c]
	b _08010BBC
_08010C10
	ldr r1, [sp, #0x20]
	ldr r1, [r1, #8]
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x11
	adds r2, r2, r3
	adds r2, #8
	str r2, [sp, #0x1c]
	lsrs r1, r1, #0xd
	lsls r2, r1, #2
	ldr r1, [sp, #0x1c]
	movs r3, #0
	bl sub_800529A
	ldr r0, _08010D58 ;@ =gUnknown_03003E84
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	bl sub_803DAC0
	str r0, [sp, #0x18]
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	adds r2, r1, r0
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl sub_803B8CC
	str r0, [r4]
	str r0, [r4, #4]
	mov r0, sp
	bl sub_8008008
	ldr r0, [sp, #0x18]
	add r3, sp, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #8]
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x78]
	str r0, [sp, #8]
	movs r0, #2
	strb r0, [r3, #0xc]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x38]
	str r0, [sp, #0x14]
	ldr r0, [r5]
	ldr r1, [r0, #8]
	adds r2, r1, r0
	mov r1, sp
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	ldr r1, [r0, #0x24]
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_803B8CA
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	subs r1, r1, r0
	str r1, [r4, #8]
	ldr r2, [sp, #0x1c]
	adds r1, r2, r0
	b _08010C9A
_08010C98
	b _08010CA6
_08010C9A
	str r1, [r4, #0xc]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	str r0, [sp, #0x24]
	b _08010CD0
_08010CA6
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _08010CD0
	movs r3, #0
	ldr r1, [r4, #0xc]
	bl sub_800529A
	ldr r1, [r4, #0xc]
	ldr r0, _08010D58 ;@ =gUnknown_03003E84
	str r1, [sp, #0x28]
	ldr r0, [r0]
	bl sub_803DAC0
	str r0, [sp, #0x24]
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	bl sub_803B8CC
_08010CD0
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	bgt _08010CDA
	movs r0, #0
	b _08010BBC
_08010CDA
	ldr r1, [r4, #8]
	movs r0, #0
	cmp r1, #0
	beq _08010CEE
	ldr r0, _08010D58 ;@ =gUnknown_03003E84
	adds r2, r1, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	bl sub_803DABC
_08010CEE
	ldr r1, [r4, #8]
	adds r2, r0, #0
	cmp r1, r0
	bls _08010CF8
	subs r2, #8
_08010CF8
	cmp r2, #0
	bne _08010CFE
	movs r2, #1
_08010CFE
	ldr r1, [r6, #0x38]
	str r1, [sp, #0x20]
	ldr r0, [r5]
	ldr r1, [r0, #0xc]
	adds r3, r1, r0
	ldr r1, [r6, #0x3c]
	adds r0, r5, #0
	bl sub_803B8CE
	ldr r0, [r5, #0xc]
	str r0, [r6, #0x38]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	blo _08010D20
	ldr r1, [sp, #0x20]
	subs r7, r0, r1
	b _08010D2C
_08010D20
	adds r7, #0x80
	ldr r1, [r7]
	ldr r2, [sp, #0x20]
	adds r1, #1
	subs r1, r1, r2
	adds r7, r0, r1
_08010D2C
	ldr r0, [r5]
	ldr r1, [r0, #0x24]
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_803B8CA
	ldr r1, [sp, #0x24]
	subs r0, r0, r1
	ldr r1, [r4, #8]
	subs r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	ldr r0, [r4]
	subs r0, r0, r7
	str r0, [r4]
	ldr r0, [r6, #0x3c]
	subs r0, r0, r7
	str r0, [r6, #0x3c]
	movs r0, #1
	b _08010BBC
	ALIGN
_08010D58 DCDU gUnknown_03003E84
_08010D5C DCDU 0x0000064C

	thumb_func_start sub_8010D60
sub_8010D60 ;@ 0x08010D60
	push {r4, r5, r6, r7, lr}
	movs r1, #0x6d
	lsls r1, r1, #4
	adds r6, r0, r1
	ldrb r2, [r6, #0xc]
	sub sp, #0x24
	cmp r2, #0
	beq _08010E54
	ldr r1, _0801102C ;@ =0x0000064C
	movs r4, #0x17
	adds r3, r1, #0
	adds r3, #0x74
	lsls r4, r4, #8
	adds r7, r0, r4
	adds r5, r0, r3
	cmp r2, #1
	beq _08010DEE
	cmp r2, #2
	bne _08010E54
	ldrb r2, [r6, #0xf]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r0, r2, r0
	adds r4, r0, r1
	ldr r0, [r4, #4]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x16
	lsls r1, r0, #0x1d
	lsrs r1, r1, #0x1d
	ldr r0, [r7, #0x10]
	bl sub_803E1EC
	ldr r0, [r4, #4]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x16
	lsls r1, r0, #0x1d
	lsrs r1, r1, #0x1d
	ldr r0, [r7, #0x10]
	bl sub_803E1F8
	ldrb r1, [r6, #0xd]
	ldr r0, [r5, #0x24]
	movs r5, #0
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #0xb
	adds r1, r0, r1
	ldr r0, [r7, #0x10]
	movs r7, #3
	lsls r7, r7, #0xb
	adds r2, r1, #0
	adds r3, r0, #0
	cmp r0, r1
	bhs _08010DDC
	adds r4, r3, r7
	cmp r4, r2
	bls _08010DDC
	adds r3, r4, #0
	adds r2, r2, r7
	movs r5, #5
	lsls r5, r5, #0x15
_08010DDC
	ldr r4, _08011030 ;@ =gUnknown_03003EB4
	ldr r7, [r4]
	movs r4, #0
	cmp r7, #0
	beq _08010E9A
	ldr r2, _08011034 ;@ =0x04000600
	bl sub_803D468
	b _08010ECE
_08010DEE
	adds r4, r0, #0
	ldr r2, [r5, #0x28]
	adds r4, #0xf0
	cmp r2, #0
	bne _08010E6E
	ldrb r2, [r6, #0xf]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r0, r2, r0
	adds r2, r0, r1
	str r2, [sp, #0x20]
	ldr r1, [r2]
	ldrb r2, [r6, #0xd]
	ldr r0, [r5, #0x24]
	adds r1, #8
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #0xb
	adds r3, r0, r2
	ldr r0, _08011038 ;@ =gUnknown_03003E84
	str r3, [sp, #0x1c]
	ldr r0, [r0]
	ldr r2, [sp, #0x20]
	ldr r2, [r2, #8]
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x11
	bl sub_800529A
	ldr r0, [r4]
	ldr r1, [r0, #0x14]
	adds r2, r1, r0
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	bl sub_803B8CC
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	add r0, sp, #4
	bl sub_8008008
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r3, [sp, #4]
	ldr r0, [r2, #8]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x11
	str r0, [sp, #8]
	ldr r0, [r7, #0x10]
	str r0, [sp, #0xc]
	b _08010E56
_08010E54
	b _08010E92
_08010E56
	movs r0, #2
	add r3, sp, #0
	strb r0, [r3, #0x10]
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r1, [r0, #8]
	adds r2, r1, r0
	add r1, sp, #4
	adds r0, r4, #0
	bl sub_803B8CC
_08010E6E
	ldr r0, [r4]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0x1e
	adds r3, r1, r0
	ldr r7, [r4, #0xc]
	ldr r1, [r5, #0x28]
	adds r0, r4, #0
	bl sub_803B8CE
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x28]
	subs r0, r0, r7
	subs r0, r1, r0
	str r0, [r5, #0x28]
	bne _08010E92
	movs r0, #2
	strb r0, [r6, #0xc]
_08010E92
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08010E9A
	lsls r1, r2, #0x1e
	ldr r0, _0801103C ;@ =0x040000D4
	bmi _08010EA4
	lsls r1, r3, #0x1e
	bpl _08010EBA
_08010EA4
	str r3, [r0]
	str r2, [r0, #4]
	movs r1, #3
	lsls r1, r1, #0xa
	movs r2, #1
	lsls r2, r2, #0x1f
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _08010ECE
_08010EBA
	str r3, [r0]
	str r2, [r0, #4]
	movs r1, #3
	lsls r1, r1, #9
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08010ECE
	strb r4, [r6, #0xc]
	b _08010E92

	non_word_aligned_thumb_func_start sub_8010ED2
sub_8010ED2 ;@ 0x08010ED2
	cmp r1, #0xb
	blo _08010EDA
	movs r0, #0
	bx lr
_08010EDA
	movs r2, #0x1b
	lsls r2, r2, #6
	adds r2, r0, r2
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne _08010EF6
	movs r2, #0x6d
	lsls r2, r2, #4
	adds r2, r0, r2
	ldrb r2, [r2]
	cmp r2, r1
	bne _08010EF6
	movs r0, #0
	bx lr
_08010EF6
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r1, r0
	movs r1, #0x19
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _08010F0C
	bx lr
_08010F0C
	movs r0, #1
	bx lr

	thumb_func_start sub_8010F10
sub_8010F10 ;@ 0x08010F10
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r5, r6, r0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08010F8C
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r4, r6, r0
	ldrb r1, [r4, #0xf]
	adds r0, r6, #0
	bl sub_8010ED2
	cmp r0, #0
	beq _08010F8C
	ldrb r2, [r4, #0xd]
	movs r1, #1
	ldr r0, [r5, #0x20]
	lsls r1, r2
	ands r0, r1
	movs r7, #0
	cmp r0, #0
	beq _08010F4A
	adds r0, r6, #0
	bl sub_8010D60
	b _08010F4C
_08010F4A
	strb r7, [r4, #0xc]
_08010F4C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08010F84
	ldrb r0, [r4, #0xd]
	movs r2, #1
	adds r3, r2, #0
	ldr r1, [r5, #0x20]
	lsls r3, r0
	bics r1, r3
	str r1, [r5, #0x20]
	ldrb r1, [r4, #0xf]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r4, #0xf]
	cmp r1, #0xb
	blo _08010F70
	strb r7, [r4, #0xf]
_08010F70
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0xd]
	cmp r0, #0xb
	blo _08010F7E
	strb r7, [r4, #0xd]
_08010F7E
	strb r2, [r4, #0xc]
	str r7, [r5, #0x28]
	str r7, [r5, #0x2c]
_08010F84
	movs r0, #1
_08010F86
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08010F8C
	movs r0, #0
	b _08010F86

	thumb_func_start sub_8010F90
sub_8010F90 ;@ 0x08010F90
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r5, r0, r1
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _08011026
	movs r2, #0x6d
	lsls r2, r2, #4
	adds r4, r0, r2
	ldrb r2, [r4, #1]
	cmp r2, #0
	beq _08011026
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq _08011026
	ldrb r2, [r4]
	movs r7, #0
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r0, r2, r0
	movs r2, #0x19
	lsls r2, r2, #6
	adds r6, r0, r2
	str r0, [sp]
	ldr r0, _08011038 ;@ =gUnknown_03003E84
	str r1, [r6, #0xc]
	ldr r0, [r0]
	adds r3, r7, #0
	movs r2, #8
	ldr r1, [r5, #0x14]
	bl sub_800529A
	movs r2, #3
	ldr r1, [sp]
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r0, [r1, #0x54]
	str r2, [r1, #0x50]
	ldrb r0, [r4, #1]
	adds r0, #0xff
	strb r0, [r4, #1]
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4]
	cmp r0, #0xb
	blo _08010FFA
	strb r7, [r4]
_08010FFA
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	bne _0801100A
	movs r0, #0xff
	str r7, [r5, #0x14]
	strb r0, [r4]
	b _0801101E
_0801100A
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0xc]
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x11
	lsrs r1, r1, #0xd
	lsls r1, r1, #2
	adds r0, r0, r2
	adds r0, r0, r1
	adds r0, #8
	str r0, [r5, #0x14]
_0801101E
	movs r0, #1
_08011020
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08011026
	movs r0, #0
	b _08011020
	ALIGN
_0801102C DCDU 0x0000064C
_08011030 DCDU gUnknown_03003EB4
_08011034 DCDU 0x04000600
_08011038 DCDU gUnknown_03003E84
_0801103C DCDU 0x040000D4

	thumb_func_start sub_8011040
sub_8011040 ;@ 0x08011040
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #8
	str r0, [sp, #4]
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r5, r4, r0
	adds r7, r1, #0
	movs r6, #0
	cmp r1, #0
	ble _08011066
	ldr r0, [r5, #0x18]
	cmp r0, r7
	bls _08011060
	str r7, [r5, #0x18]
_08011060
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	str r0, [sp, #4]
_08011066
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0801107E
	movs r6, #0x4b
	ldr r0, [sp, #0x10]
	lsls r6, r6, #6
	muls r6, r0
	ldr r0, _08011380 ;@ =0x0001FEEF
	cmp r6, r0
	bls _0801107C
	adds r6, r0, #0
_0801107C
	str r6, [r5, #0x3c]
_0801107E
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _08011090
	adds r0, r4, #0
	bl sub_8010F90
	cmp r0, #0
	bne _0801107E
_08011090
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _080110A2
	adds r0, r4, #0
	bl sub_8010F10
	cmp r0, #0
	bne _08011090
_080110A2
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _080110B4
	adds r0, r4, #0
	bl sub_8010B8A
	cmp r0, #0
	bne _080110A2
_080110B4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _080110C0
	ldr r0, _08011380 ;@ =0x0001FEEF
	subs r0, r0, r6
	str r0, [r5, #0x3c]
_080110C0
	cmp r7, #0
	ble _080110F8
	ldr r0, [sp, #4]
	str r0, [r5, #0x18]
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08011100
	subs r0, #1
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r1, r0, r4
	movs r0, #0x19
	lsls r0, r0, #6
	adds r0, r1, r0
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x14]
	lsls r2, r0, #0x13
	lsrs r2, r2, #0x11
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	adds r1, r1, r2
	adds r0, r1, r0
	adds r0, #8
	str r0, [r5, #0x14]
_080110F8
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08011100
	movs r0, #0
	str r0, [r5, #0x14]
	b _080110F8

	non_word_aligned_thumb_func_start sub_8011106
sub_8011106 ;@ 0x08011106
	movs r1, #0x1b
	lsls r1, r1, #6
	push {r4, lr}
	adds r4, r0, r1
	adds r1, #0x10
	ldr r2, [r4, #0x14]
	adds r1, r0, r1
	cmp r2, #0
	beq _0801112C
	ldrb r2, [r1, #1]
	cmp r2, #0
	beq _0801112C
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _0801112C
	movs r0, #0
_08011126
	pop {r4}
	pop {r3}
	bx r3
_0801112C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _08011140
	ldrb r1, [r1, #0xf]
	bl sub_8010ED2
	cmp r0, #0
	beq _08011140
	movs r0, #0
	b _08011126
_08011140
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ble _0801114A
	movs r0, #0
	b _08011126
_0801114A
	movs r0, #1
	b _08011126

	non_word_aligned_thumb_func_start sub_801114E
sub_801114E ;@ 0x0801114E
	adds r1, r0, #0
	ldr r1, [r1, #0x5c]
	movs r0, #1
	cmp r1, #0
	ble _0801115A
	movs r0, #0
_0801115A
	bx lr

	thumb_func_start sub_801115C
sub_801115C ;@ 0x0801115C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #0x1b
	lsls r3, r3, #6
	adds r2, r3, #0
	adds r2, #0x10
	adds r3, r4, r3
	ldr r1, [r4, #0x60]
	adds r7, r4, #0
	adds r5, r4, #0
	adds r5, #0x50
	adds r7, #0x80
	adds r6, r4, r2
	movs r0, #0
	sub sp, #0x24
	str r3, [sp, #0x20]
	cmp r1, #0
	bgt _08011264
	ldr r0, [r4, #0x5c]
	subs r1, r0, #1
	str r1, [r4, #0x5c]
	cmp r0, #0
	bne _080111A0
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	movs r0, #0xb
	strb r0, [r5, #4]
	movs r0, #0
_08011198
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080111A0
	ldrb r0, [r5, #4]
	cmp r0, #0xb
	blo _080111AC
	movs r0, #0
	strb r0, [r5, #4]
	b _080111D8
_080111AC
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	ldr r1, _08011388 ;@ =0x0000064C
	adds r0, r0, r4
	adds r0, r0, r1
	movs r1, #0
	movs r3, #0
	movs r2, #0
	stm r0!, {r1, r2, r3}
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	ldrb r0, [r5, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #4]
	cmp r0, #0xb
	blo _080111D8
	movs r0, #0
	strb r0, [r5, #4]
_080111D8
	ldrb r0, [r5, #4]
	ldr r1, _08011388 ;@ =0x0000064C
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	adds r2, r0, #4
	str r2, [sp, #0x10]
	ldr r1, [r0, #4]
	lsrs r1, r1, #0x10
	str r1, [r4, #0x60]
	ldr r1, [r4, #0x6c]
	ldr r3, [r4, #0x74]
	adds r2, r1, #0
	adds r1, #1
	mov ip, r1
	cmp r1, r3
	bge _08011214
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r4, #0x70]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	ldr r0, [r0]
	cmp r1, r0
	bne _08011214
	mov r1, ip
	str r1, [r4, #0x6c]
_08011214
	ldr r2, [sp, #0x10]
	ldr r1, _0801138C ;@ =gUnknown_0804AE80
	ldr r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x1c]
	lsls r0, r0, #0xa
	lsrs r1, r0, #0x16
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	bl sub_803C124
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	lsrs r1, r0, #0x16
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, #1]
	bl sub_803C124
	adds r1, r0, #0
	ldr r0, [sp, #8]
	muls r0, r1
	str r0, [r4, #0x58]
	ldr r2, [sp, #0x10]
	adds r1, r0, #0
	ldr r2, [r2]
	movs r0, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x16
	lsls r3, r0, #8
	cmp r2, r3
	bhi _0801125C
	movs r0, #0
_0801125C
	str r0, [r7, #4]
	cmp r0, #0
	beq _0801126A
	b _08011266
_08011264
	b _08011296
_08011266
	lsls r0, r1, #1
	str r0, [r4, #0x58]
_0801126A
	ldrb r0, [r6, #0xe]
	cmp r0, #0xff
	bne _08011276
	movs r0, #0
	strb r0, [r6, #0xe]
	b _08011294
_08011276
	movs r2, #1
	lsls r2, r0
	ldr r1, [sp, #0x20]
	adds r0, #1
	ldr r1, [r1, #0x20]
	lsls r0, r0, #0x18
	orrs r1, r2
	ldr r2, [sp, #0x20]
	lsrs r0, r0, #0x18
	str r1, [r2, #0x20]
	strb r0, [r6, #0xe]
	cmp r0, #0xb
	blo _08011294
	movs r0, #0
	strb r0, [r6, #0xe]
_08011294
	movs r0, #1
_08011296
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _080112B4
	ldr r0, _08011390 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_8004674
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x4d
	bl sub_80108DA
	movs r0, #0
	str r0, [r7, #0xc]
	b _080112B8
_080112B4
	cmp r0, #0
	beq _08011338
_080112B8
	ldr r1, [sp, #0x20]
	ldr r0, [r1, #0x24]
	ldrb r1, [r6, #0xe]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #0xb
	adds r6, r0, r1
	ldrb r0, [r5, #4]
	movs r1, #0x65
	lsls r1, r1, #4
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r1
	movs r1, #0x17
	lsls r1, r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r7, #8]
	adds r1, r4, r1
	str r1, [sp, #0x18]
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r1, r4, r1
	str r1, [sp, #0x14]
	movs r1, #0x71
	lsls r1, r1, #4
	adds r7, r4, r1
	cmp r0, #0
	beq _0801133A
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803E204
	movs r0, #1
	add r3, sp, #0
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xd]
	ldrb r0, [r5, #4]
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	movs r3, #0x19
	lsls r3, r3, #6
	adds r0, r0, r4
	adds r0, r0, r3
	ldr r0, [r0, #0x10]
	str r2, [sp, #8]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x16
	adds r0, r6, #0
	add r2, sp, #0xc
	ldr r1, [r1, #0x14]
	bl sub_803E210
_08011338
	b _0801135E
_0801133A
	ldr r0, [sp, #0x10]
	ldr r2, _0801138C ;@ =gUnknown_0804AE80
	ldr r3, [r0]
	str r7, [sp, #8]
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r0, #1
	adds r2, r1, r2
	ldr r1, [sp, #0x14]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x16
	adds r0, r6, #0
	ldr r1, [r1, #0x14]
	bl sub_803E210
_0801135E
	adds r0, r4, #0
	bl sub_8010F90
	adds r0, r4, #0
	bl sub_8010F10
	bl sub_8008160
	ldr r0, _08011384 ;@ =gUnknown_030033F4
	ldr r0, [r0]
	cmp r0, #0
	bne _0801137C
	adds r0, r4, #0
	bl sub_8010B8A
_0801137C
	movs r0, #1
	b _08011198
	ALIGN
_08011380 DCDU 0x0001FEEF
_08011384 DCDU gUnknown_030033F4
_08011388 DCDU 0x0000064C
_0801138C DCDU gUnknown_0804AE80
_08011390 DCDU gUnknown_03003E98

	thumb_func_start sub_8011394
sub_8011394 ;@ 0x08011394
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08011494 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B09A
	ldr r1, _08011498 ;@ =0x00011760
	adds r5, r0, #0
	adds r0, r0, r1
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r1, r6, r1
	ldr r2, [r1, #0x3c]
	movs r3, #0xee
	muls r2, r3
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0xf
	adds r2, r3, r2
	asrs r2, r2, #0x11
	movs r3, #0xee
	subs r2, r3, r2
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r3, #5
	ldr r7, _0801149C ;@ =0x00007FFF
	movs r4, #1
_080113C8
	strh r7, [r2]
	strh r4, [r2, #2]
	subs r2, #0xff
	subs r2, #0xe1
	subs r3, #1
	cmp r3, #0
	bne _080113C8
	ldr r2, [r6, #0x58]
	movs r3, #0xee
	muls r2, r3
	lsrs r2, r2, #0x11
	lsls r2, r2, #1
	adds r2, r2, r0
	movs r0, #5
	movs r3, #0x1f
_080113E6
	strh r3, [r2]
	subs r2, #0xff
	subs r2, #0xe1
	subs r0, #1
	cmp r0, #0
	bne _080113E6
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r2, r6, r0
	ldrb r0, [r2, #0xd]
	ldrb r2, [r2, #0xe]
	cmp r0, r2
	bls _08011404
	subs r6, r0, r2
	b _08011408
_08011404
	adds r0, #0xb
	subs r6, r0, r2
_08011408
	ldr r2, [r1, #0x2c]
	movs r0, #0
	cmp r2, #0
	beq _0801141E
	ldr r0, [r1, #0x28]
	movs r1, #0x13
	subs r0, r2, r0
	muls r1, r0
	adds r0, r2, #0
	bl sub_803C124
_0801141E
	adds r7, r0, #0
	ldr r0, _080114A0 ;@ =0x000120C0
	adds r5, r5, r0
	movs r0, #0xee
	muls r0, r6
	bl sub_80405D8
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r2, _080114A4 ;@ =0x000003FF
	movs r1, #5
_08011436
	strh r2, [r0]
	strh r4, [r0, #2]
	subs r0, #0xff
	subs r0, #0xe1
	subs r1, #1
	cmp r1, #0
	bne _08011436
	adds r1, r5, #0
	adds r1, #0x26
	ldr r2, _080114A8 ;@ =0x00007C1F
	movs r0, #5
_0801144C
	strh r2, [r1]
	subs r1, #0xff
	subs r1, #0xe1
	subs r0, #1
	cmp r0, #0
	bne _0801144C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801145E
sub_801145E ;@ 0x0801145E
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsls r2, r2, #0x1e
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	lsrs r2, r2, #0x1e
	adds r3, r2, r1
	asrs r2, r0, #3
	movs r1, #0x1f
	cmp r2, #0x1f
	bge _0801148E
	movs r1, #0
	cmp r0, #0
	blt _0801148E
	ldr r1, _080114AC ;@ =gUnknown_0804AE70
	lsls r0, r0, #0x1d
	ldrb r1, [r1, r3]
	lsrs r0, r0, #0x1d
	cmp r1, r0
	bhs _0801148A
	movs r0, #1
	b _0801148C
_0801148A
	movs r0, #0
_0801148C
	adds r1, r0, r2
_0801148E
	adds r0, r1, #0
	bx lr
	ALIGN
_08011494 DCDU gUnknown_03003E98
_08011498 DCDU 0x00011760
_0801149C DCDU 0x00007FFF
_080114A0 DCDU 0x000120C0
_080114A4 DCDU 0x000003FF
_080114A8 DCDU 0x00007C1F
_080114AC DCDU gUnknown_0804AE70

	thumb_func_start sub_80114B0
sub_80114B0 ;@ 0x080114B0
	push {r3, r4}
	ldr r3, _08011730 ;@ =gUnknown_030034FC
	ldr r2, _0801172C ;@ =gUnknown_03002D28
	mov r4, sp
	str r2, [r3, #8]
	movs r2, #0
	str r2, [sp]
	ldr r2, _08011734 ;@ =0x040000D4
	str r4, [r2]
	ldr r4, _08011730 ;@ =gUnknown_030034FC
	adds r4, #0x24
	str r4, [r2, #4]
	ldr r4, _08011738 ;@ =0x85000008
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _0801173C ;@ =gUnknown_03003BC8
	str r4, [r2, #4]
	ldr r4, _08011740 ;@ =0x8500001A
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _08011730 ;@ =gUnknown_030034FC
	adds r4, #0x1c
	str r4, [r2, #4]
	ldr r4, _08011744 ;@ =0x85000002
	str r4, [r2, #8]
	ldr r2, [r2, #8]
	stm r3!, {r0, r1}
	pop {r3, r4}
	bx lr

	non_word_aligned_thumb_func_start sub_80114FA
sub_80114FA ;@ 0x080114FA
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _08011730 ;@ =gUnknown_030034FC
	adds r1, r0, #0
	adds r7, #0x24
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _0801155C
	movs r0, #0x1f
	ldrb r0, [r0, r7]
	movs r4, #1
	lsls r4, r4, #9
	cmp r0, #2
	bls _08011516
	lsls r4, r0, #8
_08011516
	cmp r1, #0
	bne _0801151C
	lsrs r1, r4, #5
_0801151C
	lsls r0, r4, #4
	bl sub_803D46C
	subs r1, r4, r0
	lsrs r5, r1, #1
	adds r6, r5, r0
	subs r4, #1
	bmi _0801155C
	subs r0, r6, r5
	str r0, [sp]
_08011530
	cmp r4, r5
	bge _0801153C
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	strb r1, [r0, r4]
	b _08011558
_0801153C
	cmp r4, r6
	blt _08011548
	ldr r0, [r7, #0x14]
	movs r1, #0x7f
	strb r1, [r0, r4]
	b _08011558
_08011548
	subs r0, r4, r5
	lsls r0, r0, #8
	ldr r1, [sp]
	bl sub_803D46C
	ldr r1, [r7, #0x14]
	adds r0, #0x80
	strb r0, [r1, r4]
_08011558
	subs r4, #1
	bpl _08011530
_0801155C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08011562
	ldr r0, _08011748 ;@ =0x04000080
	movs r1, #0
	strh r1, [r0, #4]
	ldr r2, _08011730 ;@ =gUnknown_030034FC
	adds r2, #0x24
	ldrh r0, [r2, #0x10]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strh r0, [r2, #0x10]
	ldr r0, _0801172C ;@ =gUnknown_03002D28
	subs r2, #0x24
	str r0, [r2, #8]
	ldr r0, _0801174C ;@ =0x04000100
	str r1, [r0]
	ldr r0, _08011750 ;@ =0x040000C0
	ldr r1, [r0, #4]
	cmp r1, #0
	bge _08011594
	ldr r1, _08011754 ;@ =0x84400004
	str r1, [r0, #4]
	mov r8, r8
	mov r8, r8
	movs r1, #0x11
	lsls r1, r1, #6
	strh r1, [r0, #6]
_08011594
	bx lr

	non_word_aligned_thumb_func_start sub_8011596
sub_8011596 ;@ 0x08011596
	push {r4, r5, r6, r7}
	ldr r5, _08011730 ;@ =gUnknown_030034FC
	adds r5, #0x34
	ldrb r2, [r5, #0xf]
	cmp r0, #0xe
	bls _080115A6
	movs r0, #0xe
	b _080115CA
_080115A6
	ldr r3, _08011730 ;@ =gUnknown_030034FC
	ldrb r1, [r5, #0xe]
	adds r3, #0x24
	cmp r1, r0
	bls _080115CA
	ldrh r6, [r3, #0x12]
	adds r1, r2, r0
	cmp r6, r1
	bls _080115CA
	ldr r7, _08011758 ;@ =gUnknown_030037A0
	movs r4, #1
_080115BC
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r7
	adds r1, #1
	cmp r6, r1
	strh r4, [r3, #4]
	bhi _080115BC
_080115CA
	ldr r3, _08011730 ;@ =gUnknown_030034FC
	movs r1, #0xe
	subs r1, r1, r2
	adds r3, #0x24
	cmp r1, r0
	bhs _080115D8
	adds r0, r1, #0
_080115D8
	strb r0, [r5, #0xe]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x12]
	bne _080115E8
	pop {r4, r5, r6, r7}
	b _08011562
_080115E8
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_80115EC
sub_80115EC ;@ 0x080115EC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08011730 ;@ =gUnknown_030034FC
	adds r4, r0, #0
	adds r6, #0x24
	adds r5, r6, #0
	adds r5, #0x10
	ldrb r1, [r5, #0xf]
	adds r0, r5, #0
	ldrb r2, [r0, #0xe]
	ldr r7, _08011758 ;@ =gUnknown_030037A0
	cmp r1, r4
	bls _08011646
	cmp r2, #0
	beq _0801162A
	movs r3, #0x4c
	muls r1, r3
	ldr r0, _08011734 ;@ =0x040000D4
	adds r1, r1, r7
	str r1, [r0]
	adds r1, r4, #0
	muls r1, r3
	adds r1, r1, r7
	str r1, [r0, #4]
	ldrb r1, [r5, #0xe]
	movs r2, #0x21
	muls r1, r3
	lsrs r1, r1, #2
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0801162A
	ldrb r0, [r5, #0xe]
	ldrh r2, [r6, #0x12]
	adds r0, r0, r4
	cmp r2, r0
	bls _0801167C
	movs r1, #1
_08011636
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r7
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi _08011636
	b _0801167C
_08011646
	cmp r1, r4
	bhs _0801167C
	cmp r4, #7
	bls _08011650
	movs r4, #7
_08011650
	movs r0, #0xe
	subs r0, r0, r4
	cmp r2, r0
	bhs _0801165A
	adds r0, r2, #0
_0801165A
	movs r3, #0x4c
	adds r1, r1, r0
	adds r2, r4, r0
	muls r1, r3
	adds r1, r1, r7
	muls r2, r3
	adds r2, r2, r7
	muls r3, r0
	beq _08011678
_0801166C
	subs r1, #4
	ldr r7, [r1]
	subs r2, #4
	str r7, [r2]
	subs r3, #4
	bne _0801166C
_08011678
	bl sub_8011596
_0801167C
	strb r4, [r5, #0xf]
	ldrb r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r6, #0x12]
	cmp r4, #0
	beq _080116CC
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x14]
	movs r2, #1
	subs r0, r0, r1
	lsls r0, r0, #1
	lsls r2, r2, #9
	cmp r4, #2
	bls _0801169A
	lsls r2, r4, #8
_0801169A
	adds r4, r2, #0
	cmp r0, r2
	beq _080116C0
	ldr r5, _08011730 ;@ =gUnknown_030034FC
	cmp r1, #0
	beq _080116AE
	movs r0, #0
	ldr r2, [r5, #4]
	bl sub_803B8CC
_080116AE
	adds r1, r4, #0
	movs r0, #0
	ldr r2, [r5]
	bl sub_803B8CC
	lsrs r1, r4, #1
	str r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #8]
_080116C0
	ldrh r0, [r6, #0x1c]
	bl sub_80114FA
_080116C6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080116CC
	ldr r1, _0801173C ;@ =gUnknown_03003BC8
	movs r0, #0
	strh r0, [r1]
	b _080116C6

	thumb_func_start sub_80116D4
sub_80116D4 ;@ 0x080116D4
	ldr r2, _08011730 ;@ =gUnknown_030034FC
	push {r3, r4, r5, lr}
	adds r2, #0x34
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq _080116F2
	ldr r4, _08011758 ;@ =gUnknown_030037A0
	movs r1, #1
_080116E4
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	strh r1, [r3, #4]
	cmp r0, #0
	bne _080116E4
_080116F2
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _080116FC
	bl _08011562
_080116FC
	movs r0, #0
	bl sub_80115EC
	ldr r5, _0801173C ;@ =gUnknown_03003BC8
	movs r4, #0
	strh r4, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	beq _08011714
	ldrh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	strh r4, [r5, #0x12]
_08011714
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _08011726
	ldr r2, _08011730 ;@ =gUnknown_030034FC
	movs r0, #2
	ldr r2, [r2, #4]
	bl sub_803B8CC
	str r4, [r5, #0x24]
_08011726
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801172C DCDU gUnknown_03002D28
_08011730 DCDU gUnknown_030034FC
_08011734 DCDU 0x040000D4
_08011738 DCDU 0x85000008
_0801173C DCDU gUnknown_03003BC8
_08011740 DCDU 0x8500001A
_08011744 DCDU 0x85000002
_08011748 DCDU 0x04000080
_0801174C DCDU 0x04000100
_08011750 DCDU 0x040000C0
_08011754 DCDU 0x84400004
_08011758 DCDU gUnknown_030037A0

	thumb_func_start sub_801175C
sub_801175C ;@ 0x0801175C
	push {r3, r4, r5, lr}
	bl _08011562
	bl sub_80116D4
	ldr r5, _08011A10 ;@ =gUnknown_03003BC8
	ldr r4, _08011A14 ;@ =gUnknown_030034FC
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0801177A
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r4, #4]
	bl sub_803B8CC
_0801177A
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0801178A
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r4, #4]
	bl sub_803B8CC
_0801178A
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #0x24
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0801179E
	adds r1, r0, #0
	movs r0, #0
	ldr r2, [r4, #4]
	bl sub_803B8CC
_0801179E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80117A4
sub_80117A4 ;@ 0x080117A4
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #0x24
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_80117B0
sub_80117B0 ;@ 0x080117B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _08011A18 ;@ =0x000046ED
	adds r4, r0, #0
	cmp r0, r2
	bls _080117BC
	adds r4, r2, #0
_080117BC
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08011A1C ;@ =0x00001666
	adds r1, #0x24
	strh r0, [r1, #0x18]
	cmp r4, r3
	beq _08011820
	ldr r3, _08011A20 ;@ =0x00002910
	cmp r4, r3
	beq _0801182A
	ldr r3, _08011A24 ;@ =0x00003442
	cmp r4, r3
	beq _08011834
	cmp r4, r2
	bne _080117E8
	movs r2, #0xe7
	lsls r2, r2, #2
	strh r2, [r1, #0x1a]
	movs r2, #0xff
	adds r2, #0x31
	str r2, [r1, #0xc]
_080117E8
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	adds r1, #0x24
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #0x1f
	bpl _08011892
	ldr r6, _08011A10 ;@ =gUnknown_03003BC8
	ldr r5, _08011A14 ;@ =gUnknown_030034FC
	ldrh r1, [r6]
	adds r5, #0x34
	ldr r7, _08011A28 ;@ =gUnknown_030037A0
	lsls r1, r1, #0x1f
	cmp r1, #0
	bge _08011850
	ldrb r1, [r6, #0xb]
	ldr r3, _08011A2C ;@ =0x00333333
	adds r4, r7, #0
	muls r1, r3
	lsrs r1, r1, #0x17
	bl sub_803D46C
	strh r0, [r6, #0xe]
	movs r0, #0
	strh r0, [r6, #0x10]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _08011850
	movs r2, #8
	b _0801183E
_08011820
	ldr r2, _08011A30 ;@ =0x00000B6E
	strh r2, [r1, #0x1a]
	movs r2, #0x60
	str r2, [r1, #0xc]
	b _080117E8
_0801182A
	ldr r2, _08011A34 ;@ =0x0000063C
	strh r2, [r1, #0x1a]
	movs r2, #0xb0
	str r2, [r1, #0xc]
	b _080117E8
_08011834
	ldr r2, _08011A38 ;@ =0x000004E6
	strh r2, [r1, #0x1a]
	movs r2, #0xe0
	str r2, [r1, #0xc]
	b _080117E8
_0801183E
	ldrh r1, [r4, #4]
	lsls r3, r1, #0x1f
	bmi _08011848
	orrs r1, r2
	strh r1, [r4, #4]
_08011848
	subs r0, #1
	adds r4, #0x4c
	cmp r0, #0
	bne _0801183E
_08011850
	ldrb r1, [r5, #0xf]
	movs r3, #0x4c
	ldrb r2, [r5, #0xe]
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	muls r1, r3
	adds r1, r1, r7
	adds r0, #0x24
	cmp r2, #0
	beq _0801187A
	ldrh r4, [r0, #0x1a]
_08011864
	ldr r3, [r1, #4]
	lsls r3, r3, #0x1f
	bmi _08011872
	ldr r3, [r1, #0x14]
	muls r3, r4
	lsrs r3, r3, #8
	str r3, [r1, #0x44]
_08011872
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne _08011864
_0801187A
	ldrh r1, [r0, #0x18]
	movs r0, #1
	lsls r0, r0, #0x18
	bl sub_803D46C
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C ;@ =0x04000100
	str r0, [r1]
_08011892
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8011898
sub_8011898 ;@ 0x08011898
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _08011A40 ;@ =0x04000200
	ldrh r2, [r0, #8]
	movs r1, #0
	strh r1, [r0, #8]
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	adds r1, #0x24
	ldrh r4, [r1, #0x10]
	lsls r0, r4, #0x1f
	bpl _080118EA
	ldr r0, _08011A44 ;@ =0x040000C0
	ldr r3, [r0, #0x10]
	cmp r3, #0
	bge _080118BE
	ldr r3, _08011A48 ;@ =0x84400004
	str r3, [r0, #0x10]
	movs r3, #0x11
	lsls r3, r3, #6
	strh r3, [r0, #0x12]
_080118BE
	ldr r0, _08011A4C ;@ =0x00000B0C
	ldr r3, _08011A50 ;@ =0x04000080
	strh r0, [r3, #2]
	ldr r0, _08011A54 ;@ =gUnknown_03002D2C
	ldr r3, _08011A14 ;@ =gUnknown_030034FC
	str r0, [r3, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	beq _080118EA
	ldr r5, _08011A28 ;@ =gUnknown_030037A0
_080118D2
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r6, r3, r5
	ldrh r3, [r6, #4]
	lsls r7, r3, #0x1f
	bmi _080118E6
	movs r7, #0x10
	orrs r3, r7
	strh r3, [r6, #4]
_080118E6
	cmp r0, #0
	bne _080118D2
_080118EA
	ldr r0, _08011A58 ;@ =gUnknown_03002DE4
	ldr r3, _08011A14 ;@ =gUnknown_030034FC
	str r0, [r3, #0x10]
	ldr r0, _08011A5C ;@ =gUnknown_03002D74
	str r0, [r3, #0x14]
	ldr r0, _08011A60 ;@ =gUnknown_03002DAC
	str r0, [r3, #0x18]
	ldr r0, _08011A64 ;@ =gUnknown_03002D48
	str r0, [r3, #0xc]
	ldr r0, _08011A40 ;@ =0x04000200
	strh r2, [r0, #8]
	movs r0, #0
	orrs r0, r4
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x1c]
	bl sub_80114FA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011912
sub_8011912 ;@ 0x08011912
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	bl _08011562
	movs r0, #0xd
	ldr r2, _08011A28 ;@ =gUnknown_030037A0
	movs r1, #1
_08011924
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	strh r1, [r3, #4]
	subs r0, #1
	bpl _08011924
	movs r0, #1
	ldr r1, _08011A50 ;@ =0x04000080
	lsls r0, r0, #9
	strh r0, [r1, #8]
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #0x24
	strh r4, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_8011898
	adds r0, r6, #0
	bl sub_80117B0
	movs r0, #4
	bl sub_80115EC
	movs r0, #0
	bl sub_80115EC
	movs r0, #0xff
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	adds r0, #1
	adds r1, #0x1c
	str r0, [r1, #4]
	ldr r1, _08011A10 ;@ =gUnknown_03003BC8
	strh r0, [r1, #0x16]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801196A
sub_801196A ;@ 0x0801196A
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	push {r3, lr}
	adds r1, #0x24
	strh r0, [r1, #0x1c]
	bl sub_80114FA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_801197C
sub_801197C ;@ 0x0801197C
	push {r3, r4, r5, lr}
	ldr r4, _08011A14 ;@ =gUnknown_030034FC
	adds r4, #0x24
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0x1f
	bmi _08011A0A
	movs r0, #0
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68 ;@ =0x0500004C
	adds r1, #0x44
	bl sub_803D468
	movs r0, #0
	ldr r5, _08011A6C ;@ =gUnknown_03003670
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68 ;@ =0x0500004C
	adds r1, r5, #0
	bl sub_803D468
	ldr r0, _08011A14 ;@ =gUnknown_030034FC
	movs r2, #1
	adds r0, #0x44
	str r0, [r4, #4]
	ldrh r0, [r4, #0x10]
	ldr r3, _08011A70 ;@ =0x04000083
	adds r1, r4, #0
	orrs r0, r2
	strh r0, [r4, #0x10]
	ldrb r0, [r3]
	movs r2, #8
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	subs r4, r3, #3
_080119C6
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	ldr r2, [r5, r2]
	lsrs r0, r0, #0x18
	cmp r0, #8
	str r2, [r4, #0x20]
	blo _080119C6
	ldr r0, _08011A74 ;@ =0x040000BC
	adds r5, #0x20
	str r5, [r0]
	ldr r2, _08011A78 ;@ =0x040000A0
	str r2, [r0, #4]
	ldr r2, _08011A7C ;@ =0xB6400004
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r1, [r1, #0x18]
	lsls r0, r2, #0x16
	bl sub_803D46C
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C ;@ =0x04000100
	str r0, [r1]
	movs r0, #0x80
	strh r0, [r4, #4]
	ldr r0, _08011A4C ;@ =0x00000B0C
	strh r0, [r4, #2]
	ldr r0, _08011A54 ;@ =gUnknown_03002D2C
	ldr r1, _08011A14 ;@ =gUnknown_030034FC
	str r0, [r1, #8]
_08011A0A
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08011A10 DCDU gUnknown_03003BC8
_08011A14 DCDU gUnknown_030034FC
_08011A18 DCDU 0x000046ED
_08011A1C DCDU 0x00001666
_08011A20 DCDU 0x00002910
_08011A24 DCDU 0x00003442
_08011A28 DCDU gUnknown_030037A0
_08011A2C DCDU 0x00333333
_08011A30 DCDU 0x00000B6E
_08011A34 DCDU 0x0000063C
_08011A38 DCDU 0x000004E6
_08011A3C DCDU 0x04000100
_08011A40 DCDU 0x04000200
_08011A44 DCDU 0x040000C0
_08011A48 DCDU 0x84400004
_08011A4C DCDU 0x00000B0C
_08011A50 DCDU 0x04000080
_08011A54 DCDU gUnknown_03002D2C
_08011A58 DCDU gUnknown_03002DE4
_08011A5C DCDU gUnknown_03002D74
_08011A60 DCDU gUnknown_03002DAC
_08011A64 DCDU gUnknown_03002D48
_08011A68 DCDU 0x0500004C
_08011A6C DCDU gUnknown_03003670
_08011A70 DCDU 0x04000083
_08011A74 DCDU 0x040000BC
_08011A78 DCDU 0x040000A0
_08011A7C DCDU 0xB6400004

	thumb_func_start sub_8011A80
sub_8011A80 ;@ 0x08011A80
	ldr r1, _08011D18 ;@ =gUnknown_03003520
	push {r4, r5, r6}
	ldrh r0, [r1, #0x10]
	lsls r2, r0, #0x1f
	bpl _08011ABE
	ldr r2, _08011D1C ;@ =0x84400004
	ldr r3, _08011D20 ;@ =0x040000C0
	str r2, [r3, #4]
	mov r8, r8
	mov r8, r8
	movs r2, #0x11
	lsls r2, r2, #6
	adds r4, r3, #0
	strh r2, [r4, #6]
	ldr r4, _08011D18 ;@ =gUnknown_03003520
	lsls r2, r0, #0x1e
	adds r4, #0x20
	cmp r2, #0
	ldr r5, _08011D24 ;@ =0x04000080
	ldr r6, _08011D28 ;@ =gUnknown_03003670
	bge _08011AB0
	str r6, [r5, #0x3c]
	str r4, [r1, #4]
	b _08011AB4
_08011AB0
	str r4, [r5, #0x3c]
	str r6, [r1, #4]
_08011AB4
	ldr r2, _08011D2C ;@ =0x0000B660
	strh r2, [r3, #6]
	movs r2, #2
	eors r0, r2
	strh r0, [r1, #0x10]
_08011ABE
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_8011AC2
sub_8011AC2 ;@ 0x08011AC2
	push {r4, r5, r6, lr}
	ldr r5, _08011D30 ;@ =gUnknown_03003BC8
	ldr r6, _08011D18 ;@ =gUnknown_03003520
	adds r4, r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	subs r6, #0x24
	cmp r0, #0
	beq _08011ADE
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r6, #4]
	bl sub_803B8CC
_08011ADE
	ldrb r0, [r4, #2]
	ldr r2, [r6]
	lsls r1, r0, #2
	movs r0, #1
	bl sub_803B8CC
	str r0, [r5, #0x20]
	ldrb r0, [r4, #3]
	ldrb r2, [r4, #2]
	lsls r0, r0, #2
	adds r1, r0, r4
	adds r1, #4
	movs r0, #0
	cmp r2, #0
	bls _08011B14
_08011AFC
	ldr r2, [r5, #0x20]
	lsls r3, r0, #2
	str r1, [r2, r3]
	ldr r2, [r1]
	adds r0, #1
	adds r2, #0x7f
	lsrs r2, r2, #2
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r2, [r4, #2]
	cmp r2, r0
	bhi _08011AFC
_08011B14
	ldr r1, _08011D30 ;@ =gUnknown_03003BC8
	movs r0, #0
	adds r1, #0x68
	strb r0, [r1, #7]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011B22
sub_8011B22 ;@ 0x08011B22
	ldr r1, _08011D30 ;@ =gUnknown_03003BC8
	str r0, [r1, #0x2c]
	bx lr

	thumb_func_start sub_8011B28
sub_8011B28 ;@ 0x08011B28
	cmp r0, #6
	bhs _08011B5C
	add r3, pc, #0x4 ;@ =_08011B34
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08011B34
	DCB 0x02
_08011B35
	DCB 0x05
_08011B36
	DCB 0x13
_08011B37
	DCB 0x08
_08011B38
	DCB 0x0D
_08011B39
	DCB 0x10
loc_8011b3a
	ldr r0, _08011D30 ;@ =gUnknown_03003BC8
	ldrh r0, [r0, #0xc]
	bx lr
loc_8011b40
	ldr r0, _08011D30 ;@ =gUnknown_03003BC8
	ldrb r0, [r0, #7]
	bx lr
loc_8011b46
	ldr r1, _08011D30 ;@ =gUnknown_03003BC8
	ldr r0, [r1, #0x18]
	ldrb r1, [r1, #7]
	ldrb r0, [r0, r1]
	bx lr
loc_8011b50
	ldr r0, _08011D30 ;@ =gUnknown_03003BC8
	ldrb r0, [r0, #0xb]
	bx lr
loc_8011b56
	ldr r0, _08011D30 ;@ =gUnknown_03003BC8
	ldrb r0, [r0, #0xa]
	bx lr
_08011B5C
	movs r0, #0
	mvns r0, r0
	bx lr

	non_word_aligned_thumb_func_start sub_8011B62
sub_8011B62 ;@ 0x08011B62
	push {r4, lr}
	cmp r0, #8
	bhs _08011B7C
	add r3, pc, #0x4 ;@ =_08011B70
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08011B70
	DCB 0x03
_08011B71
	DCB 0x08
_08011B72
	DCB 0x0D
_08011B73
	DCB 0x05
_08011B74
	DCB 0x24
_08011B75
	DCB 0x05
_08011B76
	DCB 0x32
_08011B77
	DCB 0x3F
loc_8011b78
	ldr r0, _08011D30 ;@ =gUnknown_03003BC8
	strh r1, [r0, #0xc]
_08011B7C
	pop {r4}
	pop {r3}
	bx r3
loc_8011b82
	adds r0, r1, #0
	ldr r1, _08011D30 ;@ =gUnknown_03003BC8
	adds r0, #0xff
	strb r0, [r1, #7]
	b _08011B7C
loc_8011b8c
	ldr r0, _08011D18 ;@ =gUnknown_03003520
	adds r0, #0x10
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _08011BA8
	movs r3, #0x4c
	muls r0, r3
	ldr r3, _08011D34 ;@ =gUnknown_030037A0
	adds r0, r0, r3
	movs r2, #1
_08011BA0
	subs r0, #0x4c
	strh r2, [r0, #4]
	cmp r0, r3
	bhi _08011BA0
_08011BA8
	lsrs r0, r1, #0x10
	ldr r2, _08011D30 ;@ =gUnknown_03003BC8
	adds r0, #0xff
	strb r0, [r2, #7]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040C38
	b _08011B7C
loc_8011bba
	cmp r1, #0xff
	bls _08011BC0
	movs r1, #0xff
_08011BC0
	ldr r0, _08011D38 ;@ =0x00333333
	ldr r4, _08011D30 ;@ =gUnknown_03003BC8
	muls r0, r1
	strb r1, [r4, #0xb]
	lsrs r1, r0, #0x17
	ldr r0, _08011D18 ;@ =gUnknown_03003520
	ldrh r0, [r0, #0x18]
	bl sub_803D46C
	strh r0, [r4, #0xe]
	b _08011B7C
loc_8011bd6
	ldr r0, _08011D34 ;@ =gUnknown_030037A0
	cmp r1, #0
	beq _08011B7C
	movs r3, #2
_08011BDE
	lsls r2, r1, #0x1f
	bpl _08011BE8
	ldrh r2, [r0, #4]
	orrs r2, r3
	strh r2, [r0, #4]
_08011BE8
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne _08011BDE
	b _08011B7C
loc_8011bf0
	ldr r0, _08011D34 ;@ =gUnknown_030037A0
	cmp r1, #0
	beq _08011B7C
	movs r3, #2
_08011BF8
	lsls r2, r1, #0x1f
	bpl _08011C02
	ldrh r2, [r0, #4]
	bics r2, r3
	strh r2, [r0, #4]
_08011C02
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne _08011BF8
	b _08011B7C
_08011C0A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08011D30 ;@ =gUnknown_03003BC8
	adds r5, r1, #0
	lsls r1, r1, #0x17
	movs r7, #0
	adds r0, #0x68
	cmp r1, #0
	blt _08011C20
	strb r7, [r0, #7]
	str r4, [r0]
_08011C20
	ldr r6, _08011D30 ;@ =gUnknown_03003BC8
	ldrh r1, [r6]
	lsls r1, r1, #0x1f
	bpl _08011C44
	lsls r1, r5, #0x17
	bpl _08011C40
	ldrh r1, [r6, #0xc]
	strh r1, [r0, #4]
	ldrb r1, [r6, #7]
	strb r1, [r0, #6]
	ldrb r1, [r6, #0xb]
	strb r1, [r0, #7]
	ldrb r1, [r6, #4]
	strb r1, [r0, #8]
	ldrb r1, [r6, #0xa]
	strb r1, [r0, #9]
_08011C40
	bl sub_80116D4
_08011C44
	ldr r6, _08011D30 ;@ =gUnknown_03003BC8
	movs r0, #0
	strb r7, [r6, #3]
	strh r0, [r6, #0x10]
	strb r0, [r6, #0xa]
	ldrb r0, [r4, #5]
	ldr r3, _08011D38 ;@ =0x00333333
	strb r0, [r6, #0xb]
	ldrb r0, [r4, #4]
	strb r0, [r6, #4]
	ldrb r0, [r4]
	strb r0, [r6, #2]
	ldrb r0, [r4, #5]
	muls r0, r3
	lsrs r1, r0, #0x17
	ldr r0, _08011D18 ;@ =gUnknown_03003520
	ldrh r0, [r0, #0x18]
	bl sub_803D46C
	strh r0, [r6, #0xe]
	movs r0, #0xff
	strb r0, [r6, #7]
	adds r0, r4, #0
	adds r0, #8
	str r0, [r6, #0x18]
	ldrb r0, [r4, #1]
	adds r0, #0xff
	strb r0, [r6, #8]
	ldrb r0, [r4, #2]
	strb r0, [r6, #9]
	ldrb r0, [r4]
	lsls r3, r0, #2
	adds r0, r3, r0
	adds r0, #7
	lsrs r0, r0, #3
	strb r0, [r6, #6]
	ldr r0, [r6, #0x24]
	ldr r6, _08011D18 ;@ =gUnknown_03003520
	subs r6, #0x24
	cmp r0, #0
	beq _08011CA0
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r6, #4]
	bl sub_803B8CC
_08011CA0
	ldrb r0, [r4, #3]
	ldr r2, [r6]
	lsls r1, r0, #2
	movs r0, #2
	bl sub_803B8CC
	ldr r6, _08011D30 ;@ =gUnknown_03003BC8
	str r0, [r6, #0x24]
	ldrb r1, [r4, #1]
	ldr r2, [r6, #0x18]
	adds r1, #3
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, r2, r1
	str r1, [r0]
	ldrb r1, [r4, #3]
	movs r0, #1
	cmp r1, #1
	bls _08011CE2
_08011CC6
	ldr r1, [r6, #0x24]
	lsls r2, r0, #2
	adds r3, r1, r2
	subs r3, #0x40
	ldr r3, [r3, #0x3c]
	adds r0, #1
	ldr r7, [r3]
	lsls r7, r7, #2
	adds r3, r3, r7
	adds r3, #4
	str r3, [r1, r2]
	ldrb r1, [r4, #3]
	cmp r1, r0
	bhi _08011CC6
_08011CE2
	movs r0, #0
	bl sub_8040C38
	ldrb r0, [r4]
	bl sub_80115EC
	ldr r1, _08011D18 ;@ =gUnknown_03003520
	movs r0, #0
	adds r1, #0x10
	ldrb r2, [r1, #0xf]
	cmp r2, #0
	bls _08011D0C
	ldr r4, _08011D34 ;@ =gUnknown_030037A0
	movs r1, #1
_08011CFE
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi _08011CFE
_08011D0C
	bl sub_801197C
	strh r5, [r6]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08011D18 DCDU gUnknown_03003520
_08011D1C DCDU 0x84400004
_08011D20 DCDU 0x040000C0
_08011D24 DCDU 0x04000080
_08011D28 DCDU gUnknown_03003670
_08011D2C DCDU 0x0000B660
_08011D30 DCDU gUnknown_03003BC8
_08011D34 DCDU gUnknown_030037A0
_08011D38 DCDU 0x00333333

	thumb_func_start sub_8011D3C
sub_8011D3C ;@ 0x08011D3C
	adds r1, r0, #0
	ldr r0, _0801209C ;@ =gUnknown_03003BC8
	lsls r2, r1, #0x18
	ldr r0, [r0, #0x1c]
	lsrs r2, r2, #0x16
	adds r2, r0, r2
	ldr r2, [r2, #4]
	lsrs r1, r1, #8
	adds r0, r2, r0
	movs r2, #1
	lsls r1, r1, #8
	orrs r1, r2
	b _08011C0A

	non_word_aligned_thumb_func_start sub_8011D56
sub_8011D56 ;@ 0x08011D56
	ldr r1, _0801209C ;@ =gUnknown_03003BC8
	push {r3, r4, r5}
	ldrh r0, [r1]
	lsls r2, r0, #0x1f
	bpl _08011DAE
	movs r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _080120A0 ;@ =gUnknown_03003530
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08011D84
	ldr r4, _080120A4 ;@ =gUnknown_030037A0
_08011D70
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r3, #4
	ldrh r5, [r3]
	orrs r5, r2
	strh r5, [r3]
	cmp r0, #0
	bne _08011D70
_08011D84
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _08011DAE
	str r0, [sp]
	ldr r0, _080120A8 ;@ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _080120A0 ;@ =gUnknown_03003530
	adds r1, #0x10
	str r1, [r0, #4]
	ldr r1, _080120AC ;@ =0x8500004C
	str r1, [r0, #8]
	ldr r2, [r0, #8]
	movs r2, #0
	str r2, [sp]
	mov r2, sp
	str r2, [r0]
	ldr r2, _080120B0 ;@ =gUnknown_03003670
	str r2, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08011DAE
	pop {r3, r4, r5}
	bx lr

	non_word_aligned_thumb_func_start sub_8011DB2
sub_8011DB2 ;@ 0x08011DB2
	ldr r2, _0801209C ;@ =gUnknown_03003BC8
	push {r4}
	ldrh r0, [r2]
	lsls r1, r0, #0x1e
	bpl _08011DE0
	movs r1, #2
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080120A0 ;@ =gUnknown_03003530
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _08011DE0
	ldr r2, _080120A4 ;@ =gUnknown_030037A0
_08011DCC
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	adds r3, #4
	ldrh r4, [r3]
	bics r4, r1
	strh r4, [r3]
	cmp r0, #0
	bne _08011DCC
_08011DE0
	pop {r4}
	bx lr

	thumb_func_start sub_8011DE4
sub_8011DE4 ;@ 0x08011DE4
	ldr r3, _0801209C ;@ =gUnknown_03003BC8
	push {r4}
	movs r2, #0
	strh r2, [r3, #0x12]
	strh r0, [r3, #0x16]
	ldr r0, _080120A0 ;@ =gUnknown_03003530
	ldr r1, _080120A4 ;@ =gUnknown_030037A0
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _08011E0C
	movs r3, #0x10
_08011DFA
	ldrh r2, [r1, #4]
	lsls r4, r2, #0x1f
	bmi _08011E04
	orrs r2, r3
	strh r2, [r1, #4]
_08011E04
	subs r0, #1
	adds r1, #0x4c
	cmp r0, #0
	bne _08011DFA
_08011E0C
	pop {r4}
	bx lr

	thumb_func_start sub_8011E10
sub_8011E10 ;@ 0x08011E10
	ldr r1, _0801209C ;@ =gUnknown_03003BC8
	movs r0, #1
	ldrh r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq _08011E20
	movs r0, #0
_08011E20
	bx lr

	non_word_aligned_thumb_func_start sub_8011E22
sub_8011E22 ;@ 0x08011E22
	ldr r0, _0801209C ;@ =gUnknown_03003BC8
	ldrh r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	bne _08011E38
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq _08011E38
	movs r0, #1
	bx lr
_08011E38
	movs r0, #0
	bx lr

	thumb_func_start sub_8011E3C
sub_8011E3C ;@ 0x08011E3C
	ldr r0, _0801209C ;@ =gUnknown_03003BC8
	movs r1, #2
	ldrh r0, [r0]
	ands r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8011E46
sub_8011E46 ;@ 0x08011E46
	ldr r0, _0801209C ;@ =gUnknown_03003BC8
	movs r1, #0xff
	ldrh r0, [r0]
	adds r1, #1
	ands r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8011E52
sub_8011E52 ;@ 0x08011E52
	ldr r1, _0801209C ;@ =gUnknown_03003BC8
	cmp r0, #0
	strh r0, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	strh r2, [r1, #0x14]
	ble _08011E62
	movs r0, #0
	strh r0, [r1, #0x16]
_08011E62
	bx lr

	thumb_func_start sub_8011E64
sub_8011E64 ;@ 0x08011E64
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldrh r5, [r2, #4]
	ldrh r4, [r2, #6]
	ldrh r0, [r2]
	sub sp, #8
	adds r6, r1, #0
	str r0, [sp]
	ldrh r0, [r2, #4]
	adds r7, r2, #0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r0, [r1, #6]
	cmp r5, r4
	beq _08011EA8
	str r1, [sp, #4]
	ldrh r1, [r1, #4]
	ldr r2, [sp]
	subs r2, r2, r1
	mov ip, r2
	lsls r2, r4, #2
	adds r2, r2, r6
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	subs r1, r3, r1
	subs r0, r2, r0
	mov r2, ip
	muls r0, r2
	bl sub_803D46C
	ldr r1, [sp, #4]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r7, #2]
	b _08011EAA
_08011EA8
	strh r0, [r7, #2]
_08011EAA
	lsls r1, r4, #2
	adds r1, r1, r6
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	adds r0, #1
	cmp r1, r0
	bhi _08011F00
	ldrb r1, [r6, #1]
	adds r5, r4, #0
	adds r4, #1
	cmp r1, #0xff
	beq _08011ED8
	ldr r2, [sp, #8]
	lsls r2, r2, #0x1d
	bmi _08011ED8
	cmp r1, r4
	bhs _08011ED8
	adds r4, r1, #0
	adds r5, r1, #0
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b _08011F00
_08011ED8
	ldrb r2, [r6, #2]
	cmp r2, #0xff
	beq _08011EF6
	ldrb r1, [r6, #3]
	cmp r1, r4
	bhs _08011EF6
	adds r5, r2, #0
	cmp r1, r2
	beq _08011EEC
	adds r2, r5, #1
_08011EEC
	adds r4, r2, #0
	lsls r0, r5, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b _08011F00
_08011EF6
	ldrb r1, [r6]
	cmp r1, r4
	bhi _08011F00
	subs r4, #1
	subs r0, #1
_08011F00
	strh r5, [r7, #4]
	strh r4, [r7, #6]
	strh r0, [r7]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011F0E
sub_8011F0E ;@ 0x08011F0E
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0801209C ;@ =gUnknown_03003BC8
	ldrh r0, [r7]
	lsls r1, r0, #0x1d
	bmi _08011FF4
	movs r1, #4
	ldr r5, _080120A0 ;@ =gUnknown_03003530
	orrs r0, r1
	ldr r4, _080120A0 ;@ =gUnknown_03003530
	subs r5, #0x10
	adds r6, r5, #0
	strh r0, [r7]
	movs r1, #0xb
	ands r0, r1
	adds r6, #0x10
	subs r4, #0x34
	cmp r0, #1
	bne _08012016
	ldr r5, [r5, #0xc]
	cmp r5, #0
	beq _08011FD0
_08011F38
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne _0801200E
	ldrh r0, [r7, #0xe]
	movs r3, #0x4c
	ldr r4, _080120A4 ;@ =gUnknown_030037A0
	strh r0, [r7, #0x10]
	ldrb r0, [r6, #0xf]
	muls r0, r3
	adds r0, r0, r4
	cmp r0, r4
	bls _08011F9A
_08011F50
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x1f
	bmi _08011F8A
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _08011F8A
	ldrb r2, [r1, #0x14]
	cmp r2, #0
	beq _08011F8A
	lsls r2, r0, #0x1d
	bpl _08011F7A
	ldr r2, [r4, #0x1c]
	ldr r3, [r1, #0x10]
	subs r2, r2, r3
	ldr r3, _080120B4 ;@ =0x0000FFFF
	str r2, [r4, #0x1c]
	cmp r2, r3
	bls _08011F7A
	movs r0, #1
	strh r0, [r4, #4]
	b _08011F8A
_08011F7A
	movs r2, #0x10
	orrs r0, r2
	adds r2, r4, #0
	adds r1, #0x14
	adds r2, #0x20
	strh r0, [r4, #4]
	bl sub_8011E64
_08011F8A
	ldrb r0, [r6, #0xf]
	movs r3, #0x4c
	ldr r1, _080120A4 ;@ =gUnknown_030037A0
	muls r0, r3
	adds r0, r0, r1
	adds r4, #0x4c
	cmp r0, r4
	bhi _08011F50
_08011F9A
	ldrb r0, [r7, #3]
	cmp r0, #0
	bne _08011FF6
	movs r3, #0x12
	ldrsh r1, [r7, r3]
	cmp r1, #0
	beq _08011FEE
	ldrh r0, [r7, #0x16]
	ldr r2, _080120A4 ;@ =gUnknown_030037A0
	adds r0, r0, r1
	cmp r1, #0
	ble _08011FC0
	ldrh r1, [r7, #0x14]
	cmp r1, r0
	bgt _08011FC0
	strh r1, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
	b _08011FD4
_08011FC0
	cmp r0, #0
	bgt _08011FD2
	bl sub_8011D56
	ldrh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
_08011FD0
	b _0801208C
_08011FD2
	strh r0, [r7, #0x16]
_08011FD4
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq _08011FEE
	movs r3, #0x10
_08011FDC
	ldrh r1, [r2, #4]
	lsls r4, r1, #0x1f
	bmi _08011FE6
	orrs r1, r3
	strh r1, [r2, #4]
_08011FE6
	subs r0, #1
	adds r2, #0x4c
	cmp r0, #0
	bne _08011FDC
_08011FEE
	bl sub_8040C78
	b _08011FFA
_08011FF4
	b _08012094
_08011FF6
	bl sub_80409E4
_08011FFA
	ldrb r0, [r7, #3]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r7, #3]
	ldrb r1, [r7, #4]
	cmp r0, r1
	blo _0801200E
	movs r0, #0
	strb r0, [r7, #3]
_0801200E
	ldrh r0, [r7, #0x10]
	adds r4, r5, #0
	cmp r0, r5
	b _08012018
_08012016
	b _08012038
_08012018
	bhi _0801201C
	adds r4, r0, #0
_0801201C
	subs r5, r5, r4
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	bl sub_80123E4
	adds r0, r4, #0
	ldr r4, _080120A0 ;@ =gUnknown_03003530
	subs r4, #0x34
	ldr r1, [r4, #8]
	bl sub_803B8CA
	cmp r5, #0
	bne _08011F38
	b _0801208C
_08012038
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0801204A
	bl sub_80123E4
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #8]
	bl sub_803B8CA
_0801204A
	ldrh r0, [r7]
	lsls r0, r0, #0x1c
	bpl _0801208C
	ldr r6, _0801209C ;@ =gUnknown_03003BC8
	adds r6, #0x68
	ldrb r4, [r6, #7]
	cmp r4, #0
	beq _08012088
	movs r1, #5
	ldr r0, [r6]
	bl _08011C0A
	ldrb r0, [r6, #6]
	adds r0, #0xff
	strb r0, [r7, #7]
	ldr r0, _080120B8 ;@ =0x00333333
	strb r4, [r7, #0xb]
	muls r0, r4
	lsrs r1, r0, #0x17
	ldrh r0, [r5, #0x18]
	bl sub_803D46C
	strh r0, [r7, #0xe]
	ldrb r0, [r6, #8]
	strb r0, [r7, #4]
	ldrb r0, [r6, #9]
	strb r0, [r7, #0xa]
	ldrh r0, [r6, #4]
	bl sub_8040C38
	b _0801208C
_08012088
	bl sub_80116D4
_0801208C
	ldrh r0, [r7]
	movs r1, #4
	bics r0, r1
	strh r0, [r7]
_08012094
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801209C DCDU gUnknown_03003BC8
_080120A0 DCDU gUnknown_03003530
_080120A4 DCDU gUnknown_030037A0
_080120A8 DCDU 0x040000D4
_080120AC DCDU 0x8500004C
_080120B0 DCDU gUnknown_03003670
_080120B4 DCDU 0x0000FFFF
_080120B8 DCDU 0x00333333

	thumb_func_start sub_80120BC
sub_80120BC ;@ 0x080120BC
	ldr r1, _08012328 ;@ =gUnknown_03003BC8
	movs r0, #0
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq _080120C8
	ldrb r0, [r1, #2]
_080120C8
	bx lr

	non_word_aligned_thumb_func_start sub_80120CA
sub_80120CA ;@ 0x080120CA
	ldr r1, _08012328 ;@ =gUnknown_03003BC8
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq _080120DE
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	bx lr
_080120DE
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_80120E2
sub_80120E2 ;@ 0x080120E2
	ldr r1, _08012328 ;@ =gUnknown_03003BC8
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq _080120F4
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	ldrb r0, [r1, r0]
	bx lr
_080120F4
	ldr r0, _0801232C ;@ =gUnknown_03003530
	ldrb r0, [r0, #0xf]
	bx lr

	non_word_aligned_thumb_func_start sub_80120FA
sub_80120FA ;@ 0x080120FA
	push {r3, r4, r5, lr}
	ldr r5, _0801232C ;@ =gUnknown_03003530
	adds r4, r0, #0
	movs r0, #0x1e
	subs r5, #0x10
	strb r4, [r0, r5]
	ldr r0, _0801232C ;@ =gUnknown_03003530
	subs r0, #0x18
	str r1, [r0]
	adds r0, r4, #0
	bl sub_8011596
	cmp r4, #0
	beq _08012120
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x1f
	bmi _08012120
	bl sub_801197C
_08012120
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8012126
sub_8012126 ;@ 0x08012126
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	adds r4, r1, #0
	adds r0, r2, #0
	bl sub_801234C
	cmp r0, #0
	beq _0801217A
	movs r2, #0
	str r2, [r0, #0x10]
	str r4, [r0, #0x18]
	str r5, [r0, #0xc]
	ldr r5, _0801232C ;@ =gUnknown_03003530
	lsls r3, r6, #1
	subs r5, #0x18
	ldr r1, [r5]
	adds r3, r3, r6
	lsls r3, r3, #2
	ldr r6, [r1, r3]
	adds r6, r6, r1
	str r6, [r0, #8]
	str r2, [r0, #0x40]
	str r6, [r0, #0x48]
	adds r1, r1, r3
	ldr r3, [r1, #4]
	str r2, [r0, #0x30]
	adds r3, r3, r6
	str r3, [r0, #0x3c]
	ldr r1, [r1, #8]
	ldr r3, _0801232C ;@ =gUnknown_03003530
	str r1, [r0, #0x14]
	subs r3, #0x10
	ldrh r3, [r3, #0x1a]
	muls r1, r3
	lsrs r1, r1, #8
	str r1, [r0, #0x44]
	ldr r1, [r5, #4]
	muls r1, r4
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
	str r2, [r0, #4]
_0801217A
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8012180
sub_8012180 ;@ 0x08012180
	ldr r2, _0801232C ;@ =gUnknown_03003530
	push {r4, r5}
	ldrb r1, [r2, #0xf]
	movs r3, #0x4c
	ldrb r2, [r2, #0xe]
	muls r1, r3
	ldr r3, _08012330 ;@ =gUnknown_030037A0
	ldr r5, _0801232C ;@ =gUnknown_03003530
	adds r1, r1, r3
	subs r5, #0x18
	cmp r2, #0
	beq _080121BE
	ldr r4, [r5, #4]
_0801219A
	ldr r3, [r1, #4]
	lsls r3, r3, #0x1f
	bmi _080121B6
	ldr r3, [r1, #0x10]
	cmp r3, #0
	ldr r3, [r1, #0x18]
	beq _080121B0
	muls r3, r4
	lsrs r3, r3, #8
	str r3, [r1, #0x38]
	b _080121B6
_080121B0
	muls r3, r0
	lsrs r3, r3, #8
	str r3, [r1, #0x38]
_080121B6
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne _0801219A
_080121BE
	str r0, [r5, #4]
	pop {r4, r5}
	bx lr

	thumb_func_start sub_80121C4
sub_80121C4 ;@ 0x080121C4
	ldr r1, _0801232C ;@ =gUnknown_03003530
	push {r4, r5, r6}
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	beq _08012208
	ldrb r1, [r1, #0xf]
	adds r2, r1, r2
	cmp r1, r2
	bhs _08012208
	lsls r4, r0, #1
	adds r4, r4, r0
	ldr r0, _0801232C ;@ =gUnknown_03003530
	lsls r4, r4, #2
	subs r0, #0x18
	ldr r0, [r0]
	ldr r5, _08012330 ;@ =gUnknown_030037A0
_080121E4
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r5
	ldrh r6, [r3, #4]
	lsls r6, r6, #0x1e
	bne _08012202
	ldr r6, [r0, r4]
	ldr r3, [r3, #8]
	adds r6, r6, r0
	cmp r6, r3
	bne _08012202
	movs r0, #0
	mvns r0, r0
_080121FE
	pop {r4, r5, r6}
	bx lr
_08012202
	adds r1, #1
	cmp r1, r2
	blo _080121E4
_08012208
	movs r0, #0
	b _080121FE

	thumb_func_start sub_801220C
sub_801220C ;@ 0x0801220C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	bne _08012222
	ldr r0, [r4, #8]
	bl sub_801234C
	cmp r0, #0
	beq _08012286
_08012222
	ldr r5, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, _0801232C ;@ =gUnknown_03003530
	str r1, [r0, #0xc]
	str r4, [r0, #0x10]
	lsls r6, r5, #1
	subs r2, #0x18
	ldr r1, [r2]
	adds r6, r6, r5
	lsls r6, r6, #2
	ldr r3, [r1, r6]
	adds r5, r3, r1
	str r5, [r0, #8]
	movs r3, #0
	str r3, [r0, #0x40]
	str r5, [r0, #0x48]
	adds r1, r1, r6
	ldr r6, [r1, #4]
	adds r7, r6, r5
	str r7, [r0, #0x3c]
	ldr r6, [r4, #0xc]
	cmp r6, #0
	bge _08012254
	str r3, [r0, #0x30]
	b _0801225A
_08012254
	subs r5, r7, r5
	subs r5, r5, r6
	str r5, [r0, #0x30]
_0801225A
	ldr r5, [r4, #0x18]
	cmp r5, #0
	bne _08012262
	ldr r5, [r1, #8]
_08012262
	ldr r1, _0801232C ;@ =gUnknown_03003530
	str r5, [r0, #0x14]
	subs r1, #0x10
	ldrh r1, [r1, #0x1a]
	muls r5, r1
	lsrs r1, r5, #8
	str r1, [r0, #0x44]
	ldr r1, [r4, #0x10]
	str r1, [r0, #0x18]
	ldr r1, [r4, #0x14]
	str r1, [r0, #0x1c]
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #4]
	muls r1, r2
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
	str r3, [r0, #4]
	str r3, [r4]
_08012286
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801228C
sub_801228C ;@ 0x0801228C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _080122EA
	ldr r1, [r0, #4]
	str r1, [r4]
	lsls r1, r1, #0x1f
	bmi _080122EA
	ldr r1, _0801232C ;@ =gUnknown_03003530
	ldr r2, _0801232C ;@ =gUnknown_03003530
	ldr r3, [r4, #0x18]
	subs r1, #0x10
	subs r2, #0x18
	cmp r3, #0
	beq _080122C0
	ldr r5, [r0, #0x14]
	cmp r3, r5
	beq _080122E0
	str r3, [r0, #0x14]
	ldrh r1, [r1, #0x1a]
	muls r3, r1
	lsrs r1, r3, #8
	str r1, [r0, #0x44]
	b _080122E0
_080122C0
	ldr r6, [r4, #4]
	ldr r5, [r2]
	lsls r3, r6, #1
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r3, r5, r3
	ldr r3, [r3, #8]
	ldr r5, [r0, #0x14]
	cmp r3, r5
	beq _080122E0
	str r3, [r4, #0x18]
	str r3, [r0, #0x14]
	ldrh r1, [r1, #0x1a]
	muls r3, r1
	lsrs r1, r3, #8
	str r1, [r0, #0x44]
_080122E0
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #4]
	muls r1, r2
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
_080122EA
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80122F0
sub_80122F0 ;@ 0x080122F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _08012306
	ldr r1, [r0, #4]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #4]
	str r1, [r4]
_08012306
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801230C
sub_801230C ;@ 0x0801230C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _08012322
	ldr r1, [r0, #4]
	movs r2, #2
	bics r1, r2
	str r1, [r0, #4]
	str r1, [r4]
_08012322
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08012328 DCDU gUnknown_03003BC8
_0801232C DCDU gUnknown_03003530
_08012330 DCDU gUnknown_030037A0

	thumb_func_start sub_8012334
sub_8012334 ;@ 0x08012334
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _08012346
	movs r1, #1
	str r1, [r4]
	str r1, [r0, #4]
_08012346
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801234C
sub_801234C ;@ 0x0801234C
	ldr r1, _08012460 ;@ =gUnknown_03003530
	push {r4, r5, r6}
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	beq _080123B0
	ldrb r1, [r1, #0xf]
	ldr r6, _08012464 ;@ =gUnknown_030037A0
	adds r5, r1, #0
	adds r2, r2, r1
	cmp r1, r2
	bhs _08012374
_08012362
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldrh r3, [r3, #4]
	lsls r3, r3, #0x1f
	bmi _08012374
	adds r1, #1
	cmp r1, r2
	blo _08012362
_08012374
	cmp r1, r2
	bne _080123A2
	movs r3, #0x4c
	muls r3, r5
	adds r3, r3, r6
	adds r1, r5, #1
	cmp r1, r2
	ldr r4, [r3, #0xc]
	bhs _0801239C
_08012386
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldr r3, [r3, #0xc]
	cmp r3, r4
	bhs _08012396
	adds r5, r1, #0
	adds r4, r3, #0
_08012396
	adds r1, #1
	cmp r1, r2
	blo _08012386
_0801239C
	cmp r0, r4
	blo _080123AC
	adds r1, r5, #0
_080123A2
	movs r0, #0x4c
	muls r0, r1
	adds r0, r0, r6
_080123A8
	pop {r4, r5, r6}
	bx lr
_080123AC
	movs r0, #0
	b _080123A8
_080123B0
	movs r0, #0
	b _080123A8

	thumb_func_start sub_80123B4
sub_80123B4 ;@ 0x080123B4
	cmp r0, #0
	beq _080123E0
	ldr r2, _08012460 ;@ =gUnknown_03003530
	movs r3, #0x4c
	ldrb r1, [r2, #0xf]
	ldrb r2, [r2, #0xe]
	muls r1, r3
	ldr r3, _08012464 ;@ =gUnknown_030037A0
	adds r1, r1, r3
	cmp r2, #0
	beq _080123DC
_080123CA
	ldr r3, [r1, #0x10]
	cmp r3, r0
	bne _080123D4
	adds r0, r1, #0
	bx lr
_080123D4
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne _080123CA
_080123DC
	movs r1, #1
	str r1, [r0]
_080123E0
	movs r0, #0
	bx lr

	thumb_func_start sub_80123E4
sub_80123E4 ;@ 0x080123E4
	push {r4, r5, r6, r7}
	ldr r1, _08012460 ;@ =gUnknown_03003530
	movs r3, #0x4c
	subs r1, #0x10
	ldrh r0, [r1, #0x12]
	ldr r7, _08012460 ;@ =gUnknown_03003530
	ldr r4, _08012464 ;@ =gUnknown_030037A0
	subs r7, #0x34
	muls r0, r3
	ldr r3, [r7, #0xc]
	adds r0, r0, r4
	str r3, [r0]
	subs r0, #0x4c
	movs r1, #0
	movs r2, #0
	cmp r0, r4
	blo _0801244E
	ldr r4, [r7, #0x10]
	ldr r5, [r7, #0x14]
	ldr r6, [r7, #0x18]
_0801240C
	ldrh r3, [r0, #4]
	lsls r3, r3, #0x1e
	beq _08012436
	ldr r7, _08012460 ;@ =gUnknown_03003530
	ldr r3, [r0, #0x4c]
	subs r7, #0x34
	ldr r7, [r7, #0xc]
	cmp r3, r7
	bne _08012422
	str r3, [r0]
	b _08012432
_08012422
	cmp r1, #2
	bhs _0801242E
	subs r3, #4
	str r3, [r0]
	adds r1, #1
	b _08012432
_0801242E
	movs r1, #0
	str r4, [r0]
_08012432
	adds r2, #1
	b _08012446
_08012436
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08012440
	str r5, [r0]
	b _08012442
_08012440
	str r6, [r0]
_08012442
	movs r2, #0
	movs r1, #0
_08012446
	ldr r3, _08012464 ;@ =gUnknown_030037A0
	subs r0, #0x4c
	cmp r0, r3
	bhs _0801240C
_0801244E
	movs r0, #0x4c
	ldr r4, _08012464 ;@ =gUnknown_030037A0
	muls r0, r2
	ldr r1, _08012460 ;@ =gUnknown_03003530
	adds r0, r0, r4
	subs r1, #0x10
	str r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr
	ALIGN
_08012460 DCDU gUnknown_03003530
_08012464 DCDU gUnknown_030037A0

	thumb_func_start sub_8012468
sub_8012468 ;@ 0x08012468
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r2, [r0, #0x34]
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r2, r4
	blo _08012486
	adds r2, r4, #0
	adds r1, r5, #0
	adds r0, r6, #0
	bl sub_803E21C
_08012480
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08012486
	cmp r2, #0
	beq _0801249A
	lsrs r0, r2, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r5, r0, r5
	subs r4, r4, r2
	adds r0, r6, #0
	bl sub_803E21C
_0801249A
	adds r0, r6, #0
	bl sub_80124C8
	ldr r2, [r6, #0x34]
	cmp r2, r4
	blo _080124B2
	adds r2, r4, #0
	adds r1, r5, #0
	adds r0, r6, #0
	bl sub_803E21C
	b _08012480
_080124B2
	lsrs r0, r2, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r5, r0, r5
	subs r4, r4, r2
	adds r0, r6, #0
	bl sub_803E21C
	cmp r4, #0
	bne _0801249A
	b _08012480

	thumb_func_start sub_80124C8
sub_80124C8 ;@ 0x080124C8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r0, #0
	ldr r0, [r0, #0x20]
	adds r4, #0x1c
	movs r7, #1
	cmp r0, #1
	bhs _080124DE
	adds r0, r4, #0
	bl sub_80301E8
_080124DE
	ldr r0, [r4]
	lsrs r0, r0, #0x1f
	bne _08012564
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r1, r0, r1
	lsls r6, r1, #0x1b
	lsrs r6, r6, #0x1b
	cmp r0, r6
	bhs _080124F8
	adds r0, r4, #0
	bl sub_80301E8
_080124F8
	ldr r0, [r4, #4]
	subs r0, r0, r6
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r6
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #1
	bhs _08012510
	adds r0, r4, #0
	bl sub_80301E8
_08012510
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #0x18
	bhs _08012528
	adds r0, r4, #0
	bl sub_80301E8
_08012528
	ldr r1, [r4, #4]
	ldr r0, [r4]
	subs r1, #0x18
	str r1, [r4, #4]
	ldr r1, [r4]
	asrs r0, r0, #8
	lsls r1, r1, #0x18
	str r1, [r4]
	str r0, [r5]
	movs r0, #0
	movs r2, #0
_0801253E
	lsls r1, r0, #2
	adds r1, r1, r5
	str r2, [r1, #0x18]
	adds r0, #1
	cmp r0, #1
	str r7, [r1, #4]
	blo _0801253E
	movs r0, #0
_0801254E
	lsls r1, r0, #2
	adds r1, r1, r5
	str r2, [r1, #0x10]
	str r7, [r1, #8]
	adds r1, r5, r0
	adds r1, #0x70
	adds r0, #1
	cmp r0, #2
	strb r2, [r1, #0xc]
	blo _0801254E
	b _0801257C
_08012564
	ldr r0, [r4, #4]
	cmp r0, #1
	bhs _08012570
	adds r0, r4, #0
	bl sub_80301E8
_08012570
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r0, #1
	str r0, [r4]
_0801257C
	ldr r3, _0801266C ;@ =gUnknown_080503D6
	movs r6, #0
	str r3, [sp]
_08012582
	ldr r0, [r4, #4]
	cmp r0, #4
	bhs _0801258E
	adds r0, r4, #0
	bl sub_80301E8
_0801258E
	ldr r0, [r4]
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	bhi _080125C6
	ldr r2, _0801266C ;@ =gUnknown_080503D6
	lsls r0, r0, #1
	adds r2, #7
	ldrb r1, [r2, r0]
	ldr r3, [sp]
	adds r0, r0, r2
	ldrb r1, [r3, r1]
	adds r3, r5, r6
	adds r3, #0x30
	strb r1, [r3, #0xc]
	ldrb r7, [r0, #1]
	ldr r0, [r4, #4]
	cmp r0, r7
	bhs _080125B8
	adds r0, r4, #0
	bl sub_80301E8
_080125B8
	ldr r0, [r4, #4]
	subs r0, r0, r7
	str r0, [r4, #4]
	ldr r0, [r4]
	lsls r0, r7
	str r0, [r4]
	b _08012656
_080125C6
	ldr r0, [r4, #4]
	cmp r0, #2
	bhs _080125D2
	adds r0, r4, #0
	bl sub_80301E8
_080125D2
	ldr r0, [r4, #4]
	subs r0, #2
	str r0, [r4, #4]
	ldr r1, [r4]
	lsls r1, r1, #2
	str r1, [r4]
	cmp r0, #5
	bhs _080125E8
	adds r0, r4, #0
	bl sub_80301E8
_080125E8
	ldr r0, [r4]
	ldr r3, [r4, #4]
	lsrs r1, r0, #0x1e
	lsls r0, r0, #2
	subs r3, #4
	mov lr, r3
	lsls r3, r0, #2
	lsrs r2, r0, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	lsls r7, r2
	orrs r0, r7
	lsrs r7, r3, #0x1f
	mov ip, r7
	mov r7, lr
	subs r7, #1
	lsls r3, r3, #1
	stm r4!, {r3, r7}
	subs r4, #8
	mov r7, ip
	cmp r7, #0
	beq _08012630
	ldr r7, _0801266C ;@ =gUnknown_080503D6
	lsls r3, r0, #0x1e
	lsrs r3, r3, #0x1e
	subs r7, #4
	ldrb r3, [r7, r3]
	lsrs r0, r0, #2
	lsls r7, r3, #0x1e
	ldr r3, _0801266C ;@ =gUnknown_080503D6
	lsrs r7, r7, #0x1e
	subs r3, #4
	ldrb r0, [r3, r0]
	lsrs r3, r0, #2
	b _08012644
_08012630
	ldr r7, _0801266C ;@ =gUnknown_080503D6
	lsls r3, r0, #0x1e
	lsrs r3, r3, #0x1e
	subs r7, #4
	ldrb r3, [r7, r3]
	lsrs r0, r0, #2
	ldrb r0, [r7, r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1e
	lsrs r7, r0, #2
_08012644
	lsls r0, r2, #2
	orrs r0, r1
	lsls r1, r3, #4
	orrs r0, r1
	lsls r1, r7, #6
	orrs r0, r1
	adds r1, r5, r6
	adds r1, #0x30
	strb r0, [r1, #0xc]
_08012656
	adds r6, #1
	cmp r6, #0x40
	blo _08012582
	ldr r0, _08012670 ;@ =0x0000404A
	movs r2, #0
	adds r5, #0x34
	stm r5!, {r0, r2}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801266C DCDU gUnknown_080503D6
_08012670 DCDU 0x0000404A

	arm_func_start sub_8012674
sub_8012674 ;@ 0x08012674
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDRSH r2, [r0]
	LDRSH ip, [r0, #2]
	LDRSH lr, [r0, #4]
	LDRSH r4, [r0, #6]
	LDRSH r5, [r0, #8]
	LDRSH r6, [r0, #0xa]
	LDRSH r7, [r0, #0xc]
	LDRSH r8, [r0, #0xe]
	LDRSH sb, [r1]
	sub sp, sp, #0x18
	STR sb, [sp, #0x14]
	LDRSH sb, [r1, #2]
	STR sb, [sp, #0x10]
	LDRSH sb, [r1, #4]
	STR sb, [sp, #0xc]
	LDRSH sb, [r1, #6]
	STR sb, [sp, #8]
	LDRSH sb, [r1, #8]
	LDRSH sl, [r1, #0xa]
	LDRSH fp, [r1, #0xc]
	LDRSH r1, [r1, #0xe]
	STR r1, [sp, #4]
_080126D0
	LDRSH r1, [r3]
	STR r1, [sp]
	LDR r1, [sp, #4]
	mul r1, r8, r1
	LDR r8, [sp]
	sub r1, r8, r1, asr #15
	mul r8, r7, fp
	sub r1, r1, r8, asr #15
	mul r8, r1, fp
	add r8, r7, r8, asr #15
	mul r7, r6, sl
	sub r1, r1, r7, asr #15
	mul r7, r1, sl
	add r7, r6, r7, asr #15
	mul r6, r5, sb
	sub r1, r1, r6, asr #15
	mul r6, r1, sb
	add r6, r5, r6, asr #15
	LDR r5, [sp, #8]
	mul r5, r4, r5
	sub r1, r1, r5, asr #15
	LDR r5, [sp, #8]
	mul r5, r1, r5
	add r5, r4, r5, asr #15
	LDR r4, [sp, #0xc]
	mul r4, lr, r4
	sub r1, r1, r4, asr #15
	LDR r4, [sp, #0xc]
	mul r4, r1, r4
	add r4, lr, r4, asr #15
	LDR lr, [sp, #0x10]
	mul lr, ip, lr
	sub r1, r1, lr, asr #15
	LDR lr, [sp, #0x10]
	mul lr, r1, lr
	add lr, ip, lr, asr #15
	LDR ip, [sp, #0x14]
	mul ip, r2, ip
	sub r1, r1, ip, asr #15
	LDR ip, [sp, #0x14]
	strh r1, [r3], #2
	mul ip, r1, ip
	add ip, r2, ip, asr #15
	mov r2, r1
	LDR r1, [sp, #0x20]
	subs r1, r1, #1
	STR r1, [sp, #0x20]
	bne _080126D0
	strh r2, [r0]
	strh ip, [r0, #2]
	strh lr, [r0, #4]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	strh r7, [r0, #0xc]
	strh r8, [r0, #0xe]
	add sp, sp, #0x28
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, r3
	bx lr

	arm_func_start sub_80127C0
sub_80127C0 ;@ 0x080127C0
	STMFD SP!, {r0, r1, r2, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r1
	LDRB r1, [r0, #0x172]
	sub sp, sp, #0x58
	add r4, r0, #0x100
	add r2, r0, r1, lsl #4
	add r2, r2, #0x100
	add r2, r2, #0x52
	STR r2, [sp, #0x4c]
	eor r1, r1, #1
	STRB r1, [r0, #0x172]
	add r1, r0, r1, lsl #4
	add r2, r1, #0x100
	add r4, r4, #2
	add r7, r0, #2
	sub r0, r4, #0xf0
	sub r1, r4, #0xa0
	add r2, r2, #0x52
	STR r2, [sp, #0x48]
	STR r1, [sp, #0x50]
	STR r0, [sp, #0x54]
	mov r6, #0
_08012818
	LDRSH r3, [r5, #4]
	LDRSH r0, [r5]
	LDRSH r8, [r5, #6]
	LDRSH r2, [r5, #2]
	add ip, r5, #8
	cmp r3, #0xf
	rsb r1, r0, #0
	ble _08012854
	MOV r0, r3, ASR #3
	sub r3, r3, r0, lsl #3
	LDR lr, _0801301C ;@ =gUnknown_080503FE
	sub r0, r0, #1
	add r3, lr, r3, lsl #1
	LDRSH r3, [r3]
	b _08012898
_08012854
	cmp r3, #0
	LDREQ lr, _0801301C ;@ =gUnknown_080503FE
	mvneq r0, #3
	LDREQSH r3, [lr, #0xe]
	beq _08012898
	mov r0, #0
	cmp r3, #7
	bgt _08012888
	mov lr, #1
_08012878
	add r3, lr, r3, lsl #1
	cmp r3, #7
	sub r0, r0, #1
	ble _08012878
_08012888
	LDR lr, _0801301C ;@ =gUnknown_080503FE
	sub r3, r3, #8
	add r3, lr, r3, lsl #1
	LDRSH r3, [r3]
_08012898
	rsb sl, r0, #9
	rsb r0, r0, #8
	mov lr, #1
	MOV sb, lr, LSL r0
	mov lr, #0xd
	mov r0, #0
	STR sl, [sp, #4]
	cmp r8, #0
	beq _0801292C
	cmp r8, #1
	beq _0801290C
	cmp r8, #2
	beq _080128EC
	cmp r8, #3
	bne _0801296C
	add r0, r4, r1, lsl #1
	LDRSH r0, [r0]
	mul r0, r2, r0
	MOV r0, r0, ASR #0xf
	strh r0, [r4]
	mov r0, #1
_080128EC
	add sl, r0, r1
	add sl, r4, sl, lsl #1
	LDRSH sl, [sl]
	add fp, r4, r0, lsl #1
	add r0, r0, #1
	mul sl, r2, sl
	MOV sl, sl, ASR #0xf
	strh sl, [fp]
_0801290C
	add sl, r0, r1
	add sl, r4, sl, lsl #1
	LDRSH sl, [sl]
	add fp, r4, r0, lsl #1
	add r0, r0, #1
	mul sl, r2, sl
	MOV sl, sl, ASR #0xf
	strh sl, [fp]
_0801292C
	LDRSH sl, [ip], #2
	mvn fp, #6
	subs lr, lr, #1
	add sl, fp, sl, lsl #1
	mla fp, sl, r3, sb
	LDR sl, [sp, #4]
	MOV sl, fp, ASR sl
	add fp, r0, r1
	add fp, r4, fp, lsl #1
	LDRSH fp, [fp]
	mul fp, r2, fp
	add sl, sl, fp, asr #15
	add fp, r4, r0, lsl #1
	strh sl, [fp]
	add r0, r0, #1
	bne _080128EC
_0801296C
	add r3, r8, #1
	cmp r3, #4
	bge _080129A4
_08012978
	add ip, r0, r1
	add ip, r4, ip, lsl #1
	LDRSH ip, [ip]
	add lr, r4, r0, lsl #1
	add r3, r3, #1
	mul ip, r2, ip
	MOV ip, ip, ASR #0xf
	strh ip, [lr]
	cmp r3, #4
	add r0, r0, #1
	blt _08012978
_080129A4
	mov r2, #0xf0
	LDR r0, [sp, #0x54]
	LDR r1, [sp, #0x50]
	bl sub_803BF10
	LDR r1, [sp, #0x60]
	add r0, r6, r6, lsl #2
	add r0, r1, r0, lsl #4
	mov r1, r4
	mov r2, #0x50
	bl sub_803BF10
	add r6, r6, #1
	cmp r6, #4
	add r5, r5, #0x22
	blt _08012818
	mov r0, #0
	add r1, sp, #0x38
	add r4, sp, #0x28
	add r5, sp, #0x18
	mov sl, #0x6600
_080129F0
	LDR r2, [sp, #0x48]
	add r2, r2, r0, lsl #1
	LDRSH r3, [r2]
	LDR r2, [sp, #0x4c]
	add sb, r2, r0, lsl #1
	LDRSH r2, [sb]
	MOV ip, r3, ASR #2
	MOV r6, r3, ASR #1
	add lr, ip, r2, asr #2
	add r3, lr, r6
	cmp r3, #0
	MOV r8, r2, ASR #1
	rsblt r2, r3, #0
	movge r2, r3
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge _08012A4C
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012A4C
	cmp r3, #0
	rsblt r2, r2, #0
	add r3, r1, r0, lsl #1
	strh r2, [r3]
	add r2, r6, r8
	MOV r3, r2, LSL #0x10
	MOV r3, r3, ASR #0x10
	cmp r3, #0
	movge r2, r3
	rsblt r2, r3, #0
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge _08012A98
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012A98
	cmp r3, #0
	rsblt r2, r2, #0
	add r3, r4, r0, lsl #1
	strh r2, [r3]
	add r2, lr, r8
	MOV r3, r2, LSL #0x10
	MOV r3, r3, ASR #0x10
	cmp r3, #0
	movge r2, r3
	rsblt r2, r3, #0
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge _08012AE4
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012AE4
	cmp r3, #0
	rsblt r2, r2, #0
	add r3, r5, r0, lsl #1
	strh r2, [r3]
	LDRSH r3, [sb]
	cmp r3, #0
	movge r2, r3
	rsblt r2, r3, #0
	subs ip, r2, #0x4e00
	subges ip, ip, #0x66
	addge r2, sl, r2, asr #2
	bge _08012B28
	subs ip, r2, #0x2b00
	subges ip, ip, #0x33
	MOVLT r2, r2, LSL #1
	addge r2, r2, #0x2b00
	addge r2, r2, #0x33
_08012B28
	cmp r3, #0
	add r3, sp, #8
	add r3, r3, r0, lsl #1
	rsblt r2, r2, #0
	add r0, r0, #1
	cmp r0, #8
	strh r2, [r3]
	blt _080129F0
	mov r2, #0xd
	mov r0, r7
	LDR r3, [sp, #0x60]
	bl sub_8012674
	mov r3, r0
	mov r0, r7
	mov r2, #0xe
	mov r1, r4
	bl sub_8012674
	mov r3, r0
	mov r0, r7
	mov r2, #0xd
	mov r1, r5
	bl sub_8012674
	mov r3, r0
	mov r0, r7
	mov r2, #0x78
	add r1, sp, #8
	bl sub_8012674
	add sp, sp, #0x64
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	arm_func_start sub_8012BA0
sub_8012BA0 ;@ 0x08012BA0
	STMFD SP!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	add r4, r0, #0x218
	LDRB r0, [r0, #0x172]
	sub sp, sp, #0x88
	mov r7, r1
	add r0, r6, r0, lsl #4
	add r5, r0, #0x100
	LDRB r0, [r6, #0x214]
	add r5, r5, #0x52
	cmp r0, #0
	moveq r0, r6
	bleq sub_803E228
	LDR r0, [r4, #4]
	cmp r0, #0x18
	bhs _08012C14
_08012BE0
	LDR r0, [r4, #8]
	add r1, r0, #1
	STR r1, [r4, #8]
	LDRB r0, [r0]
	LDR r1, [r4, #4]
	LDR r2, [r4]
	rsb r3, r1, #0x18
	orr r0, r2, r0, lsl r3
	STR r0, [r4]
	add r0, r1, #8
	STR r0, [r4, #4]
	cmp r0, #0x18
	blo _08012BE0
_08012C14
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1a
	MOV r1, r1, LSL #6
	sub r2, r2, #6
	STMIA r4, {r1, r2}
	strh r0, [r5]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1a
	MOV r1, r1, LSL #6
	sub r2, r2, #6
	STMIA r4, {r1, r2}
	strh r0, [r5, #2]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1b
	MOV r1, r1, LSL #5
	sub r2, r2, #5
	STMIA r4, {r1, r2}
	strh r0, [r5, #4]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1b
	MOV r1, r1, LSL #5
	sub r2, r2, #5
	STMIA r4, {r1, r2}
	strh r0, [r5, #6]
	LDR r1, [r4, #8]
	LDR r8, _08013020 ;@ =gUnknown_080503F6
	add r0, r1, #1
	STR r0, [r4, #8]
	LDRB r1, [r1]
	add r2, r0, #1
	STR r2, [r4, #8]
	LDRB r0, [r0]
	LDR r2, [r4]
	mov ip, #0
	orr r1, r0, r1, lsl #8
	LDR r0, [r4, #4]
	rsb r3, r0, #0x10
	orr r1, r2, r1, lsl r3
	add r2, r0, #0x10
	MOV r0, r1, LSR #0x1c
	MOV r1, r1, LSL #4
	sub r2, r2, #4
	STMIA r4, {r1, r2}
	strh r0, [r5, #8]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1c
	MOV r1, r1, LSL #4
	sub r2, r2, #4
	STMIA r4, {r1, r2}
	strh r0, [r5, #0xa]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1d
	MOV r1, r1, LSL #3
	sub r2, r2, #3
	STMIA r4, {r1, r2}
	strh r0, [r5, #0xc]
	LDR r1, [r4]
	LDR r2, [r4, #4]
	MOV r0, r1, LSR #0x1d
	MOV r1, r1, LSL #3
	sub r2, r2, #3
	STMIA r4, {r1, r2}
	strh r0, [r5, #0xe]
	LDRSH r0, [r5]
	mov r2, #0x17
	add r2, r2, #0x4b00
	MOV r0, r0, LSL #0xa
	sub r0, r0, #0x8000
	add r0, r0, r0, lsl #4
	add r0, r0, r0, lsl #1
	add r0, r0, r0, lsl #8
	MOV r0, r0, ASR #0xf
	MOV r0, r0, LSL #1
	strh r0, [r5]
	LDRSH r1, [r5, #2]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x8000
	add r1, r1, r1, lsl #4
	add r1, r1, r1, lsl #1
	add r1, r1, r1, lsl #8
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #2]
	LDRSH r1, [r5, #4]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x5000
	add r1, r1, r1, lsl #4
	add r1, r1, r1, lsl #1
	add r1, r1, r1, lsl #8
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #4]
	LDRSH r1, [r5, #6]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x2c00
	add r1, r1, r1, lsl #4
	add r1, r1, r1, lsl #1
	add r1, r1, r1, lsl #8
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #6]
	LDRSH r1, [r5, #8]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x2000
	sub r1, r1, #0xbc
	mul r1, r2, r1
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #8]
	LDRSH r1, [r5, #0xa]
	mov r2, #0xde
	add r2, r2, #0x7a00
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x1200
	add r1, r1, r1, lsl #8
	add r1, r1, r1, lsl #4
	MOV r1, r1, LSL #2
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #0xa]
	LDRSH r1, [r5, #0xc]
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0xd00
	sub r1, r1, #0x56
	mul r1, r2, r1
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #0xc]
	LDRSH r1, [r5, #0xe]
	mov r2, #0xc
	add r2, r2, #0x7400
	MOV r1, r1, LSL #0xa
	sub r1, r1, #0x710
	mul r1, r2, r1
	MOV r1, r1, ASR #0xf
	MOV r1, r1, LSL #1
	strh r1, [r5, #0xe]
	mov r1, sp
_08012E54
	LDR r2, [r4, #8]
	add r0, r2, #1
	STR r0, [r4, #8]
	LDRB r2, [r2]
	add r3, r0, #1
	STR r3, [r4, #8]
	LDRB r0, [r0]
	LDR r3, [r4]
	orr r2, r0, r2, lsl #8
	LDR r0, [r4, #4]
	rsb lr, r0, #0x10
	orr r2, r3, r2, lsl lr
	add r3, r0, #0x10
	MOV r0, r2, LSR #0x19
	MOV r2, r2, LSL #7
	sub r3, r3, #7
	STMIA r4, {r2, r3}
	mov r2, r0
	add r0, ip, ip, lsl #4
	add r0, r1, r0, lsl #1
	strh r2, [r0]
	LDR r3, [r4]
	LDR lr, [r4, #4]
	MOV r2, r3, LSR #0x1e
	MOV r3, r3, LSL #2
	sub lr, lr, #2
	STMIA r4, {r3, lr}
	add r2, r8, r2, lsl #1
	ldrh r2, [r2]
	strh r2, [r0, #2]
	LDR r3, [r4]
	LDR lr, [r4, #4]
	MOV r2, r3, LSR #0x1e
	MOV r3, r3, LSL #2
	sub lr, lr, #2
	STMIA r4, {r3, lr}
	strh r2, [r0, #6]
	LDR r3, [r4]
	LDR lr, [r4, #4]
	MOV r2, r3, LSR #0x1a
	MOV r3, r3, LSL #6
	sub lr, lr, #6
	STMIA r4, {r3, lr}
	strh r2, [r0, #4]
	LDR r2, [r4, #8]
	add r3, r2, #1
	STR r3, [r4, #8]
	LDRB r3, [r2]
	LDR r2, [r4, #4]
	rsb lr, r2, #0x18
	MOV r3, r3, LSL lr
	LDR lr, [r4]
	add r2, r2, #8
	STR r2, [r4, #4]
	orr r3, r3, lr
	STR r3, [r4]
	mov r2, #0
_08012F38
	LDR r3, [r4, #8]
	add lr, r3, #1
	STR lr, [r4, #8]
	LDRB r3, [r3]
	LDR lr, [r4, #4]
	rsb r5, lr, #0x18
	MOV r3, r3, LSL r5
	LDR r5, [r4]
	orr r3, r3, r5
	add r5, lr, #8
	MOV lr, r3, LSR #0x1d
	MOV r3, r3, LSL #3
	sub r5, r5, #3
	STMIA r4, {r3, r5}
	add r3, r2, #1
	add r2, r0, r2, lsl #1
	strh lr, [r2, #8]
	LDR lr, [r4]
	LDR r5, [r4, #4]
	MOV r2, lr, LSR #0x1d
	MOV lr, lr, LSL #3
	STR lr, [r4]
	add lr, r3, #1
	sub r5, r5, #3
	STR r5, [r4, #4]
	add r3, r0, r3, lsl #1
	strh r2, [r3, #8]
	LDR r3, [r4]
	LDR r5, [r4, #4]
	MOV r2, r3, LSR #0x1d
	MOV r3, r3, LSL #3
	sub r5, r5, #3
	STMIA r4, {r3, r5}
	mov r3, r2
	add r2, lr, #1
	add lr, r0, lr, lsl #1
	strh r3, [lr, #8]
	cmp r2, #0xc
	blt _08012F38
	LDR lr, [r4]
	LDR r5, [r4, #4]
	MOV r3, lr, LSR #0x1d
	sub r5, r5, #3
	STR r5, [r4, #4]
	MOV lr, lr, LSL #3
	STR lr, [r4]
	add r0, r0, r2, lsl #1
	add ip, ip, #1
	cmp ip, #4
	strh r3, [r0, #8]
	blt _08012E54
	mov r2, r7
	mov r0, r6
	bl sub_80127C0
	add sp, sp, #0x88
	LDMFD SP!, {r4, r5, r6, r7, r8, lr}
	bx lr
	ALIGN
_0801301C DCDU gUnknown_080503FE
_08013020 DCDU gUnknown_080503F6

	arm_func_start sub_8013024
sub_8013024 ;@ 0x08013024
	STMFD SP!, {r4, r5, lr}
	mov r5, #0x8000
	sub r5, r5, #8
_08013030
	LDRSH ip, [r1], #2
	rsb r2, r2, r2, lsl #3
	MOV r2, r2, LSL #0xc
	add r2, ip, r2, asr #15
	MOV lr, r2, LSL #1
	subs ip, lr, #0x7f00
	subges ip, ip, #0xff
	movgt ip, r5
	bgt _08013068
	cmn lr, #0x8000
	bicge ip, lr, #7
	bicge ip, ip, #0xff000000
	bicge ip, ip, #0xff0000
	movlt ip, #0x8000
_08013068
	MOV lr, ip, ASR #0x1f
	add ip, ip, lr, lsr #24
	MOV ip, ip, ASR #8
	MOV r4, ip, LSL #0x10
	LDRSH ip, [r1], #2
	rsb r2, r2, r2, lsl #3
	MOV r2, r2, LSL #0xc
	add r2, ip, r2, asr #15
	MOV lr, r2, LSL #1
	subs ip, lr, #0x7f00
	subges ip, ip, #0xff
	movgt ip, r5
	MOV r4, r4, ASR #0x10
	bgt _080130B4
	cmn lr, #0x8000
	bicge ip, lr, #7
	bicge ip, ip, #0xff000000
	bicge ip, ip, #0xff0000
	movlt ip, #0x8000
_080130B4
	MOV lr, ip, ASR #0x1f
	add ip, ip, lr, lsr #24
	MOV ip, ip, ASR #8
	orr ip, r4, ip, lsl #8
	strh ip, [r0], #2
	subs r3, r3, #2
	bne _08013030
	LDMFD SP!, {r4, r5, lr}
	mov r0, r2
	bx lr
_080130DC
	STMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x144
	LDR r5, [sp, #0x168]
	mov r8, r1
	mov r6, r0
	LDRB r1, [r6, #0x173]
	mov r0, #0
	mov sl, r2
	mov r4, r3
	cmp r1, #0
	beq _0801315C
	b _08013150
_0801310C
	add r1, r0, r0, lsr #31
	MOV r1, r1, ASR #1
	add r1, r6, r1, lsl #1
	add r1, r1, #0x100
	ldrh r1, [r1, #0x74]
	and r2, r4, sl
	MOV r2, r2, LSR #1
	add r2, r8, r2, lsl #1
	strh r1, [r2]
	LDRB r1, [r6, #0x173]
	add r4, r4, #2
	add r0, r0, #2
	sub r1, r1, #2
	ands r1, r1, #0xff
	STRB r1, [r6, #0x173]
	sub r5, r5, #2
	beq _08013158
_08013150
	cmp r5, #0
	bne _0801310C
_08013158
	and r4, r4, sl
_0801315C
	cmp r5, #0
	beq _0801329C
	LDRSH r7, [r6]
	add fp, sl, #1
	cmp r5, #0xa0
	blo _08013204
_08013174
	mov r1, sp
	mov r0, r6
	bl sub_8012BA0
	add r0, r4, #0xa0
	STR r0, [sp, #0x140]
	cmp r0, fp
	bls _080131CC
	sub sb, fp, r4
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r4, sp
	mov r3, sb
	mov r2, r7
	mov r1, sp
	bl sub_8013024
	mov r2, r0
	mov r0, r8
	rsb r3, sb, #0xa0
	add r1, r4, sb, lsl #1
	bl sub_8013024
	mov r7, r0
	b _080131E8
_080131CC
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, #0xa0
	mov r2, r7
	mov r1, sp
	bl sub_8013024
	mov r7, r0
_080131E8
	LDR r0, [sp, #0x140]
	sub r5, r5, #0xa0
	cmp r5, #0xa0
	and r4, r0, sl
	bhs _08013174
	cmp r5, #0
	beq _08013294
_08013204
	mov sb, sp
	mov r1, sp
	mov r0, r6
	bl sub_8012BA0
	add r0, r5, r4
	cmp r0, fp
	bls _08013254
	sub fp, fp, r4
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, fp
	mov r2, r7
	mov r1, sb
	bl sub_8013024
	mov r2, r0
	mov r0, r8
	sub r3, r5, fp
	add r1, sb, fp, lsl #1
	bl sub_8013024
	b _0801326C
_08013254
	MOV r0, r4, LSR #1
	add r0, r8, r0, lsl #1
	mov r3, r5
	mov r2, r7
	mov r1, sb
	bl sub_8013024
_0801326C
	add r1, r4, r5
	and r4, r1, sl
	rsb r8, r5, #0xa0
	mov r2, r0
	add r0, r6, #0x174
	mov r3, r8
	add r1, sb, r5, lsl #1
	bl sub_8013024
	mov r7, r0
	STRB r8, [r6, #0x173]
_08013294
	strh r7, [r6]
	b _080132E4
_0801329C
	LDRB r1, [r6, #0x173]
	cmp r1, #0
	movne r1, #0
	bls _080132E4
_080132AC
	add r2, r0, r0, lsr #31
	MOV r2, r2, ASR #1
	add r2, r6, r2, lsl #1
	add r2, r2, #0x100
	ldrh r2, [r2, #0x74]
	MOV r3, r1, LSR #1
	add r3, r6, r3, lsl #1
	add r3, r3, #0x100
	strh r2, [r3, #0x74]
	LDRB r2, [r6, #0x173]
	add r1, r1, #2
	add r0, r0, #2
	cmp r2, r1
	bhi _080132AC
_080132E4
	mov r0, r4
	add sp, sp, #0x144
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	thumb_func_start sub_80132F4
sub_80132F4 ;@ 0x080132F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x43
	lsls r1, r1, #3
	bl sub_803BEB0
	movs r1, #0x21
	lsls r1, r1, #4
	adds r1, r4, r1
	movs r0, #0x80
	strb r0, [r1, #4]
	movs r0, #0
	adds r4, #0xff
	adds r4, #0x71
	strb r0, [r4, #3]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8013318
sub_8013318 ;@ 0x08013318
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x10
	adds r5, r1, #0
	ldm r0!, {r0, r1}
	cmp r1, r0
	beq _0801332E
	bl sub_803DA4C
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
_0801332E
	cmp r5, #0
	beq _08013338
	adds r0, r4, #0
	bl sub_803DA18
_08013338
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801333E
sub_801333E ;@ 0x0801333E
	push {r4, r5, r6, lr}
	ldr r5, _08013430 ;@ =gUnknown_03003C3C
	adds r4, r0, #0
	ldr r0, [r5]
	movs r6, #0
	cmp r0, #0
	sub sp, #8
	beq _08013358
	adds r3, r6, #0
	movs r1, #0x1c
	ldr r2, _08013434 ;@ =sub_8013318
	bl sub_803C428
_08013358
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	movs r2, #0
	str r2, [sp]
	movs r2, #0x1c
	movs r3, #1
	adds r1, r4, #0
	bl sub_803C3EC
	str r0, [r5]
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013386
sub_8013386 ;@ 0x08013386
	ldr r0, _08013430 ;@ =gUnknown_03003C3C
	push {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _0801339A
	movs r3, #0
	movs r1, #0x1c
	ldr r2, _08013434 ;@ =sub_8013318
	bl sub_803C428
_0801339A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80133A0
sub_80133A0 ;@ 0x080133A0
	ldr r1, _08013430 ;@ =gUnknown_03003C3C
	lsls r3, r0, #3
	subs r0, r3, r0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_80133AE
sub_80133AE ;@ 0x080133AE
	lsls r3, r0, #3
	subs r0, r3, r0
	ldr r3, _08013430 ;@ =gUnknown_03003C3C
	push {r4}
	ldrh r2, [r1]
	ldr r4, [r3]
	lsls r0, r0, #2
	strh r2, [r4, r0]
	adds r1, #2
	ldrh r2, [r1]
	ldr r4, [r3]
	adds r1, #2
	adds r4, r0, r4
	strh r2, [r4, #2]
	ldr r3, [r3]
	ldm r1!, {r2}
	adds r0, r0, r3
	str r2, [r0, #4]
	ldrb r3, [r1]
	lsls r2, r2, #2
	strb r3, [r0, #0x18]
	adds r3, r1, #4
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r3, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	adds r1, r2, r1
	str r1, [r0, #0xc]
	str r3, [r0, #0x14]
	pop {r4}
	movs r0, #1
	bx lr

	thumb_func_start sub_80133F0
sub_80133F0 ;@ 0x080133F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08013438 ;@ =gUnknown_03003EA8
	ldr r0, [r0]
	bl sub_8004FFC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_80133AE
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801340A
sub_801340A ;@ 0x0801340A
	ldrb r3, [r1]
	adds r2, r0, #0
	movs r0, #0
	cmp r3, #0
	beq _0801342C
	ldr r2, [r2, #8]
_08013416
	ldrb r3, [r1]
	adds r1, #1
	lsls r3, r3, #2
	ldr r3, [r2, r3]
	lsrs r3, r3, #0x18
	adds r0, r3, r0
	ldrb r3, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r3, #0
	bne _08013416
_0801342C
	bx lr
	ALIGN
_08013430 DCDU gUnknown_03003C3C
_08013434 DCDU sub_8013318
_08013438 DCDU gUnknown_03003EA8

	thumb_func_start sub_801343C
sub_801343C ;@ 0x0801343C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r0, #0
	bne _08013458
	movs r0, #0xc
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08013458
	adds r0, r4, #0
_08013452
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08013458
	ldr r0, _080134AC ;@ =_0803ECF4
	movs r6, #0
	str r0, [r4]
	ldr r0, _080134B0 ;@ =gUnknown_03003EBC
	str r4, [r0]
	ldr r0, _080134B4 ;@ =_0803ECB4
	str r0, [r4]
	strb r6, [r4, #9]
	strb r5, [r4, #8]
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r5, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #4]
	adds r0, r4, #0
	b _08013452

	thumb_func_start sub_8013480
sub_8013480 ;@ 0x08013480
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080134B4 ;@ =_0803ECB4
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	bl sub_803DA4C
	ldr r0, _080134AC ;@ =_0803ECF4
	ldr r1, _080134B0 ;@ =gUnknown_03003EBC
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq _080134A4
	adds r0, r4, #0
	bl sub_803DA18
_080134A4
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_080134AC DCDU _0803ECF4
_080134B0 DCDU gUnknown_03003EBC
_080134B4 DCDU _0803ECB4

	thumb_func_start sub_80134B8
sub_80134B8 ;@ 0x080134B8
	ldr r1, _080137E0 ;@ =_0803E374
	adds r2, r0, #0
	str r1, [r0]
	adds r2, #0x20
	movs r3, #0xff
	strb r3, [r2, #0xd]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r2, #0xc]
	strb r3, [r2, #0xe]
	strh r1, [r0, #0x22]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x20]
	movs r2, #1
	str r2, [r0, #0x24]
	movs r2, #0x11
	strb r2, [r0, #0x1c]
	str r1, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	strh r1, [r0, #0xe]
	mvns r2, r1
	strh r2, [r0, #0x3a]
	strh r1, [r0, #0x3c]
	bx lr

	thumb_func_start sub_80134F8
sub_80134F8 ;@ 0x080134F8
	ldrb r1, [r0, #0xc]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _08013504
	ldr r3, [r0, #4]
	str r3, [r2, #4]
_08013504
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0801350E
	ldr r3, [r0, #8]
	str r3, [r2, #8]
_0801350E
	ldr r3, _080137E4 ;@ =gUnknown_03003C4C
	lsls r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, r0
	bne _0801351C
	ldr r2, [r0, #8]
	str r2, [r3, r1]
_0801351C
	ldr r3, _080137E4 ;@ =gUnknown_03003C4C
	subs r3, #0xc
	ldr r2, [r3, r1]
	cmp r2, r0
	bne _0801352A
	ldr r0, [r0, #4]
	str r0, [r3, r1]
_0801352A
	bx lr

	thumb_func_start sub_801352C
sub_801352C ;@ 0x0801352C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080137E0 ;@ =_0803E374
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80134F8
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _08013556
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08013550
	movs r3, #0
	movs r2, #0
	bl sub_8041274
	b _08013556
_08013550
	adds r0, r1, #0
	bl sub_803DA4C
_08013556
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08013560
	bl sub_803DA18
_08013560
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0801356A
	bl sub_803DA4C
_0801356A
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _08013574
	bl sub_803DA4C
_08013574
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801357A
sub_801357A ;@ 0x0801357A
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r1, #0
	movs r4, #0
	movs r3, #0
	str r3, [sp, #4]
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #8]
	ldr r1, [r0, #0x50]
	movs r7, #0
	adds r5, r0, #0
	cmp r1, #0
	ldr r6, _080137E8 ;@ =0x000005FA
	beq _080135A4
	adds r0, r6, #0
	movs r2, #0
	bl sub_803DA9C
	adds r6, r0, #0
	b _080135B6
_080135A4
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	adds r6, r0, #0
_080135B6
	movs r0, #0x2d
	ldrb r0, [r0, r5]
	bl sub_80133A0
	ldr r1, [r0, #8]
	adds r1, #0x80
	ldr r1, [r1]
	lsrs r1, r1, #0x18
	mov ip, r1
	ldr r1, [r5, #0x30]
	ldrb r1, [r1]
	cmp r1, #0
	beq _08013694
_080135D0
	ldr r1, [r5, #0x30]
	ldrb r1, [r1, r4]
	cmp r1, #0xa
	beq _080135F2
	cmp r1, #0xd
	beq _080135F2
	ldr r2, [r0, #8]
	lsls r3, r1, #2
	ldr r2, [r2, r3]
	ldr r3, [sp, #0xc]
	lsrs r2, r2, #0x18
	adds r2, r2, r3
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	cmp r1, #0x20
	beq _080135FA
_080135F2
	cmp r4, #0
	beq _08013600
	cmp r1, #0x2d
	bne _08013600
_080135FA
	ldr r3, [sp, #0xc]
	str r4, [sp, #0x10]
	str r3, [sp, #4]
_08013600
	cmp r1, #0xa
	beq _08013608
	cmp r1, #0xd
	bne _0801364C
_08013608
	ldr r1, [sp, #8]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	strh r7, [r6, r1]
	adds r1, r1, r6
	strh r4, [r1, #2]
	ldr r3, [sp, #0xc]
	strh r3, [r1, #4]
	movs r3, #0
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r1, r4, #1
	lsls r7, r1, #0x10
	adds r1, r2, r4
	ldrb r1, [r1, #1]
	lsrs r7, r7, #0x10
	cmp r1, #0xa
	beq _08013632
	cmp r1, #0xd
	bne _0801363E
_08013632
	ldrb r2, [r2, r4]
	cmp r2, r1
	beq _0801363E
	adds r7, #1
	lsls r7, r7, #0x10
	lsrs r7, r7, #0x10
_0801363E
	ldr r1, [sp, #8]
	adds r4, r7, #0
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	b _0801368C
_0801364C
	ldrh r1, [r5, #0x20]
	ldr r3, [sp, #0xc]
	cmp r1, r3
	bhs _08013686
	ldr r1, [sp, #8]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	strh r7, [r6, r1]
	ldr r2, [sp, #0x10]
	adds r1, r1, r6
	strh r2, [r1, #2]
	ldr r3, [sp, #4]
	mov r2, ip
	subs r2, r3, r2
	strh r2, [r1, #4]
	ldr r1, [sp, #0x10]
	movs r3, #0
	adds r1, #1
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	ldr r1, [sp, #8]
	adds r4, r7, #0
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	b _0801368C
_08013686
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_0801368C
	ldr r1, [r5, #0x30]
	ldrb r1, [r1, r4]
	cmp r1, #0
	bne _080135D0
_08013694
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strh r7, [r6, r0]
	adds r0, r0, r6
	strh r4, [r0, #2]
	ldr r3, [sp, #0xc]
	strh r3, [r0, #4]
	ldr r1, [sp, #8]
	ldr r0, [r5, #0x14]
	adds r1, #1
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	cmp r0, #0
	beq _080136E0
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _080136DC
	ldr r7, _080137EC ;@ =gUnknown_030033E8
	movs r1, #3
	mvns r1, r1
	str r2, [r7]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne _080136D2
	bl sub_803DA4C
	b _080136D6
_080136D2
	bl sub_803DA18
_080136D6
	movs r3, #0
	str r3, [r7]
	b _080136E0
_080136DC
	bl sub_803DA4C
_080136E0
	ldr r1, [r5, #0x50]
	cmp r1, #0
	beq _08013714
	cmp r4, #0
	beq _080136FA
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	b _08013710
_080136FA
	movs r7, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #6
	bl sub_803DA80
	cmp r0, #0
	beq _08013710
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
_08013710
	str r0, [r5, #0x14]
	b _0801372A
_08013714
	bl sub_8005106
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r5, #0x14]
_0801372A
	ldr r0, [r5, #0x14]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #1
	movs r3, #0
	adds r1, r6, #0
	cmp r6, r0
	mov ip, r0
	bhs _0801374A
	adds r7, r1, r2
	cmp r7, r0
	bls _0801374A
	adds r1, r7, #0
	adds r0, r0, r2
	movs r3, #5
	lsls r3, r3, #0x15
_0801374A
	ldr r7, _080137F0 ;@ =gUnknown_03003EB4
	ldr r7, [r7]
	cmp r7, #0
	beq _08013768
	lsls r0, r2, #9
	movs r1, #1
	lsls r1, r1, #0x1a
	lsrs r0, r0, #0xb
	orrs r0, r1
	adds r2, r0, #0
	adds r0, r6, #0
	mov r1, ip
	bl sub_803D468
	b _0801379C
_08013768
	lsls r7, r0, #0x1e
	bmi _08013774
	lsls r7, r1, #0x1e
	bmi _08013774
	lsls r7, r2, #0x1e
	bpl _08013788
_08013774
	ldr r7, _080137F4 ;@ =0x040000D4
	str r1, [r7]
	str r0, [r7, #4]
	lsrs r0, r2, #1
	orrs r0, r3
	lsls r1, r7, #0x1d
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _0801379C
_08013788
	ldr r7, _080137F4 ;@ =0x040000D4
	str r1, [r7]
	str r0, [r7, #4]
	lsrs r0, r2, #2
	movs r1, #0x21
	lsls r1, r1, #0x1a
	orrs r0, r3
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
_0801379C
	ldr r1, [r5, #0x50]
	cmp r1, #0
	beq _080137CC
	cmp r6, #0
	beq _080137D2
	ldr r7, _080137EC ;@ =gUnknown_030033E8
	movs r0, #3
	mvns r0, r0
	str r1, [r7]
	ldr r0, [r0, r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080137C0
	adds r0, r6, #0
	bl sub_803DA4C
	b _080137C6
_080137C0
	adds r0, r6, #0
	bl sub_803DA18
_080137C6
	movs r3, #0
	str r3, [r7]
	b _080137D2
_080137CC
	adds r0, r6, #0
	bl sub_803DA4C
_080137D2
	adds r5, #0x30
	strb r4, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080137E0 DCDU _0803E374
_080137E4 DCDU gUnknown_03003C4C
_080137E8 DCDU 0x000005FA
_080137EC DCDU gUnknown_030033E8
_080137F0 DCDU gUnknown_03003EB4
_080137F4 DCDU 0x040000D4
_080137F8
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
	b _080137F8

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
	bl _080137F8
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
	bl _080137F8
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

	thumb_func_start sub_8013B64
sub_8013B64 ;@ 0x08013B64
	push {r3, lr}
	ldr r2, [r0]
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl sub_803B8CC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013B76
sub_8013B76 ;@ 0x08013B76
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	movs r5, #0
	cmp r0, #0
	beq _08013B88
	bl sub_803DA18
	str r5, [r4, #0x4c]
_08013B88
	movs r0, #0x2c
	strb r5, [r0, r4]
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x3a]
	movs r0, #1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8013B9C
sub_8013B9C ;@ 0x08013B9C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	adds r6, r2, #0
	movs r5, #0
	cmp r0, #0
	sub sp, #4
	beq _08013BB4
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
_08013BB4
	movs r0, #1
	adds r7, r4, #0
	adds r7, #0x20
	strb r0, [r7, #0xc]
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x10
	bl sub_803DA80
	cmp r0, #0
	beq _08013BDC
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x10
_08013BDC
	str r0, [r4, #0x4c]
	strh r6, [r4, #0x3a]
	ldr r0, [r4, #0x14]
	b _08013BEA
_08013BE4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
_08013BEA
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldrh r2, [r0, r1]
	cmp r2, r6
	bhi _08013BE4
	adds r1, r0, r1
	ldrh r1, [r1, #2]
	cmp r1, r6
	blo _08013BE4
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	muls r0, r5
	lsls r1, r0, #0x10
	ldr r0, [r4]
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x24]
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_803B8CC
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x4c]
	movs r3, #0
	strh r0, [r1, #8]
	ldr r0, [r4, #0x4c]
	strh r6, [r0, #6]
	ldr r0, [sp, #8]
	ldr r1, [r4, #0x4c]
	strb r0, [r1, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [r4, #0x4c]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x4c]
	str r3, [r0]
	ldr r0, [r4, #0x4c]
	strh r5, [r0, #0xa]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8013C40
sub_8013C40 ;@ 0x08013C40
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, [sp, #0x30]
	adds r4, r0, #0
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _08013C56
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
_08013C56
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xd]
	bl sub_80133A0
	movs r1, #0x38
	ldrb r1, [r1, r4]
	ldrh r0, [r0, #2]
	muls r0, r1
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	movs r0, #2
	strb r0, [r7, #0xc]
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xc
	bl sub_803DA80
	cmp r0, #0
	beq _08013C8E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	subs r0, #0xc
_08013C8E
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	movs r3, #0
	strb r1, [r0, #4]
	str r3, [r0]
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #0x10
	strb r1, [r4, #0x1c]
	ldr r1, [sp, #0xc]
	cmp r1, #5
	bhs _08013CDE
	add r3, pc, #0x4 ;@ =_08013CB0
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08013CB0
	DCB 0x02
_08013CB1
	DCB 0x05
_08013CB2
	DCB 0x0E
_08013CB3
	DCB 0x11
_08013CB4
	DCB 0x13, 0x00
loc_8013cb6
	movs r3, #0
	strh r3, [r4, #0x22]
	b _08013CDE
loc_8013cbc
	ldrh r1, [r4, #0x1e]
	cmp r1, r5
	bls _08013CC8
	subs r1, r1, r5
	NEGS r1, r1
	b _08013CCA
_08013CC8
	NEGS r1, r1
_08013CCA
	strh r1, [r4, #0x22]
	b _08013CDE
loc_8013cce
	NEGS r1, r5
	strh r1, [r4, #0x22]
	b _08013CDE
loc_8013cd4
	strh r5, [r4, #0x22]
	b _08013CDE
loc_8013cd8
	ldrh r1, [r4, #0x1e]
	NEGS r1, r1
	strh r1, [r4, #0x22]
_08013CDE
	ldr r1, [sp, #0x10]
	cmp r1, #5
	bhs _08013D1A
	add r3, pc, #0x4 ;@ =_08013CEC
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08013CEC
	DCB 0x02
_08013CED
	DCB 0x05
_08013CEE
	DCB 0x0E
_08013CEF
	DCB 0x11
_08013CF0
	DCB 0x13, 0x00
loc_8013cf2
	movs r3, #0
	strh r3, [r0, #6]
	b _08013D1A
loc_8013cf8
	ldrh r1, [r4, #0x1e]
	cmp r1, r5
	bls _08013D04
	subs r1, r1, r5
	NEGS r1, r1
	b _08013D06
_08013D04
	NEGS r1, r1
_08013D06
	strh r1, [r0, #6]
	b _08013D1A
loc_8013d0a
	NEGS r1, r5
	strh r1, [r0, #6]
	b _08013D1A
loc_8013d10
	strh r5, [r0, #6]
	b _08013D1A
loc_8013d14
	ldrh r1, [r4, #0x1e]
	NEGS r1, r1
	strh r1, [r0, #6]
_08013D1A
	ldrh r1, [r4, #0x22]
	ldr r2, [sp, #0x28]
	movs r3, #0x22
	adds r1, r1, r2
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x3c]
	ldrh r1, [r0, #6]
	ldr r2, [sp, #0x2c]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	strh r1, [r0, #6]
	ldrsh r2, [r4, r3]
	cmp r2, r1
	bge _08013D42
	strb r6, [r0, #8]
_08013D3A
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08013D42
	cmp r2, r1
	ble _08013D4C
	NEGS r1, r6
	strb r1, [r0, #8]
	b _08013D3A
_08013D4C
	movs r3, #0
	strb r3, [r7, #0xc]
	b _08013D3A

	non_word_aligned_thumb_func_start sub_8013D52
sub_8013D52 ;@ 0x08013D52
	push {r4, r5, r6, r7, lr}
	movs r2, #3
	sub sp, #0x14
	movs r6, #0
	movs r1, #0
	cmp r0, #3
	str r2, [sp, #0x10]
	bhs _08013D6C
	adds r6, r0, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
_08013D6C
	movs r0, #0
	add r7, sp, #4
_08013D70
	adds r2, r1, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r2, r3, #2
	str r0, [r7, r2]
	cmp r1, #3
	blo _08013D70
	ldr r0, [sp, #0x10]
	cmp r6, r0
	bhs _08013DE2
_08013D88
	ldr r0, _08013FF0 ;@ =gUnknown_03003C40
	lsls r5, r6, #2
	ldr r4, [r0, r5]
	cmp r4, #0
	beq _08013DC0
_08013D92
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _08013DBA
	ldr r0, [r7, r5]
	cmp r0, #0
	bne _08013DB2
	ldr r0, _08013FF0 ;@ =gUnknown_03003C40
	ldr r0, [r0, r5]
	ldr r1, [r0]
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	movs r1, #0
	bl sub_803B8CC
	movs r0, #1
	str r0, [r7, r5]
_08013DB2
	movs r1, #0
	adds r0, r4, #0
	bl sub_80402F8
_08013DBA
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _08013D92
_08013DC0
	ldr r0, [r7, r5]
	cmp r0, #0
	beq _08013DD6
	ldr r0, _08013FF0 ;@ =gUnknown_03003C40
	ldr r0, [r0, r5]
	ldr r1, [r0]
	ldr r2, [r1, #0x48]
	adds r2, r2, r1
	movs r1, #0
	bl sub_803B8CC
_08013DD6
	adds r6, #1
	lsls r6, r6, #0x18
	ldr r0, [sp, #0x10]
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo _08013D88
_08013DE2
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013DEA
sub_8013DEA ;@ 0x08013DEA
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #3
	movs r5, #0
	cmp r0, #3
	bhs _08013DFC
	adds r5, r0, #0
	adds r0, #1
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
_08013DFC
	cmp r5, r6
	bhs _08013E26
	ldr r7, _08013FF0 ;@ =gUnknown_03003C40
_08013E02
	lsls r0, r5, #2
	ldr r4, [r7, r0]
	cmp r4, #0
	beq _08013E1C
_08013E0A
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _08013E0A
_08013E1C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, r6
	blo _08013E02
_08013E26
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8013E2C
sub_8013E2C ;@ 0x08013E2C
	push {r4}
	ldrb r1, [r0, #0xc]
	ldr r2, _08013FF0 ;@ =gUnknown_03003C40
	adds r2, #0xc
	lsls r1, r1, #2
	ldr r3, [r2, r1]
	cmp r3, #0
	beq _08013E3E
	str r0, [r3, #4]
_08013E3E
	ldr r3, _08013FF0 ;@ =gUnknown_03003C40
	ldr r4, [r3, r1]
	cmp r4, #0
	bne _08013E48
	str r0, [r3, r1]
_08013E48
	ldr r3, [r2, r1]
	str r3, [r0, #8]
	str r0, [r2, r1]
	movs r1, #0
	str r1, [r0, #4]
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_8013E56
sub_8013E56 ;@ 0x08013E56
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldrh r1, [r0, #0xe]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_8013E64
sub_8013E64 ;@ 0x08013E64
	movs r2, #0x2d
	strb r1, [r2, r0]
	ldrh r1, [r0, #0xe]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_8013E72
sub_8013E72 ;@ 0x08013E72
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #0x1c]
	ldr r6, [sp, #0x10]
	lsls r5, r0, #0x1c
	lsrs r5, r5, #0x1c
	cmp r1, #0xff
	beq _08013E86
	lsls r5, r1, #0x1c
	lsrs r5, r5, #0x1c
_08013E86
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xf0
	ands r0, r5
	cmp r2, #0xff
	strb r1, [r4, #0x1c]
	beq _08013E98
	ands r2, r5
	adds r0, r2, #0
_08013E98
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x1c]
	cmp r3, #0
	beq _08013EAA
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x1c]
_08013EAA
	cmp r6, #0
	beq _08013EB6
	ldrb r0, [r4, #0x1c]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1c]
_08013EB6
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08013EE2
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1c
	bpl _08013EE2
	ldrh r1, [r4, #0x20]
	adds r0, r4, #0
	subs r1, r5, r1
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
_08013EE2
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08013F10
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	bpl _08013F10
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
_08013F10
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013F1E
sub_8013F1E ;@ 0x08013F1E
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0xe]
	movs r2, #8
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_8013F2A
sub_8013F2A ;@ 0x08013F2A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	str r1, [r0, #0x44]
	bne _08013F54
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _08013F54
	ldr r0, [r4, #0x50]
	movs r5, #0
	cmp r0, #0
	beq _08013F4C
	adds r3, r5, #0
	movs r2, #0
	bl sub_8041274
	b _08013F52
_08013F4C
	adds r0, r1, #0
	bl sub_803DA4C
_08013F52
	str r5, [r4, #0x48]
_08013F54
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013F5A
sub_8013F5A ;@ 0x08013F5A
	strb r1, [r0, #0x10]
	ldrh r1, [r0, #0xe]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_8013F66
sub_8013F66 ;@ 0x08013F66
	adds r0, #0x20
	strb r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_8013F6C
sub_8013F6C ;@ 0x08013F6C
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0x48]
	movs r5, #0
	adds r4, r0, #0
	cmp r1, #0
	beq _08013F90
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08013F88
	adds r3, r5, #0
	movs r2, #0
	bl sub_8041274
	b _08013F8E
_08013F88
	adds r0, r1, #0
	bl sub_803DA4C
_08013F8E
	str r5, [r4, #0x48]
_08013F90
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08013F9C
	bl sub_803DA4C
	str r5, [r4, #0x14]
_08013F9C
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08013FA8
	bl sub_803DA18
	str r5, [r4, #0x4c]
_08013FA8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8013FAE
sub_8013FAE ;@ 0x08013FAE
	push {r3, lr}
	movs r1, #0
	bl sub_80139AC
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start nullsub_41
nullsub_41 ;@ 0x08013FBC
	bx lr

	non_word_aligned_thumb_func_start nullsub_42
nullsub_42 ;@ 0x08013FBE
	bx lr

	thumb_func_start nullsub_43
nullsub_43 ;@ 0x08013FC0
	bx lr

	non_word_aligned_thumb_func_start nullsub_44
nullsub_44 ;@ 0x08013FC2
	bx lr

	thumb_func_start sub_8013FC4
sub_8013FC4 ;@ 0x08013FC4
	movs r3, #0
	cmp r1, #0
	push {r4}
	beq _08013FD2
	strh r3, [r0, #0xe]
_08013FCE
	pop {r4}
	bx lr
_08013FD2
	ldrb r1, [r0, #0xc]
	ldr r2, _08013FF0 ;@ =gUnknown_03003C40
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _08013FCE
_08013FDE
	ldrb r2, [r1, #0xc]
	ldrb r4, [r0, #0xc]
	cmp r2, r4
	bne _08013FE8
	strh r3, [r1, #0xe]
_08013FE8
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _08013FDE
	b _08013FCE
	ALIGN
_08013FF0 DCDU gUnknown_03003C40

	thumb_func_start nullsub_45
nullsub_45 ;@ 0x08013FF4
	bx lr
	ALIGN

	thumb_func_start sub_8013FF8
sub_8013FF8 ;@ 0x08013FF8
	push {r4, lr}
	adds r4, r0, #0
	bne _08014010
	movs r0, #0x60
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08014010
	adds r0, r4, #0
_0801400A
	pop {r4}
	pop {r3}
	bx r3
_08014010
	adds r0, r4, #0
	bl sub_80134B8
	ldr r0, _080142CC ;@ =_0803E6A0
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_8013E2C
	adds r0, r4, #0
	b _0801400A

	thumb_func_start sub_801402C
sub_801402C ;@ 0x0801402C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080142CC ;@ =_0803E6A0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801352C
	cmp r5, #0
	beq _08014048
	adds r0, r4, #0
	bl sub_803DA18
_08014048
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801404E
sub_801404E ;@ 0x0801404E
	push {r4, lr}
	ldr r3, [r0]
	ldr r4, [r3, #0x10]
	adds r3, r4, r3
	bl sub_803B8CE
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8014060
sub_8014060 ;@ 0x08014060
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldrh r1, [r0, #0xe]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0xe]
	bx lr

	non_word_aligned_thumb_func_start sub_801406E
sub_801406E ;@ 0x0801406E
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x30
	movs r0, #0
	movs r1, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	add r1, sp, #0x10
	add r2, sp, #0xc
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, sp, #0x28
	add r2, sp, #0x24
	add r3, sp, #0x1c
	bl sub_803F928
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _08014180
	movs r0, #0x28
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _08014180
	ldr r1, [sp, #0x30]
	ldr r5, [sp, #0x30]
	adds r1, #0x40
	str r1, [sp, #0x2c]
	adds r5, #0x20
_080140AE
	add r3, sp, #0
	movs r0, #0xc
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x18]
	movs r7, #0
	adds r0, r1, r0
	ldr r1, [sp, #0x2c]
	ldrh r1, [r1, #0x1c]
	muls r0, r1
	movs r1, #0x10
	ldrsh r1, [r3, r1]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	asrs r0, r0, #2
	ldr r1, [r1, #0x54]
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r1, [sp, #0x30]
	ldrh r0, [r1, #0x20]
	ldr r1, [sp, #0x18]
	muls r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	asrs r0, r0, #2
	ldr r1, [r1, #0x48]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r3, #0x20]
	lsls r1, r1, #2
	adds r6, r0, r1
	ldr r1, [sp, #0x18]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _08014112
	movs r1, #0x24
	ldrsh r1, [r3, r1]
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	bl sub_803F464
_08014112
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080141A0
_0801411C
	ldr r1, [r4]
	ldr r0, [r6]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r0, #0x1c
	beq _08014132
	ldrb r3, [r5, #0xe]
	lsls r2, r0, #0x1c
	lsrs r2, r2, #0x1c
	lsls r3, r3, #4
	orrs r2, r3
_08014132
	mov ip, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r1
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x1c
	beq _0801414C
	movs r2, #0xf
	ldrb r3, [r5, #0xe]
	lsls r2, r2, #8
	ands r2, r0
	lsls r3, r3, #0xc
	orrs r2, r3
_0801414C
	mov r3, ip
	orrs r3, r2
	movs r2, #0xff
	lsls r2, r2, #0x10
	mov ip, r3
	lsls r3, r0, #0xc
	ands r2, r1
	lsrs r3, r3, #0x1c
	beq _0801416A
	movs r2, #0xf
	ldrb r3, [r5, #0xe]
	lsls r2, r2, #0x10
	ands r2, r0
	lsls r3, r3, #0x14
	orrs r2, r3
_0801416A
	mov r3, ip
	orrs r2, r3
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x18
	lsls r3, r0, #4
	lsrs r3, r3, #0x1c
	beq _08014188
	movs r1, #0xf
	lsls r1, r1, #0x18
	ands r0, r1
	b _08014182
_08014180
	b _080141AC
_08014182
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #0x1c
	orrs r1, r0
_08014188
	orrs r1, r2
	adds r0, r1, #0
	stm r4!, {r0}
	movs r0, #0x24
	add r3, sp, #0
	ldrsh r0, [r3, r0]
	adds r7, #4
	lsls r7, r7, #0x10
	lsrs r7, r7, #0x10
	adds r6, #4
	cmp r7, r0
	blt _0801411C
_080141A0
	add r3, sp, #0
	movs r0, #0x28
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x18]
	cmp r1, r0
	blt _080140AE
_080141AC
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80141B4
sub_80141B4 ;@ 0x080141B4
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r2, sp, #0xc
	str r2, [sp, #8]
	add r1, sp, #0x10
	add r0, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x20
	ldr r0, [sp, #0x28]
	add r2, sp, #0x1c
	add r3, sp, #0x14
	movs r7, #0
	bl sub_803F928
	add r3, sp, #0
	movs r0, #0x1c
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080142C0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080142C0
	ldr r1, [sp, #0x28]
	adds r1, #0x40
	str r1, [sp, #0x24]
_080141EA
	add r3, sp, #0
	movs r0, #0xc
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x24]
	movs r6, #0
	ldrh r1, [r1, #0x1c]
	adds r0, r7, r0
	muls r0, r1
	movs r1, #0x10
	ldrsh r1, [r3, r1]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x28]
	asrs r0, r0, #2
	ldr r1, [r1, #0x54]
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r3, #0x14]
	ldr r1, [sp, #0x28]
	ldrh r1, [r1, #0x20]
	adds r0, r7, r0
	adds r7, #1
	muls r0, r1
	ldrh r1, [r3, #0x18]
	lsls r7, r7, #0x10
	lsrs r7, r7, #0x10
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x28]
	asrs r0, r0, #2
	ldr r1, [r1, #0x48]
	lsls r0, r0, #2
	adds r5, r0, r1
	ldr r1, [sp, #0x28]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _08014248
	movs r1, #0x1c
	movs r2, #0
	adds r0, r4, #0
	ldrsh r1, [r3, r1]
	bl sub_803F464
_08014248
	add r3, sp, #0
	movs r0, #0x1c
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080142B6
_08014252
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r0, #0x18
	beq _08014262
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
_08014262
	mov ip, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r1
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x18
	beq _08014276
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
_08014276
	mov r3, ip
	orrs r3, r2
	movs r2, #0xff
	lsls r2, r2, #0x10
	mov ip, r3
	lsls r3, r0, #8
	ands r2, r1
	lsrs r3, r3, #0x18
	beq _0801428E
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r2, r0
_0801428E
	mov r3, ip
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x18
	orrs r2, r3
	lsrs r3, r0, #0x18
	beq _0801429E
	lsrs r1, r0, #0x18
	lsls r1, r1, #0x18
_0801429E
	orrs r1, r2
	adds r0, r1, #0
	stm r4!, {r0}
	movs r0, #0x1c
	add r3, sp, #0
	ldrsh r0, [r3, r0]
	adds r6, #4
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	adds r5, #4
	cmp r6, r0
	blt _08014252
_080142B6
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r7, r0
	b _080142C2
_080142C0
	b _080142C4
_080142C2
	blt _080141EA
_080142C4
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080142CC DCDU _0803E6A0

	thumb_func_start sub_80142D0
sub_80142D0 ;@ 0x080142D0
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	sub sp, #0x34
	adds r4, r0, #0
	adds r7, r0, #0
	adds r4, #0x20
	str r1, [sp, #0x14]
	ldrb r0, [r4, #0xd]
	bl sub_80133A0
	ldrb r1, [r4, #0xe]
	ldrb r2, [r0, #0x18]
	ldr r0, [r0, #0x10]
	muls r1, r2
	lsls r1, r1, #1
	adds r3, r1, r0
	add r1, sp, #0x10
	add r0, sp, #0x1c
	add r2, sp, #0xc
	str r2, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	str r3, [sp, #0x2c]
	add r3, sp, #0x18
	add r1, sp, #0x24
	adds r0, r7, #0
	add r2, sp, #0x20
	bl sub_803F928
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080143D6
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080143D6
	ldr r3, [sp, #0x2c]
	ldrh r0, [r3]
	lsls r1, r0, #0x10
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x40
	str r1, [sp, #0x30]
	str r0, [sp, #0x28]
_0801432C
	add r3, sp, #0
	movs r0, #0xc
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x14]
	movs r6, #0
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	ldrh r1, [r1, #0x1c]
	muls r0, r1
	movs r1, #0x10
	ldrsh r1, [r3, r1]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	ldr r1, [r7, #0x54]
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r7, #0x20]
	ldr r1, [sp, #0x14]
	muls r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	ldr r1, [r7, #0x48]
	lsls r0, r0, #1
	adds r5, r0, r1
	ldr r1, [sp, #0x14]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq _08014380
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	ldr r2, [sp, #0x28]
	lsls r1, r0, #1
	adds r0, r4, #0
	bl sub_803F464
_08014380
	add r3, sp, #0
	movs r0, #0x20
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble _080143CA
_0801438A
	ldr r1, [r4]
	ldrh r0, [r5]
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r0, #0x18
	beq _0801439E
	lsls r2, r0, #0x18
	ldr r3, [sp, #0x2c]
	lsrs r2, r2, #0x17
	ldrh r2, [r3, r2]
_0801439E
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x10
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x18
	beq _080143B2
	lsrs r0, r0, #8
	ldr r3, [sp, #0x2c]
	lsls r0, r0, #1
	ldrh r0, [r3, r0]
	lsls r1, r0, #0x10
_080143B2
	orrs r1, r2
	adds r0, r1, #0
	stm r4!, {r0}
	movs r0, #0x20
	add r3, sp, #0
	ldrsh r0, [r3, r0]
	adds r6, #2
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	adds r5, #2
	cmp r6, r0
	blt _0801438A
_080143CA
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blt _0801432C
_080143D6
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_80143E0
sub_80143E0 ;@ 0x080143E0
	push {r4, lr}
	adds r4, r0, #0
	bne _080143F8
	movs r0, #0x78
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080143F8
	adds r0, r4, #0
_080143F2
	pop {r4}
	pop {r3}
	bx r3
_080143F8
	adds r0, r4, #0
	bl sub_80134B8
	ldr r0, _0801472C ;@ =_0803E700
	adds r1, r4, #0
	str r0, [r4]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x70]
	adds r1, #0x60
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #0xff
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	adds r0, r4, #0
	bl sub_8013E2C
	adds r0, r4, #0
	b _080143F2

	non_word_aligned_thumb_func_start sub_8014436
sub_8014436 ;@ 0x08014436
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801472C ;@ =_0803E700
	adds r5, r1, #0
	str r0, [r4]
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08014450
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
_08014450
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _08014460
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
_08014460
	adds r0, r4, #0
	bl sub_803F55C
	movs r1, #0
	str r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x60
	str r1, [r4, #0x60]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	bl sub_80134F8
	movs r1, #0
	adds r0, r4, #0
	bl sub_801352C
	cmp r5, #0
	beq _0801448C
	adds r0, r4, #0
	bl sub_803DA18
_0801448C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_46
nullsub_46 ;@ 0x08014492
	bx lr

	thumb_func_start sub_8014494
sub_8014494 ;@ 0x08014494
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xef
	movs r2, #0x9f
	cmp r1, #0
	beq _0801450C
	ldrh r3, [r4, #0xe]
	cmp r3, #0
	beq _0801450C
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _080144C2
	adds r4, #0x54
	ldm r4!, {r1, r3, r5, r6}
	subs r4, #0x64
	str r6, [r4, #0x54]
	ldr r6, [r4, #0x64]
	str r6, [r4, #0x58]
	ldr r6, [r4, #0x68]
	adds r4, #0x60
	stm r4!, {r1, r3, r5}
	subs r4, #0x6c
	str r6, [r4, #0x5c]
_080144C2
	adds r6, r4, #0
	adds r6, #0x60
	ldrb r1, [r6, #0xe]
	movs r7, #0
	cmp r1, #0
	bls _08014570
_080144CE
	ldrb r0, [r6, #0xf]
	movs r5, #0
	cmp r0, #0
	bls _080144FE
_080144D6
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x9f
	strh r0, [r3, #2]
	ldrb r0, [r6, #0xf]
	ldr r1, [r4, #0x54]
	muls r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	ldrb r0, [r6, #0xf]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _080144D6
_080144FE
	adds r7, #1
	ldrb r0, [r6, #0xe]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi _080144CE
	b _08014570
_0801450C
	cmp r1, #0
	bne _08014570
	ldrb r1, [r4, #0xc]
	ldr r3, _08014730 ;@ =gUnknown_03003C40
	lsls r1, r1, #2
	ldr r7, [r3, r1]
	cmp r7, #0
	beq _08014570
_0801451C
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	beq _0801456A
	adds r5, r7, #0
	adds r5, #0x60
	ldrb r0, [r5, #0xe]
	movs r6, #0
	cmp r0, #0
	bls _0801456A
_0801452E
	ldrb r0, [r5, #0xf]
	movs r4, #0
	cmp r0, #0
	bls _0801455E
_08014536
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x9f
	strh r0, [r3, #2]
	ldrb r0, [r5, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, sp
	bl sub_8040034
	adds r4, #1
	ldrb r0, [r5, #0xf]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r0, r4
	bhi _08014536
_0801455E
	adds r6, #1
	ldrb r0, [r5, #0xe]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi _0801452E
_0801456A
	ldr r7, [r7, #4]
	cmp r7, #0
	bne _0801451C
_08014570
	ldr r0, _08014734 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_80014E4
	bl sub_803D498
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014582
sub_8014582 ;@ 0x08014582
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #0x1c
	cmp r1, #0
	beq _08014668
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq _08014668
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x70]
	ldr r4, [sp, #0x1c]
	adds r4, #0x60
	cmp r0, #0
	beq _080145D4
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	movs r5, #0
	muls r0, r1
	cmp r0, #0
	bls _080145D4
	movs r6, #0xef
	add r7, sp, #4
_080145AE
	add r3, sp, #0
	strh r6, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	lsls r1, r5, #2
	ldr r0, [r0, #0x60]
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl sub_8040034
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	muls r0, r1
	cmp r0, r5
	bhi _080145AE
_080145D4
	ldr r0, [sp, #0x1c]
	movs r3, #0x1a
	ldrsh r0, [r0, r3]
	add r2, sp, #0x10
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	bl sub_803F774
	add r3, sp, #0
	ldrb r0, [r3, #0x10]
	movs r5, #0
	cmp r0, #0
	bls _080146D4
_080145F0
	ldr r0, [sp, #0x1c]
	movs r3, #0x18
	ldrsh r7, [r0, r3]
	add r3, sp, #0
	ldrb r0, [r3, #0x14]
	movs r6, #0
	cmp r0, #0
	bls _08014646
_08014600
	add r3, sp, #0
	strh r7, [r3, #4]
	ldr r0, [sp, #0xc]
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x54]
	ldrb r0, [r4, #0xf]
	muls r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x54]
	ldrb r0, [r4, #0xf]
	muls r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	adds r6, #1
	lsls r6, r6, #0x18
	adds r0, r0, r7
	lsls r7, r0, #0x10
	ldrb r0, [r3, #0x14]
	asrs r7, r7, #0x10
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo _08014600
_08014646
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0xc]
	adds r5, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	movs r0, #0
	strh r0, [r1, #0xe]
	ldrb r0, [r3, #0x10]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, r0
	blo _080145F0
	b _080146D4
_08014668
	b _0801466A
_0801466A
	cmp r1, #0
	bne _080146D4
	ldr r0, [sp, #0x1c]
	ldr r1, _08014730 ;@ =gUnknown_03003C40
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #2
	ldr r5, [r1, r0]
	cmp r5, #0
	beq _080146D4
_0801467C
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq _08014718
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	add r2, sp, #0x10
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl sub_803F774
	add r3, sp, #0
	ldrb r0, [r3, #0x10]
	movs r6, #0
	cmp r0, #0
	bls _08014714
	adds r0, r5, #0
	adds r0, #0x60
	str r0, [sp, #0x18]
_080146A2
	movs r3, #0x18
	ldrsh r7, [r5, r3]
	add r3, sp, #0
	ldrb r0, [r3, #0x14]
	movs r4, #0
	cmp r0, #0
	bls _080146FA
_080146B0
	add r3, sp, #0
	strh r7, [r3, #4]
	ldr r0, [sp, #0xc]
	strh r0, [r3, #6]
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #0xf]
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #0xf]
	b _080146D6
_080146D4
	b _0801471E
_080146D6
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	adds r4, #1
	lsls r4, r4, #0x18
	adds r0, r0, r7
	lsls r7, r0, #0x10
	ldrb r0, [r3, #0x14]
	asrs r7, r7, #0x10
	lsrs r4, r4, #0x18
	cmp r4, r0
	blo _080146B0
_080146FA
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0xc]
	adds r6, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r3, #0x10]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo _080146A2
_08014714
	movs r0, #0
	strh r0, [r5, #0xe]
_08014718
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _0801467C
_0801471E
	ldr r1, [sp, #0x1c]
	movs r0, #0
	strh r0, [r1, #0xe]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801472C DCDU _0803E700
_08014730 DCDU gUnknown_03003C40
_08014734 DCDU gUnknown_03003EB8

	thumb_func_start sub_8014738
sub_8014738 ;@ 0x08014738
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	str r2, [sp, #0x10]
	add r2, sp, #0x14
	add r1, sp, #0x18
	adds r7, r0, #0
	bl sub_803F774
	adds r6, r7, #0
	adds r6, #0x60
	ldrb r0, [r6, #0xe]
	movs r5, #0
	cmp r0, #0
	bls _080147F2
_08014758
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	movs r4, #0
	str r0, [sp, #0xc]
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	bls _080147D8
_08014766
	add r3, sp, #0
	ldrb r0, [r3, #0x18]
	cmp r4, r0
	bhs _080147B0
	ldrb r0, [r3, #0x14]
	cmp r5, r0
	bhs _080147B0
	ldr r0, [sp, #0xc]
	strh r0, [r3, #4]
	ldr r0, [sp, #0x10]
	strh r0, [r3, #6]
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b _080147CC
_080147B0
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldrb r0, [r6, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r5
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
_080147CC
	adds r4, #1
	ldrb r0, [r6, #0xf]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r0, r4
	bhi _08014766
_080147D8
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0x10]
	adds r5, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r0, [r6, #0xe]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08014758
_080147F2
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80147FA
sub_80147FA ;@ 0x080147FA
	adds r2, r1, #0
	adds r1, r0, #0
	adds r1, #0x60
	push {r4, r5, r6, r7}
	strb r2, [r1, #0xc]
	ldrb r2, [r1, #0xe]
	movs r4, #0
	cmp r2, #0
	bls _08014860
_0801480C
	ldrb r3, [r1, #0xf]
	movs r2, #0
	cmp r3, #0
	bls _08014854
_08014814
	ldrb r3, [r1, #0xf]
	ldr r5, [r0, #0x54]
	muls r3, r4
	adds r3, r3, r2
	lsls r3, r3, #2
	ldr r5, [r5, r3]
	ldrb r6, [r5, #5]
	ldrb r3, [r1, #0xc]
	cmp r6, r3
	beq _08014848
	ldrh r6, [r5, #0x2a]
	movs r7, #3
	lsls r7, r7, #0xa
	bics r6, r7
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	orrs r6, r7
	strh r6, [r5, #0x2a]
	strb r3, [r5, #5]
	ldr r3, [r5]
	lsls r6, r3, #0x16
	bmi _08014848
	movs r6, #0x80
	orrs r3, r6
	str r3, [r5]
_08014848
	adds r2, #1
	ldrb r3, [r1, #0xf]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r3, r2
	bhi _08014814
_08014854
	adds r4, #1
	ldrb r2, [r1, #0xe]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r2, r4
	bhi _0801480C
_08014860
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_8014864
sub_8014864 ;@ 0x08014864
	adds r2, r0, #0
	adds r2, #0x60
	push {r4, r5, r6, r7}
	strb r1, [r2, #0xd]
	ldrb r1, [r2, #0xe]
	movs r4, #0
	cmp r1, #0
	bls _080148BA
	movs r7, #3
	lsls r7, r7, #0xa
_08014878
	ldrb r1, [r2, #0xf]
	movs r3, #0
	cmp r1, #0
	bls _080148AE
_08014880
	ldrb r1, [r2, #0xf]
	ldr r5, [r0, #0x54]
	muls r1, r4
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r5, [r2, #0xd]
	ldrh r6, [r1, #0x26]
	adds r3, #1
	lsls r5, r5, #0x1e
	lsrs r5, r5, #0x14
	bics r6, r7
	orrs r5, r6
	strh r5, [r1, #0x26]
	ldr r5, [r1]
	movs r6, #0x80
	orrs r5, r6
	str r5, [r1]
	ldrb r1, [r2, #0xf]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r1, r3
	bhi _08014880
_080148AE
	adds r4, #1
	ldrb r1, [r2, #0xe]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r1, r4
	bhi _08014878
_080148BA
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_80148BE
sub_80148BE ;@ 0x080148BE
	push {r4, r5, r6, r7, lr}
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
	lsls r5, r2, #0x10
	adds r4, r0, #0
	asrs r5, r5, #0x10
	sub sp, #0x5c
	bl sub_8040104
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080148E0
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
_080148E0
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _080148F0
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
_080148F0
	movs r7, #0
	str r7, [r4, #0x54]
	movs r0, #0
	lsls r1, r5, #0x1d
	str r7, [r4, #0x64]
	beq _08014906
	lsrs r1, r5, #3
	lsls r1, r1, #3
	adds r1, #8
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
_08014906
	lsls r1, r6, #0x1d
	beq _08014914
	lsrs r1, r6, #3
	lsls r1, r1, #3
	adds r1, #8
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
_08014914
	strh r5, [r4, #0x28]
	strh r6, [r4, #0x2a]
	cmp r5, #0
	ble _0801494E
	add r3, sp, #8
_0801491E
	cmp r5, #0x20
	blt _08014928
	movs r1, #2
	strb r1, [r3, r0]
	b _08014934
_08014928
	cmp r5, #8
	ble _08014932
	movs r1, #1
	strb r1, [r3, r0]
	b _08014934
_08014932
	strb r7, [r3, r0]
_08014934
	adds r1, r0, #1
	lsls r1, r1, #0x18
	adds r2, r0, #0
	ldrb r2, [r3, r2]
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r1, #8
	lsls r1, r2
	subs r1, r5, r1
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0
	bgt _0801491E
_0801494E
	adds r5, r4, #0
	adds r5, #0x60
	strb r0, [r5, #0xe]
	movs r0, #0
	cmp r6, #0
	ble _0801498C
	add r3, sp, #0x28
_0801495C
	cmp r6, #0x20
	blt _08014966
	movs r1, #2
	strb r1, [r3, r0]
	b _08014972
_08014966
	cmp r6, #8
	ble _08014970
	movs r1, #1
	strb r1, [r3, r0]
	b _08014972
_08014970
	strb r7, [r3, r0]
_08014972
	adds r1, r0, #1
	lsls r1, r1, #0x18
	adds r2, r0, #0
	ldrb r2, [r3, r2]
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	movs r1, #8
	lsls r1, r2
	subs r1, r6, r1
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
	cmp r6, #0
	bgt _0801495C
_0801498C
	strb r0, [r5, #0xf]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x54]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x58]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r0, r0, #3
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	movs r6, #0
	str r0, [r4, #0x5c]
	str r6, [sp, #0x4c]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bls _08014AC8
	adds r1, r4, #0
	adds r1, #0x70
	str r1, [sp, #0x58]
_080149EA
	movs r2, #0
	str r2, [sp, #0x48]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bls _08014ACA
_080149F4
	ldr r0, _08014DBC ;@ =gUnknown_03003EB8
	add r1, sp, #0x28
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	ldrb r3, [r1, r2]
	movs r1, #8
	adds r2, r1, #0
	lsls r2, r3
	mov r3, sp
	ldr r7, [sp, #0x4c]
	adds r3, r3, r1
	ldrb r3, [r3, r7]
	lsls r1, r3
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r1, [r3, #6]
	lsls r2, r6, #2
	adds r2, r2, r6
	lsls r2, r2, #2
	ldr r1, [r4, #0x58]
	str r2, [sp, #0x54]
	adds r2, r1, r2
	ldr r1, [r4, #0x5c]
	lsls r3, r6, #3
	str r3, [sp, #0x50]
	adds r1, r1, r3
	add r3, sp, #4
	bl sub_80015F2
	ldr r0, _08014DBC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [r4, #0x54]
	lsls r7, r6, #2
	str r0, [r1, r7]
	ldr r1, [r4, #0x58]
	ldr r2, [sp, #0x54]
	adds r2, r1, r2
	ldr r1, [r4, #0x5c]
	ldr r3, [sp, #0x50]
	adds r1, r1, r3
	bl sub_803FE80
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldr r0, [r4, #0x54]
	add r1, sp, #4
	ldr r0, [r0, r7]
	bl sub_8040034
	ldr r0, [r4, #0x54]
	ldr r2, _08014DC0 ;@ =gUnknown_030031EE
	ldr r0, [r0, r7]
	ldr r1, [sp, #0x58]
	ldrb r1, [r1, #4]
	ldrb r1, [r2, r1]
	bl sub_803FF64
	ldr r0, [r4, #0x54]
	ldrb r1, [r5, #0xd]
	ldr r0, [r0, r7]
	movs r3, #3
	ldrh r2, [r0, #0x26]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x54]
	ldr r1, [r0, r7]
	ldrb r2, [r1, #5]
	ldrb r0, [r5, #0xc]
	cmp r2, r0
	beq _08014AB6
	ldrh r2, [r1, #0x2a]
	bics r2, r3
	lsls r3, r0, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r1, #0x2a]
	strb r0, [r1, #5]
	ldr r0, [r1]
	lsls r2, r0, #0x16
	bmi _08014AB6
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1]
_08014AB6
	ldr r0, [r4, #0x54]
	movs r1, #1
	ldr r0, [r0, r7]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	b _08014ACC
_08014AC8
	b _08014AEE
_08014ACA
	b _08014ADC
_08014ACC
	ldr r2, [sp, #0x48]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x48]
	ldrb r0, [r5, #0xf]
	cmp r0, r2
	bhi _080149F4
_08014ADC
	ldr r7, [sp, #0x4c]
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	str r7, [sp, #0x4c]
	ldrb r0, [r5, #0xe]
	cmp r0, r7
	bls _08014AEE
	b _080149EA
_08014AEE
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _08014AFA
	adds r0, r4, #0
	bl sub_803EF2C
_08014AFA
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014B02
sub_8014B02 ;@ 0x08014B02
	push {r3, lr}
	ldr r2, [r0, #0x70]
	cmp r2, r1
	beq _08014B1A
	str r1, [r0, #0x70]
	cmp r1, #0
	beq _08014B20
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _08014B20
	bl sub_803EF2C
_08014B1A
	add sp, #4
	pop {r3}
	bx r3
_08014B20
	cmp r1, #0
	bne _08014B1A
	ldr r1, [r0, #0x60]
	cmp r1, #0
	beq _08014B1A
	ldr r2, [r0, #0x64]
	ldr r3, [r0, #0x68]
	bl sub_803F5FC
	b _08014B1A

	thumb_func_start sub_8014B34
sub_8014B34 ;@ 0x08014B34
	push {r4, lr}
	lsls r3, r1, #0x1d
	beq _08014B48
	lsls r3, r1, #0x1d
	lsrs r3, r3, #0x1d
	movs r4, #8
	subs r3, r4, r3
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_08014B48
	ldr r3, [r0]
	ldr r4, [r3, #0x10]
	adds r3, r4, r3
	bl sub_803B8CE
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8014B58
sub_8014B58 ;@ 0x08014B58
	adds r1, r0, #0
	ldr r1, [r1, #0x54]
	movs r0, #1
	cmp r1, #0
	bne _08014B64
	movs r0, #0
_08014B64
	bx lr

	non_word_aligned_thumb_func_start sub_8014B66
sub_8014B66 ;@ 0x08014B66
	push {r3, lr}
	str r1, [r0, #0x40]
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	movs r1, #0x2e
	ldrb r1, [r1, r0]
	bl sub_803B8CC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014B7E
sub_8014B7E ;@ 0x08014B7E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_803F55C
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8013E64
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014B96
sub_8014B96 ;@ 0x08014B96
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r4, r1, #0
	movs r1, #0
	adds r7, r0, #0
	movs r0, #0xff
	str r1, [sp, #0x1c]
	movs r1, #0xff
	movs r6, #0xff
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	adds r0, r7, #0
	str r6, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_803F55C
	adds r1, r4, #0
	adds r0, r7, #0
	bl sub_8013F66
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [sp, #0x20]
	ldrb r0, [r0, #0xd]
	lsls r1, r0, #8
	orrs r1, r4
	adds r5, r1, #0
	bl sub_80133A0
	str r0, [sp, #4]
	movs r0, #0
	adds r4, r7, #0
	adds r4, #0x70
_08014BD8
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	lsls r1, r0, #3
	ldrh r2, [r2, r1]
	mov ip, r2
	cmp r2, r5
	bne _08014BF0
	ldr r2, [r7, #0x40]
	cmp r2, #0
	bne _08014BF0
	adds r6, r0, #0
	str r2, [sp, #8]
	b _08014C1C
_08014BF0
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	adds r2, r1, r2
	ldrh r3, [r2, #2]
	cmp r3, r5
	bne _08014C02
	adds r6, r0, #0
	movs r2, #1
	str r2, [sp, #8]
	b _08014C1C
_08014C02
	ldrh r3, [r2, #4]
	cmp r3, r5
	bne _08014C10
	adds r6, r0, #0
	movs r2, #2
	str r2, [sp, #8]
	b _08014C1C
_08014C10
	ldrh r2, [r2, #6]
	cmp r2, r5
	bne _08014C1C
	adds r6, r0, #0
	movs r2, #3
	str r2, [sp, #8]
_08014C1C
	ldr r3, _08014DC8 ;@ =0x0000FFFF
	cmp ip, r3
	bne _08014C42
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	adds r2, r1, r2
	mov lr, r2
	ldrh r2, [r2, #2]
	cmp r2, r3
	bne _08014C42
	mov r2, lr
	ldrh r2, [r2, #4]
	cmp r2, r3
	bne _08014C42
	mov r2, lr
	ldrh r2, [r2, #6]
	cmp r2, r3
	bne _08014C42
	str r0, [sp, #0x14]
	b _08014C84
_08014C42
	cmp r6, #0xff
	bne _08014C84
	cmp ip, r3
	bne _08014C58
	ldr r2, [r7, #0x40]
	cmp r2, #0
	bne _08014C58
	movs r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08014C84
_08014C58
	ldr r2, _08014DC4 ;@ =gUnknown_030031FE
	adds r1, r1, r2
	ldrh r2, [r1, #2]
	cmp r2, r3
	bne _08014C6A
	movs r1, #1
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08014C84
_08014C6A
	ldrh r2, [r1, #4]
	cmp r2, r3
	bne _08014C78
	movs r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	b _08014C84
_08014C78
	ldrh r1, [r1, #6]
	cmp r1, r3
	bne _08014C84
	movs r1, #3
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_08014C84
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhs _08014C94
	cmp r6, #0xff
	beq _08014BD8
	b _08014C98
_08014C94
	cmp r6, #0xff
	beq _08014CA0
_08014C98
	strb r6, [r4, #4]
	ldr r2, [sp, #8]
	strb r2, [r4, #5]
	b _08014D66
_08014CA0
	ldr r0, [sp, #0x10]
	ldr r6, _08014DCC ;@ =0x05000200
	cmp r0, #0xff
	beq _08014CE6
	ldr r0, [sp, #0x10]
	ldr r3, _08014DC4 ;@ =gUnknown_030031FE
	strb r0, [r4, #4]
	ldr r1, [sp, #0xc]
	lsls r0, r0, #3
	strb r1, [r4, #5]
	lsls r1, r1, #1
	adds r0, r0, r3
	strh r5, [r0, r1]
	ldr r0, [sp, #0x20]
	ldr r3, _08014DC0 ;@ =gUnknown_030031EE
	ldrb r1, [r0, #0xe]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x18]
	ldr r2, [sp, #4]
	ldr r2, [r2, #0x10]
	muls r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r2, [r4, #5]
	muls r2, r0
	ldrb r0, [r4, #4]
	ldrb r0, [r3, r0]
	lsls r0, r0, #4
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #8
	bl sub_803F3E8
	b _08014D66
_08014CE6
	ldr r0, _08014DD0 ;@ =gUnknown_03003EA0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800BBF4
	ldr r2, _08014DC0 ;@ =gUnknown_030031EE
	ldr r1, [sp, #0x14]
	strb r0, [r2, r1]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #4]
	ldr r1, [r7, #0x40]
	movs r0, #1
	cmp r1, #0
	bne _08014D04
	movs r0, #0
_08014D04
	strb r0, [r4, #5]
	ldr r1, [sp, #4]
	ldrb r1, [r1, #0x18]
	cmp r1, #4
	bls _08014D34
	ldr r1, [sp, #0x14]
	ldr r3, _08014DC4 ;@ =gUnknown_030031FE
	lsls r1, r1, #3
	adds r1, r1, r3
	lsls r0, r0, #1
	strh r5, [r1, r0]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #2]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r1, r0
	strh r5, [r0, #6]
	b _08014D40
_08014D34
	ldr r1, [sp, #0x14]
	ldr r3, _08014DC4 ;@ =gUnknown_030031FE
	lsls r1, r1, #3
	adds r1, r1, r3
	lsls r0, r0, #1
	strh r5, [r1, r0]
_08014D40
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, #0xe]
	ldr r1, [sp, #4]
	ldrb r5, [r4, #4]
	ldrb r3, [r1, #0x18]
	ldr r1, [r1, #0x10]
	muls r0, r3
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrb r0, [r4, #5]
	ldrb r2, [r2, r5]
	muls r0, r3
	lsls r2, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	lsls r2, r3, #1
	bl sub_803F3E8
_08014D66
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x60
	str r1, [sp, #0x18]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bls _08014DB4
_08014D74
	ldrb r0, [r5, #0xf]
	movs r6, #0
	cmp r0, #0
	bls _08014DA4
_08014D7C
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x1c]
	ldr r2, _08014DC0 ;@ =gUnknown_030031EE
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldrb r1, [r4, #4]
	ldrb r1, [r2, r1]
	bl sub_803FF64
	ldr r1, [sp, #0x1c]
	adds r6, #1
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x1c]
	ldrb r0, [r5, #0xf]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi _08014D7C
_08014DA4
	ldr r1, [sp, #0x18]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	ldrb r0, [r5, #0xe]
	cmp r0, r1
	bhi _08014D74
_08014DB4
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08014DBC DCDU gUnknown_03003EB8
_08014DC0 DCDU gUnknown_030031EE
_08014DC4 DCDU gUnknown_030031FE
_08014DC8 DCDU 0x0000FFFF
_08014DCC DCDU 0x05000200
_08014DD0 DCDU gUnknown_03003EA0

	thumb_func_start sub_8014DD4
sub_8014DD4 ;@ 0x08014DD4
	push {r4, r5, r6, r7}
	ldr r6, _08014EB0 ;@ =gUnknown_030031FE
	ldr r4, _08014EAC ;@ =gUnknown_030031EE
	movs r1, #0
	ldr r2, _08014EB4 ;@ =0x0000FFFF
	movs r5, #0xff
_08014DE0
	movs r0, #0
	lsls r3, r1, #3
	adds r3, r3, r6
	strb r5, [r4, r1]
_08014DE8
	lsls r7, r0, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	strh r2, [r3, r7]
	blo _08014DE8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x10
	blo _08014DE0
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_8014E04
sub_8014E04 ;@ 0x08014E04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_803F55C
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08014E1C
	ldr r2, [r4, #0x58]
	ldr r3, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_803F5FC
_08014E1C
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _08014E2C
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x68]
	adds r0, r4, #0
	bl sub_803F5FC
_08014E2C
	movs r1, #0
	str r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x60
	str r1, [r4, #0x60]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	bl sub_8013F6C
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014E46
sub_8014E46 ;@ 0x08014E46
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	ldrh r2, [r0, #0x1e]
	ldrh r1, [r0, #0x20]
	bl sub_803B8CE
	ldr r1, [r4]
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	adds r0, r4, #0
	movs r1, #0x2e
	ldrb r1, [r1, r4]
	bl sub_803B8CC
	movs r1, #0
	adds r0, r4, #0
	bl sub_80139AC
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8014E76
sub_8014E76 ;@ 0x08014E76
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x60
	adds r6, r0, #0
	ldrb r0, [r5, #0xe]
	adds r7, r1, #0
	ldrb r1, [r5, #0xf]
	movs r4, #0
	muls r0, r1
	cmp r0, #0
	ble _08014EA4
_08014E8C
	ldr r0, [r6, #0x54]
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl sub_80401E4
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	adds r4, #1
	muls r0, r1
	cmp r0, r4
	bgt _08014E8C
_08014EA4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08014EAC DCDU gUnknown_030031EE
_08014EB0 DCDU gUnknown_030031FE
_08014EB4 DCDU 0x0000FFFF

	thumb_func_start sub_8014EB8
sub_8014EB8 ;@ 0x08014EB8
	movs r3, #0
	NEGS r0, r2
	cmp r1, #0
	push {r4, r5}
	bge _08014ED0
	NEGS r1, r1
	cmp r2, #0
	ble _08014ECC
	movs r3, #1
	b _08014EDC
_08014ECC
	adds r2, r0, #0
	b _08014EDC
_08014ED0
	cmp r2, #0
	bge _08014EDC
	adds r2, r0, #0
	cmp r1, #0
	ble _08014EDC
	movs r3, #1
_08014EDC
	asrs r0, r1, #0x10
	asrs r4, r2, #0x10
	adds r5, r0, #0
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	muls r5, r4
	muls r4, r1
	muls r1, r2
	muls r0, r2
	lsls r2, r5, #0x10
	adds r0, r2, r0
	adds r0, r0, r4
	asrs r1, r1, #0x10
	adds r0, r0, r1
	cmp r3, #0
	beq _08014F02
	NEGS r0, r0
_08014F02
	pop {r4, r5}
	bx lr
_08014F06
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x28]
	adds r4, r0, #0
	ldr r0, [r0, #0x20]
	ldr r3, [r4, #0x24]
	subs r2, r1, r0
	ldr r1, [r4, #0x2c]
	adds r6, r2, #0
	subs r7, r1, r3
	ldr r1, [r4, #0x30]
	sub sp, #0xc
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x2c]
	subs r2, r1, r0
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r5, r0
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	str r0, [sp, #4]
	adds r2, r7, #0
	adds r1, r7, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xc0
	str r1, [sp, #8]
	cmp r5, #0
	ble _08014FB2
	cmp r5, r0
	bge _08014FB2
	lsls r1, r5, #4
	asrs r0, r0, #6
	bl sub_803C04C
	adds r2, r0, #0
	muls r2, r6
	ldr r1, [r4, #0x20]
	asrs r2, r2, #0xa
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	muls r0, r7
	asrs r0, r0, #0xa
	adds r0, r2, r0
	ldr r2, [r4, #0x30]
	subs r1, r1, r2
	ldr r2, [r4, #0x34]
	subs r5, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r6, r0, #0
	adds r2, r5, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8014EB8
	ldr r1, [sp, #8]
	adds r5, r6, r0
	ldr r1, [r1, #0x20]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	cmp r5, r0
	bgt _08015010
	movs r0, #1
_08014FAA
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08014FB2
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	subs r1, r0, r1
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x34]
	subs r5, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r6, r0, #0
	adds r2, r5, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r5, r6, r0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x30]
	subs r1, r0, r1
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x34]
	subs r6, r0, r2
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r7, r0, #0
	adds r2, r6, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r0, r7, r0
	cmp r0, r5
	bge _08014FFC
	adds r5, r0, #0
_08014FFC
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x20]
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	cmp r5, r0
	bge _08015010
	movs r0, #1
	b _08014FAA
_08015010
	movs r0, #0
	b _08014FAA

	thumb_func_start sub_8015014
sub_8015014 ;@ 0x08015014
	lsls r3, r1, #2
	adds r1, r3, r1
	ldr r2, _08015374 ;@ =gUnknown_08050410
	lsls r1, r1, #2
	push {r4, r5, r6, r7}
	ldr r3, [r2, r1]
	adds r1, r1, r2
	adds r6, r1, #4
	ldrb r7, [r1, #0x10]
	adds r2, r0, #0
	adds r2, #0x30
	ldm r6!, {r4, r5, r6}
	strb r7, [r2, #8]
	ldrb r1, [r1, #0x11]
	strb r1, [r2, #9]
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	adds r3, r1, r3
	adds r1, r1, r5
	adds r4, r2, r4
	lsls r1, r1, #0x10
	lsls r4, r4, #0x10
	adds r2, r2, r6
	lsls r3, r3, #0x10
	lsls r2, r2, #0x10
	str r1, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x20]
	str r4, [r0, #0x24]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x34]
	pop {r4, r5, r6, r7}
	b _08014F06

	non_word_aligned_thumb_func_start sub_801505A
sub_801505A ;@ 0x0801505A
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r2, [r5, #0x20]
	movs r3, #1
	lsls r3, r3, #0x12
	ldr r0, [r0, #0x10]
	adds r1, r2, r3
	subs r7, r0, r1
	ldr r6, [r4, #0x14]
	adds r0, r0, r2
	adds r2, r6, r2
	subs r1, r6, r1
	lsrs r6, r7, #0x10
	ldr r7, [r4, #8]
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	adds r2, r2, r3
	lsrs r3, r2, #0x10
	asrs r0, r7
	adds r2, r0, #0
	ldr r0, [r4, #0xc]
	lsrs r6, r7
	lsrs r1, r1, #0x10
	lsrs r1, r0
	adds r7, r1, #0
	sub sp, #0x2c
	asrs r3, r0
	subs r0, r3, r7
	subs r2, r2, r6
	adds r2, #1
	adds r0, #1
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r6, [sp, #0x1c]
	str r7, [sp, #0x18]
	ldr r1, [r4]
	str r1, [sp, #0x28]
	cmp r1, r6
	bgt _080150BC
	adds r1, r6, #0
	ldr r0, [sp, #0x28]
	bl sub_803C04C
	ldr r1, [sp, #0x28]
	muls r1, r0
	subs r6, r6, r1
	b _080150D0
_080150BC
	cmp r6, #0
	bge _080150D0
	adds r1, r6, #0
	ldr r0, [sp, #0x28]
	bl sub_803C04C
	ldr r1, [sp, #0x28]
	muls r0, r1
	subs r0, r6, r0
	adds r6, r1, r0
_080150D0
	ldr r1, [r4, #4]
	str r1, [sp, #0x24]
	cmp r1, r7
	bgt _080150E8
	adds r1, r7, #0
	ldr r0, [sp, #0x24]
	bl sub_803C04C
	ldr r1, [sp, #0x24]
	muls r1, r0
	subs r7, r7, r1
	b _080150FC
_080150E8
	cmp r7, #0
	bge _080150FC
	adds r1, r7, #0
	ldr r0, [sp, #0x24]
	bl sub_803C04C
	ldr r1, [sp, #0x24]
	muls r0, r1
	subs r0, r7, r0
	adds r7, r1, r0
_080150FC
	ldr r0, _08015378 ;@ =gUnknown_03003EA4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	movs r2, #1
	movs r1, #0
	ldr r0, [r0, #0x50]
	bl sub_8001B80
	ldr r0, [r0, #0x10]
	ldr r1, [r4]
	adds r3, r0, r6
	adds r2, r1, #0
	muls r2, r7
	adds r6, r2, r3
	adds r3, r1, r0
	adds r2, r2, r3
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldr r2, [r4, #4]
	muls r1, r2
	adds r2, r1, r0
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	lsls r1, r0
	str r1, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x18]
	lsls r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	cmp r0, #0
	ble _0801522A
	adds r0, r4, #0
	adds r0, #0x30
	str r0, [sp, #0x20]
_0801514C
	ldr r0, [sp, #0x1c]
	ldr r6, [sp, #0xc]
	str r0, [r4, #0x18]
	ldr r7, [sp, #0x14]
	cmp r7, #0
	ble _080151EC
_08015158
	ldrb r1, [r6]
	cmp r1, #0
	beq _080151CE
	cmp r1, #0x1a
	bhs _080151CE
	adds r0, r4, #0
	bl sub_8015014
	cmp r0, #0
	beq _080151CE
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x20]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x3c]
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x24]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x40]
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x28]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x44]
	ldr r1, [r5, #0x1c]
	ldr r0, [r4, #0x2c]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x48]
	ldr r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	ldrb r0, [r0, #8]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, #0x40
	strb r0, [r1, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [r5, #0x1c]
	ldrb r0, [r0, #9]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, #0x40
	strb r0, [r1, #0xd]
	ldr r0, [r5, #0x1c]
	adds r0, #1
	str r0, [r5, #0x1c]
_080151CE
	ldr r2, [r4, #8]
	movs r1, #1
	ldr r0, [r4, #0x18]
	lsls r1, r2
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [sp, #8]
	adds r6, #1
	cmp r6, r0
	blo _080151E6
	ldr r0, [r4]
	subs r6, r6, r0
_080151E6
	subs r7, #1
	cmp r7, #0
	bgt _08015158
_080151EC
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	movs r2, #1
	adds r1, r0, r1
	str r1, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x1c]
	lsls r2, r3
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	cmp r1, r2
	blo _0801521E
	ldr r1, [r4, #4]
	muls r0, r1
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	str r0, [sp, #8]
_0801521E
	ldr r0, [sp]
	subs r0, #1
	str r0, [sp]
	cmp r0, #0
	bgt _0801514C
	b _0801522C
_0801522A
	b _0801522C
_0801522C
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0801523C
	movs r0, #1
_08015234
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801523C
	movs r0, #0
	b _08015234

	thumb_func_start sub_8015240
sub_8015240 ;@ 0x08015240
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x10]
	adds r6, r0, #0
	adds r0, #0xc0
	ldr r4, [r0, #0x20]
	movs r5, #1
	lsls r5, r5, #0x12
	adds r3, r4, r5
	subs r0, r2, r3
	adds r2, r2, r4
	ldr r7, [r6, #0x14]
	adds r2, r2, r5
	adds r4, r7, r4
	adds r4, r4, r5
	ldr r5, [r1]
	subs r3, r7, r3
	cmp r5, #0
	sub sp, #0xc
	ble _0801526A
	adds r2, r5, r2
	b _0801526C
_0801526A
	adds r0, r5, r0
_0801526C
	ldr r1, [r1, #4]
	cmp r1, #0
	ble _08015276
	adds r4, r1, r4
	b _08015278
_08015276
	adds r3, r1, r3
_08015278
	ldr r5, [r6, #8]
	lsrs r2, r2, #0x10
	asrs r2, r5
	lsrs r1, r3, #0x10
	adds r3, r2, #0
	ldr r2, [r6, #0xc]
	lsrs r0, r0, #0x10
	lsrs r4, r4, #0x10
	asrs r4, r2
	lsrs r0, r5
	adds r7, r4, #0
	lsrs r1, r2
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r3, r4
	subs r1, r7, r5
	adds r1, #1
	adds r0, #1
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r7, [r6]
	cmp r7, r4
	bgt _080152B4
	adds r1, r4, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r7, r0
	subs r4, r4, r7
	b _080152CC
_080152B4
	cmp r4, #0
	bge _080152CC
	adds r1, r4, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r0, r7
	subs r0, r4, r0
	adds r4, r7, r0
	cmp r7, r4
	bne _080152CC
	movs r4, #0
_080152CC
	ldr r7, [r6, #4]
	cmp r7, r5
	bgt _080152E0
	adds r1, r5, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r7, r0
	subs r5, r5, r7
	b _080152F8
_080152E0
	cmp r4, #0
	bge _080152F8
	adds r1, r5, #0
	adds r0, r7, #0
	bl sub_803C04C
	muls r0, r7
	subs r0, r5, r0
	adds r5, r7, r0
	cmp r7, r5
	bne _080152F8
	movs r5, #0
_080152F8
	ldr r0, _08015378 ;@ =gUnknown_03003EA4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	movs r2, #1
	movs r1, #0
	ldr r0, [r0, #0x50]
	bl sub_8001B80
	ldr r3, [r0, #0x10]
	ldr r0, [r6]
	adds r1, r3, r4
	adds r2, r0, #0
	muls r2, r5
	adds r1, r2, r1
	adds r4, r0, r3
	adds r2, r2, r4
	adds r4, r3, #0
	ldr r5, [r6, #4]
	adds r3, r0, #0
	muls r3, r5
	ldr r5, [sp, #4]
	adds r4, r3, r4
	cmp r5, #0
	mov ip, r5
	ble _08015370
_08015330
	ldr r6, [sp, #8]
	adds r5, r1, #0
	cmp r6, #0
	ble _0801535A
_08015338
	ldrb r7, [r5]
	cmp r7, #0
	beq _0801534C
	cmp r7, #0x1a
	bhs _0801534C
	movs r0, #1
_08015344
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801534C
	adds r5, #1
	cmp r5, r2
	blo _08015354
	subs r5, r5, r0
_08015354
	subs r6, #1
	cmp r6, #0
	bgt _08015338
_0801535A
	adds r1, r0, r1
	adds r2, r0, r2
	cmp r1, r4
	blo _08015366
	subs r1, r1, r3
	subs r2, r2, r3
_08015366
	mov r5, ip
	subs r5, #1
	mov ip, r5
	cmp r5, #0
	bgt _08015330
_08015370
	movs r0, #0
	b _08015344
	ALIGN
_08015374 DCDU gUnknown_08050410
_08015378 DCDU gUnknown_03003EA4

	thumb_func_start sub_801537C
sub_801537C ;@ 0x0801537C
	push {r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r4, r0, #0
	adds r0, #0xc0
	movs r2, #0
	sub sp, #0x14
	ldr r3, _080154D4 ;@ =gUnknown_03003EA4
	str r2, [r0, #0x1c]
	ldr r2, [r3]
	movs r5, #0x13
	lsls r5, r5, #7
	adds r2, r2, r5
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	str r2, [r4]
	ldr r2, [r3]
	adds r2, r2, r5
	ldr r3, [r2, #0x20]
	ldr r3, [r3, #0x50]
	ldrh r3, [r3, #0xe]
	str r3, [r4, #4]
	ldr r3, [r2, #0x20]
	ldr r3, [r3, #0x54]
	ldr r3, [r3, #4]
	lsls r3, r3, #5
	lsrs r3, r3, #0x1d
	str r3, [r4, #8]
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x54]
	ldr r2, [r2, #4]
	lsls r2, r2, #2
	lsrs r2, r2, #0x1d
	str r2, [r4, #0xc]
	adds r2, r1, #0
	adds r2, #0x2c
	str r2, [sp, #0x10]
	ldr r2, [r1, #0x2c]
	str r2, [r4, #0x10]
	ldr r2, [sp, #0x10]
	ldr r2, [r2, #4]
	str r2, [r4, #0x14]
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	adds r2, r1, #0
	str r1, [r0, #0x20]
	muls r1, r2
	str r1, [r0, #0x24]
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8015240
	cmp r0, #0
	bne _080153F6
_080153EE
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080153F6
	ldr r1, [r6]
	str r1, [sp, #8]
	adds r2, r1, #0
	adds r0, r4, #0
	ldr r7, [r6, #4]
	bl sub_8014EB8
	ldr r1, [r6, #4]
	adds r5, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	bl sub_8014EB8
	adds r0, r5, r0
	bl sub_803E1DC
	asrs r0, r0, #8
	movs r5, #0
	cmp r0, #2
	bgt _08015422
	movs r5, #1
	b _08015438
_08015422
	cmp r0, #4
	bgt _0801542A
	movs r5, #2
	b _08015438
_0801542A
	cmp r0, #8
	bgt _08015432
	movs r5, #3
	b _08015438
_08015432
	cmp r0, #0x10
	bgt _08015438
	movs r5, #4
_08015438
	movs r0, #1
	lsls r0, r5
	movs r1, #1
	str r1, [sp, #4]
	cmp r0, #1
	str r0, [sp, #0xc]
	blt _08015496
_08015446
	ldr r0, [sp, #0x10]
	ldr r1, [r0]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #4]
	ldr r2, [sp, #8]
	asrs r2, r5
	adds r1, r1, r2
	str r1, [r4, #0x10]
	adds r1, r7, #0
	asrs r1, r5
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_801505A
	cmp r0, #0
	ldr r0, [r6]
	beq _08015480
	ldr r1, [sp, #8]
	ldr r2, _080154D8 ;@ =gUnknown_030033D0
	subs r0, r1, r0
	ldr r1, [r6, #4]
	asrs r0, r5
	subs r1, r7, r1
	asrs r1, r5
	stm r2!, {r0, r1}
	movs r0, #1
	b _080153EE
_08015480
	ldr r2, [sp, #8]
	adds r2, r0, r2
	str r2, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [sp, #4]
	adds r7, r0, r7
	ldr r0, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, r1
	bge _08015446
_08015496
	movs r0, #0
	b _080153EE

	non_word_aligned_thumb_func_start sub_801549A
sub_801549A ;@ 0x0801549A
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x3c
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_80154AA
sub_80154AA ;@ 0x080154AA
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x44
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	bx lr

	non_word_aligned_thumb_func_start sub_80154BA
sub_80154BA ;@ 0x080154BA
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r2, #0x40
	ldrb r1, [r2, #0xc]
	ldrb r2, [r2, #0xd]
	strb r1, [r0]
	strb r2, [r0, #1]
	bx lr

	non_word_aligned_thumb_func_start sub_80154CE
sub_80154CE ;@ 0x080154CE
	adds r0, #0xc0
	ldr r0, [r0, #0x1c]
	bx lr
	ALIGN
_080154D4 DCDU gUnknown_03003EA4
_080154D8 DCDU gUnknown_030033D0

	thumb_func_start sub_80154DC
sub_80154DC ;@ 0x080154DC
	push {r4, lr}
	adds r4, r0, #0
	bne _080154F6
	movs r0, #0x6d
	lsls r0, r0, #3
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080154F6
	adds r0, r4, #0
_080154F0
	pop {r4}
	pop {r3}
	bx r3
_080154F6
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _080158AC ;@ =_0803E314
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_80143E0
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	bl sub_80143E0
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0x78
	adds r0, #0x81
	ldr r3, _080158B0 ;@ =sub_80143E0
	bl sub_803C3A4
	movs r0, #3
	strh r0, [r4, #4]
	ldr r0, _080158B4 ;@ =gUnknown_03003E88
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r1, #0
	movs r0, #0xf8
	strb r1, [r0, r4]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x61
	strh r1, [r0, #0x1c]
	mvns r2, r1
	strh r2, [r0, #0x1e]
	movs r0, #0xff
	adds r0, #1
	str r1, [r0, r4]
	movs r0, #0
_0801554E
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #8
	str r1, [r2, #8]
	blo _0801554E
	movs r0, #0
_08015560
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x28]
	blo _08015560
	movs r0, #0
_08015572
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x30]
	blo _08015572
	adds r0, r4, #0
	str r1, [r4, #0x3c]
	b _080154F0

	thumb_func_start sub_8015588
sub_8015588 ;@ 0x08015588
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080158AC ;@ =_0803E314
	adds r5, r1, #0
	adds r1, r4, #0
	str r0, [r4]
	movs r0, #0x5d
	adds r1, #0xff
	movs r2, #0x77
	mvns r2, r2
	adds r1, #9
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r3, _080158B8 ;@ =sub_8014436
	bl sub_803C3C8
	adds r0, r4, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #5
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq _080155D0
	adds r0, r4, #0
	bl sub_803DA18
_080155D0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80155D6
sub_80155D6 ;@ 0x080155D6
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	adds r4, r0, #0
	movs r7, #0
_080155DE
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _080155F6
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	adds r1, #8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
_080155F6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _080155DE
	movs r5, #0
_08015602
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0801561A
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
_0801561A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08015602
	ldr r6, _080158BC ;@ =gUnknown_03003EB8
	movs r5, #0
_08015628
	lsls r0, r5, #2
	adds r7, r0, r4
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _08015640
	adds r1, r7, #0
	adds r1, #0x30
	ldr r0, [r6]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r7, #0x30]
_08015640
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08015628
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0801565A
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r6]
	bl sub_8000DE6
_0801565A
	movs r5, #0
_0801565C
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0801565C
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, _080158C0 ;@ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne _080156AE
	ldr r0, _080158C4 ;@ =gUnknown_03003458
	movs r1, #0
	ldr r0, [r0]
	bl sub_801CBDE
_080156AE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80156B4
sub_80156B4 ;@ 0x080156B4
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xf8
	sub sp, #0x10
	strb r0, [r1, r4]
	movs r1, #0xfa
	movs r3, #0
	strh r3, [r1, r4]
	cmp r7, #0
	bne _080156CE
	ldr r7, _080158C8 ;@ =0x00001136
_080156CE
	movs r6, #0
_080156D0
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r5, r1, r4
	ldr r2, _080158CC ;@ =gUnknown_08050654
	str r0, [r5, #8]
	lsls r1, r6, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #8]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #8
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0801571A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801571A
	movs r1, #1
	ldr r0, [r5, #8]
	bl sub_80401E4
	cmp r6, #7
	bne _0801574E
	ldr r5, [r4, #0x24]
	movs r2, #1
	ldrh r1, [r5, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi _08015746
	adds r0, r5, #0
	bl sub_804025C
_08015746
	ldr r0, [r5]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r5]
_0801574E
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo _080156D0
	movs r5, #0
_0801575A
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r6, r1, r4
	str r0, [r6, #0x28]
	adds r1, r7, r5
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r6, #0x28]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r6, #0x28]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #7
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080157A0
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080157A0
	movs r1, #1
	ldr r0, [r6, #0x28]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0801575A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08015832
	movs r5, #0
_080157BA
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r4
	str r0, [r7, #0x30]
	ldr r1, _080158D0 ;@ =0x0000088D
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r7, #0x30]
	add r1, sp, #0xc
	bl sub_8040034
	movs r1, #5
	cmp r5, #0
	beq _080157E8
	movs r1, #6
_080157E8
	ldr r0, [r7, #0x30]
	bl sub_80401C0
	movs r1, #1
	cmp r5, #2
	ldr r6, [r7, #0x30]
	beq _080157F8
	movs r1, #0
_080157F8
	ldrh r2, [r6, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	lsls r0, r0, #0x1e
	bmi _08015818
	adds r0, r6, #0
	bl sub_804025C
_08015818
	ldr r0, [r6]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r7, #0x30]
	movs r1, #1
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _080157BA
_08015832
	bl sub_800EF2A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08015872
	movs r2, #4
	movs r0, #0x48
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0xa0
	adds r0, r4, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp]
	movs r2, #0
	adds r0, #5
	movs r1, #0
	movs r3, #0xf0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	bl sub_80138E2
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
_08015872
	ldr r0, _080158D4 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	cmp r0, #0
	beq _08015884
	movs r3, #0
	movs r2, #0
	ldr r1, _080158D8 ;@ =0x0000FFFE
	bl sub_8024D30
_08015884
	ldr r0, _080158DC ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xe0
	bl sub_8028C2E
	ldr r1, _080158C0 ;@ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	beq _080158A2
	ldr r0, _080158C4 ;@ =gUnknown_03003458
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBDE
_080158A2
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080158AC DCDU _0803E314
_080158B0 DCDU sub_80143E0
_080158B4 DCDU gUnknown_03003E88
_080158B8 DCDU sub_8014436
_080158BC DCDU gUnknown_03003EB8
_080158C0 DCDU gUnknown_03003478
_080158C4 DCDU gUnknown_03003458
_080158C8 DCDU 0x00001136
_080158CC DCDU gUnknown_08050654
_080158D0 DCDU 0x0000088D
_080158D4 DCDU gUnknown_030034F8
_080158D8 DCDU 0x0000FFFE
_080158DC DCDU gUnknown_0300345C

	thumb_func_start sub_80158E0
sub_80158E0 ;@ 0x080158E0
	adds r1, r0, #0
	adds r1, #0xf0
	ldrb r1, [r1, #8]
	movs r0, #1
	cmp r1, #0
	bne _080158EE
	movs r0, #0
_080158EE
	bx lr

	thumb_func_start sub_80158F0
sub_80158F0 ;@ 0x080158F0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r4, r6, r0
	ldr r0, _08015CE0 ;@ =gUnknown_03003444
	movs r3, #3
	ldr r0, [r0]
	ldrsb r1, [r4, r3]
	ldr r3, [r0, #0x14]
	movs r7, #0
	adds r2, r7, #0
	lsls r3, r3, #0x1c
	sub sp, #0xc
	bmi _08015910
	ldrh r2, [r0, #8]
_08015910
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r5, #0x1b
	bpl _0801591E
	adds r0, r1, #1
	strb r0, [r4, #3]
	b _0801593E
_0801591E
	lsls r0, r5, #0x1a
	bpl _0801592A
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r4, #3]
	b _0801593E
_0801592A
	lsls r0, r5, #0x19
	bpl _08015936
	adds r0, r1, #0
	adds r0, #0xfe
	strb r0, [r4, #3]
	b _0801593E
_08015936
	lsls r0, r5, #0x18
	bpl _0801593E
	adds r0, r1, #2
	strb r0, [r4, #3]
_0801593E
	movs r3, #3
	movs r2, #0x1b
	lsls r2, r2, #5
	ldrsb r0, [r4, r3]
	adds r2, r6, r2
	ldrb r2, [r2, #2]
	cmp r0, #0
	bge _08015956
	adds r0, r2, #0
	adds r0, #0xff
	strb r0, [r4, #3]
	b _0801595C
_08015956
	cmp r0, r2
	blt _0801595C
	strb r7, [r4, #3]
_0801595C
	movs r3, #3
	ldrsb r0, [r4, r3]
	cmp r0, r1
	beq _080159C2
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #0xff
	movs r2, #0
	adds r0, #0x81
	adds r3, r7, #0
	str r2, [sp]
	add r1, sp, #8
	bl sub_803F814
	add r3, sp, #0
	ldrh r0, [r3, #8]
	subs r0, #0x14
	lsls r1, r0, #0x10
	ldrb r0, [r4, #2]
	asrs r1, r1, #0x10
	cmp r0, #2
	ldrb r0, [r4, #3]
	bhi _0801599C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x8b
	b _080159A8
_0801599C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x7f
_080159A8
	add r3, sp, #0
	strh r1, [r3, #4]
	subs r0, #5
	strh r0, [r3, #6]
	ldr r0, [r6, #0x3c]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, _08015CE4 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_080159C2
	movs r6, #0
	mvns r6, r6
	lsls r1, r5, #0x1f
	cmp r1, #0
	ldr r0, _08015CE8 ;@ =gUnknown_03003454
	bge _080159F2
	movs r2, #0
	str r2, [sp]
	movs r3, #3
	ldrsb r2, [r4, r3]
	ldrh r1, [r4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r4, #5]
	ldr r0, [r0]
	adds r3, r7, #0
	bl sub_8017884
	strb r6, [r4, #3]
_080159EA
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080159F2
	lsls r1, r5, #0x1e
	bpl _080159EA
	ldrb r1, [r4, #4]
	cmp r1, #0xff
	beq _080159EA
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r4]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r4, #5]
	ldr r0, [r0]
	adds r3, r7, #0
	bl sub_8017884
	strb r6, [r4, #3]
	b _080159EA

	non_word_aligned_thumb_func_start sub_8015A16
sub_8015A16 ;@ 0x08015A16
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08015CE0 ;@ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	sub sp, #0xc
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08015A2A
	ldrh r1, [r0, #6]
_08015A2A
	adds r6, r5, #0
	adds r6, #0x80
	movs r0, #0x2c
	ldrb r0, [r0, r6]
	adds r4, r6, #0
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	adds r4, #0xe0
	cmp r0, #0
	bne _08015AF2
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08015A4C
	movs r1, #1
	bl sub_80401E4
_08015A4C
	lsls r0, r7, #0x1f
	bpl _08015AF0
	movs r0, #0x38
	ldrb r0, [r0, r6]
	add r3, sp, #0
	strb r0, [r3, #8]
	ldrh r0, [r4, #0x1e]
	ldr r1, [r6, #0x14]
	adds r2, r0, #1
	strh r2, [r4, #0x1c]
	adds r0, #3
	strh r0, [r4, #0x1e]
	b _08015A70
_08015A66
	adds r0, #1
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
_08015A70
	ldrh r0, [r4, #0x1c]
	add r3, sp, #0
	ldrb r2, [r3, #8]
	cmp r0, r2
	bhs _08015A88
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r2, [r2, #4]
	cmp r2, #0
	beq _08015A66
_08015A88
	ldrh r2, [r4, #0x1c]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo _08015AA0
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
_08015A98
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08015AA0
	ldrh r2, [r4, #0x1e]
	add r3, sp, #0
	ldrb r3, [r3, #8]
	cmp r2, r3
	blo _08015AB2
	add r3, sp, #0
	ldrb r2, [r3, #8]
	subs r2, #1
	strh r2, [r4, #0x1e]
_08015AB2
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r4, #0x1e]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r0, [r1, r0]
	ldr r1, _08015CEC ;@ =gUnknown_03003D30
	ldrh r2, [r2, #2]
	ldr r1, [r1]
	movs r3, #0xa
	ldrb r1, [r1, #2]
	subs r1, r3, r1
	lsls r1, r1, #0x18
	adds r3, r2, #0
	adds r2, r0, #0
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_8013B9C
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08015AF0
	movs r1, #0
	bl sub_80401E4
_08015AF0
	b _08015B0A
_08015AF2
	lsls r0, r7, #0x1f
	bpl _08015B0A
	adds r0, r6, #0
	bl sub_8013B76
	ldr r0, [r5, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08015B0A
	movs r1, #1
	bl sub_80401E4
_08015B0A
	lsls r0, r7, #0x1e
	bpl _08015B14
	movs r0, #0
	mvns r0, r0
	strh r0, [r4, #0x1e]
_08015B14
	movs r1, #0
	adds r0, r6, #0
	bl sub_80139AC
	b _08015A98

	non_word_aligned_thumb_func_start sub_8015B1E
sub_8015B1E ;@ 0x08015B1E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x19
	adds r1, r4, #0
	sub sp, #0x2c
	adds r1, #0xe0
	lsls r0, r0, #0x12
	str r0, [sp, #0xc]
	str r1, [sp, #0x28]
	ldrh r6, [r1, #0x1a]
	movs r5, #0x1d
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _08015CF0 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl sub_803B92C
	add r2, pc, #0x194 ;@ =_08015CF4
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r1, #0xf0
	subs r0, r1, r0
	subs r0, #8
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	ldr r7, _08015CFC ;@ =gUnknown_08050664
	movs r5, #0
_08015B74
	ldr r7, _08015CFC ;@ =gUnknown_08050664
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	movs r0, #0x6c
	strh r0, [r3, #6]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08015B74
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r5, r4, r0
	ldrb r0, [r5, #2]
	movs r7, #0
	cmp r0, #0
	bls _08015BFC
_08015BAA
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r5, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r7, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls _08015BD4
	subs r1, #0xc
_08015BD4
	lsls r2, r1, #0x10
	lsls r1, r7, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl sub_803B8CE
	adds r7, #1
	ldrb r0, [r5, #2]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi _08015BAA
_08015BFC
	ldrb r0, [r5, #2]
	adds r7, r4, #0
	adds r7, #0x80
	cmp r0, #0
	beq _08015C1C
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_803B8CE
_08015C1C
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08015C58
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0xff
	movs r3, #0
	adds r0, #0x81
	str r2, [sp]
	add r1, sp, #0x14
	bl sub_803F814
	add r3, sp, #0
	ldrh r0, [r3, #0x14]
	ldrb r2, [r5, #2]
	adds r0, r0, r6
	subs r0, #0x14
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x86
	cmp r2, #2
	bls _08015C4A
	movs r0, #0x7a
_08015C4A
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
_08015C58
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl sub_803B92C
	add r2, pc, #0x90 ;@ =_08015CF4
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r1, #0x64
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0xff
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	adds r1, #5
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _08015C9A
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	ldr r0, [sp, #0x18]
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	movs r1, #4
	ldr r0, [sp, #0x24]
	bl sub_803B8CE
_08015C9A
	ldr r0, [sp, #0x18]
	movs r6, #0
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x20]
_08015CA6
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08015CCA
	ldr r2, _08015CFC ;@ =gUnknown_08050664
	lsls r1, r6, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	ldr r2, [sp, #0x20]
	add r3, sp, #0
	adds r1, #4
	strh r1, [r3, #4]
	strh r2, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
_08015CCA
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _08015CA6
	movs r6, #0
_08015CD6
	lsls r0, r6, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	b _08015D00
	ALIGN
_08015CE0 DCDU gUnknown_03003444
_08015CE4 DCDU gUnknown_0300345C
_08015CE8 DCDU gUnknown_03003454
_08015CEC DCDU gUnknown_03003D30
_08015CF0 DCDU gUnknown_080414B8
_08015CF4 DCDU 0x00010000
_08015CF8 DCDU 0x00000000
_08015CFC DCDU gUnknown_08050664
_08015D00
	cmp r0, #0
	beq _08015D1C
	ldr r2, [sp, #0x18]
	lsls r0, r6, #5
	adds r0, r0, r2
	adds r0, #0x3c
	movs r2, #8
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	add r1, sp, #4
	bl sub_8040034
_08015D1C
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _08015CD6
	ldr r1, [sp, #0x28]
	ldrh r0, [r1, #0x1a]
	adds r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r1, #0x1a]
	cmp r0, #0x5a
	blt _08015E1C
	movs r6, #0
_08015D38
	ldr r1, _080160F0 ;@ =gUnknown_08050664
	lsls r0, r6, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, #8
	strh r0, [r3, #4]
	movs r0, #0x6c
	strh r0, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo _08015D38
	ldrb r0, [r5, #2]
	movs r6, #0
	cmp r0, #0
	bls _08015DB2
_08015D66
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r5, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r6, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls _08015D90
	subs r1, #0xc
_08015D90
	lsls r2, r1, #0x10
	lsls r1, r6, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	asrs r2, r2, #0x10
	adds r1, #0x50
	mov r3, ip
	bl sub_803B8CE
	adds r6, #1
	ldrb r0, [r5, #2]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi _08015D66
_08015DB2
	movs r6, #0
_08015DB4
	lsls r0, r6, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq _08015DD2
	lsls r0, r6, #5
	adds r0, #0x3c
	movs r2, #8
	add r3, sp, #0
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	add r1, sp, #4
	bl sub_8040034
_08015DD2
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _08015DB4
	movs r6, #0
_08015DDE
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08015E02
	ldr r2, _080160F0 ;@ =gUnknown_08050664
	lsls r1, r6, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	add r3, sp, #0
	adds r1, #4
	strh r1, [r3, #4]
	movs r1, #0x94
	strh r1, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
_08015E02
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _08015DDE
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08015E28
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	b _08015E1E
_08015E1C
	b _08015E4C
_08015E1E
	movs r2, #0x94
	movs r1, #4
	ldr r0, [sp, #0x24]
	bl sub_803B8CE
_08015E28
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08015E3E
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0x48
	adds r0, r7, #0
	bl sub_803B8CE
_08015E3E
	adds r1, r4, #0
	adds r1, #0xf0
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _08015E54
	movs r0, #3
	strb r0, [r1, #8]
_08015E4C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08015E54
	movs r0, #2
	strb r0, [r1, #8]
	movs r0, #0x38
	ldrb r0, [r0, r7]
	adds r1, r4, #0
	add r3, sp, #0
	strb r0, [r3, #0x1c]
	adds r1, #0xff
	adds r1, #0x61
	ldrh r2, [r1, #0x1e]
	ldrb r3, [r3, #0x1c]
	ldr r0, [r7, #0x14]
	cmp r2, r3
	blo _08015E78
	add r3, sp, #0
	ldrb r2, [r3, #0x1c]
	subs r2, #1
	strh r2, [r1, #0x1e]
_08015E78
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r1, #0x1e]
	ldrh r1, [r1, #0x1c]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	adds r2, r2, r0
	ldrh r4, [r2, #2]
	lsls r1, r1, #1
	ldrh r2, [r0, r1]
	ldr r0, _080160F4 ;@ =gUnknown_03003D30
	movs r1, #0xa
	ldr r0, [r0]
	adds r3, r4, #0
	ldrb r0, [r0, #2]
	subs r0, r1, r0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_8013B9C
	movs r1, #0
	adds r0, r7, #0
	bl sub_80139AC
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0x4d
	adds r0, r7, #0
	bl sub_803B8CE
	b _08015E4C

	non_word_aligned_thumb_func_start sub_8015EC2
sub_8015EC2 ;@ 0x08015EC2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x11
	lsls r0, r0, #0x13
	sub sp, #0x1c
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xe0
	str r0, [sp, #0x18]
	ldrh r6, [r0, #0x1a]
	movs r5, #0xf
	lsls r5, r5, #0x14
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _080160F8 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl sub_803B92C
	add r2, pc, #0x1F8 ;@ =_080160FC
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp, #0x14]
	ldr r0, [r0]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x4d
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl sub_803B8CE
	movs r5, #0
	movs r7, #0x6c
_08015F2A
	ldr r1, _080160F0 ;@ =gUnknown_08050664
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	strh r7, [r3, #6]
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08015F2A
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r7, r4, r0
	ldrb r0, [r7, #2]
	movs r5, #0
	cmp r0, #0
	bls _08015FB0
_08015F5E
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r7, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls _08015F88
	subs r1, #0xc
_08015F88
	lsls r2, r1, #0x10
	lsls r1, r5, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl sub_803B8CE
	adds r5, #1
	ldrb r0, [r7, #2]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08015F5E
_08015FB0
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _08015FCE
	ldr r0, [sp, #0x14]
	movs r2, #0x70
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl sub_803B8CE
_08015FCE
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _08016028
	ldrb r0, [r7, #2]
	lsls r1, r0, #0x1f
	bpl _08015FE8
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x86
	b _08015FF4
_08015FE8
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x3a
_08015FF4
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, #2
	bhi _0801600C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x8b
	b _08016018
_0801600C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x7f
_08016018
	add r3, sp, #0
	strh r1, [r3, #4]
	subs r0, #5
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
_08016028
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl sub_803B92C
	add r2, pc, #0xC8 ;@ =_080160FC
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r6, r0, #0x10
	ldr r0, [r4, #0x30]
	movs r7, #4
	cmp r0, #0
	beq _0801605A
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	subs r1, r7, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x94
	bl sub_803B8CE
_0801605A
	movs r5, #0
	subs r7, r7, r6
_0801605E
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _08016082
	ldr r2, _080160F0 ;@ =gUnknown_08050664
	lsls r1, r5, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	add r3, sp, #0
	adds r1, r7, r1
	strh r1, [r3, #4]
	movs r1, #0x94
	strh r1, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
_08016082
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801605E
	movs r0, #8
	subs r0, r0, r6
	lsls r6, r0, #0x10
	movs r5, #0
	asrs r6, r6, #0x10
	add r7, sp, #4
_08016098
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq _080160B4
	lsls r0, r5, #5
	add r3, sp, #0
	strh r6, [r3, #4]
	adds r0, #0x3c
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	adds r1, r7, #0
	bl sub_8040034
_080160B4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08016098
	ldr r0, [sp, #0x18]
	ldrh r0, [r0, #0x1a]
	ldr r1, [sp, #0x18]
	adds r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r1, #0x1a]
	cmp r0, #0x5a
	blt _080160E8
	movs r0, #0
	movs r1, #0xf8
	strb r0, [r1, r4]
	ldr r0, _08016104 ;@ =gUnknown_03003454
	movs r1, #0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_801742C
	adds r0, r4, #0
	bl sub_80155D6
_080160E8
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080160F0 DCDU gUnknown_08050664
_080160F4 DCDU gUnknown_03003D30
_080160F8 DCDU gUnknown_080414B8
_080160FC DCDU 0x00010000
_08016100 DCDU 0x00000000
_08016104 DCDU gUnknown_03003454

	thumb_func_start sub_8016108
sub_8016108 ;@ 0x08016108
	push {r3, lr}
	movs r1, #0xf8
	ldrb r1, [r1, r0]
	cmp r1, #5
	bhs _08016126
	add r3, pc, #0x8 ;@ =_0801611C
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0801611C
	DCB 0x05
_0801611D
	DCB 0x08
_0801611E
	DCB 0x0B
_0801611F
	DCB 0x0E
_08016120
	DCB 0x03, 0x00
loc_8016122
	bl sub_8015EC2
_08016126
	add sp, #4
	pop {r3}
	bx r3
loc_801612c
	bl sub_8015B1E
	b _08016126
loc_8016132
	bl sub_8015A16
	b _08016126
loc_8016138
	bl sub_80158F0
	b _08016126

	non_word_aligned_thumb_func_start sub_801613E
sub_801613E ;@ 0x0801613E
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xf0
	adds r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08016170
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0801615A
	movs r1, #0
	bl sub_80401E4
_0801615A
	movs r0, #4
	strb r0, [r5, #8]
	movs r0, #0
	adds r4, #0xe0
	strh r0, [r4, #0x1a]
	ldr r0, _080163C8 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #1
	bl sub_8028C2E
_08016170
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016176
sub_8016176 ;@ 0x08016176
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #1
	sub sp, #0x1c
	ldr r6, [r1]
	movs r2, #0xfc
	strb r0, [r2, r4]
	ldrb r0, [r6, #0xc]
	movs r2, #0x1b
	lsls r2, r2, #5
	adds r7, r4, r2
	strb r0, [r7, #2]
	ldrh r2, [r6, #6]
	strh r2, [r7]
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	strb r1, [r7, #5]
	movs r1, #0
	strb r1, [r7, #3]
	ldrb r1, [r6, #0xd]
	cmp r1, #0
	beq _080161AC
	cmp r1, r0
	bhi _080161AC
	subs r0, r1, #1
	b _080161AE
_080161AC
	movs r0, #0xff
_080161AE
	strb r0, [r7, #4]
	ldr r0, _080163CC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa4
	str r0, [r4, #0x3c]
	bl sub_80007A0
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0x10]
	movs r0, #0xa0
	strh r0, [r3, #0x12]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0x10
	bl sub_8040034
	movs r1, #5
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldrh r2, [r6, #8]
	ldrh r1, [r6, #0xa]
	adds r0, r4, #0
	bl sub_80156B4
	bl sub_800EF2A
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _080163D0 ;@ =gUnknown_03003468
	str r1, [sp, #0x18]
	ldr r0, [r0]
	str r0, [r1, #0x50]
	ldrb r0, [r7, #2]
	cmp r0, #2
	bhi _08016232
	movs r0, #1
	bl sub_80133A0
	ldrh r0, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r0, r0, #0x11
	lsrs r1, r0, #0x10
	movs r0, #0xa0
	movs r2, #0xa0
	str r2, [sp]
	movs r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r3, #0xf0
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_803F9C4
	b _08016254
_08016232
	movs r0, #1
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0xa0
	movs r0, #0xa0
	str r2, [sp]
	movs r2, #0
	str r0, [sp, #4]
	movs r3, #0xf0
	str r1, [sp, #8]
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_803F9C4
_08016254
	movs r1, #4
	ldr r0, [sp, #0x18]
	bl sub_80147FA
	ldrh r1, [r6, #4]
	movs r3, #0xff
	movs r2, #0
	ldr r0, [sp, #0x18]
	bl sub_80138E2
	ldrb r0, [r7, #2]
	movs r5, #0
	cmp r0, #0
	bls _080162C6
_08016270
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r0, #0x48
	str r0, [sp, #4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	movs r2, #4
	str r2, [sp, #0xc]
	adds r0, r0, r4
	adds r0, #0xff
	movs r2, #0xa0
	str r2, [sp]
	adds r0, #0x81
	movs r2, #2
	movs r3, #0xf0
	str r1, [sp, #8]
	movs r1, #0
	str r0, [sp, #0x14]
	bl sub_803F9C4
	movs r1, #4
	ldr r0, [sp, #0x14]
	bl sub_80147FA
	ldrh r0, [r6, #4]
	movs r3, #0xff
	adds r0, r0, r5
	adds r0, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	ldr r0, [sp, #0x14]
	bl sub_80138E2
	adds r5, #1
	ldrb r0, [r7, #2]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08016270
_080162C6
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_80139AC
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80162D6
sub_80162D6 ;@ 0x080162D6
	push {r4, r5, r6, r7, lr}
	ldr r6, [r1]
	adds r4, r0, #0
	adds r0, #0xf0
	sub sp, #0x14
	movs r7, #0
	strb r7, [r0, #0xc]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x61
	strh r7, [r0, #0x1c]
	movs r1, #2
	strh r1, [r0, #0x1e]
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r0, r4, r0
	strb r7, [r0, #2]
	ldr r0, _080163CC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa3
	str r0, [r4, #0x3c]
	bl sub_80007A0
	movs r0, #0xd8
	add r3, sp, #0
	strh r0, [r3, #0x10]
	movs r0, #0x8a
	strh r0, [r3, #0x12]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0x10
	bl sub_8040034
	movs r1, #4
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldrh r2, [r6, #0xa]
	ldrh r1, [r6, #0xc]
	adds r0, r4, #0
	bl sub_80156B4
	bl sub_800EF2A
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #1
	adds r5, r0, #0
	bl sub_8014B02
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r1, _080163D0 ;@ =gUnknown_03003468
	movs r0, #0
	ldr r1, [r1]
	str r1, [r5, #0x50]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	movs r2, #1
	str r2, [sp, #0xc]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xa0
	str r2, [sp]
	str r1, [sp, #8]
	movs r0, #0x98
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0xf0
	adds r0, r5, #0
	bl sub_803F9C4
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _0801638E
	adds r1, r0, #0
	movs r2, #0
	adds r0, r5, #0
	bl _080137F8
	b _0801639A
_0801638E
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldrh r1, [r6, #8]
	bl sub_80138E2
_0801639A
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
	adds r2, r4, #0
	adds r2, #0xff
	movs r1, #1
	ldr r0, [r6, #4]
	lsls r1, r1, #0x19
	adds r2, #1
	cmp r0, r1
	blo _080163C4
	movs r1, #0x81
	lsls r1, r1, #0x12
	cmp r0, r1
	bhs _080163C4
	str r0, [r2]
_080163BC
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080163C4
	str r7, [r2]
	b _080163BC
	ALIGN
_080163C8 DCDU gUnknown_0300345C
_080163CC DCDU gUnknown_03003EB8
_080163D0 DCDU gUnknown_03003468

	thumb_func_start sub_80163D4
sub_80163D4 ;@ 0x080163D4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _0801641C
	cmp r0, #0x1a
	beq _08016424
	cmp r0, #0x1b
	bne _08016416
	adds r5, r4, #0
	adds r5, #0xf0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08016416
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08016400
	movs r1, #0
	bl sub_80401E4
_08016400
	movs r0, #4
	strb r0, [r5, #8]
	movs r0, #0
	adds r4, #0xe0
	strh r0, [r4, #0x1a]
	ldr r0, _080164A0 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #1
	bl sub_8028C2E
_08016416
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0801641C
	adds r0, r4, #0
	bl sub_80162D6
	b _08016416
_08016424
	adds r0, r4, #0
	bl sub_8016176
	b _08016416

	thumb_func_start sub_801642C
sub_801642C ;@ 0x0801642C
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrb r1, [r1]
	adds r4, #0xff
	adds r4, #1
	movs r5, #0
	cmp r1, #0x19
	beq _0801645C
	cmp r1, #0x1a
	beq _0801647C
	cmp r1, #0x1b
	bne _0801649C
	adds r0, #0xf0
	ldrb r0, [r0, #8]
	movs r2, #1
	adds r1, r2, #0
	cmp r0, #0
	bne _08016454
	movs r1, #0
_08016454
	subs r0, r2, r1
_08016456
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0801645C
	adds r0, #0xff
	adds r0, #0x61
	ldrh r0, [r0, #0x1e]
	ldr r1, _080164A4 ;@ =0x0000FFFF
	cmp r0, r1
	bne _08016478
	ldr r0, [r4]
	cmp r0, #0
	beq _08016472
	bl sub_803DA4C
_08016472
	movs r0, #1
	str r5, [r4]
	b _08016456
_08016478
	movs r0, #0
	b _08016456
_0801647C
	movs r1, #0x1b
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	cmp r0, #0xff
	bne _08016498
	ldr r0, [r4]
	cmp r0, #0
	beq _08016492
	bl sub_803DA4C
_08016492
	movs r0, #1
	str r5, [r4]
	b _08016456
_08016498
	movs r0, #0
	b _08016456
_0801649C
	movs r0, #0
	b _08016456
	ALIGN
_080164A0 DCDU gUnknown_0300345C
_080164A4 DCDU 0x0000FFFF

	thumb_func_start sub_80164A8
sub_80164A8 ;@ 0x080164A8
	push {r4, lr}
	adds r4, r0, #0
	bne _080164C0
	movs r0, #0x18
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080164C0
	adds r0, r4, #0
_080164BA
	pop {r4}
	pop {r3}
	bx r3
_080164C0
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _08016694 ;@ =_0803ED94
	str r0, [r4]
	movs r0, #2
	strh r0, [r4, #4]
	ldr r0, _08016698 ;@ =gUnknown_03003E88
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r0, #0
	strb r0, [r4, #8]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	b _080164BA

	non_word_aligned_thumb_func_start sub_80164E6
sub_80164E6 ;@ 0x080164E6
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r0, #8]
	movs r4, #0
	cmp r0, #0
	bls _08016514
_080164F2
	ldr r0, [r5, #0x14]
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _08016508
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_08016508
	adds r4, #1
	ldrb r0, [r5, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r0, r4
	bhi _080164F2
_08016514
	ldr r0, [r5, #0x14]
	bl sub_803DA4C
	movs r0, #0
	strb r0, [r5, #8]
	str r0, [r5, #0x14]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016526
sub_8016526 ;@ 0x08016526
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016694 ;@ =_0803ED94
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0801653E
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
_0801653E
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq _08016550
	adds r0, r4, #0
	bl sub_803DA18
_08016550
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016556
sub_8016556 ;@ 0x08016556
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq _0801657A
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
_0801657A
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _0801658C
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b _08016590
_0801658C
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_08016590
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801659C
sub_801659C ;@ 0x0801659C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r5, [r0, #0xc]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r6, #8]
	movs r3, #0
	lsls r0, r0, #2
	movs r2, #0
	bl sub_803DA9C
	str r0, [r6, #0x14]
	b _080165D0
_080165BA
	ldrh r0, [r5]
	bl sub_80171BE
	ldr r1, [r6, #0x14]
	lsls r2, r4, #2
	str r0, [r1, r2]
	strh r4, [r0, #6]
	adds r4, #1
	lsls r4, r4, #0x10
	ldr r5, [r5, #4]
	lsrs r4, r4, #0x10
_080165D0
	cmp r5, #0
	beq _080165DA
	ldrb r0, [r6, #8]
	cmp r0, r4
	bhi _080165BA
_080165DA
	ldr r4, [r6, #0xc]
	cmp r4, #0
	beq _080165EC
_080165E0
	adds r0, r4, #0
	ldr r4, [r4, #4]
	bl sub_803DA18
	cmp r4, #0
	bne _080165E0
_080165EC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80165F2
sub_80165F2 ;@ 0x080165F2
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _08016604
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
_08016604
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	strb r0, [r4, #8]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016612
sub_8016612 ;@ 0x08016612
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrb r0, [r5]
	movs r6, #0
	cmp r0, #0x15
	beq _0801665A
	cmp r0, #0x16
	beq _08016674
	cmp r0, #0x17
	beq _0801667C
	cmp r0, #0x18
	bne _0801666E
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq _08016648
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
_08016648
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _08016684
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b _08016688
_0801665A
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08016668
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
_08016668
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	strb r6, [r4, #8]
_0801666E
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08016674
	adds r0, r4, #0
	bl sub_801659C
	b _0801666E
_0801667C
	adds r0, r4, #0
	bl sub_80164E6
	b _0801666E
_08016684
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_08016688
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _0801666E

	thumb_func_start sub_8016690
sub_8016690 ;@ 0x08016690
	movs r0, #1
	bx lr
	ALIGN
_08016694 DCDU _0803ED94
_08016698 DCDU gUnknown_03003E88

	thumb_func_start sub_801669C
sub_801669C ;@ 0x0801669C
	push {r4, lr}
	adds r4, r0, #0
	bne _080166B4
	movs r0, #0x18
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080166B4
	adds r0, r4, #0
_080166AE
	pop {r4}
	pop {r3}
	bx r3
_080166B4
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _08016A9C ;@ =_0803E320
	str r0, [r4]
	movs r0, #1
	strh r0, [r4, #4]
	ldr r0, _08016AA0 ;@ =gUnknown_03003E88
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r0, #0
	str r0, [r4, #0xc]
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	b _080166AE

	thumb_func_start sub_80166DC
sub_80166DC ;@ 0x080166DC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016A9C ;@ =_0803E320
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq _080166F8
	adds r0, r4, #0
	bl sub_803DA18
_080166F8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80166FE
sub_80166FE ;@ 0x080166FE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	sub sp, #0xc
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08016784
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	lsls r0, r0, #0x1d
	bne _08016784
	add r5, sp, #4
	adds r0, r5, #0
	bl sub_80046F8
	ldr r6, _08016AA4 ;@ =gUnknown_03003458
	ldr r0, [r6]
	adds r0, #0x10
	ldrb r1, [r0, #0xe]
	adds r1, #0xff
	strb r1, [r0, #0xe]
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	ldr r0, [r6]
	movs r2, #0x3f
	ldrh r0, [r0, #0x1c]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_8004784
	ldr r0, [r6]
	movs r7, #0x10
	adds r0, #0x10
	ldrb r1, [r0, #0xe]
	subs r2, r7, r1
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r6]
	adds r1, r0, r7
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	bne _0801677E
	mvns r2, r2
	str r2, [r4, #8]
	movs r2, #6
	strb r2, [r1, #0xe]
	ldrh r4, [r0, #0x1c]
	lsls r3, r7, #0x16
	ldrh r2, [r3]
	lsls r4, r4, #8
	bics r2, r4
	strh r2, [r3]
	movs r2, #0
	strh r2, [r0, #0x1c]
	ldrb r1, [r1, #0xe]
	subs r2, r7, r1
	adds r0, r5, #0
	bl sub_80047BE
_0801677E
	adds r0, r5, #0
	bl sub_803D66C
_08016784
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801678C
sub_801678C ;@ 0x0801678C
	ldr r0, _08016AA4 ;@ =gUnknown_03003458
	push {r3, lr}
	ldr r0, [r0]
	movs r1, #1
	bl sub_801CBAA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801679E
sub_801679E ;@ 0x0801679E
	push {r3, lr}
	movs r0, #0x14
	bl sub_8018386
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80167AC
sub_80167AC ;@ 0x080167AC
	ldr r0, _08016AA8 ;@ =gUnknown_03003454
	push {r4, lr}
	ldr r0, [r0]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	ldr r0, _08016AAC ;@ =gUnknown_03003D2C
	sub sp, #8
	ldr r1, [r0]
	adds r1, #0x90
	ldrb r2, [r1]
	ldr r0, [r0]
	adds r0, #0x80
	cmp r2, #0
	beq _080167D6
	cmp r2, #1
	beq _080167D6
	cmp r2, #2
	bne _080167F0
_080167D6
	ldrb r2, [r1, #0xc]
	strb r2, [r1]
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x14]
	ldr r1, [r0, #0x24]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl sub_8018386
_080167E8
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
_080167F0
	strb r2, [r1, #0xc]
	adds r2, r3, #0
	ldr r3, [r3, #0x58]
	adds r2, #0x58
	str r3, [sp]
	ldr r4, [r2, #4]
	str r4, [sp, #4]
	str r3, [r0, #0x20]
	ldr r3, [r2]
	str r3, [sp]
	ldr r2, [r2, #4]
	str r2, [sp, #4]
	str r2, [r0, #0x24]
	ldrb r2, [r0, #4]
	cmp r2, #5
	bhi _08016816
	movs r2, #0
	strb r2, [r1]
	b _0801681A
_08016816
	movs r2, #2
	strb r2, [r1]
_0801681A
	ldr r1, _08016AB0 ;@ =0x0000FFFF
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl sub_8018386
	b _080167E8

	thumb_func_start sub_8016828
sub_8016828 ;@ 0x08016828
	push {r3, lr}
	ldr r0, [r1]
	ldr r2, _08016AB4 ;@ =gUnknown_03003D34
	movs r1, #0x11
	strb r1, [r2]
	ldrh r0, [r0, #4]
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, _08016AB8 ;@ =gUnknown_03003D35
	asrs r0, r0, #2
	strb r0, [r1]
	movs r0, #0xd
	bl sub_8018386
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8016850
sub_8016850 ;@ 0x08016850
	push {r4, r5, r6, r7, lr}
	ldr r3, _08016ABC ;@ =gUnknown_03003478
	ldr r1, [r1]
	ldr r3, [r3]
	movs r2, #8
	ands r3, r2
	beq _080168D2
	movs r3, #4
	ldrsh r6, [r1, r3]
	movs r3, #6
	ldrsh r2, [r1, r3]
	movs r3, #8
	ldrsh r4, [r1, r3]
	movs r3, #0xa
	mov ip, r6
	orrs r6, r2
	ldrsh r5, [r1, r3]
	adds r3, r6, #0
	orrs r3, r4
	orrs r3, r5
	adds r6, r3, #0
	ldr r3, _08016AC0 ;@ =gUnknown_03003450
	movs r7, #0x13
	ldr r3, [r3]
	lsls r7, r7, #7
	adds r3, r3, r7
	cmp r6, #0
	bne _080168B6
	ldr r5, [r3, #0x20]
	movs r6, #1
	ldr r2, [r5, #0x50]
	ldr r5, [r5, #0x54]
	adds r7, r2, #0
	ldr r5, [r5, #4]
	ldrh r2, [r2, #0xc]
	mov lr, r5
	lsls r5, r5, #5
	lsrs r5, r5, #0x1d
	lsls r6, r5
	muls r2, r6
	mov r5, lr
	lsls r5, r5, #2
	ldrh r6, [r7, #0xe]
	movs r7, #1
	lsrs r5, r5, #0x1d
	lsls r7, r5
	muls r6, r7
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
_080168B6
	subs r2, #0xf0
	lsls r2, r2, #0x10
	str r2, [r3, #0x30]
	mov r6, ip
	lsls r4, r4, #0x10
	str r4, [r3, #0x2c]
	lsls r6, r6, #0x10
	subs r5, #0xa0
	lsls r2, r5, #0x10
	str r6, [r3, #0x28]
	str r2, [r3, #0x34]
	movs r2, #1
	lsls r2, r2, #0x13
	str r2, [r3, #0x38]
_080168D2
	ldrh r2, [r1, #4]
	strh r2, [r0, #0x10]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x12]
	ldrh r2, [r1, #8]
	strh r2, [r0, #0x14]
	ldrh r1, [r1, #0xa]
	strh r1, [r0, #0x16]
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80168E8
sub_80168E8 ;@ 0x080168E8
	ldr r0, _08016AA8 ;@ =gUnknown_03003454
	push {r4, r5, r6, r7, lr}
	ldr r0, [r0]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r1, [r0, #0x1c]
	sub sp, #0x94
	str r1, [sp, #0x90]
	add r0, sp, #4
	bl sub_80143E0
	movs r4, #0
	add r6, sp, #0x80
_08016906
	ldr r0, _08016AC4 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r5, r4, #2
	ldr r1, _08016AC8 ;@ =gUnknown_08050684
	str r0, [r6, r5]
	lsls r7, r4, #1
	ldrh r1, [r1, r7]
	bl sub_800065C
	ldr r1, _08016AC8 ;@ =gUnknown_08050684
	ldr r0, [r6, r5]
	adds r1, #8
	ldrh r1, [r1, r7]
	add r3, sp, #0
	strh r1, [r3]
	movs r1, #0x30
	strh r1, [r3, #2]
	ldrh r1, [r3]
	movs r3, #3
	lsls r3, r3, #0x14
	lsls r7, r1, #0x10
	ldr r1, [r0, #0x2c]
	ldr r2, [r0, #0x30]
	str r3, [r0, #0x30]
	str r7, [r0, #0x2c]
	subs r1, r7, r1
	ldr r7, [r0, #0x34]
	subs r2, r3, r2
	adds r7, r7, r1
	str r7, [r0, #0x34]
	ldr r7, [r0, #0x38]
	adds r3, r0, #0
	adds r7, r7, r2
	str r7, [r0, #0x38]
	ldr r7, [r0, #0x3c]
	adds r3, #0x34
	adds r1, r7, r1
	str r1, [r0, #0x3c]
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r3, #0xc]
	bl sub_804025C
	ldr r0, [r6, r5]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #8
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08016980
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08016980
	ldr r0, [r6, r5]
	movs r1, #1
	bl sub_80401E4
	cmp r4, #3
	bne _080169B4
	ldr r5, [sp, #0x8c]
	movs r2, #1
	ldrh r1, [r5, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi _080169AC
	adds r0, r5, #0
	bl sub_804025C
_080169AC
	ldr r0, [r5]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r5]
_080169B4
	adds r4, #1
	cmp r4, #4
	blo _08016906
	ldr r0, _08016AC4 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa3
	str r0, [sp, #0x7c]
	bl sub_80007A0
	ldr r1, _08016AC8 ;@ =gUnknown_08050684
	add r3, sp, #0
	adds r1, #8
	ldrh r1, [r1, #6]
	ldr r0, [sp, #0x7c]
	movs r2, #0x13
	subs r1, #0x10
	strh r1, [r3]
	movs r1, #0x4c
	strh r1, [r3, #2]
	ldrh r1, [r3]
	ldr r3, [r0, #0x30]
	lsls r2, r2, #0x12
	subs r2, r2, r3
	lsls r4, r1, #0x10
	ldr r1, [r0, #0x2c]
	movs r3, #0x13
	lsls r3, r3, #0x12
	str r3, [r0, #0x30]
	str r4, [r0, #0x2c]
	subs r1, r4, r1
	ldr r4, [r0, #0x34]
	adds r3, r0, #0
	adds r4, r4, r1
	str r4, [r0, #0x34]
	ldr r4, [r0, #0x38]
	adds r3, #0x34
	adds r4, r4, r2
	str r4, [r0, #0x38]
	ldr r4, [r0, #0x3c]
	adds r1, r4, r1
	str r1, [r0, #0x3c]
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r3, #0xc]
	bl sub_804025C
	ldr r0, [sp, #0x7c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	movs r4, #0
	lsls r2, r1, #0x16
	bmi _08016A38
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08016A38
	ldr r0, [sp, #0x7c]
	bl sub_8000914
	ldr r1, _08016AC8 ;@ =gUnknown_08050684
	movs r3, #0
	adds r1, #8
	ldrsh r5, [r1, r3]
	ldr r0, [sp, #4]
	add r7, sp, #4
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #4]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r7, #0
	bl sub_803B8CC
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #4]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r7, #0
	bl sub_803B8CC
	ldr r0, [sp, #4]
	movs r2, #0x3c
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #4]
	adds r3, r0, r1
	adds r1, r5, #0
	adds r0, r7, #0
	bl sub_803B8CE
	ldr r1, [sp, #4]
	adds r5, r7, #0
	ldr r1, [r1, #0x10]
	ldr r2, [sp, #4]
	adds r0, r7, #0
	adds r3, r1, r2
	movs r2, #0x20
	movs r1, #0x80
	bl sub_803B8CE
	adds r0, r5, #0
	movs r2, #0
	ldr r1, [sp, #4]
	str r2, [sp]
	ldr r1, [r1, #0x20]
	b _08016ACC
	ALIGN
_08016A9C DCDU _0803E320
_08016AA0 DCDU gUnknown_03003E88
_08016AA4 DCDU gUnknown_03003458
_08016AA8 DCDU gUnknown_03003454
_08016AAC DCDU gUnknown_03003D2C
_08016AB0 DCDU 0x0000FFFF
_08016AB4 DCDU gUnknown_03003D34
_08016AB8 DCDU gUnknown_03003D35
_08016ABC DCDU gUnknown_03003478
_08016AC0 DCDU gUnknown_03003450
_08016AC4 DCDU gUnknown_03003EB8
_08016AC8 DCDU gUnknown_08050684
_08016ACC
	ldr r2, [sp, #4]
	movs r3, #0
	adds r7, r1, r2
	movs r2, #0xff
	movs r1, #4
	bl sub_803B8D6
	adds r7, r5, #0
	adds r0, r5, #0
	bl sub_8013B76
	movs r4, #0xff
	adds r3, r4, #0
	movs r2, #0
	adds r0, r5, #0
	ldr r1, _08016D5C ;@ =0x000004DD
	bl sub_80138E2
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08016D60 ;@ =gUnknown_03003458
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBAA
	ldr r1, [sp, #0x90]
	ldr r0, _08016D64 ;@ =gUnknown_03003D2C
	adds r1, #0x58
	ldr r0, [r0]
	ldr r2, [r1]
	adds r0, #0x80
	str r2, [r0, #0x14]
	ldr r1, [r1, #4]
	str r1, [r0, #0x18]
	bl sub_800EF2A
	bl sub_80236D4
	movs r5, #1
_08016B1E
	bl sub_800EF2A
	adds r5, #1
	cmp r5, #0x78
	blo _08016B1E
	ldr r0, _08016D68 ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x11
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
	adds r3, r4, #0
	movs r2, #0
	adds r5, r7, #0
	adds r0, r7, #0
	ldr r1, _08016D6C ;@ =0x000004DE
	bl sub_80138E2
	movs r1, #1
	ldr r0, [sp, #0x7c]
	bl sub_80401E4
	movs r4, #0
	ldr r7, _08016D70 ;@ =gUnknown_03003444
	b _08016B56
_08016B52
	bl sub_800EF2A
_08016B56
	ldr r0, [r7]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r3, r2, #0x1c
	bmi _08016B62
	ldrh r1, [r0, #8]
_08016B62
	lsls r1, r1, #0x1f
	bmi _08016B72
	adds r1, r4, #0
	lsls r2, r2, #0x1c
	bmi _08016B6E
	ldrh r1, [r0, #8]
_08016B6E
	lsls r0, r1, #0x1e
	bpl _08016B52
_08016B72
	bl sub_800EF2A
	ldr r7, _08016D74 ;@ =gUnknown_03003448
	movs r4, #0
_08016B7A
	lsls r0, r4, #2
	adds r1, r0, r6
	ldr r0, [r7]
	bl sub_8000DE6
	adds r4, #1
	cmp r4, #4
	blo _08016B7A
	add r1, sp, #0x7c
	ldr r0, [r7]
	bl sub_8000DE6
	ldr r0, _08016D60 ;@ =gUnknown_03003458
	movs r1, #0
	ldr r0, [r0]
	bl sub_801CBAA
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	add sp, #0x94
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8016BAC
sub_8016BAC ;@ 0x08016BAC
	push {r4, lr}
	ldr r0, [r1]
	ldr r2, _08016D64 ;@ =gUnknown_03003D2C
	ldrh r1, [r0, #4]
	ldr r3, [r2]
	movs r2, #0x90
	strb r1, [r2, r3]
	ldrh r2, [r0, #6]
	ldr r4, _08016D78 ;@ =0x0000FFFF
	adds r1, r4, #0
	cmp r2, r4
	beq _08016BC6
	lsls r1, r2, #0x10
_08016BC6
	adds r3, #0x80
	str r1, [r3, #0x14]
	ldrh r0, [r0, #8]
	cmp r0, r4
	beq _08016BD2
	lsls r4, r0, #0x10
_08016BD2
	movs r0, #0xf
	str r4, [r3, #0x18]
	bl sub_8018386
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8016BE0
sub_8016BE0 ;@ 0x08016BE0
	push {r4, r5, r6, r7}
	ldr r5, [r1]
	ldr r6, _08016D7C ;@ =gUnknown_03003478
	movs r0, #0
	movs r7, #1
_08016BEA
	lsls r2, r0, #1
	adds r4, r2, r5
	movs r3, #4
	ldrsh r2, [r4, r3]
	cmp r2, #0
	blt _08016C16
	ldrh r2, [r4, #4]
	adds r3, r7, #0
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	lsls r3, r4
	cmp r2, #0
	beq _08016C0E
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r6, r2]
	ands r2, r3
	beq _08016C12
_08016C0E
	movs r2, #1
	b _08016C3A
_08016C12
	movs r2, #0
	b _08016C3A
_08016C16
	NEGS r2, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	adds r3, r7, #0
	lsls r3, r4
	cmp r2, #0
	beq _08016C32
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r6, r2]
	ands r2, r3
	beq _08016C36
_08016C32
	movs r2, #1
	b _08016C38
_08016C36
	movs r2, #0
_08016C38
	subs r2, r7, r2
_08016C3A
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhs _08016C4A
	cmp r2, #0
	bne _08016BEA
	b _08016C4E
_08016C4A
	cmp r2, #0
	bne _08016CB2
_08016C4E
	ldr r1, [r1, #0x14]
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #2
	beq _08016CB2
	ldr r6, _08016D80 ;@ =gUnknown_03003E88
	movs r7, #0x43
	lsls r7, r7, #3
_08016C5E
	adds r0, r1, #0
	ldrh r3, [r0, #0x10]
	ldr r2, [r6]
	movs r4, #0x53
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x18
	adds r3, r3, r2
	movs r5, #0x73
	lsls r5, r5, #3
	lsls r4, r4, #3
	adds r4, r3, r4
	adds r5, r3, r5
	ldr r1, [r1, #0x14]
	ldr r3, [r0, #0x18]
	cmp r3, #0
	beq _08016C84
	ldr r4, [r0, #0x14]
	str r4, [r3, #0x14]
	b _08016C88
_08016C84
	ldr r3, [r0, #0x14]
	str r3, [r4]
_08016C88
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _08016C94
	ldr r4, [r0, #0x18]
	str r4, [r3, #0x18]
	b _08016C98
_08016C94
	ldr r3, [r0, #0x18]
	str r3, [r5]
_08016C98
	ldrh r0, [r0, #0x10]
	lsls r3, r0, #0x1a
	lsrs r3, r3, #0x19
	adds r2, r3, r2
	adds r2, r2, r7
	ldrh r3, [r2]
	lsrs r0, r0, #6
	subs r0, r3, r0
	strh r0, [r2]
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #2
	bne _08016C5E
_08016CB2
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_8016CB6
sub_8016CB6 ;@ 0x08016CB6
	push {r4, lr}
	ldr r0, _08016D84 ;@ =gUnknown_03003460
	ldr r4, [r1]
	ldr r0, [r0]
	cmp r0, #0
	beq _08016CDA
	bl sub_800B6A8
	ldrh r1, [r4, #4]
	cmp r0, r1
	beq _08016CDA
	lsls r2, r1, #0x18
	ldr r0, _08016D68 ;@ =gUnknown_0300345C
	lsrs r2, r2, #0x18
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
_08016CDA
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8016CE0
sub_8016CE0 ;@ 0x08016CE0
	push {r3, lr}
	ldr r0, [r1]
	movs r3, #4
	ldrsh r0, [r0, r3]
	ldr r1, _08016D68 ;@ =gUnknown_0300345C
	ldr r1, [r1]
	cmp r0, #0
	blt _08016D00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
_08016CFA
	add sp, #4
	pop {r3}
	bx r3
_08016D00
	NEGS r0, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_80268AC
	b _08016CFA

	non_word_aligned_thumb_func_start sub_8016D0E
sub_8016D0E ;@ 0x08016D0E
	push {r3, lr}
	ldr r0, [r1]
	ldr r1, _08016D88 ;@ =gUnknown_03003C58
	ldrh r0, [r0, #4]
	strh r0, [r1]
	movs r0, #0x15
	bl sub_8018386
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8016D24
sub_8016D24 ;@ 0x08016D24
	ldr r0, _08016D64 ;@ =gUnknown_03003D2C
	push {r3, lr}
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x84
	ldrb r2, [r2, r0]
	cmp r2, #7
	bhs _08016D40
	movs r2, #0xb0
	ldrb r2, [r2, r0]
	adds r0, #0xa0
	strb r2, [r0, #0xd]
	movs r2, #0
	strb r2, [r0, #0xe]
_08016D40
	ldrh r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne _08016D4A
	movs r0, #0
_08016D4A
	adds r1, r0, #0
	ldr r0, _08016D8C ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80247A4
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08016D5C DCDU 0x000004DD
_08016D60 DCDU gUnknown_03003458
_08016D64 DCDU gUnknown_03003D2C
_08016D68 DCDU gUnknown_0300345C
_08016D6C DCDU 0x000004DE
_08016D70 DCDU gUnknown_03003444
_08016D74 DCDU gUnknown_03003448
_08016D78 DCDU 0x0000FFFF
_08016D7C DCDU gUnknown_03003478
_08016D80 DCDU gUnknown_03003E88
_08016D84 DCDU gUnknown_03003460
_08016D88 DCDU gUnknown_03003C58
_08016D8C DCDU gUnknown_030034F8

	thumb_func_start sub_8016D90
sub_8016D90 ;@ 0x08016D90
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r6, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _08016DA0
	cmp r0, #2
	bne _08016DA4
_08016DA0
	movs r1, #1
	b _08016DA6
_08016DA4
	movs r1, #0
_08016DA6
	movs r0, #2
	bl sub_803FEF8
	ldrh r0, [r4, #4]
	ldr r5, _08017104 ;@ =gUnknown_03003458
	cmp r0, #1
	beq _08016DB8
	cmp r0, #2
	bne _08016DC0
_08016DB8
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	bl _08020AB6
_08016DC0
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _08016DCA
	cmp r0, #2
	bne _08016DCE
_08016DCA
	movs r1, #1
	b _08016DD0
_08016DCE
	movs r1, #0
_08016DD0
	ldr r0, [r5]
	bl sub_801CBDE
	ldrh r0, [r4, #4]
	ldr r1, [r5]
	cmp r0, #1
	beq _08016DE2
	cmp r0, #2
	bne _08016DE6
_08016DE2
	movs r0, #1
	b _08016DE8
_08016DE6
	movs r0, #0
_08016DE8
	movs r2, #5
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r1, #0x1c]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r0, r0, #0xc
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldrh r0, [r4, #4]
	movs r5, #1
	adds r1, r5, #0
	cmp r0, #1
	beq _08016E08
	movs r1, #0
_08016E08
	ldr r0, _08017108 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_802459E
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _08016E18
	movs r5, #0
_08016E18
	str r5, [r6, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8016E20
sub_8016E20 ;@ 0x08016E20
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r3, [r5]
	ldrh r5, [r5, #0x10]
	ldr r2, [r1]
	ldr r1, _0801710C ;@ =0x0000FFFE
	ldrh r7, [r2, #8]
	ldr r4, _08017110 ;@ =gUnknown_03003454
	lsls r5, r5, #0x1a
	lsrs r5, r5, #0x1a
	movs r6, #0
	ldrh r3, [r3, #4]
	ldr r4, [r4]
	cmp r7, r1
	beq _08016E5E
	lsls r0, r7, #2
	movs r1, #3
	lsls r1, r1, #9
	adds r0, r0, r4
	adds r0, r0, r1
	ldr r2, [r0, #0x1c]
	adds r1, r3, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_8017884
_08016E58
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08016E5E
	ldrh r2, [r2, #6]
	cmp r2, r1
	beq _08016E7C
	ldr r0, [r4, #0x10]
	lsls r1, r2, #2
	ldr r0, [r0, #0x14]
	ldr r2, [r0, r1]
	adds r1, r3, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_8017884
	b _08016E58
_08016E7C
	adds r1, r3, #0
	adds r3, r6, #0
	str r0, [sp]
	adds r2, r5, #0
	adds r0, r4, #0
	bl sub_8017884
	b _08016E58

	thumb_func_start sub_8016E8C
sub_8016E8C ;@ 0x08016E8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08017114 ;@ =gUnknown_03003D2C
	ldr r0, [r1]
	ldr r1, [r6]
	ldrh r0, [r0, #4]
	adds r1, #0x80
	movs r4, #0
	strb r0, [r1, #4]
_08016E9C
	ldr r6, _08017114 ;@ =gUnknown_03003D2C
	movs r7, #1
	ldr r0, [r6]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	cmp r0, r4
	bhi _08016EAE
	movs r1, #0
_08016EAE
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_803FEF8
	cmp r4, #6
	bhs _08016F40
	movs r5, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	str r0, [sp]
_08016EC2
	ldr r0, _08017114 ;@ =gUnknown_03003D2C
	movs r7, #1
	ldr r0, [r0]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt _08016ED6
	movs r1, #0
_08016ED6
	ldr r0, [sp]
	adds r0, r0, r5
	lsls r6, r0, #2
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x55
	bl sub_803FEF8
	ldr r7, _08017114 ;@ =gUnknown_03003D2C
	movs r1, #1
	ldr r0, [r7]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt _08016EF8
	movs r1, #0
_08016EF8
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x56
	bl sub_803FEF8
	ldr r0, [r7]
	movs r1, #1
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt _08016F12
	movs r1, #0
_08016F12
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x57
	bl sub_803FEF8
	ldr r0, [r7]
	movs r1, #1
	adds r0, #0x80
	ldrb r0, [r0, #4]
	subs r0, #1
	cmp r0, r4
	bgt _08016F2C
	movs r1, #0
_08016F2C
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x58
	bl sub_803FEF8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08016EC2
_08016F40
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #7
	blo _08016E9C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8016F50
sub_8016F50 ;@ 0x08016F50
	push {r3, lr}
	ldr r0, [r1]
	movs r3, #4
	ldrsh r1, [r0, r3]
	cmp r1, #0
	ble _08016F6A
	ldrh r0, [r0, #4]
	movs r1, #1
	bl sub_803FEF8
_08016F64
	add sp, #4
	pop {r3}
	bx r3
_08016F6A
	NEGS r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _08016F64

	thumb_func_start sub_8016F78
sub_8016F78 ;@ 0x08016F78
	ldr r0, _08017118 ;@ =gUnknown_03003E98
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	ldr r4, [r1]
	ldr r5, [r0, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08016F96
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #2
	bl sub_80405B4
	str r1, [r4, #4]
_08016F96
	ldr r0, [r4, #4]
	adds r0, r5, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016FA2
sub_8016FA2 ;@ 0x08016FA2
	push {r3, r4, r5, lr}
	ldr r4, [r1]
	ldrb r2, [r4]
	cmp r2, #0x15
	bhs _08016FEA
	add r3, pc, #0x4 ;@ =_08016FB4
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_08016FB4
	DCB 0x1A
_08016FB5
	DCB 0x79
_08016FB6
	DCB 0x1A
_08016FB7
	DCB 0x0A
_08016FB8
	DCB 0x30
_08016FB9
	DCB 0x1D
_08016FBA
	DCB 0x33
_08016FBB
	DCB 0x36
_08016FBC
	DCB 0x4C
_08016FBD
	DCB 0x53
_08016FBE
	DCB 0x68
_08016FBF
	DCB 0x7C
_08016FC0
	DCB 0x7F
_08016FC1
	DCB 0x82
_08016FC2
	DCB 0x85
_08016FC3
	DCB 0x2D
_08016FC4
	DCB 0x98
_08016FC5
	DCB 0x95
_08016FC6
	DCB 0x1A
_08016FC7
	DCB 0xA2
_08016FC8
	DCB 0x9C, 0x00
loc_8016fca
	ldr r0, _08017118 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r5, [r0, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08016FE4
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #2
	bl sub_80405B4
	str r1, [r4, #4]
_08016FE4
	ldr r0, [r4, #4]
	adds r0, r5, r0
	str r0, [r4, #0xc]
_08016FEA
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_8016ff0
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _08017002
	ldrh r0, [r4, #4]
	movs r1, #1
	bl sub_803FEF8
	b _08016FEA
_08017002
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _08016FEA
loc_8017010
	bl sub_8016E8C
	b _08016FEA
loc_8017016
	bl sub_8016E20
	b _08016FEA
loc_801701c
	bl sub_8016D90
	b _08016FEA
loc_8017022
	ldr r0, _08017114 ;@ =gUnknown_03003D2C
	movs r1, #0x84
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	cmp r1, #7
	bhs _0801703A
	movs r1, #0xb0
	ldrb r1, [r1, r0]
	adds r0, #0xa0
	strb r1, [r0, #0xd]
	movs r1, #0
	strb r1, [r0, #0xe]
_0801703A
	ldrh r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	bne _08017044
	movs r1, #0
_08017044
	ldr r0, _08017108 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80247A4
	b _08016FEA
loc_801704e
	ldrh r0, [r4, #4]
	ldr r1, _0801711C ;@ =gUnknown_03003C58
	strh r0, [r1]
	movs r0, #0x15
	bl sub_8018386
	b _08016FEA
loc_801705c
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _08017074
	ldr r1, _08017120 ;@ =gUnknown_0300345C
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	b _08016FEA
_08017074
	ldr r1, _08017120 ;@ =gUnknown_0300345C
	NEGS r0, r0
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_80268AC
	b _08016FEA
loc_8017086
	ldr r0, _08017124 ;@ =gUnknown_03003460
	ldr r0, [r0]
	cmp r0, #0
	beq _08016FEA
	bl sub_800B6A8
	ldrh r1, [r4, #4]
	cmp r0, r1
	beq _08016FEA
	lsls r2, r1, #0x18
	ldr r0, _08017120 ;@ =gUnknown_0300345C
	lsrs r2, r2, #0x18
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
	b _08016FEA
loc_80170a8
	bl sub_8016BE0
	b _08016FEA
loc_80170ae
	bl sub_8016BAC
	b _08016FEA
loc_80170b4
	bl sub_80168E8
	b _08016FEA
loc_80170ba
	bl sub_8016850
	b _08016FEA
loc_80170c0
	ldr r1, _08017128 ;@ =gUnknown_03003D34
	movs r0, #0x11
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, _0801712C ;@ =gUnknown_03003D35
	asrs r0, r0, #2
	strb r0, [r1]
	movs r0, #0xd
	bl sub_8018386
	b _08016FEA
loc_80170e0
	bl sub_80167AC
	b _08016FEA
loc_80170e6
	movs r0, #0x14
	bl sub_8018386
	b _08016FEA
loc_80170ee
	ldr r0, _08017104 ;@ =gUnknown_03003458
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBAA
	b _08016FEA
loc_80170fa
	movs r2, #0
	str r2, [r0, #8]
	bl sub_80166FE
	b _08016FEA
	ALIGN
_08017104 DCDU gUnknown_03003458
_08017108 DCDU gUnknown_030034F8
_0801710C DCDU 0x0000FFFE
_08017110 DCDU gUnknown_03003454
_08017114 DCDU gUnknown_03003D2C
_08017118 DCDU gUnknown_03003E98
_0801711C DCDU gUnknown_03003C58
_08017120 DCDU gUnknown_0300345C
_08017124 DCDU gUnknown_03003460
_08017128 DCDU gUnknown_03003D34
_0801712C DCDU gUnknown_03003D35

	thumb_func_start sub_8017130
sub_8017130 ;@ 0x08017130
	push {r4, lr}
	ldr r2, [r1]
	ldrb r4, [r2]
	cmp r4, #0x15
	bhs _080171BA
	add r3, pc, #0x8 ;@ =_08017144
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08017144
	DCB 0x3B
_08017145
	DCB 0x3B
_08017146
	DCB 0x3B
_08017147
	DCB 0x0B
_08017148
	DCB 0x3B
_08017149
	DCB 0x3B
_0801714A
	DCB 0x3B
_0801714B
	DCB 0x3B
_0801714C
	DCB 0x22
_0801714D
	DCB 0x17
_0801714E
	DCB 0x3B
_0801714F
	DCB 0x3B
_08017150
	DCB 0x3B
_08017151
	DCB 0x3B
_08017152
	DCB 0x2A
_08017153
	DCB 0x3B
_08017154
	DCB 0x3B
_08017155
	DCB 0x3B
_08017156
	DCB 0x3B
_08017157
	DCB 0x32
_08017158
	DCB 0x3B, 0x00
loc_801715a
	ldr r0, _08017424 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r2, #0xc]
	cmp r0, r1
	blo _0801716E
	movs r0, #1
_08017168
	pop {r4}
	pop {r3}
	bx r3
_0801716E
	movs r0, #0
	b _08017168
loc_8017172
	ldr r0, _08017428 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	movs r1, #1
	subs r0, r1, r0
	b _08017168
loc_8017188
	bl sub_8018390
	cmp r0, #0x12
	bne _08017194
	movs r0, #1
	b _08017168
_08017194
	movs r0, #0
	b _08017168
loc_8017198
	bl sub_8018390
	cmp r0, #0x12
	bne _080171A4
	movs r0, #1
	b _08017168
_080171A4
	movs r0, #0
	b _08017168
loc_80171a8
	ldr r2, [r0, #8]
	adds r3, r2, #1
	bne _080171B2
	movs r0, #1
	b _08017168
_080171B2
	bl sub_80166FE
	movs r0, #0
	b _08017168
_080171BA
	movs r0, #1
	b _08017168

	non_word_aligned_thumb_func_start sub_80171BE
sub_80171BE ;@ 0x080171BE
	subs r0, #3
	cmp r0, #0x12
	push {r4, lr}
	bhs _080171D0
	add r3, pc, #0xC ;@ =_080171D4
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_080171D0
	b _0801741E
	ALIGN
_080171D4
	DCB 0x13, 0x00
_080171D6
	DCB 0x61, 0x00
_080171D8
	DCB 0x34, 0x00
_080171DA
	DCB 0x71, 0x00
_080171DC
	DCB 0x80, 0x00
_080171DE
	DCB 0x25, 0x00
_080171E0
	DCB 0xE9, 0x00
_080171E2
	DCB 0xDA, 0x00
_080171E4
	DCB 0x17, 0x01
_080171E6
	DCB 0xF9, 0x00
_080171E8
	DCB 0x08, 0x01
_080171EA
	DCB 0x52, 0x00
_080171EC
	DCB 0x43, 0x00
_080171EE
	DCB 0x8F, 0x00
_080171F0
	DCB 0x9E, 0x00
_080171F2
	DCB 0xCB, 0x00
_080171F4
	DCB 0xAD, 0x00
_080171F6
	DCB 0xBC, 0x00
loc_80171f8
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x6d
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #3
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017214
	adds r0, r4, #0
	bl sub_80154DC
_08017214
	adds r0, r4, #0
_08017216
	pop {r4}
	pop {r3}
	bx r3
loc_801721c
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa0
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017236
	adds r0, r4, #0
	bl sub_80253A8
_08017236
	adds r0, r4, #0
	b _08017216
loc_801723a
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa4
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017254
	adds r0, r4, #0
	bl sub_803166C
_08017254
	adds r0, r4, #0
	b _08017216
loc_8017258
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe8
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017272
	adds r0, r4, #0
	bl sub_80344E4
_08017272
	adds r0, r4, #0
	b _08017216
loc_8017276
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xec
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017290
	adds r0, r4, #0
	bl sub_80399A4
_08017290
	adds r0, r4, #0
	b _08017216
loc_8017294
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x4b
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #3
	bl sub_803DA80
	adds r4, r0, #0
	beq _080172B0
	adds r0, r4, #0
	bl sub_801F794
_080172B0
	adds r0, r4, #0
	b _08017216
loc_80172b4
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xb8
	bl sub_803DA80
	adds r4, r0, #0
	beq _080172CE
	adds r0, r4, #0
	bl sub_802FC38
_080172CE
	adds r0, r4, #0
	b _08017216
loc_80172d2
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xb4
	bl sub_803DA80
	adds r4, r0, #0
	beq _080172EC
	adds r0, r4, #0
	bl sub_803108C
_080172EC
	adds r0, r4, #0
	b _08017216
loc_80172f0
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa4
	bl sub_803DA80
	adds r4, r0, #0
	beq _0801730A
	adds r0, r4, #0
	bl sub_8026024
_0801730A
	adds r0, r4, #0
	b _08017216
loc_801730e
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xac
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017328
	adds r0, r4, #0
	bl sub_802E900
_08017328
	adds r0, r4, #0
	b _08017216
loc_801732c
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xac
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017346
	adds r0, r4, #0
	bl sub_8035480
_08017346
	adds r0, r4, #0
	b _08017216
loc_801734a
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xbc
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017364
	adds r0, r4, #0
	bl sub_8035E7C
_08017364
	adds r0, r4, #0
	b _08017216
loc_8017368
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xd4
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017382
	adds r0, r4, #0
	bl sub_802F118
_08017382
	adds r0, r4, #0
	b _08017216
loc_8017386
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe0
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173A0
	adds r0, r4, #0
	bl sub_8030668
_080173A0
	adds r0, r4, #0
	b _08017216
loc_80173a4
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	movs r3, #0
	movs r2, #0
	adds r0, #1
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173C0
	adds r0, r4, #0
	bl sub_8033318
_080173C0
	adds r0, r4, #0
	b _08017216
loc_80173c4
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe4
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173DE
	adds r0, r4, #0
	bl sub_8036620
_080173DE
	adds r0, r4, #0
	b _08017216
loc_80173e2
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe0
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173FC
	adds r0, r4, #0
	bl sub_8036CE4
_080173FC
	adds r0, r4, #0
	b _08017216
loc_8017400
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xf4
	bl sub_803DA80
	adds r4, r0, #0
	beq _0801741A
	adds r0, r4, #0
	bl sub_803A050
_0801741A
	adds r0, r4, #0
	b _08017216
_0801741E
	movs r0, #0
	b _08017216
	ALIGN
_08017424 DCDU gUnknown_03003E98
_08017428 DCDU gUnknown_0300345C

	thumb_func_start sub_801742C
sub_801742C ;@ 0x0801742C
	ldr r0, _08017440 ;@ =gUnknown_03003458
	push {r3, lr}
	ldr r0, [r0]
	movs r1, #0
	bl sub_801CBAA
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08017440 DCDU gUnknown_03003458

	thumb_func_start sub_8017444
sub_8017444 ;@ 0x08017444
	ldr r1, _08017468 ;@ =_0803ED1C
	str r1, [r0]
	ldr r1, _0801746C ;@ =0x0000FFFE
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr

	thumb_func_start sub_8017450
sub_8017450 ;@ 0x08017450
	ldr r1, _08017468 ;@ =_0803ED1C
	push {r3, lr}
	str r1, [r0]
	adds r1, r0, #0
	ldr r0, _08017470 ;@ =gUnknown_03003454
	ldr r0, [r0]
	bl sub_80177E8
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08017468 DCDU _0803ED1C
_0801746C DCDU 0x0000FFFE
_08017470 DCDU gUnknown_03003454

	thumb_func_start sub_8017474
sub_8017474 ;@ 0x08017474
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	bne _08017492
	movs r0, #0x67
	lsls r0, r0, #4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08017492
	adds r0, r4, #0
_0801748A
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08017492
	ldr r0, _080177A0 ;@ =_0803ECC4
	movs r2, #0
	str r0, [r4]
	ldr r0, _080177A4 ;@ =gUnknown_03003E88
	movs r1, #0x54
	str r4, [r0]
	ldr r0, _080177A8 ;@ =_0803E864
	str r0, [r4]
	ldr r0, _080177AC ;@ =0x0000061C
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0xff
	movs r0, #0x53
	lsls r0, r0, #3
	adds r1, #1
	movs r2, #0
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0xff
	movs r0, #0x73
	lsls r0, r0, #3
	adds r1, #1
	movs r2, #0
	adds r0, r4, r0
	bl sub_803F464
	movs r0, #0xb3
	lsls r0, r0, #3
	movs r2, #0
	movs r1, #0x80
	adds r0, r4, r0
	bl sub_803F464
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0
	movs r1, #0x80
	adds r0, #0x19
	bl sub_803F464
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0
	movs r1, #0x80
	adds r0, #0x99
	bl sub_803F464
	movs r0, #0x43
	lsls r0, r0, #3
	movs r2, #0
	movs r1, #0x80
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0x61
	lsls r1, r1, #4
	adds r1, r4, r1
	movs r0, #4
	strb r0, [r1, #8]
	movs r1, #9
	movs r7, #0
	lsls r1, r1, #7
	adds r1, r4, r1
	strb r7, [r4, #0x14]
	add r0, pc, #0x298 ;@ =_080177B0
	str r0, [r1, #0x18]
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq _08017534
	adds r0, r5, #0
	bl sub_801669C
_08017534
	str r5, [r4, #0xc]
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq _08017550
	adds r0, r5, #0
	bl sub_80164A8
_08017550
	ldr r0, _080177C8 ;@ =gUnknown_03003468
	str r5, [r4, #0x10]
	str r7, [r4, #4]
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	movs r5, #1
	lsls r5, r5, #0xb
	adds r3, r7, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_803DA9C
	str r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x99
	strh r5, [r0, r4]
	movs r5, #1
	lsls r6, r5, #9
_0801757C
	bl sub_8005106
	adds r3, r7, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_803DA9C
	lsls r1, r5, #2
	adds r1, r1, r4
	str r0, [r1, #0x18]
	lsls r0, r5, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r5, #1
	lsls r5, r5, #0x18
	adds r0, #0x81
	lsrs r5, r5, #0x18
	cmp r5, #4
	strh r6, [r0, #0x18]
	blo _0801757C
	movs r0, #4
_080175A8
	lsls r1, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, r1, r4
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	str r7, [r1, #0x18]
	blo _080175A8
	movs r0, #0
	bl sub_80050FA
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080175D0
	ldr r0, _080177CC ;@ =gUnknown_03003440
	ldr r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8004FFC
	str r0, [r4, #8]
_080175D0
	adds r0, r4, #0
	b _0801748A

	thumb_func_start sub_80175D4
sub_80175D4 ;@ 0x080175D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080177A8 ;@ =_0803E864
	adds r6, r1, #0
	str r0, [r5]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _080175F0
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_080175F0
	movs r4, #0
_080175F2
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x18]
	bl sub_803DA4C
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	blo _080175F2
	ldr r0, _080177A0 ;@ =_0803ECC4
	ldr r1, _080177A4 ;@ =gUnknown_03003E88
	str r0, [r5]
	movs r0, #0
	str r0, [r1]
	cmp r6, #0
	beq _0801761A
	adds r0, r5, #0
	bl sub_803DA18
_0801761A
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8017620
sub_8017620 ;@ 0x08017620
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0
	adds r2, r0, #0
	sub sp, #0x1c
	str r0, [sp, #8]
	cmp r1, #0xff
	beq _08017632
	adds r2, r1, #0
_08017632
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	movs r2, #0x40
	cmp r1, #0xff
	beq _0801763E
	adds r2, r1, #1
_0801763E
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x61
	lsls r0, r0, #4
	str r1, [sp, #4]
	adds r1, r6, r0
	str r1, [sp, #0x18]
	ldr r7, _080177D0 ;@ =0x0000FFFE
	b _08017786
_08017650
	lsls r0, r5, #2
	adds r1, r0, r6
	movs r3, #5
	lsls r3, r3, #7
	adds r0, r1, r3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	beq _0801772E
	ldr r0, [sp, #8]
	movs r1, #0xb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r0, r5, #1
	adds r0, r0, r6
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [sp, #0xc]
	b _0801773C
_0801767C
	ldr r0, _080177A4 ;@ =gUnknown_03003E88
	ldr r1, [r0]
	ldrb r0, [r4, #4]
	lsls r2, r0, #0x1f
	bpl _0801768A
	movs r2, #1
	b _080176B8
_0801768A
	lsls r2, r0, #0x1e
	bpl _080176A6
	ldrh r2, [r4, #0x10]
	movs r3, #5
	lsls r3, r3, #7
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	adds r2, r2, r3
	ldr r2, [r2, #0x18]
	cmp r2, r4
	bne _080176A6
	movs r2, #1
	b _080176B8
_080176A6
	lsls r2, r0, #0x1e
	bpl _080176B6
	ldr r2, [r4, #0x18]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	bpl _080176B6
	movs r2, #1
	b _080176B8
_080176B6
	movs r2, #0
_080176B8
	cmp r2, #0
	beq _0801770C
	movs r2, #3
	lsls r2, r2, #9
	adds r2, r1, r2
	ldr r2, [r2, #0x24]
	ldr r3, [r4, #8]
	cmp r3, #0
	bne _080176F4
	ldrh r3, [r4, #0xc]
	cmp r3, r7
	beq _080176E0
	lsls r2, r3, #2
	adds r1, r2, r1
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	str r1, [r4, #8]
	b _080176F4
_080176E0
	ldrh r1, [r4, #0xe]
	ldr r3, _080177D4 ;@ =0x0000FFFF
	cmp r1, r3
	beq _080176F4
	cmp r2, #0
	beq _080176F4
	ldr r2, [r2, #0x14]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	str r1, [r4, #8]
_080176F4
	strh r7, [r4, #0xc]
	movs r1, #0xf0
	ands r0, r1
	strh r7, [r4, #0xe]
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r2, r2, r1
	adds r1, r4, #0
	bl sub_803B8CC
_0801770C
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	bne _08017730
	ldr r0, [r4, #8]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	adds r1, r4, #0
	bl sub_803B8CC
	cmp r0, #0
	beq _08017730
	adds r0, r4, #0
	bl sub_803FBBC
	ldr r4, [r4, #0x14]
	b _08017738
_0801772E
	b _08017744
_08017730
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	bne _08017744
	ldr r4, [r4, #0x14]
_08017738
	cmp r4, #0
	beq _08017744
_0801773C
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	bpl _0801767C
_08017744
	cmp r5, #4
	bls _08017780
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _08017780
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _08017780
	lsls r1, r5, #1
	adds r4, r1, r6
	movs r1, #0xb
	lsls r1, r1, #7
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	lsls r1, r1, #0x1f
	bmi _08017780
	bl sub_803DA4C
	ldr r1, [sp, #0x14]
	movs r0, #0
	adds r4, #0xff
	adds r4, #0x81
	str r0, [r1, #0x18]
	strh r0, [r4, #0x18]
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	adds r0, #0xff
	strb r0, [r1, #8]
_08017780
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
_08017786
	ldr r0, [sp, #4]
	cmp r5, r0
	bhs _08017798
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	ldr r1, [sp, #8]
	cmp r0, r1
	bls _08017798
	b _08017650
_08017798
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080177A0 DCDU _0803ECC4
_080177A4 DCDU gUnknown_03003E88
_080177A8 DCDU _0803E864
_080177AC DCDU 0x0000061C
_080177B0 DCDU 0x656E6547
_080177B4 DCDU 0x206C6172
_080177B8 DCDU 0x6D6D6F43
_080177BC DCDU 0x20646E61
_080177C0 DCDU 0x75657551
_080177C4 DCDU 0x00000065
_080177C8 DCDU gUnknown_03003468
_080177CC DCDU gUnknown_03003440
_080177D0 DCDU 0x0000FFFE
_080177D4 DCDU 0x0000FFFF

	thumb_func_start sub_80177D8
sub_80177D8 ;@ 0x080177D8
	ldrh r2, [r1, #4]
	lsls r2, r2, #2
	adds r0, r2, r0
	movs r2, #3
	lsls r2, r2, #9
	adds r0, r0, r2
	str r1, [r0, #0x1c]
	bx lr

	thumb_func_start sub_80177E8
sub_80177E8 ;@ 0x080177E8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
_080177F0
	lsls r0, r5, #2
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08017836
_08017800
	ldr r1, [r0, #8]
	ldr r6, [r0, #0x14]
	cmp r1, r4
	bne _0801780E
	bl sub_803FBBC
	b _08017832
_0801780E
	ldrh r1, [r0, #0xc]
	ldr r2, _08017AA4 ;@ =0x0000FFFE
	cmp r1, r2
	beq _08017822
	ldrh r3, [r4, #4]
	cmp r1, r3
	bne _08017822
	bl sub_803FBBC
	b _08017832
_08017822
	ldrh r1, [r0, #0xe]
	cmp r1, r2
	beq _08017832
	ldrh r2, [r4, #6]
	cmp r1, r2
	bne _08017832
	bl sub_803FBBC
_08017832
	adds r0, r6, #0
	bne _08017800
_08017836
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo _080177F0
	ldrh r0, [r4, #4]
	ldr r1, _08017AA4 ;@ =0x0000FFFE
	cmp r0, r1
	beq _0801785C
	lsls r0, r0, #2
	adds r1, r0, r7
	movs r0, #3
	lsls r0, r0, #9
	adds r0, r1, r0
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0801785C
	movs r1, #0
	str r1, [r0, #0x1c]
_0801785C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017862
sub_8017862 ;@ 0x08017862
	lsls r1, r1, #2
	adds r0, r1, r0
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	push {r4, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801787E
_08017874
	ldr r4, [r0, #0x14]
	bl sub_803FBBC
	adds r0, r4, #0
	bne _08017874
_0801787E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8017884
sub_8017884 ;@ 0x08017884
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, [sp, #0x14]
	movs r0, #0
	movs r5, #0
	str r5, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, [r3, #8]
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r1, #0x10
	str r1, [sp, #8]
	ldr r1, [r1]
	adds r4, r0, r1
	ldr r1, [sp, #8]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bls _08017978
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
_080178AE
	ldrh r0, [r4]
	ldr r7, _08017AA8 ;@ =gUnknown_03003E88
	movs r6, #0
	subs r0, #8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x10]
	movs r1, #0x1c
	bl sub_803F72C
	adds r5, r0, #0
	ldrh r0, [r0, #0x10]
	movs r2, #0x3f
	movs r1, #7
	lsls r1, r1, #8
	ands r0, r2
	adds r1, r0, r1
	strh r1, [r5, #0x10]
	ldrh r0, [r4, #8]
	cmp r0, #3
	bne _080178E0
	movs r0, #0
	b _080178EC
_080178E0
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _080178EA
	movs r0, #1
	b _080178EC
_080178EA
	movs r0, #0
_080178EC
	cmp r0, #0
	beq _080178F8
	adds r7, r4, #0
	adds r7, #8
_080178F4
	movs r2, #1
	b _08017948
_080178F8
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #0x10]
	bl sub_803F72C
	adds r7, r0, #0
	ldrh r0, [r5, #0x10]
	ldr r1, [sp]
	movs r2, #0x3f
	lsls r1, r1, #6
	adds r1, r0, r1
	mvns r2, r2
	ands r1, r2
	movs r2, #0x3f
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r1, r4, #0
	adds r1, #8
	adds r0, r7, #0
	ldr r2, [sp]
	bl sub_803F3E8
	b _080178F4
_08017928
	adds r1, r2, #0
	lsls r1, r6
	ands r1, r0
	beq _0801793E
	lsls r0, r6, #2
	adds r0, r0, r7
	ldr r1, [r0, #4]
	ldr r3, [sp, #0x14]
	ldr r3, [r3, #8]
	adds r1, r1, r3
	str r1, [r0, #4]
_0801793E
	adds r6, #1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	cmp r6, #8
	bhs _0801794E
_08017948
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08017928
_0801794E
	ldrb r2, [r4, #6]
	adds r1, r7, #0
	adds r0, r5, #0
	ldr r3, [sp, #0x10]
	bl sub_803FB24
	ldrh r0, [r4, #4]
	ldr r2, _08017AAC ;@ =0x0000FFFF
	cmp r0, r2
	beq _08017968
	ldrh r1, [r4, #2]
	cmp r1, r2
	bne _0801796E
_08017968
	ldr r0, [sp, #0x38]
	str r0, [r5, #8]
	b _0801797C
_0801796E
	ldr r2, _08017AA4 ;@ =0x0000FFFE
	cmp r0, r2
	beq _0801797A
	strh r0, [r5, #0xc]
	b _0801797C
_08017978
	b _080179B6
_0801797A
	strh r1, [r5, #0xe]
_0801797C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0801798A
	adds r0, r5, #0
	bl sub_803FAD4
	b _08017992
_0801798A
	adds r0, r5, #0
	ldr r1, [sp, #4]
	bl sub_803FB58
_08017992
	str r5, [sp, #4]
	ldrh r0, [r4]
	adds r4, r0, r4
	lsls r0, r4, #0x1e
	beq _080179A2
	lsrs r4, r4, #2
	lsls r4, r4, #2
	adds r4, #4
_080179A2
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldrh r0, [r0, #4]
	cmp r0, r1
	bls _080179B6
	b _080178AE
_080179B6
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80179BE
sub_80179BE ;@ 0x080179BE
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _080179CE
	ldrb r5, [r0, #0x14]
_080179CE
	ldr r0, _08017AA8 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	adds r0, r4, #0
	str r1, [r4, #8]
	bl sub_803FAD4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017A0A
sub_8017A0A ;@ 0x08017A0A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017A1A
	ldrb r5, [r0, #0x14]
_08017A1A
	ldr r0, _08017AA8 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	adds r0, r4, #0
	strh r1, [r4, #0xc]
	bl sub_803FAD4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017A56
sub_8017A56 ;@ 0x08017A56
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017A66
	ldrb r5, [r0, #0x14]
_08017A66
	ldr r0, _08017AA8 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	adds r0, r4, #0
	strh r1, [r4, #0xe]
	bl sub_803FAD4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08017AA4 DCDU 0x0000FFFE
_08017AA8 DCDU gUnknown_03003E88
_08017AAC DCDU 0x0000FFFF

	thumb_func_start sub_8017AB0
sub_8017AB0 ;@ 0x08017AB0
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017AC0
	ldrb r5, [r0, #0x14]
_08017AC0
	ldr r0, _08017DC4 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	str r1, [r4, #8]
	movs r1, #0
	adds r0, r4, #0
	bl sub_803FB58
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017AFE
sub_8017AFE ;@ 0x08017AFE
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017B0E
	ldrb r5, [r0, #0x14]
_08017B0E
	ldr r0, _08017DC4 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	strh r1, [r4, #0xc]
	movs r1, #0
	adds r0, r4, #0
	bl sub_803FB58
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8017B4C
sub_8017B4C ;@ 0x08017B4C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017B5C
	ldrb r5, [r0, #0x14]
_08017B5C
	ldr r0, _08017DC4 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	strh r1, [r4, #0xe]
	movs r1, #0
	adds r0, r4, #0
	bl sub_803FB58
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017B9A
sub_8017B9A ;@ 0x08017B9A
	push {r0, r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	movs r2, #0
	sub sp, #8
_08017BA4
	ldr r1, [sp, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08017BE2
	movs r3, #4
_08017BB8
	movs r7, #1
	ldr r1, [r0]
	lsls r7, r7, #0x19
	adds r5, #0x1c
	cmp r1, r7
	blo _08017BDC
	movs r7, #0x81
	lsls r7, r7, #0x12
	cmp r1, r7
	bhs _08017BDC
	ldrh r1, [r1, #2]
	adds r5, r1, r5
	lsls r1, r5, #0x1e
	beq _08017BDC
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x1e
	subs r1, r3, r1
	adds r5, r1, r5
_08017BDC
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08017BB8
_08017BE2
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x40
	blo _08017BA4
	movs r7, #0
	cmp r5, #0
	beq _08017C0A
	bl sub_8005106
	adds r1, r0, #0
	lsrs r0, r5, #2
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	ldr r1, [sp, #8]
	adds r4, r0, #0
	str r0, [r1, #4]
_08017C0A
	movs r0, #0
	str r0, [sp]
_08017C0E
	ldr r0, [sp]
	ldr r1, [sp, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #7
	str r0, [sp, #4]
	adds r0, r0, r1
	ldr r5, [r0, #0x18]
	cmp r5, #0
	beq _08017C70
_08017C24
	movs r2, #0x1c
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803F3E8
	adds r0, r6, #0
	adds r6, r4, #0
	cmp r0, #0
	str r0, [r4, #0x18]
	beq _08017C3A
	str r6, [r0, #0x14]
_08017C3A
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0x19
	adds r4, #0x1c
	cmp r1, r0
	blo _08017C6A
	movs r0, #0x81
	lsls r0, r0, #0x12
	cmp r1, r0
	bhs _08017C6A
	ldrh r7, [r1, #2]
	adds r2, r7, #0
	adds r0, r4, #0
	bl sub_803F3E8
	str r4, [r6]
	adds r4, r4, r7
	lsls r0, r4, #0x1e
	beq _08017C6A
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	subs r0, r1, r0
	adds r4, r0, r4
_08017C6A
	ldr r5, [r5, #0x14]
	cmp r5, #0
	bne _08017C24
_08017C70
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08017C82
	bl sub_803DA4C
	ldr r1, [sp, #4]
	movs r0, #0
	str r0, [r1, #0x18]
_08017C82
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x40
	blo _08017C0E
	cmp r6, #0
	beq _08017C98
	movs r0, #0
	str r0, [r6, #0x14]
_08017C98
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8017CA0
sub_8017CA0 ;@ 0x08017CA0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	sub sp, #0xc
_08017CA8
	lsls r0, r5, #1
	adds r6, r0, r7
	adds r6, #0xff
	adds r6, #0x81
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _08017CD0
	bl sub_8005106
	adds r1, r0, #0
	ldrh r0, [r6, #0x18]
	movs r3, #0
	lsrs r0, r0, #2
	lsls r0, r0, #2
	movs r2, #0
	bl sub_803DA9C
	lsls r1, r5, #2
	adds r1, r1, r7
	str r0, [r1, #0x18]
_08017CD0
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo _08017CA8
	movs r1, #0xff
	str r1, [sp, #8]
	ldr r6, [r7, #4]
	movs r5, #0
	cmp r6, #0
	beq _08017DB2
_08017CE6
	ldrh r0, [r6, #0x10]
	ldr r1, [sp, #8]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, r1
	beq _08017D32
	cmp r5, #0
	beq _08017D1A
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r1, r0, r1
	str r5, [r1, #0x18]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	subs r0, r4, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r1, #0xff
	adds r1, #1
	strh r0, [r1, #0x18]
_08017D1A
	ldrh r0, [r6, #0x10]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r0, r1, #2
	str r1, [sp, #8]
	movs r1, #5
	adds r0, r0, r7
	ldr r4, [r0, #0x18]
	lsls r1, r1, #7
	adds r0, r0, r1
	str r4, [r0, #0x18]
	movs r5, #0
_08017D32
	movs r2, #0x1c
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803F3E8
	adds r0, r5, #0
	movs r1, #0
	str r0, [r4, #0x18]
	adds r5, r4, #0
	cmp r0, #0
	str r1, [r4, #0x14]
	beq _08017D4C
	str r5, [r0, #0x14]
_08017D4C
	movs r0, #1
	ldr r1, [r6]
	lsls r0, r0, #0x19
	adds r4, #0x1c
	cmp r1, r0
	blo _08017D80
	movs r0, #0x81
	lsls r0, r0, #0x12
	cmp r1, r0
	bhs _08017D80
	ldrh r0, [r1, #2]
	str r0, [sp, #4]
	adds r2, r0, #0
	adds r0, r4, #0
	bl sub_803F3E8
	str r4, [r5]
	ldr r0, [sp, #4]
	adds r4, r4, r0
	lsls r0, r4, #0x1e
	beq _08017D80
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	subs r0, r1, r0
	adds r4, r0, r4
_08017D80
	ldr r6, [r6, #0x14]
	cmp r6, #0
	bne _08017CE6
	cmp r5, #0
	beq _08017DB2
	movs r1, #0
	str r1, [r5, #0x14]
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r1, r0, r1
	str r5, [r1, #0x18]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	subs r0, r4, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r1, #0xff
	adds r1, #1
	strh r0, [r1, #0x18]
_08017DB2
	ldr r0, [r7, #4]
	bl sub_803DA4C
	movs r1, #0
	str r1, [r7, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08017DC4 DCDU gUnknown_03003E88

	thumb_func_start sub_8017DC8
sub_8017DC8 ;@ 0x08017DC8
	push {r3, lr}
	bl _080180BE
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8017DD4
sub_8017DD4 ;@ 0x08017DD4
	push {r3, lr}
	add r0, pc, #0x54 ;@ =_08017E2C
	bl sub_800EF60
	bl sub_8018070
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017DE6
sub_8017DE6 ;@ 0x08017DE6
	push {r3, r4, r5, lr}
	add r0, pc, #0x40 ;@ =_08017E2C
	bl sub_800EF60
	bl sub_8018070
	ldr r5, _08017E3C ;@ =gUnknown_03003444
	movs r4, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08017E02
	ldrh r1, [r0, #6]
_08017E02
	lsls r0, r1, #0x10
	bne _08017E1A
_08017E06
	bl sub_800EF2A
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08017E16
	ldrh r1, [r0, #6]
_08017E16
	lsls r0, r1, #0x10
	beq _08017E06
_08017E1A
	movs r0, #0x10
	bl sub_8018386
	bl _080180BE
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08017E2C DCDU 0x69544742
_08017E30 DCDU 0x53656C74
_08017E34 DCDU 0x65657263
_08017E38 DCDU 0x0000006E
_08017E3C DCDU gUnknown_03003444

	thumb_func_start sub_8017E40
sub_8017E40 ;@ 0x08017E40
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r0, sp, #8
	bl sub_80046F8
	bl _080180BE
	movs r0, #0
	bl sub_800E53C
	ldr r0, _0801803C ;@ =gUnknown_03003454
	ldr r0, [r0]
	bl sub_8017B9A
	ldr r0, _08018040 ;@ =gUnknown_03003E98
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	ldr r0, _08018044 ;@ =gUnknown_03003EB4
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #0x18
	movs r6, #0
	cmp r0, #0
	beq _08017E86
	movs r0, #0
	ldr r2, _08018048 ;@ =0x05000020
	str r0, [sp, #4]
	adds r1, r2, #0
	subs r1, #0x20
	add r0, sp, #4
	bl sub_803D468
	b _08017E98
_08017E86
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0801804C ;@ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08018050 ;@ =0x85000020
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08017E98
	add r0, pc, #0x1B8 ;@ =_08018054
	bl sub_800EF60
	bl sub_8018070
	ldr r4, _0801805C ;@ =gUnknown_0804AE30
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	bne _08017EB8
	ldr r1, _08018060 ;@ =gUnknown_03003D30
	ldrb r0, [r4]
	ldr r1, [r1]
	strb r0, [r1, #3]
	ldr r1, _08018064 ;@ =gUnknown_0300344C
	ldr r1, [r1]
	strb r0, [r1, #9]
_08017EB8
	ldr r5, _08018068 ;@ =gUnknown_03003468
	ldr r0, [r5]
	bl sub_803DA4C
	movs r1, #0
	movs r0, #0
	bl sub_800ED7C
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r6, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl sub_80050C0
	str r0, [r5]
	movs r0, #3
	bl sub_800E71C
	ldr r0, _0801803C ;@ =gUnknown_03003454
	ldr r0, [r0]
	bl sub_8017CA0
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq _08017F06
	movs r0, #0xc
	bl sub_8018386
_08017EFE
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08017F06
	movs r0, #2
	bl sub_8018386
	b _08017EFE

	non_word_aligned_thumb_func_start sub_8017F0E
sub_8017F0E ;@ 0x08017F0E
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #1]
	adds r5, r4, #4
	movs r6, #0
	cmp r0, #0
	sub sp, #0x10
	bne _08017F5E
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #3
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	ldrb r0, [r4]
	ldr r1, _0801806C ;@ =gUnknown_08050694
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_800EF60
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
_08017F56
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08017F5E
	cmp r0, #1
	bne _08017F82
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq _08017F56
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _08017F56
_08017F82
	cmp r0, #2
	bne _08017FCE
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #2]
	cmp r0, #0x3c
	bne _08017F56
	ldrb r0, [r4]
	adds r0, #1
	cmp r0, #5
	bhs _08017FCA
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #2
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b _08017F56
_08017FCA
	strb r0, [r4]
	b _08017F56
_08017FCE
	cmp r0, #3
	bne _08017F56
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq _08017F56
	strb r6, [r4, #2]
	strb r6, [r4, #1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08017F56

	thumb_func_start sub_8017FF4
sub_8017FF4 ;@ 0x08017FF4
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start sub_8017FFE
sub_8017FFE ;@ 0x08017FFE
	push {r4, lr}
	sub sp, #0x10
	mov r4, sp
	add r0, sp, #4
	bl sub_8004716
	movs r0, #0
	add r3, sp, #0
	strb r0, [r3]
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	ldrb r0, [r3]
	cmp r0, #5
	bhs _0801802C
_0801801A
	adds r0, r4, #0
	bl sub_8017F0E
	bl sub_800EF2A
	add r3, sp, #0
	ldrb r0, [r3]
	cmp r0, #5
	blo _0801801A
_0801802C
	adds r0, r4, #0
	bl sub_8017E40
	add sp, #0x10
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0801803C DCDU gUnknown_03003454
_08018040 DCDU gUnknown_03003E98
_08018044 DCDU gUnknown_03003EB4
_08018048 DCDU 0x05000020
_0801804C DCDU 0x040000D4
_08018050 DCDU 0x85000020
_08018054 DCDU 0x6F4D6742
_08018058 DCDU 0x00656976
_0801805C DCDU gUnknown_0804AE30
_08018060 DCDU gUnknown_03003D30
_08018064 DCDU gUnknown_0300344C
_08018068 DCDU gUnknown_03003468
_0801806C DCDU gUnknown_08050694

	thumb_func_start sub_8018070
sub_8018070 ;@ 0x08018070
	push {r4, lr}
	sub sp, #0x18
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8004716
	movs r2, #0
	str r2, [sp, #8]
	movs r1, #1
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r3, #2
	adds r0, r4, #0
	str r1, [sp, #4]
	bl sub_803D680
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	bne _080180B6
_0801809C
	adds r0, r4, #0
	bl sub_803D834
	adds r0, r4, #0
	bl sub_800474E
	bl sub_800EF2A
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	beq _0801809C
_080180B6
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3
_080180BE
	push {r4, lr}
	sub sp, #0x18
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8004716
	movs r2, #0
	movs r1, #1
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #0
	movs r3, #2
	adds r0, r4, #0
	bl sub_803D680
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	bne _08018106
_080180EC
	adds r0, r4, #0
	bl sub_803D834
	adds r0, r4, #0
	bl sub_800474E
	bl sub_800EF2A
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	beq _080180EC
_08018106
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801810E
sub_801810E ;@ 0x0801810E
	b _080180BE

	thumb_func_start sub_8018110
sub_8018110 ;@ 0x08018110
	push {r4, lr}
	adds r4, r0, #0
	bne _08018128
	movs r0, #0x14
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08018128
	adds r0, r4, #0
_08018122
	pop {r4}
	pop {r3}
	bx r3
_08018128
	movs r0, #0
	str r0, [r4, #0x10]
	movs r2, #0
	movs r1, #0
	ldr r0, _08018374 ;@ =0x00015500
	bl sub_803D984
	movs r1, #1
	lsls r1, r1, #0xe
	str r0, [r4]
	adds r0, r0, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	str r0, [r4, #4]
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r1, r0
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	movs r0, #0xff
	adds r0, #1
	bl sub_80108DA
	ldr r0, [r4, #0xc]
	bl sub_801047C
	adds r0, r4, #0
	b _08018122

	thumb_func_start sub_8018160
sub_8018160 ;@ 0x08018160
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0801818C
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_0801818C
	str r5, [r4, #0x10]
	cmp r6, #0
	beq _08018198
	adds r0, r4, #0
	bl sub_803DA18
_08018198
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801819E
sub_801819E ;@ 0x0801819E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	movs r7, #0
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #0x1c
	beq _080181BE
	bl sub_8008072
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r0, r1
	beq _080181DE
_080181BE
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080181D0
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_080181D0
	str r7, [r4, #0x10]
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_803D4A8
	str r0, [r4, #0x10]
_080181DE
	ldr r0, [r5, #4]
	ldr r1, _08018378 ;@ =gUnknown_03003E84
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r0, [r1]
	beq _0801827A
	ldr r1, [r5]
	adds r3, r7, #0
	lsrs r1, r1, #0x13
	lsls r2, r1, #2
	adds r1, r6, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl sub_803B8CC
	adds r7, r0, #0
	add r0, sp, #4
	bl sub_8008008
	str r6, [sp, #4]
	ldr r0, [r5]
	lsrs r0, r0, #0x13
	lsls r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	str r0, [sp, #0xc]
	adds r0, r7, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	adds r1, r6, #0
	bl sub_803B8CC
	adds r2, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r3, [r1, #0x1c]
	adds r3, r3, r1
	ldr r1, [r4]
	bl sub_803B8CE
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl sub_803B8CC
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r7, #0
	bl sub_803B8CE
	ldr r0, [r5]
	lsls r1, r0, #0xd
	lsrs r1, r1, #0xd
	lsrs r0, r7, #2
	lsls r0, r0, #0x13
	orrs r0, r1
	str r0, [r5]
_08018272
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801827A
	ldr r3, [r4, #4]
	ldr r1, [r5]
	lsrs r1, r1, #0x13
	lsls r2, r1, #2
	adds r1, r6, #0
	bl sub_800529A
	b _08018272

	non_word_aligned_thumb_func_start sub_801828A
sub_801828A ;@ 0x0801828A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	movs r7, #0
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #0x1c
	beq _080182AA
	bl sub_8008072
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r0, r1
	beq _080182CA
_080182AA
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080182BC
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_803B8CC
_080182BC
	str r7, [r4, #0x10]
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_803D4A8
	str r0, [r4, #0x10]
_080182CA
	ldr r1, [r5, #4]
	ldr r2, _08018378 ;@ =gUnknown_03003E84
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	ldr r0, [r2]
	beq _08018364
	lsrs r1, r1, #4
	lsls r2, r1, #2
	adds r3, r7, #0
	adds r1, r6, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl sub_803B8CC
	adds r7, r0, #0
	add r0, sp, #4
	bl sub_8008008
	str r6, [sp, #4]
	ldr r0, [r5, #4]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	str r0, [sp, #8]
	adds r0, r7, #3
	lsrs r0, r0, #2
	ldr r3, [sp, #0x28]
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	adds r1, r6, #0
	bl sub_803B8CC
	adds r2, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r3, [r1, #0x1c]
	adds r3, r3, r1
	ldr r1, [r4]
	bl sub_803B8CE
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl sub_803B8CC
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r7, #0
	bl sub_803B8CE
	ldr r0, [r5, #4]
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1c
	lsrs r0, r7, #2
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r5, #4]
_0801835C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018364
	lsrs r1, r1, #4
	lsls r2, r1, #2
	adds r1, r6, #0
	ldr r3, [sp, #0x28]
	bl sub_800529A
	b _0801835C
	ALIGN
_08018374 DCDU 0x00015500
_08018378 DCDU gUnknown_03003E84

	thumb_func_start sub_801837C
sub_801837C ;@ 0x0801837C
	ldr r2, _080183B8 ;@ =gUnknown_03003C84
	lsls r1, r1, #2
	str r0, [r2, r1]
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_8018386
sub_8018386 ;@ 0x08018386
	ldr r1, _080183B8 ;@ =gUnknown_03003C84
	subs r1, #4
	strb r0, [r1]
	movs r0, #1
	bx lr

	thumb_func_start sub_8018390
sub_8018390 ;@ 0x08018390
	ldr r0, _080183B8 ;@ =gUnknown_03003C84
	subs r0, #4
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_8018398
sub_8018398 ;@ 0x08018398
	push {r3, r4, r5, lr}
	ldr r5, _080183B8 ;@ =gUnknown_03003C84
	subs r4, r5, #4
_0801839E
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_803B8C8
	ldrb r0, [r4]
	cmp r0, #0x18
	bne _0801839E
	pop {r3, r4, r5}
	pop {r3}
	movs r0, #0
	bx r3
	ALIGN
_080183B8 DCDU gUnknown_03003C84

	thumb_func_start sub_80183BC
sub_80183BC ;@ 0x080183BC
	push {r4}
	movs r4, #1
	lsls r4, r4, #0xf
	lsls r2, r4, #0xf
	movs r1, #0
	cmp r0, r2
	blo _080183CE
	subs r0, r0, r2
	lsrs r1, r2, #0xe
_080183CE
	movs r3, #1
	lsls r3, r3, #0xe
	adds r2, r1, r3
	lsls r2, r2, #0xe
	cmp r2, r0
	bhi _080183DE
	subs r0, r0, r2
	orrs r1, r4
_080183DE
	movs r4, #1
	lsls r4, r4, #0xd
	adds r2, r1, r4
	lsls r2, r2, #0xd
	cmp r2, r0
	bhi _080183EE
	subs r0, r0, r2
	orrs r1, r3
_080183EE
	movs r3, #1
	lsls r3, r3, #0xc
	adds r2, r1, r3
	lsls r2, r2, #0xc
	cmp r2, r0
	bhi _080183FE
	subs r0, r0, r2
	orrs r1, r4
_080183FE
	movs r4, #1
	lsls r4, r4, #0xb
	adds r2, r1, r4
	lsls r2, r2, #0xb
	cmp r2, r0
	bhi _0801840E
	subs r0, r0, r2
	orrs r1, r3
_0801840E
	movs r3, #1
	lsls r3, r3, #0xa
	adds r2, r1, r3
	lsls r2, r2, #0xa
	cmp r2, r0
	bhi _0801841E
	subs r0, r0, r2
	orrs r1, r4
_0801841E
	movs r4, #1
	lsls r4, r4, #9
	adds r2, r1, r4
	lsls r2, r2, #9
	cmp r2, r0
	bhi _0801842E
	subs r0, r0, r2
	orrs r1, r3
_0801842E
	adds r2, r1, #0
	adds r2, #0xff
	adds r2, #1
	lsls r2, r2, #8
	cmp r2, r0
	bhi _0801843E
	subs r0, r0, r2
	orrs r1, r4
_0801843E
	adds r2, r1, #0
	adds r2, #0x80
	lsls r2, r2, #7
	cmp r2, r0
	bhi _08018450
	subs r0, r0, r2
	movs r2, #0xff
	adds r2, #1
	orrs r1, r2
_08018450
	adds r2, r1, #0
	adds r2, #0x40
	lsls r2, r2, #6
	cmp r2, r0
	bhi _08018460
	subs r0, r0, r2
	movs r2, #0x80
	orrs r1, r2
_08018460
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #5
	cmp r2, r0
	bhi _08018470
	subs r0, r0, r2
	movs r2, #0x40
	orrs r1, r2
_08018470
	adds r2, r1, #0
	adds r2, #0x10
	lsls r2, r2, #4
	cmp r2, r0
	bhi _08018480
	subs r0, r0, r2
	movs r2, #0x20
	orrs r1, r2
_08018480
	adds r2, r1, #0
	adds r2, #8
	lsls r2, r2, #3
	cmp r2, r0
	bhi _08018490
	subs r0, r0, r2
	movs r2, #0x10
	orrs r1, r2
_08018490
	adds r2, r1, #4
	lsls r2, r2, #2
	cmp r2, r0
	bhi _0801849E
	subs r0, r0, r2
	movs r2, #8
	orrs r1, r2
_0801849E
	adds r2, r1, #2
	lsls r2, r2, #1
	cmp r2, r0
	bhi _080184AC
	subs r0, r0, r2
	movs r2, #4
	orrs r1, r2
_080184AC
	adds r2, r1, #1
	cmp r0, r2
	blo _080184B6
	movs r0, #2
	orrs r1, r0
_080184B6
	lsrs r0, r1, #1
	pop {r4}
	bx lr

	thumb_func_start sub_80184BC
sub_80184BC ;@ 0x080184BC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	adds r6, r0, #0
	adds r0, r4, #0
	movs r5, #0
	cmp r1, #0
	bge _080184CE
	NEGS r1, r1
_080184CE
	cmp r0, #0
	bge _080184D4
	NEGS r0, r0
_080184D4
	cmp r1, r0
	bge _080184E0
	adds r2, r1, #0
	adds r1, r0, #0
	adds r0, r2, #0
	movs r5, #1
_080184E0
	cmp r0, #0
	beq _0801850C
	lsls r3, r1, #4
	subs r1, r3, r1
	lsls r1, r1, #1
	bl sub_803C04C
	cmp r0, #0
	bne _080184F6
	movs r0, #0x5a
	b _0801850E
_080184F6
	movs r1, #0xd7
	lsls r1, r1, #3
	cmp r0, #0x52
	blt _08018504
	bl sub_803C04C
	b _0801850E
_08018504
	adds r0, #8
	bl sub_803C04C
	b _0801850E
_0801850C
	movs r0, #0
_0801850E
	cmp r5, #0
	beq _08018516
	movs r1, #0x5a
	subs r0, r1, r0
_08018516
	lsls r1, r6, #0x10
	bpl _08018528
	lsls r1, r4, #0x10
	bpl _08018522
	adds r0, #0xb4
	b _08018532
_08018522
	movs r1, #0xb4
	subs r0, r1, r0
	b _08018532
_08018528
	lsls r1, r4, #0x10
	bpl _08018532
	movs r1, #0xff
	adds r1, #0x69
	subs r0, r1, r0
_08018532
	lsls r0, r0, #8
	bl sub_80404D8
	pop {r4, r5, r6}
	pop {r3}
	adds r0, r1, #0
	bx r3

	thumb_func_start sub_8018540
sub_8018540 ;@ 0x08018540
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r7, sp, #0x28
	ldm r7!, {r4, r5, r6, r7}
	subs r6, r4, r6
	subs r3, r2, r0
	mov ip, r3
	cmp r3, #0
	mov lr, r6
	bge _0801855A
	adds r3, r2, #0
	adds r2, r0, #0
	b _0801855C
_0801855A
	adds r3, r0, #0
_0801855C
	mov r6, lr
	cmp r6, #0
	ble _08018576
	ldr r6, [sp, #0x30]
	cmp r2, r6
	blt _0801856C
	cmp r4, r3
	bge _08018584
_0801856C
	movs r0, #0
_0801856E
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018576
	cmp r2, r4
	blt _08018580
	ldr r6, [sp, #0x30]
	cmp r6, r3
	bge _08018584
_08018580
	movs r0, #0
	b _0801856E
_08018584
	ldr r2, [sp, #0x10]
	subs r6, r5, r7
	subs r2, r2, r1
	str r2, [sp]
	cmp r2, #0
	bge _08018596
	adds r3, r1, #0
	ldr r2, [sp, #0x10]
	b _0801859A
_08018596
	ldr r3, [sp, #0x10]
	adds r2, r1, #0
_0801859A
	cmp r6, #0
	ble _080185AA
	cmp r3, r7
	blt _080185A6
	cmp r5, r2
	bge _080185B6
_080185A6
	movs r0, #0
	b _0801856E
_080185AA
	cmp r3, r5
	blt _080185B2
	cmp r7, r2
	bge _080185B6
_080185B2
	movs r0, #0
	b _0801856E
_080185B6
	subs r0, r0, r4
	subs r1, r1, r5
	adds r2, r6, #0
	mov r3, lr
	muls r3, r1
	muls r2, r0
	subs r2, r2, r3
	ldr r3, [sp]
	mov r4, lr
	muls r3, r4
	mov r4, ip
	muls r4, r6
	subs r3, r3, r4
	cmp r3, #0
	ble _080185E0
	cmp r2, #0
	blt _080185DC
	cmp r2, r3
	ble _080185EC
_080185DC
	movs r0, #0
	b _0801856E
_080185E0
	cmp r2, #0
	bgt _080185E8
	cmp r2, r3
	bge _080185EC
_080185E8
	movs r0, #0
	b _0801856E
_080185EC
	ldr r2, [sp]
	mov r4, ip
	muls r4, r1
	muls r2, r0
	subs r0, r4, r2
	cmp r3, #0
	ble _08018606
	cmp r0, #0
	blt _08018602
	cmp r0, r3
	ble _08018612
_08018602
	movs r0, #0
	b _0801856E
_08018606
	cmp r0, #0
	bgt _0801860E
	cmp r0, r3
	bge _08018612
_0801860E
	movs r0, #0
	b _0801856E
_08018612
	cmp r3, #0
	bne _0801861A
	movs r0, #2
	b _0801856E
_0801861A
	movs r0, #1
	b _0801856E
	ALIGN

	thumb_func_start sub_8018620
sub_8018620 ;@ 0x08018620
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r1, r0, #0
	bl sub_803B92C
	add r6, pc, #0x344 ;@ =_08018974
	ldm r6!, {r2, r3}
	subs r6, #8
	bl sub_803B940
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #0
	bl sub_803B92C
	ldm r6!, {r2, r3}
	bl sub_803B940
	adds r0, r5, r0
	bl sub_803E1DC
	lsls r5, r0, #8
	ldr r0, [r4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	str r1, [sp]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	adds r6, r1, #0
	ldr r3, [sp]
	bl sub_803B9C4
	str r0, [r4]
	ldr r0, [r4, #4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	adds r2, r0, #0
	adds r0, r5, #0
	adds r3, r1, #0
	adds r1, r6, #0
	bl sub_803B9C4
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8018688
sub_8018688 ;@ 0x08018688
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r1, r0, #0
	muls r1, r0
	ldr r0, [r4, #4]
	adds r2, r0, #0
	muls r0, r2
	adds r1, r1, r0
	ldr r0, [r4, #8]
	adds r2, r0, #0
	muls r2, r0
	adds r0, r1, r2
	bl sub_803E1DC
	adds r5, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl sub_803D46C
	str r0, [sp]
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl sub_803D46C
	adds r7, r0, #0
	ldr r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl sub_803D46C
	ldr r1, [sp]
	str r0, [r6, #8]
	stm r6!, {r1, r7}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80186D8
sub_80186D8 ;@ 0x080186D8
	push {r4, r5, r6, r7, lr}
	ldr r3, [r0, #4]
	ldr r7, [r1, #8]
	adds r6, r3, #0
	ldr r4, [r0, #8]
	muls r6, r7
	ldr r5, [r1, #4]
	mov ip, r7
	adds r7, r4, #0
	muls r7, r5
	subs r6, r6, r7
	ldr r0, [r0]
	mov lr, r6
	ldr r1, [r1]
	adds r6, r0, #0
	mov r7, ip
	muls r4, r1
	muls r6, r7
	subs r4, r6, r4
	muls r1, r3
	muls r0, r5
	subs r0, r0, r1
	str r0, [r2, #8]
	str r4, [r2, #4]
	mov r6, lr
	str r6, [r2]
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018712
sub_8018712 ;@ 0x08018712
	push {r3, lr}
	ldr r1, [r0]
	adds r2, r1, #0
	muls r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r3, r1, #0
	muls r1, r3
	adds r1, r2, r1
	adds r2, r0, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_803E1DC
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8018734
sub_8018734 ;@ 0x08018734
	push {r3, lr}
	ldr r1, [r0]
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	adds r2, r1, #0
	muls r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	asrs r3, r1, #0x1f
	lsrs r3, r3, #0x18
	adds r1, r3, r1
	asrs r1, r1, #8
	adds r3, r1, #0
	muls r3, r1
	adds r1, r2, r3
	asrs r2, r0, #0x1f
	lsrs r2, r2, #0x18
	adds r0, r2, r0
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r0
	adds r0, r1, r2
	bl sub_803E1DC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801876E
sub_801876E ;@ 0x0801876E
	push {lr}
	ldr r2, [r0]
	ldr r3, [r1]
	sub sp, #0xc
	subs r2, r2, r3
	str r2, [sp]
	ldr r2, [r0, #4]
	ldr r3, [r1, #4]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	ldr r1, [sp]
	str r0, [sp, #8]
	adds r0, r1, #0
	muls r1, r0
	adds r0, r2, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_803E1DC
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_80187A0
sub_80187A0 ;@ 0x080187A0
	push {r3, lr}
	ldr r2, [r0]
	ldr r3, [r1]
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	adds r2, r3, r2
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r2, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0
	adds r0, r2, r1
	bl sub_803E1DC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80187D2
sub_80187D2 ;@ 0x080187D2
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, [r2]
	adds r7, r2, #0
	ldr r2, [r5]
	sub sp, #0xc
	subs r1, r1, r2
	str r1, [r3]
	ldr r1, [r7, #4]
	ldr r2, [r5, #4]
	adds r4, r3, #0
	subs r1, r1, r2
	adds r2, r3, #4
	str r2, [sp, #8]
	str r1, [r3, #4]
	ldr r1, [r7, #8]
	ldr r2, [r5, #8]
	subs r1, r1, r2
	str r1, [r4, #8]
	adds r1, r4, #0
	bl sub_803F3B4
	adds r6, r0, #0
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_803F3B4
	subs r6, r6, r0
	cmp r6, #0
	ble _08018874
	adds r1, r4, #0
	adds r0, r4, #0
	bl sub_803F3B4
	str r0, [sp, #4]
	cmp r6, r0
	bge _08018866
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl sub_803B998
	adds r2, r0, #0
	ldr r0, [sp, #4]
	adds r3, r1, #0
	asrs r1, r0, #0x1f
	bl sub_803B9C4
	ldr r1, [r4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [r4, #4]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [r4, #4]
	str r1, [r4]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [r4]
	ldr r1, [r5, #4]
	ldr r2, [sp, #8]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #1
_0801885E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018866
	ldr r0, [sp, #4]
	cmp r6, r0
	bne _08018880
	ldm r7!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b _0801885E
_08018874
	cmp r6, #0
	bne _08018880
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b _0801885E
_08018880
	movs r0, #0
	b _0801885E

	thumb_func_start sub_8018884
sub_8018884 ;@ 0x08018884
	push {r4, r5, r6, r7, lr}
	adds r4, r3, #0
	ldr r3, [r0]
	ldr r0, [r0, #4]
	sub sp, #0x34
	asrs r3, r3, #8
	asrs r0, r0, #8
	str r0, [sp, #0x2c]
	str r3, [sp, #0x28]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x20]
	add r6, sp, #4
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	add r7, sp, #0x1c
	subs r0, r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	adds r1, r6, #0
	bl sub_803F3B4
	adds r5, r0, #0
	adds r1, r6, #0
	adds r0, r7, #0
	bl sub_803F3B4
	subs r6, r5, r0
	cmp r6, #0
	ble _0801895A
	add r0, sp, #4
	adds r1, r0, #0
	bl sub_803F3B4
	adds r5, r0, #0
	cmp r6, r0
	bge _08018946
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl sub_803B998
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	bl sub_803B9C4
	ldr r1, [sp, #4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [sp, #8]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [sp, #8]
	adds r0, r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
_0801893E
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018946
	cmp r6, r5
	bne _0801896E
	ldr r0, [sp, #0x10]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x14]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b _0801893E
_0801895A
	cmp r6, #0
	bne _0801896E
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b _0801893E
_0801896E
	movs r0, #0
	b _0801893E
	ALIGN
_08018974 DCDU 0x00010000
_08018978 DCDU 0x00000000

	thumb_func_start sub_801897C
sub_801897C ;@ 0x0801897C
	push {lr}
	ldr r2, [r0]
	ldr r3, [r1]
	sub sp, #0xc
	subs r2, r2, r3
	str r2, [sp]
	ldr r2, [r0, #4]
	ldr r3, [r1, #4]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp]
	asrs r1, r0, #5
	asrs r0, r2, #5
	bl sub_80184BC
	cmp r0, #0x7f
	ble _080189AE
	movs r1, #0xff
	adds r1, #1
	subs r0, r1, r0
	NEGS r0, r0
_080189AE
	NEGS r0, r0
	bpl _080189B6
	adds r0, #0xff
	adds r0, #1
_080189B6
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_80189BC
sub_80189BC ;@ 0x080189BC
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, sp, #0x44
	ldm r5!, {r4, r5}
	adds r7, r0, #0
	bl sub_8018390
	movs r6, #0
	ldr r2, _08018C34 ;@ =gUnknown_080506E8
	b _080189D6
_080189D0
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
_080189D6
	ldrb r1, [r2, r6]
	cmp r1, r0
	bne _080189D0
	adds r0, r6, #1
	bl sub_8040684
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	adds r0, r6, #4
	bl sub_8040684
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	ldr r1, _08018C34 ;@ =gUnknown_080506E8
	lsls r0, r0, #1
	adds r1, #0x10
	ldrh r0, [r1, r0]
	ldr r2, [sp, #0x28]
	strh r0, [r2]
	ldr r0, [sp, #0x24]
	ldrh r0, [r0]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	ldr r1, [sp, #0x40]
	strh r0, [r1]
	ldr r0, _08018C38 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r7]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	bl sub_800065C
	ldr r1, [sp, #0x20]
	ldr r2, _08018C34 ;@ =gUnknown_080506E8
	ldrh r0, [r1]
	ldr r1, _08018C34 ;@ =gUnknown_080506E8
	add r3, sp, #0
	adds r1, #0x1a
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	adds r2, #0x24
	ldrh r0, [r2, r0]
	strh r1, [r3, #0xc]
	add r1, sp, #0xc
	strh r0, [r3, #0xe]
	ldr r0, [r7]
	bl sub_8040034
	ldr r0, [r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08018A5A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08018A5A
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	ldr r0, _08018C38 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r7, #4]
	ldr r1, [sp, #0x40]
	ldrh r1, [r1]
	bl sub_800065C
	ldr r0, [sp, #0x24]
	ldr r1, _08018C34 ;@ =gUnknown_080506E8
	ldrh r0, [r0]
	adds r1, #0x1a
	movs r2, #0xf0
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	add r3, sp, #0
	subs r1, r2, r1
	ldr r2, _08018C34 ;@ =gUnknown_080506E8
	adds r2, #0x24
	ldrh r0, [r2, r0]
	strh r1, [r3, #0xc]
	add r1, sp, #0xc
	strh r0, [r3, #0xe]
	ldr r0, [r7, #4]
	bl sub_8040034
	ldr r0, [r7, #4]
	movs r2, #1
	str r0, [sp, #0xc]
	adds r0, #0x28
	ldrh r1, [r0]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	bl sub_80003F4
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	lsls r0, r0, #0x1e
	bmi _08018ABE
	ldr r0, [sp, #0xc]
	bl sub_804025C
_08018ABE
	ldr r0, [sp, #0xc]
	movs r2, #0x80
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	orrs r0, r2
	str r0, [r1]
	ldr r0, [r7, #4]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08018AEA
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08018AEA
	movs r1, #1
	ldr r0, [r7, #4]
	bl sub_80401E4
	ldr r1, _08018C3C ;@ =0x0000FFFF
	movs r2, #8
	str r2, [sp, #0xc]
	str r2, [sp]
	movs r7, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	adds r3, r7, #0
	movs r2, #0
	adds r0, r4, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	ldr r1, _08018C34 ;@ =gUnknown_080506E8
	lsls r0, r6, #1
	adds r1, #6
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	cmp r5, #0
	beq _08018C0E
	movs r1, #0
	adds r0, r4, #0
	bl sub_80139AC
	movs r0, #0x38
	ldrb r0, [r0, r4]
	cmp r0, #1
	bne _08018B7E
	ldrb r0, [r4, #0x1c]
	lsls r1, r0, #0x1d
	bpl _08018B54
	ldr r1, [r4, #0x14]
	ldrh r0, [r4, #0x20]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08018B68
_08018B54
	lsls r0, r0, #0x1e
	bpl _08018B66
	ldr r1, [r4, #0x14]
	ldrh r0, [r4, #0x20]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08018B68
_08018B66
	movs r0, #0
_08018B68
	ldrh r1, [r4, #0x18]
	add r3, sp, #0
	adds r1, r1, r0
	strh r1, [r3, #0x18]
	ldr r2, [r4, #0x14]
	ldrh r1, [r4, #0x18]
	ldrh r2, [r2, #4]
	adds r1, r1, r2
	adds r0, r1, r0
	strh r0, [r3, #0x14]
	b _08018B8C
_08018B7E
	ldrh r0, [r4, #0x18]
	add r3, sp, #0
	strh r0, [r3, #0x18]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
_08018B8C
	ldrh r0, [r4, #0x1a]
	add r3, sp, #0
	strh r0, [r3, #0x10]
	ldr r0, _08018C38 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08018C40 ;@ =0x00000C83
	str r0, [r5]
	bl sub_800065C
	add r3, sp, #0
	ldrh r0, [r3, #0x18]
	ldrh r1, [r3, #0x10]
	subs r0, #0xa
	strh r0, [r3, #0xc]
	adds r1, #3
	strh r1, [r3, #0xe]
	ldr r0, [r5]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5]
	movs r4, #3
	ldrh r1, [r0, #0x2a]
	lsls r4, r4, #0xa
	movs r2, #0
	bics r1, r4
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r6, #4
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08018BD8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08018BD8
	movs r1, #1
	ldr r0, [r5]
	bl sub_80401E4
	ldr r0, _08018C38 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08018C44 ;@ =0x00000C85
	str r0, [r5, #4]
	bl sub_800065C
	add r3, sp, #0
	ldrh r0, [r3, #0x14]
	ldrh r1, [r3, #0x10]
	adds r0, #2
	strh r0, [r3, #0xc]
	adds r1, #3
	strh r1, [r3, #0xe]
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #4]
	ldrh r1, [r0, #0x2a]
	bics r1, r4
	b _08018C10
_08018C0E
	b _08018C2A
_08018C10
	orrs r1, r7
	strh r1, [r0, #0x2a]
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08018C22
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08018C22
	movs r1, #1
	ldr r0, [r5, #4]
	bl sub_80401E4
_08018C2A
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08018C34 DCDU gUnknown_080506E8
_08018C38 DCDU gUnknown_03003448
_08018C3C DCDU 0x0000FFFF
_08018C40 DCDU 0x00000C83
_08018C44 DCDU 0x00000C85

	thumb_func_start sub_8018C48
sub_8018C48 ;@ 0x08018C48
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	sub sp, #0x14
	bne _08018CE4
	movs r4, #0
_08018C58
	ldr r0, _08018E24 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r7, r4, #2
	ldr r1, _08018E28 ;@ =0x00000C8A
	str r0, [r5, r7]
	subs r1, r1, r4
	bl sub_800065C
	movs r0, #0x32
	muls r0, r4
	str r0, [sp, #0x10]
	adds r0, #0xa
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0x96
	strh r0, [r3, #0xe]
	ldr r0, [r5, r7]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #9
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08018CA4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08018CA4
	ldr r1, _08018E2C ;@ =0x0000FFFF
	movs r2, #0xff
	str r1, [sp, #4]
	str r1, [sp, #8]
	lsls r1, r4, #4
	subs r1, r1, r4
	str r2, [sp, #0xc]
	ldr r0, [sp, #0x10]
	movs r2, #0x94
	lsls r1, r1, #3
	adds r7, r1, r6
	str r2, [sp]
	adds r0, #0x14
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803F9C4
	movs r1, #1
	adds r0, r7, #0
	bl sub_8014B02
	movs r1, #9
	adds r0, r7, #0
	bl sub_80147FA
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _08018C58
_08018CE4
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _08018CF8
	movs r3, #0xff
	movs r2, #0
	adds r0, r6, #0
	ldr r1, [sp, #0x1c]
	bl sub_80138E2
	b _08018D02
_08018CF8
	movs r2, #0
	adds r0, r6, #0
	add r1, pc, #0x130
	bl _080137F8
_08018D02
	ldr r0, [r5]
	movs r4, #1
	ldr r1, [r0]
	ldr r3, [sp, #0x1c]
	lsls r2, r1, #0x1f
	lsrs r2, r2, #0x1f
	adds r1, r4, #0
	cmp r3, #0
	bne _08018D16
	movs r1, #0
_08018D16
	cmp r2, r1
	beq _08018D20
	ldr r3, [sp, #0x1c]
	bl sub_80401E4
_08018D20
	adds r7, r6, #0
	ldr r0, [sp, #0x20]
	adds r7, #0x78
	cmp r0, #0
	beq _08018D38
	movs r3, #0xff
	movs r2, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl sub_80138E2
	b _08018D42
_08018D38
	movs r2, #0
	adds r0, r7, #0
	add r1, pc, #0xF0
	bl _080137F8
_08018D42
	ldr r0, [r5, #4]
	ldr r1, [r0]
	ldr r2, [sp, #0x20]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r2, #0
	bne _08018D52
	movs r4, #0
_08018D52
	cmp r1, r4
	beq _08018D5E
	adds r1, r4, #0
	ldr r2, [sp, #0x20]
	bl sub_80401E4
_08018D5E
	movs r1, #0
	adds r0, r6, #0
	bl sub_80139AC
	movs r1, #0
	adds r0, r7, #0
	bl sub_80139AC
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018D76
sub_8018D76 ;@ 0x08018D76
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, [sp, #4]
	movs r5, #0
	cmp r0, #0
	ldr r6, [sp, #0x2c]
	bls _08018E1C
_08018D84
	lsls r0, r5, #4
	subs r0, r0, r5
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #1
	adds r0, r4, #0
	bl sub_803B8CC
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803B8CC
	ldr r0, [r4]
	movs r3, #2
	ldr r1, [r0, #0x14]
	adds r7, r1, r0
	ldr r1, [sp, #0xc]
	lsls r0, r5, #2
	adds r1, r0, r1
	ldrsh r2, [r1, r3]
	ldr r1, [sp, #0xc]
	ldrsh r1, [r1, r0]
	adds r0, r4, #0
	bl sub_803B8D6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r1, #0x10
	cmp r6, #0
	beq _08018DD6
	ldrb r1, [r6, r5]
_08018DD6
	lsls r2, r1, #0x10
	ldr r1, [sp, #0x10]
	lsrs r2, r2, #0x10
	ldrb r1, [r1, r5]
	bl sub_803B8CE
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r2, #0xff
	ldr r1, [r0, #0x20]
	movs r3, #0
	adds r7, r1, r0
	movs r1, #4
	adds r0, r4, #0
	bl sub_803B8D6
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	ldr r1, [sp, #0x28]
	lsls r0, r5, #1
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	adds r5, #1
	lsls r5, r5, #0x18
	ldr r0, [sp, #4]
	lsrs r5, r5, #0x18
	cmp r5, r0
	blo _08018D84
_08018E1C
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08018E24 DCDU gUnknown_03003448
_08018E28 DCDU 0x00000C8A
_08018E2C DCDU 0x0000FFFF
_08018E30
	DCB 0x20, 0x00, 0x00, 0x00

	thumb_func_start sub_8018E34
sub_8018E34 ;@ 0x08018E34
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl _080180BE
	ldr r6, _0801921C ;@ =gUnknown_03003448
	movs r4, #0
_08018E40
	lsls r0, r4, #2
	adds r5, r0, r7
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xff
	adds r1, #0x9d
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _08018E40
	adds r1, r7, #0
	adds r1, #0xff
	adds r1, #0xa5
	ldr r0, [r6]
	bl sub_8000DE6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018E7E
sub_8018E7E ;@ 0x08018E7E
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0xff
	adds r5, #0x81
	adds r4, r0, #0
	ldrb r0, [r5, #1]
	sub sp, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	bmi _08018F56
	movs r1, #0xff
	adds r1, #0x9c
	ldrb r1, [r1, r4]
	cmp r1, r0
	ble _08018F56
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #1]
	cmp r1, #0
	beq _08018EB0
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrb r0, [r0, #2]
	b _08018EB2
_08018EB0
	movs r0, #0
_08018EB2
	lsls r7, r0, #2
	adds r0, r7, #0
	adds r0, #0x11
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0x31
	lsls r0, r0, #4
	adds r1, r6, #0
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r0, r6, #1
	lsls r1, r0, #0x10
	movs r0, #1
	lsls r0, r0, #0xa
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r0, r6, #2
	lsls r1, r0, #0x10
	movs r0, #0x8f
	lsls r0, r0, #3
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r6, #3
	lsls r1, r6, #0x10
	movs r0, #0x4f
	lsls r0, r0, #4
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	ldr r6, _08019220 ;@ =gUnknown_0805075A
	movs r0, #0x71
	lsls r0, r0, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	ldrh r1, [r6, r7]
	bl sub_80138E2
	adds r0, r7, r6
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _08018F38
	ldr r0, [r5, #0x24]
	bl sub_800065C
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08018F46
	movs r1, #1
	bl sub_80401E4
	b _08018F46
_08018F38
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08018F46
	movs r1, #0
	bl sub_80401E4
_08018F46
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08018F56
	ldr r0, _08019224 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_08018F56
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018F5E
sub_8018F5E ;@ 0x08018F5E
	push {r4, r5, r6, r7, lr}
	ldr r1, _08019220 ;@ =gUnknown_0805075A
	sub sp, #0x4c
	add r7, sp, #0x40
	adds r5, r0, #0
	movs r2, #0xc
	adds r1, #0x38
	adds r0, r7, #0
	bl sub_803BF0C
	ldr r0, _08019220 ;@ =gUnknown_0805075A
	add r3, sp, #0
	subs r0, #0xc
	ldrh r1, [r0]
	adds r6, r5, #0
	adds r6, #0xff
	strh r1, [r3, #0x38]
	ldrh r1, [r0, #2]
	movs r4, #0
	adds r6, #0x81
	strh r1, [r3, #0x3a]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x3c]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x30]
	ldrh r1, [r0, #8]
	strh r1, [r3, #0x32]
	ldrh r1, [r0, #0xa]
	ldr r0, _08019228 ;@ =gUnknown_03003468
	strh r1, [r3, #0x34]
	strb r4, [r6, #1]
	strb r4, [r6]
	str r4, [r5]
	str r4, [r5, #4]
	ldr r0, [r0]
	bl sub_80050FA
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801922C ;@ =gUnknown_03003EA8
	add r1, pc, #0x27C ;@ =_08019230
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	ldr r0, _08019240 ;@ =gUnknown_03003450
	add r1, sp, #4
	ldr r0, [r0]
	bl sub_800D9E0
	ldr r0, _08019244 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	ldr r0, _08019240 ;@ =gUnknown_03003450
	movs r1, #0
	ldr r0, [r0]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r2, r6, #0
	adds r2, #0x1c
	adds r1, r2, #0
	subs r0, r6, #2
	subs r1, #0x9c
	str r1, [sp, #4]
	str r2, [sp, #8]
	subs r2, r0, #6
	subs r1, r0, #4
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	movs r2, #0
	add r1, sp, #0x30
	str r1, [sp]
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r1, r6, #0
	adds r1, #0x28
	movs r0, #2
	add r3, sp, #0x38
	bl sub_8018D76
	adds r1, r5, #0
	adds r1, #8
	adds r3, r4, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x20
	movs r0, #0x31
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #4
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x7a
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x1F0 ;@ =_08019248
	bl _080137F8
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x43
	movs r0, #0x71
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x12
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x1BC ;@ =_08019248
	bl _080137F8
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x64
	movs r0, #1
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #0xa
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x12
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x188 ;@ =_08019248
	bl _080137F8
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x84
	movs r0, #0x8f
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x12
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x154 ;@ =_08019248
	bl _080137F8
	movs r0, #0x4f
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r4, r0, #0
	ldr r0, _08019228 ;@ =gUnknown_03003468
	movs r2, #0xff
	ldr r0, [r0]
	movs r1, #0x60
	str r0, [r4, #0x50]
	str r2, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x7a
	adds r0, r4, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x11C ;@ =_08019248
	bl _080137F8
	ldr r0, _0801921C ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _0801924C ;@ =0x00000C83
	str r0, [r6, #0x24]
	bl sub_800065C
	movs r0, #0x30
	add r3, sp, #0
	ldr r4, [r6, #0x24]
	strh r0, [r3, #0x2c]
	movs r0, #0x20
	strh r0, [r3, #0x2e]
	movs r0, #3
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x14
	subs r0, r0, r1
	movs r1, #1
	ldr r2, [r4, #0x30]
	lsls r1, r1, #0x15
	subs r1, r1, r2
	movs r2, #3
	lsls r2, r2, #0x14
	movs r3, #1
	lsls r3, r3, #0x15
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	ldr r3, [r4, #0x34]
	adds r2, r4, #0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, #0x34
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	movs r7, #0x80
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	ldr r1, _08019250 ;@ =gUnknown_03003EA0
	cmp r0, #0
	blt _080191A8
	movs r2, #0xf
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r0, r2
	bge _080191A8
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _080191A8
	movs r2, #5
	ldr r0, [r4, #0x38]
	lsls r2, r2, #0x15
	cmp r0, r2
	blt _080191C4
_080191A8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0801921A
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r4]
	b _0801921A
_080191C4
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _080191E4
	ldr r0, [r1]
	adds r1, r4, #0
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
_080191E4
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
_0801921A
	b _08019254
	ALIGN
_0801921C DCDU gUnknown_03003448
_08019220 DCDU gUnknown_0805075A
_08019224 DCDU gUnknown_0300345C
_08019228 DCDU gUnknown_03003468
_0801922C DCDU gUnknown_03003EA8
_08019230 DCDU 0x654D6742
_08019234 DCDU 0x6146756E
_08019238 DCDU 0x72756F76
_0801923C DCDU 0x00000073
_08019240 DCDU gUnknown_03003450
_08019244 DCDU gUnknown_03003E98
_08019248 DCDU 0x00000020
_0801924C DCDU 0x00000C83
_08019250 DCDU gUnknown_03003EA0
_08019254
	ldr r0, [r6, #0x24]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #4
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi _08019272
	orrs r1, r7
	str r1, [r0]
_08019272
	adds r0, r2, #0
	adds r2, r5, #0
	adds r2, #0xff
	adds r2, #0x91
	strb r0, [r2, #0xb]
	movs r0, #0
	ldr r6, _080195AC ;@ =gUnknown_03003478
	movs r4, #1
_08019282
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0x28
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	adds r3, r4, #0
	lsls r3, r7
	cmp r1, #0
	beq _0801929E
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r6, r1]
	ands r1, r3
	beq _080192B0
_0801929E
	ldrb r3, [r2, #0xb]
	adds r1, r0, #1
	adds r3, r3, r5
	adds r3, #0xff
	adds r3, #0x81
	strb r1, [r3, #2]
	ldrb r1, [r2, #0xb]
	adds r1, #1
	strb r1, [r2, #0xb]
_080192B0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	blo _08019282
	movs r1, #0
	adds r0, r5, #0
	bl sub_8018E7E
	bl sub_8018070
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80192CE
sub_80192CE ;@ 0x080192CE
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x19c
	add r4, sp, #0x10
	ldr r5, _080195B0 ;@ =sub_80143E0
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl sub_803C3A4
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x10]
	bl sub_80143E0
	movs r0, #0x31
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	adds r0, r4, #0
	adds r0, #0xff
	add r3, sp
	str r1, [r3, #0xc]
	adds r0, #0xa9
	movs r2, #0x78
	adds r3, r5, #0
	bl sub_803C3A4
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0xc]
	bl sub_80143E0
	movs r0, #0x71
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #8]
	bl sub_80143E0
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #4]
	bl sub_80143E0
	movs r0, #0x8f
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3]
	bl sub_80143E0
	movs r0, #0x4f
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	str r0, [r3, #0x7c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_8018F5E
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	add r1, sp, #0xd0
	str r1, [r3, #0x78]
	add r4, sp, #0x190
	add r7, sp, #0x170
_08019380
	ldr r0, _080195B4 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r0, [r0]
	adds r5, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi _08019390
	ldrh r5, [r0, #8]
_08019390
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r1, #0x1c
	bmi _0801939A
	ldrh r2, [r0, #4]
_0801939A
	ldrh r0, [r7, #0x1c]
	ldrh r1, [r7, #0x1e]
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	str r1, [sp, #4]
	ldr r1, [r3, #0x78]
	lsls r6, r2, #0x10
	ldr r1, [r1, #0x38]
	lsrs r6, r6, #0x10
	str r1, [sp, #8]
	ldr r1, [r3, #0x78]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _080193E6
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_800065C
_080193E6
	lsls r0, r6, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08019418
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_800065C
_08019418
	lsls r0, r5, #0x16
	bpl _08019422
	movs r0, #2
	strb r0, [r4]
	b _0801945C
_08019422
	lsls r0, r5, #0x17
	bpl _0801942C
	movs r0, #1
	strb r0, [r4]
	b _0801945C
_0801942C
	lsls r0, r5, #0x1a
	bpl _0801943C
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x10
	bl sub_8018E7E
	b _0801945C
_0801943C
	lsls r0, r5, #0x1b
	bpl _0801944A
	movs r1, #1
	add r0, sp, #0x10
	bl sub_8018E7E
	b _0801945C
_0801944A
	lsls r0, r5, #0x1e
	bpl _08019454
	movs r0, #3
	strb r0, [r4]
	b _0801945C
_08019454
	lsls r0, r5, #0x1d
	bpl _0801945C
	movs r0, #3
	strb r0, [r4]
_0801945C
	lsls r0, r6, #0x1a
	ldr r1, _080195BC ;@ =0x00000C83
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r1, [r4, #0x1c]
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	str r1, [sp, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _0801948A
	adds r1, r5, #0
	ldr r0, [r4, #0x1c]
	bl sub_800065C
_0801948A
	lsls r0, r6, #0x1b
	ldr r1, _080195C0 ;@ =0x00000C85
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	ldr r6, [r4, #0x20]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _080194B4
	adds r1, r5, #0
	ldr r0, [r4, #0x20]
	bl sub_800065C
_080194B4
	bl sub_800EF2A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080194C0
	b _08019380
_080194C0
	ldrh r2, [r7, #0x1a]
	ldr r1, _080195C4 ;@ =gUnknown_080506E8
	ldrb r0, [r4]
	ldrb r4, [r1, r2]
	ldrh r2, [r7, #0x18]
	add r5, sp, #0x10
	ldr r6, _080195C8 ;@ =gUnknown_0300345C
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq _080194FA
	cmp r0, #2
	beq _080194E8
	cmp r0, #3
	beq _0801950C
	cmp r0, #6
	bne _08019512
	movs r0, #0xb
	bl sub_8018386
	b _08019512
_080194E8
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801951C
_080194FA
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801951C
_0801950C
	movs r0, #0x11
	bl sub_8018386
_08019512
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
_0801951C
	adds r0, r5, #0
	bl sub_8018E34
	movs r1, #0
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	ldr r0, [r3, #0x7c]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #4]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #8]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0xc]
	bl sub_8014436
	ldr r4, _080195CC ;@ =sub_8014436
	adds r1, r5, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x53
	lsls r0, r0, #3
	mvns r2, r2
	adds r1, #0x31
	adds r3, r4, #0
	adds r0, r5, r0
	bl sub_803C3C8
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x10]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r5, #0
	adds r0, #0x80
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x19c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080195AC DCDU gUnknown_03003478
_080195B0 DCDU sub_80143E0
_080195B4 DCDU gUnknown_03003444
_080195B8 DCDU gUnknown_03003EA0
_080195BC DCDU 0x00000C83
_080195C0 DCDU 0x00000C85
_080195C4 DCDU gUnknown_080506E8
_080195C8 DCDU gUnknown_0300345C
_080195CC DCDU sub_8014436

	thumb_func_start sub_80195D0
sub_80195D0 ;@ 0x080195D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl _080180BE
	ldr r6, _080199B8 ;@ =gUnknown_03003448
	movs r5, #0
_080195DC
	lsls r0, r5, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _080195EC
	adds r1, r0, r4
	ldr r0, [r6]
	bl sub_8000DE6
_080195EC
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _080195DC
	movs r5, #0
_080195F8
	lsls r0, r5, #2
	adds r0, r0, r4
	movs r1, #0xf8
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0801960E
	adds r1, r0, #0
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
_0801960E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _080195F8
	movs r5, #0
_0801961A
	lsls r0, r5, #2
	movs r1, #0xff
	adds r1, #0xd5
	adds r0, r0, r4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _08019634
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0xd5
	ldr r0, [r6]
	bl sub_8000DE6
_08019634
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0801961A
	movs r5, #0
_08019640
	lsls r0, r5, #2
	movs r1, #0xff
	adds r1, #0xdd
	adds r0, r0, r4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0801965A
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0xdd
	ldr r0, [r6]
	bl sub_8000DE6
_0801965A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08019640
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801966A
sub_801966A ;@ 0x0801966A
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0xff
	adds r6, #0xd1
	adds r4, r0, #0
	movs r3, #2
	ldrsb r0, [r6, r3]
	sub sp, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	bmi _08019766
	ldrb r2, [r6, #3]
	cmp r2, r0
	ble _08019766
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xd
	cmp r1, #7
	strb r1, [r6, #2]
	blt _0801969A
	cmp r1, #7
	bgt _080196DA
	cmp r2, #8
	bne _080196DA
_0801969A
	movs r7, #0
	movs r5, #0
_0801969E
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq _080196AA
	movs r0, #1
_080196AA
	subs r0, r1, r0
	movs r3, #2
	ldrsb r1, [r6, r3]
	lsls r3, r1, #1
	adds r1, r3, r1
	add r3, sp, #0
	strh r0, [r3]
	lsls r1, r1, #2
	adds r1, #0x30
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	strh r1, [r3, #2]
	adds r0, #0xc1
	ldr r0, [r0, #0x1c]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801969E
	b _08019712
_080196DA
	adds r1, #0xf9
	lsls r7, r1, #0x18
	lsrs r7, r7, #0x18
	movs r5, #0
_080196E2
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq _080196EE
	movs r0, #1
_080196EE
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x84
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x1c]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _080196E2
_08019712
	movs r5, #0
	b _0801975A
_08019716
	adds r0, r7, r5
	cmp r0, r1
	bhs _0801973C
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrh r1, [r0, #2]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xe9
	movs r3, #0xff
	movs r2, #0
	bl sub_80138E2
	b _08019750
_0801973C
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xe9
	movs r2, #0
	add r1, pc, #0x270
	bl _080137F8
_08019750
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	bhs _08019760
_0801975A
	ldrb r1, [r6, #3]
	cmp r1, r5
	bhi _08019716
_08019760
	movs r3, #2
	ldrsb r0, [r6, r3]
	b _08019768
_08019766
	b _080197A4
_08019768
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrh r0, [r0, #2]
	movs r2, #0xff
	adds r1, r4, #0
	adds r1, #8
	adds r2, #0x86
	cmp r0, r2
	bhs _0801978A
	movs r3, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	b _08019794
_0801978A
	movs r3, #8
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
_08019794
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _080197A4
	ldr r0, _080199C0 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_080197A4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80197AC
sub_80197AC ;@ 0x080197AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl sub_80046F8
	ldr r0, _080199C4 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	mov r0, sp
	bl sub_8001A60
	ldr r0, _080199C8 ;@ =gUnknown_03003EA8
	add r1, pc, #0x200
	ldr r0, [r0]
	bl sub_8004FFC
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r5, _080199DC ;@ =gUnknown_03003450
	str r0, [sp]
	ldr r0, [r5]
	mov r1, sp
	bl sub_800D9E0
	ldr r0, _080199E0 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r0, _080199E4 ;@ =gUnknown_03003D35
	adds r5, r4, #0
	adds r5, #0xff
	strb r6, [r0]
	movs r0, #0xff
	adds r5, #0xd1
	adds r0, #0x81
	strb r6, [r0, r4]
	strb r6, [r5, #2]
	adds r1, r5, #0
	subs r1, #0xd0
	strb r6, [r5, #3]
	str r6, [r4]
	str r6, [r4, #4]
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	subs r1, r0, #4
	subs r2, r0, #6
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r2, #0
	ldr r1, _080199E8 ;@ =gUnknown_03003478
	movs r0, #1
_08019846
	adds r3, r2, #0
	adds r3, #0xc6
	lsls r7, r3, #0x1b
	lsrs r7, r7, #0x1b
	adds r6, r0, #0
	lsls r6, r7
	cmp r3, #0
	beq _08019860
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r1, r3]
	ands r3, r6
	beq _08019874
_08019860
	ldrb r3, [r5, #3]
	adds r6, r2, #0
	adds r6, #0xa0
	adds r7, r3, #1
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, #0xff
	adds r3, #0x81
	strb r7, [r5, #3]
	strh r6, [r3, #2]
_08019874
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x1e
	blo _08019846
	movs r2, #0
	mov ip, r2
	movs r3, #0
_08019884
	ldr r6, _080199EC ;@ =gUnknown_08051438
	lsls r2, r3, #1
	ldrh r2, [r6, r2]
	mov r0, ip
	lsls r0, r0, #0x18
	add r2, ip
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	lsrs r0, r0, #0x18
	mov ip, r2
	b _08019940
_0801989C
	lsls r2, r0, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r1, #0
	beq _080198BC
	lsrs r1, r1, #5
	ldr r7, _080199E8 ;@ =gUnknown_03003478
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq _080198C0
_080198BC
	movs r6, #1
	b _080198C2
_080198C0
	movs r6, #0
_080198C2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq _080198E2
	lsrs r1, r1, #5
	ldr r7, _080199E8 ;@ =gUnknown_03003478
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq _080198E6
_080198E2
	movs r1, #1
	b _080198E8
_080198E6
	movs r1, #0
_080198E8
	mov r6, lr
	orrs r6, r1
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq _0801990C
	lsrs r1, r1, #5
	ldr r7, _080199E8 ;@ =gUnknown_03003478
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq _08019910
_0801990C
	movs r1, #1
	b _08019912
_08019910
	movs r1, #0
_08019912
	adds r2, #0xff
	adds r2, #0x58
	mov r6, lr
	orrs r1, r6
	lsls r7, r2, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r2, #0
	beq _08019932
	lsrs r2, r2, #5
	ldr r7, _080199E8 ;@ =gUnknown_03003478
	lsls r2, r2, #2
	ldr r2, [r7, r2]
	ands r2, r6
	beq _08019936
_08019932
	movs r2, #1
	b _08019938
_08019936
	movs r2, #0
_08019938
	adds r0, #1
	lsls r0, r0, #0x18
	orrs r1, r2
	lsrs r0, r0, #0x18
_08019940
	cmp r0, ip
	bhs _0801994A
	cmp r1, #0
	beq _0801989C
	b _0801994E
_0801994A
	cmp r1, #0
	beq _08019964
_0801994E
	ldrb r0, [r5, #3]
	adds r1, r3, #0
	adds r1, #0xff
	adds r2, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r1, #0x86
	adds r0, #0x81
	strb r2, [r5, #3]
	strh r1, [r0, #2]
_08019964
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0xa
	blo _08019884
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08019A58
	ldr r0, _080199B8 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #0xc1
	str r0, [r5, #0x14]
	ldr r1, _080199F0 ;@ =0x00000C87
	bl sub_800065C
	movs r0, #0xd6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x30
	strh r0, [r3, #0x2a]
	ldr r0, [r5, #0x14]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r5, #0x14]
	movs r7, #3
	ldrh r1, [r0, #0x2a]
	lsls r7, r7, #0xa
	movs r2, #0
	bics r1, r7
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r6, #4
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080199FA
	b _080199F4
	ALIGN
_080199B8 DCDU gUnknown_03003448
_080199BC
	DCB 0x20, 0x00, 0x00, 0x00
_080199C0 DCDU gUnknown_0300345C
_080199C4 DCDU gUnknown_03003468
_080199C8 DCDU gUnknown_03003EA8
_080199CC
	DCB 0x42, 0x67, 0x4D, 0x65
	DCB 0x6E, 0x75, 0x49, 0x6E, 0x76, 0x65, 0x6E, 0x74, 0x00, 0x00, 0x00, 0x00
_080199DC DCDU gUnknown_03003450
_080199E0 DCDU gUnknown_03003E98
_080199E4 DCDU gUnknown_03003D35
_080199E8 DCDU gUnknown_03003478
_080199EC DCDU gUnknown_08051438
_080199F0 DCDU 0x00000C87
_080199F4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080199FA
	movs r1, #1
	ldr r0, [r5, #0x14]
	bl sub_80401E4
	ldr r0, _08019DE4 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08019DE8 ;@ =0x00000C81
	str r0, [r5, #0x18]
	bl sub_800065C
	movs r0, #0xd6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x86
	strh r0, [r3, #0x2a]
	ldr r0, [r5, #0x18]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r5, #0x18]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r7, #0
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08019A44
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08019A44
	movs r1, #1
	ldr r0, [r5, #0x18]
	bl sub_80401E4
	movs r5, #0
_08019A4E
	movs r2, #0xff
	movs r1, #0x10
	movs r0, #0x50
	str r0, [sp, #4]
	b _08019A5A
_08019A58
	b _08019B24
_08019A5A
	str r2, [sp, #0xc]
	lsls r2, r5, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r2, r2, r5
	lsls r2, r2, #2
	lsls r0, r0, #3
	adds r6, r0, r4
	adds r2, #0x2e
	str r2, [sp]
	adds r6, #0xff
	str r1, [sp, #8]
	movs r1, #0
	adds r6, #0xe9
	movs r2, #0
	movs r3, #0x82
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	movs r1, #1
	adds r0, r6, #0
	bl sub_8014B02
	add r1, pc, #0x0
	subs r1, #0xd8
	movs r2, #0
	adds r0, r6, #0
	bl _080137F8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08019A4E
	movs r5, #0
_08019AA8
	ldr r0, _08019DE4 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r6, r1, r4
	adds r6, #0xff
	adds r6, #0xc1
	str r0, [r6, #0x1c]
	ldr r1, _08019DEC ;@ =0x00000CA8
	bl sub_800065C
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq _08019ACC
	movs r0, #1
_08019ACC
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x30
	strh r0, [r3, #0x2a]
	ldr r0, [r6, #0x1c]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r6, #0x1c]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #1
	lsls r3, r3, #0xa
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r6, #0x1c]
	ldrh r1, [r0, #0x2a]
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08019B10
	orrs r1, r3
	str r1, [r0]
_08019B10
	movs r1, #1
	ldr r0, [r6, #0x1c]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08019AA8
	b _08019B52
_08019B24
	movs r0, #0
	movs r1, #0
_08019B28
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo _08019B28
	movs r0, #0
_08019B3E
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x1c]
	blo _08019B3E
_08019B52
	movs r2, #4
	movs r0, #0x68
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x88
	movs r0, #0xb5
	movs r1, #0xc
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0x10
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08019DF0 ;@ =gUnknown_03003D2C
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0xb0
	ldrb r1, [r0, #9]
	adds r1, #0x95
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #0
	adds r0, r4, #0
	bl sub_801966A
	ldr r0, _08019DF4 ;@ =gUnknown_0300345C
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r1, r0, r1
	ldrb r2, [r1, #4]
	cmp r2, #0
	bne _08019BB2
	ldrb r1, [r1, #5]
	cmp r1, #2
	beq _08019BB2
	cmp r1, #4
	bne _08019BBA
_08019BB2
	movs r2, #0
	movs r1, #3
	bl sub_8028A7C
_08019BBA
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8019BE2
sub_8019BE2 ;@ 0x08019BE2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x50
	add r4, sp, #0x10
	ldr r5, _08019DF8 ;@ =sub_80143E0
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl sub_803C3A4
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	str r0, [r3, #0x40]
	bl sub_80143E0
	movs r0, #0xb5
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r3, #3
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r0, #0xff
	add r3, sp
	str r1, [r3, #0x3c]
	adds r0, #0xe9
	movs r2, #0x78
	adds r3, r5, #0
	bl sub_803C3A4
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x3c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_80197AC
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	add r0, sp, #0x1e0
	str r0, [r3, #0x38]
	add r1, sp, #0xd0
	str r1, [r3, #0x34]
	add r1, sp, #0x170
	str r1, [r3, #0x30]
	add r7, sp, #0x1d0
	add r5, sp, #0x190
_08019C56
	ldr r0, _08019DFC ;@ =gUnknown_03003444
	movs r2, #0
	ldr r0, [r0]
	adds r4, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi _08019C66
	ldrh r4, [r0, #8]
_08019C66
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi _08019C70
	ldrh r2, [r0, #4]
_08019C70
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x30]
	lsls r6, r2, #0x10
	ldrh r0, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	lsrs r6, r6, #0x10
	str r1, [sp, #4]
	ldr r1, [r3, #0x34]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [r3, #0x34]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08019E00 ;@ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08019CBE
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_800065C
_08019CBE
	lsls r0, r6, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08019E00 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08019CF0
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_800065C
_08019CF0
	lsls r0, r4, #0x16
	bpl _08019CFA
	movs r0, #2
	strb r0, [r5]
	b _08019D76
_08019CFA
	lsls r0, r4, #0x17
	bpl _08019D04
	movs r0, #1
	strb r0, [r5]
	b _08019D76
_08019D04
	lsls r0, r4, #0x1e
	bpl _08019D0E
	movs r0, #3
	strb r0, [r5]
	b _08019D76
_08019D0E
	lsls r0, r4, #0x1d
	bpl _08019D18
	movs r0, #3
	strb r0, [r5]
	b _08019D76
_08019D18
	lsls r0, r4, #0x19
	bpl _08019D28
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x10
	bl sub_801966A
	b _08019D76
_08019D28
	lsls r0, r4, #0x18
	bpl _08019D36
	movs r1, #1
	add r0, sp, #0x10
	bl sub_801966A
	b _08019D76
_08019D36
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x38]
	add r0, sp, #0x10
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq _08019D76
	lsls r1, r4, #0x1f
	bpl _08019D76
	adds r1, r0, #0
	ldr r0, [r3, #0x38]
	movs r3, #2
	ldrsb r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r0, #0xff
	adds r0, #0x81
	ldrh r0, [r0, #2]
	movs r1, #0xff
	adds r1, #0x86
	cmp r0, r1
	blo _08019D76
	adds r0, #0x7b
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bhs _08019D76
	ldr r1, _08019E04 ;@ =gUnknown_03003D1C
	strb r0, [r1]
	movs r0, #6
	strb r0, [r5]
_08019D76
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x38]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08019DDC
	lsls r0, r6, #0x19
	ldr r1, _08019E08 ;@ =0x00000C87
	lsrs r0, r0, #0x1f
	adds r4, r0, r1
	ldr r1, [r7, #0x14]
	ldr r0, _08019E00 ;@ =gUnknown_03003EA0
	str r1, [sp, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq _08019DB2
	adds r1, r4, #0
	ldr r0, [r7, #0x14]
	bl sub_800065C
_08019DB2
	lsls r0, r6, #0x18
	ldr r1, _08019DE8 ;@ =0x00000C81
	lsrs r0, r0, #0x1f
	adds r4, r0, r1
	ldr r0, _08019E00 ;@ =gUnknown_03003EA0
	ldr r6, [r7, #0x18]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq _08019DDC
	adds r1, r4, #0
	ldr r0, [r7, #0x18]
	bl sub_800065C
_08019DDC
	bl sub_800EF2A
	b _08019E0C
	ALIGN
_08019DE4 DCDU gUnknown_03003448
_08019DE8 DCDU 0x00000C81
_08019DEC DCDU 0x00000CA8
_08019DF0 DCDU gUnknown_03003D2C
_08019DF4 DCDU gUnknown_0300345C
_08019DF8 DCDU sub_80143E0
_08019DFC DCDU gUnknown_03003444
_08019E00 DCDU gUnknown_03003EA0
_08019E04 DCDU gUnknown_03003D1C
_08019E08 DCDU 0x00000C87
_08019E0C
	ldrb r0, [r5]
	cmp r0, #0
	bne _08019E14
	b _08019C56
_08019E14
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x30]
	ldrb r0, [r5]
	ldrh r2, [r1, #0x1a]
	ldr r1, _08019ED4 ;@ =gUnknown_080506E8
	add r4, sp, #0x10
	ldrb r5, [r1, r2]
	ldr r2, [r3, #0x30]
	ldr r6, _08019ED8 ;@ =gUnknown_0300345C
	ldrh r2, [r2, #0x18]
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq _08019E58
	cmp r0, #2
	beq _08019E46
	cmp r0, #3
	beq _08019E6A
	cmp r0, #6
	bne _08019E70
	movs r0, #0xb
	bl sub_8018386
	b _08019E70
_08019E46
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _08019E7A
_08019E58
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _08019E7A
_08019E6A
	movs r0, #0x11
	bl sub_8018386
_08019E70
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
_08019E7A
	adds r0, r4, #0
	bl sub_80195D0
	movs r1, #0
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x3c]
	bl sub_8014436
	ldr r5, _08019EDC ;@ =sub_8014436
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x53
	lsls r0, r0, #4
	mvns r2, r2
	adds r1, #0x71
	adds r3, r5, #0
	adds r0, r4, r0
	bl sub_803C3C8
	movs r1, #0
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x40]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r4, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r5, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08019ED4 DCDU gUnknown_080506E8
_08019ED8 DCDU gUnknown_0300345C
_08019EDC DCDU sub_8014436

	thumb_func_start sub_8019EE0
sub_8019EE0 ;@ 0x08019EE0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl _080180BE
	ldr r6, _0801A2C8 ;@ =gUnknown_03003448
	movs r5, #0
_08019EEC
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08019EEC
	movs r5, #0
_08019F02
	lsls r0, r5, #2
	adds r1, r0, r4
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08019F02
	ldr r7, _0801A2CC ;@ =0x00000634
	movs r5, #0
_08019F1C
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08019F1C
	movs r5, #0
	movs r7, #0x1b
	lsls r7, r7, #6
_08019F38
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r1, r0, r7
	ldr r0, [r6]
	bl sub_8000DE6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #5
	blo _08019F38
	movs r0, #0x19
	lsls r0, r0, #6
	adds r1, r4, r0
	ldr r0, [r6]
	bl sub_8000DE6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8019F60
sub_8019F60 ;@ 0x08019F60
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x19
	lsls r0, r0, #6
	adds r4, r5, r0
	ldrb r0, [r4, #4]
	sub sp, #0x14
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	movs r0, #0
	cmp r1, #0
	strb r1, [r4, #4]
	bge _08019F82
	strb r0, [r4, #4]
	b _08019F8C
_08019F82
	ldrb r0, [r4, #5]
	cmp r1, r0
	blt _08019F8C
	adds r0, #0xff
	strb r0, [r4, #4]
_08019F8C
	ldr r6, _0801A2D0 ;@ =gUnknown_03003D2C
	ldrb r7, [r4, #4]
	ldr r0, [r6]
	adds r0, r0, r7
	adds r0, #0xb0
	ldrb r2, [r0, #5]
	ldr r0, _0801A2D4 ;@ =gUnknown_0300344C
	lsls r1, r7, #2
	str r2, [sp, #8]
	ldr r2, _0801A2D8 ;@ =gUnknown_080507A8
	ldr r0, [r0]
	adds r1, r1, r2
	ldrh r1, [r1, #2]
	ldr r2, [sp, #8]
	adds r1, r1, r2
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r6
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	adds r2, r0, r1
	str r2, [sp, #0x10]
	ldr r0, _0801A2DC ;@ =0x000004CC
	movs r2, #0
	adds r0, r5, r0
	adds r6, r0, #0
	ldr r1, [sp, #0x10]
	bl _080137F8
	ldr r0, [r6]
	ldr r1, [r0, #0x24]
	adds r2, r1, r0
	movs r1, #3
	mvns r1, r1
	adds r0, r6, #0
	bl sub_803B8CC
	adds r0, r6, #0
	adds r6, #0x30
	ldrb r1, [r6, #8]
	add r3, sp, #0
	strb r1, [r3, #0xc]
	ldrb r2, [r3, #0xc]
	ldr r1, [r0, #0x14]
	ldr r0, _0801A2E0 ;@ =0x00000544
	adds r0, r5, r0
	cmp r2, #3
	bls _0801A002
	ldrh r1, [r1, #0x12]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	movs r2, #0
	bl _080137F8
	b _0801A00A
_0801A002
	movs r2, #0
	add r1, pc, #0x2DC
	bl _080137F8
_0801A00A
	movs r3, #4
	ldr r6, _0801A2D0 ;@ =gUnknown_03003D2C
	ldrsb r0, [r4, r3]
	ldr r1, [r6]
	adds r0, r0, r1
	adds r0, #0xb0
	ldrb r1, [r0, #5]
	ldr r0, _0801A2E8 ;@ =0x000005BC
	adds r0, r5, r0
	cmp r1, #3
	bhs _0801A03A
	lsls r1, r7, #1
	ldr r2, _0801A2EC ;@ =gUnknown_08051040
	adds r1, r1, r7
	adds r1, r1, r2
	ldr r2, [sp, #8]
	movs r3, #0xff
	ldrb r2, [r1, r2]
	str r2, [sp]
	movs r2, #0
	movs r1, #0x4e
	bl sub_8013946
	b _0801A042
_0801A03A
	movs r2, #0
	add r1, pc, #0x2A4
	bl _080137F8
_0801A042
	movs r3, #4
	ldrsb r0, [r4, r3]
	ldr r2, _0801A2D8 ;@ =gUnknown_080507A8
	adds r2, #0x10
	lsls r1, r0, #3
	adds r1, r1, r2
	ldr r2, [r6]
	ldr r6, [r4]
	adds r0, r0, r2
	adds r0, #0xb0
	ldrb r0, [r0, #5]
	lsls r0, r0, #1
	ldrh r7, [r1, r0]
	ldr r0, _0801A2F0 ;@ =gUnknown_03003EA0
	subs r1, r3, #5
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	cmp r2, #0
	beq _0801A074
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0801A074
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0801A086
	movs r2, #0
	adds r1, r7, #0
	ldr r0, [r4]
	bl sub_80007A0
_0801A086
	movs r6, #0
	movs r7, #3
	lsls r7, r7, #9
_0801A08C
	movs r3, #4
	ldrsb r0, [r4, r3]
	lsls r1, r6, #5
	adds r1, #0x12
	lsls r3, r0, #1
	adds r0, r3, r0
	add r3, sp, #0
	strh r1, [r3, #4]
	lsls r0, r0, #2
	adds r0, #0x65
	strh r0, [r3, #6]
	lsls r0, r6, #2
	adds r0, r0, r5
	adds r0, r0, r7
	ldr r0, [r0, #0x34]
	add r1, sp, #4
	bl sub_8040034
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _0801A08C
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0801A0CA
	ldr r0, _0801A2F4 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_0801A0CA
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801A0D2
sub_801A0D2 ;@ 0x0801A0D2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	add r0, sp, #0x44
	bl sub_80046F8
	ldr r1, _0801A2D8 ;@ =gUnknown_080507A8
	movs r2, #0xc
	adds r1, #0x30
	add r0, sp, #0x38
	bl sub_803BF0C
	ldr r0, _0801A2D8 ;@ =gUnknown_080507A8
	add r3, sp, #0
	subs r0, #0xa
	ldrh r1, [r0]
	strh r1, [r3, #0x34]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0x36]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x2c]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x2e]
	ldrh r1, [r0, #8]
	movs r0, #0
	strh r1, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0x81
	strb r0, [r1, r4]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, _0801A2F8 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	mov r5, sp
	mov r0, sp
	bl sub_8001A60
	ldr r0, _0801A2FC ;@ =gUnknown_03003EA8
	add r1, pc, #0x1DC
	ldr r0, [r0]
	bl sub_8004FFC
	movs r3, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r5, #0
	ldr r5, _0801A30C ;@ =gUnknown_03003450
	str r0, [sp]
	ldr r0, [r5]
	bl sub_800D9E0
	ldr r0, _0801A310 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	subs r1, r0, #4
	subs r2, r0, #6
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	add r1, sp, #0x2c
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0xff
	adds r1, #0x85
	str r2, [sp, #4]
	add r2, sp, #0x38
	movs r0, #3
	add r3, sp, #0x34
	bl sub_8018D76
	adds r1, r4, #0
	adds r1, #8
	movs r3, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r1, #0x19
	lsls r1, r1, #6
	adds r7, r4, r1
	movs r0, #0
	movs r2, #4
	strb r0, [r7, #4]
	strb r2, [r7, #5]
	movs r5, #0
_0801A1AA
	ldr r0, _0801A2C8 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r4
	adds r6, r1, r2
	str r0, [r6, #0x34]
	ldr r1, _0801A314 ;@ =0x00000CA8
	bl sub_800065C
	lsls r0, r5, #5
	adds r0, #0xc
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r1, #5
	strh r1, [r3, #0x2a]
	ldr r0, [r6, #0x34]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r6, #0x34]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #1
	lsls r3, r3, #0xa
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r1, [r0, #0x2a]
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r1, #5
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0801A20C
	orrs r1, r3
	str r1, [r0]
_0801A20C
	movs r1, #1
	ldr r0, [r6, #0x34]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801A1AA
	movs r5, #0
_0801A220
	movs r2, #0xff
	ldr r1, _0801A318 ;@ =0x0000FFFF
	str r2, [sp, #0xc]
	lsls r2, r5, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r2, r2, r5
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0xbb
	lsls r2, r2, #2
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r2, #0x63
	lsls r1, r1, #2
	adds r6, r0, r1
	str r2, [sp]
	movs r2, #0
	movs r1, #0
	movs r3, #0x14
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801A2D8 ;@ =gUnknown_080507A8
	lsls r0, r5, #2
	ldrh r0, [r1, r0]
	ldr r1, _0801A2D0 ;@ =gUnknown_03003D2C
	movs r3, #0xff
	ldr r1, [r1]
	movs r2, #0
	adds r1, r1, r5
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_80138E2
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0801A220
	ldr r0, _0801A2DC ;@ =0x000004CC
	movs r2, #0xff
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8 ;@ =gUnknown_03003468
	movs r1, #0x28
	ldr r0, [r0]
	movs r6, #0x7e
	str r0, [r5, #0x50]
	str r2, [sp, #0xc]
	movs r2, #0x30
	str r2, [sp]
	str r1, [sp, #8]
	movs r0, #0x38
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x2C
	bl _080137F8
	ldr r0, _0801A2E0 ;@ =0x00000544
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8 ;@ =gUnknown_03003468
	ldr r0, [r0]
	b _0801A31C
	ALIGN
_0801A2C8 DCDU gUnknown_03003448
_0801A2CC DCDU 0x00000634
_0801A2D0 DCDU gUnknown_03003D2C
_0801A2D4 DCDU gUnknown_0300344C
_0801A2D8 DCDU gUnknown_080507A8
_0801A2DC DCDU 0x000004CC
_0801A2E0 DCDU 0x00000544
_0801A2E4
	DCB 0x20, 0x00, 0x00, 0x00
_0801A2E8 DCDU 0x000005BC
_0801A2EC DCDU gUnknown_08051040
_0801A2F0 DCDU gUnknown_03003EA0
_0801A2F4 DCDU gUnknown_0300345C
_0801A2F8 DCDU gUnknown_03003468
_0801A2FC DCDU gUnknown_03003EA8
_0801A300
	DCB 0x42, 0x67, 0x4D, 0x65, 0x6E, 0x75, 0x4D, 0x61, 0x67, 0x69, 0x63, 0x00
_0801A30C DCDU gUnknown_03003450
_0801A310 DCDU gUnknown_03003E98
_0801A314 DCDU 0x00000CA8
_0801A318 DCDU 0x0000FFFF
_0801A31C
	str r0, [r5, #0x50]
	movs r2, #0xff
	str r2, [sp, #0xc]
	movs r2, #0x58
	movs r1, #0x38
	str r1, [sp, #8]
	str r2, [sp]
	movs r0, #0x60
	str r0, [sp, #4]
	movs r2, #0
	movs r1, #0
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	add r1, pc, #0x4
	subs r1, #0x64
	movs r2, #0
	adds r0, r5, #0
	bl _080137F8
	movs r2, #0xff
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x88
	ldr r0, _0801A724 ;@ =0x000005BC
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	movs r2, #0
	movs r1, #0
	adds r3, r6, #0
	adds r0, r4, r0
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	add r1, pc, #0x4
	subs r1, #0x98
	movs r2, #0
	adds r0, r5, #0
	bl _080137F8
	ldr r0, _0801A728 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r5, _0801A72C ;@ =gUnknown_03003D2C
	str r0, [r7]
	ldr r1, [r5]
	ldr r2, _0801A730 ;@ =gUnknown_080507B8
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	movs r2, #0
	bl sub_80007A0
	movs r0, #0xb6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x32
	strh r0, [r3, #0x2a]
	ldr r0, [r7]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0801A3D2
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801A3D2
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_8000914
	movs r2, #0xff
	ldr r1, _0801A734 ;@ =0x0000FFFF
	str r2, [sp, #0xc]
	movs r2, #0x30
	movs r0, #0xc9
	lsls r0, r0, #3
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	adds r0, r4, r0
	movs r3, #0x14
	adds r6, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, [r5]
	movs r3, #0xff
	adds r0, #0xb0
	ldrb r2, [r0, #3]
	ldrb r1, [r0, #2]
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #0x4d
	movs r2, #0
	adds r0, r6, #0
	bl sub_8013946
	ldr r0, [r5]
	adds r0, #0xb0
	ldrb r5, [r0, #2]
	adds r0, r5, #0
	bl sub_8040684
	adds r6, r0, #0
	cmp r5, #5
	bhi _0801A436
	adds r6, r5, #0
	b _0801A43C
_0801A436
	cmp r6, #0
	bne _0801A43C
	movs r6, #5
_0801A43C
	movs r5, #0
_0801A43E
	ldr r0, _0801A728 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	movs r2, #0x1b
	lsls r2, r2, #6
	adds r1, r1, r4
	adds r7, r1, r2
	movs r1, #1
	cmp r5, r6
	str r0, [r7]
	blo _0801A45A
	movs r1, #0
_0801A45A
	ldr r2, _0801A738 ;@ =0x00000C9C
	adds r1, r1, r2
	bl sub_800065C
	movs r0, #0x13
	muls r0, r5
	adds r0, #0x14
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x3e
	strh r0, [r3, #0x2a]
	ldr r0, [r7]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0801A498
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801A498
	movs r1, #1
	ldr r0, [r7]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #5
	blo _0801A43E
	movs r1, #0
	adds r0, r4, #0
	bl sub_8019F60
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x44
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801A4DA
sub_801A4DA ;@ 0x0801A4DA
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x100
	add r4, sp, #0x14
	ldr r5, _0801A73C ;@ =sub_80143E0
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl sub_803C3A4
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x70]
	bl sub_80143E0
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x85
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r5, #0
	bl sub_803C3A4
	ldr r0, _0801A740 ;@ =0x000004CC
	movs r2, #0x78
	adds r1, r4, r0
	adds r7, r1, #0
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_803C3A4
	ldr r0, _0801A744 ;@ =0x00000634
	movs r2, #0x78
	adds r1, r4, r0
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_803C3A4
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x6c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_801A0D2
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	add r1, sp, #0xd4
	str r1, [r3, #0x68]
	add r5, sp, #0x194
	add r6, sp, #0x174
_0801A564
	ldr r0, _0801A748 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r0, [r0]
	adds r4, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi _0801A574
	ldrh r4, [r0, #8]
_0801A574
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi _0801A57E
	ldrh r2, [r0, #4]
_0801A57E
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldrh r0, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r1, [sp, #4]
	ldr r1, [r3, #0x68]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [r3, #0x68]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r7, r0, #0x10
	ldr r0, _0801A74C ;@ =gUnknown_03003EA0
	lsrs r7, r7, #0x10
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0801A5CA
	adds r1, r7, #0
	ldr r0, [sp, #8]
	bl sub_800065C
_0801A5CA
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r7, r0, #0x10
	ldr r0, _0801A74C ;@ =gUnknown_03003EA0
	lsrs r7, r7, #0x10
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0801A5FA
	adds r1, r7, #0
	ldr r0, [sp, #0xc]
	bl sub_800065C
_0801A5FA
	lsls r0, r4, #0x16
	bpl _0801A604
	movs r0, #2
	strb r0, [r5]
	b _0801A63E
_0801A604
	lsls r0, r4, #0x17
	bpl _0801A60E
	movs r0, #1
	strb r0, [r5]
	b _0801A63E
_0801A60E
	lsls r0, r4, #0x1e
	bpl _0801A618
	movs r0, #3
	strb r0, [r5]
	b _0801A63E
_0801A618
	lsls r0, r4, #0x1d
	bpl _0801A622
	movs r0, #3
	strb r0, [r5]
	b _0801A63E
_0801A622
	lsls r0, r4, #0x19
	bpl _0801A632
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_8019F60
	b _0801A63E
_0801A632
	lsls r0, r4, #0x18
	bpl _0801A63E
	movs r1, #1
	add r0, sp, #0x14
	bl sub_8019F60
_0801A63E
	bl sub_800EF2A
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801A564
	ldrh r2, [r6, #0x1a]
	ldr r1, _0801A750 ;@ =gUnknown_080506E8
	ldrb r0, [r5]
	ldrb r5, [r1, r2]
	ldrh r2, [r6, #0x18]
	ldr r6, _0801A754 ;@ =gUnknown_0300345C
	add r4, sp, #0x14
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq _0801A682
	cmp r0, #2
	beq _0801A670
	cmp r0, #3
	beq _0801A694
	cmp r0, #6
	bne _0801A69A
	movs r0, #0xb
	bl sub_8018386
	b _0801A69A
_0801A670
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801A6A4
_0801A682
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801A6A4
_0801A694
	movs r0, #0x11
	bl sub_8018386
_0801A69A
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
_0801A6A4
	adds r0, r4, #0
	bl sub_8019EE0
	movs r1, #0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x6c]
	bl sub_8014436
	ldr r0, _0801A75C ;@ =0x00000454
	ldr r5, _0801A758 ;@ =sub_8014436
	adds r1, r4, r0
	adds r0, #0xff
	adds r0, #0x69
	movs r2, #0x77
	mvns r2, r2
	adds r0, r4, r0
	adds r6, r1, #0
	adds r3, r5, #0
	bl sub_803C3C8
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r2, #0x77
	mvns r2, r2
	adds r7, r1, #0
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_803C3C8
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	mvns r2, r2
	adds r1, #0xd
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_803C3C8
	movs r1, #0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x70]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r4, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r5, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x100
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801A724 DCDU 0x000005BC
_0801A728 DCDU gUnknown_03003448
_0801A72C DCDU gUnknown_03003D2C
_0801A730 DCDU gUnknown_080507B8
_0801A734 DCDU 0x0000FFFF
_0801A738 DCDU 0x00000C9C
_0801A73C DCDU sub_80143E0
_0801A740 DCDU 0x000004CC
_0801A744 DCDU 0x00000634
_0801A748 DCDU gUnknown_03003444
_0801A74C DCDU gUnknown_03003EA0
_0801A750 DCDU gUnknown_080506E8
_0801A754 DCDU gUnknown_0300345C
_0801A758 DCDU sub_8014436
_0801A75C DCDU 0x00000454

	thumb_func_start sub_801A760
sub_801A760 ;@ 0x0801A760
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
_0801A766
	ldrb r0, [r5]
	cmp r0, r4
	beq _0801A796
	lsls r0, r4, #3
	adds r6, r0, r5
	adds r6, #0xff
	adds r6, #0xc1
	ldr r0, [r6, #0x24]
	movs r1, #0
	bl sub_80401E4
	movs r1, #0
	ldr r0, [r6, #0x28]
	bl sub_80401E4
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r0, #0x7c
	movs r2, #0
	add r1, pc, #0x374 ;@ =_0801AB08
	bl _080137F8
_0801A796
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0801A766
	movs r3, #0
	movs r0, #0
	movs r1, #0
	lsls r2, r1, #0xa
_0801A7A8
	lsls r1, r0, #3
	adds r4, r1, r5
	adds r4, #0xff
	adds r4, #0xc1
	ldr r1, [r4, #0x24]
	ldrh r6, [r1, #0x26]
	lsls r7, r6, #0x14
	lsrs r7, r7, #0x1e
	cmp r7, r3
	beq _0801A7E2
	movs r7, #3
	lsls r7, r7, #0xa
	bics r6, r7
	orrs r6, r2
	strh r6, [r1, #0x26]
	ldr r6, [r1]
	movs r7, #0x80
	orrs r6, r7
	str r6, [r1]
	ldr r1, [r4, #0x28]
	movs r6, #3
	ldrh r4, [r1, #0x26]
	lsls r6, r6, #0xa
	bics r4, r6
	orrs r4, r2
	strh r4, [r1, #0x26]
	ldr r4, [r1]
	orrs r4, r7
	str r4, [r1]
_0801A7E2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo _0801A7A8
	ldr r0, _0801AB0C ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl _080180BE
	movs r6, #0
_0801A7FE
	movs r4, #0
	lsls r0, r6, #3
	adds r7, r0, r5
_0801A804
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _0801AB10 ;@ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0xe5
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0801A804
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo _0801A7FE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801A82E
sub_801A82E ;@ 0x0801A82E
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r1, #0
	ldrb r0, [r0]
	bge _0801A844
	adds r0, #2
	bl sub_8040640
	strb r0, [r4]
	b _0801A850
_0801A844
	cmp r5, #0
	ble _0801A850
	adds r0, #1
	bl sub_8040640
	strb r0, [r4]
_0801A850
	movs r0, #0
_0801A852
	ldrb r1, [r4]
	movs r2, #1
	cmp r1, r0
	bne _0801A85C
	movs r2, #0
_0801A85C
	lsls r1, r0, #3
	adds r3, r1, r4
	adds r3, #0xff
	adds r3, #0xc1
	ldr r1, [r3, #0x24]
	ldrh r6, [r1, #0x26]
	lsls r7, r6, #0x14
	lsrs r7, r7, #0x1e
	cmp r7, r2
	beq _0801A89A
	movs r7, #3
	lsls r7, r7, #0xa
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x14
	bics r6, r7
	orrs r6, r2
	strh r6, [r1, #0x26]
	ldr r6, [r1]
	movs r7, #0x80
	orrs r6, r7
	str r6, [r1]
	ldr r1, [r3, #0x28]
	movs r6, #3
	ldrh r3, [r1, #0x26]
	lsls r6, r6, #0xa
	bics r3, r6
	orrs r2, r3
	strh r2, [r1, #0x26]
	ldr r2, [r1]
	orrs r2, r7
	str r2, [r1]
_0801A89A
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	blo _0801A852
	cmp r5, #0
	beq _0801A8B2
	ldr r0, _0801AB0C ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_0801A8B2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801A8B8
sub_801A8B8 ;@ 0x0801A8B8
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r0, sp, #8
	bl sub_80046F8
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl sub_800E71C
	add r0, pc, #0x244 ;@ =_0801AB14
	bl sub_800EF60
	ldr r4, _0801AB24 ;@ =gUnknown_03003460
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A8FA
	bl sub_800B72A
	cmp r0, #0
	beq _0801A8EE
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq _0801A8FA
_0801A8EE
	ldr r0, _0801AB0C ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_0801A8FA
	movs r0, #0
	ldr r1, [sp, #0x18]
	movs r4, #0
	strb r0, [r1]
_0801A902
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r1, [sp, #0x18]
	lsls r0, r0, #3
	adds r5, r0, r1
	adds r5, #0x7c
	ldr r0, [r5]
	lsls r7, r4, #5
	ldr r1, [r0, #0x18]
	adds r7, r7, r4
	adds r2, r1, r0
	movs r1, #0
	adds r7, #0x3e
	adds r6, r5, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	adds r2, r7, #0
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0xa
	adds r0, r5, #0
	bl sub_803B8CE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x10
	movs r1, #0x50
	bl sub_803B8CE
	movs r2, #0
	str r2, [sp]
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r7, r2, r1
	movs r2, #0xff
	movs r1, #4
	bl sub_803B8D6
	adds r0, r5, #0
	bl sub_8013B76
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801AB28 ;@ =gUnknown_080507E4
	lsls r0, r4, #1
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r6, #0
	bl sub_80138E2
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0801A902
	movs r7, #0
_0801A992
	lsls r0, r7, #5
	adds r0, r0, r7
	adds r0, #0x3c
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsls r0, r7, #3
	movs r5, #0
	adds r1, r0, r1
	str r1, [sp, #0x10]
_0801A9A4
	ldr r0, _0801AB10 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x10]
	lsls r2, r5, #2
	adds r6, r1, r2
	adds r6, #0xff
	adds r6, #0xc1
	ldr r1, _0801AB2C ;@ =0x00000CA9
	str r0, [r6, #0x24]
	adds r1, r5, r1
	bl sub_800065C
	lsls r1, r5, #6
	adds r1, #0xa
	ldr r4, [r6, #0x24]
	ldr r0, [sp, #0x14]
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	lsls r2, r1, #0x10
	ldrh r1, [r3, #6]
	ldr r0, [r4, #0x2c]
	lsls r3, r1, #0x10
	ldr r1, [r4, #0x30]
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	subs r1, r3, r1
	ldr r3, [r4, #0x34]
	subs r0, r2, r0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, r4, #0
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	adds r2, #0x34
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	blt _0801AA1C
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x14
	cmp r0, r1
	bge _0801AA1C
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _0801AA1C
	movs r1, #5
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x15
	cmp r0, r1
	blt _0801AA3C
_0801AA1C
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0801AA96
	ldr r0, _0801AB30 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _0801AA96
_0801AA3C
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _0801AA5E
	ldr r0, _0801AB30 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
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
_0801AA5E
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
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0801AA96
	ldr r0, [r6, #0x24]
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
	bmi _0801AAB6
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801AAB6
	movs r1, #1
	ldr r0, [r6, #0x24]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	bhs _0801AACA
	b _0801A9A4
_0801AACA
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #3
	bhs _0801AAD6
	b _0801A992
_0801AAD6
	bl sub_8018070
	movs r1, #8
	mov r4, sp
	adds r4, r4, r1
	movs r2, #0x3f
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_801A82E
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801AB08 DCDU 0x00000020
_0801AB0C DCDU gUnknown_0300345C
_0801AB10 DCDU gUnknown_03003448
_0801AB14 DCDU 0x69544742
_0801AB18 DCDU 0x53656C74
_0801AB1C DCDU 0x65657263
_0801AB20 DCDU 0x0000006E
_0801AB24 DCDU gUnknown_03003460
_0801AB28 DCDU gUnknown_080507E4
_0801AB2C DCDU 0x00000CA9
_0801AB30 DCDU gUnknown_03003EA0

	thumb_func_start sub_801AB34
sub_801AB34 ;@ 0x0801AB34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	add r0, sp, #4
	adds r5, r0, #0
	mov r6, sp
	bl sub_80143E0
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0xe5
	movs r2, #0x78
	adds r0, r6, #0
	adds r0, #0x7c
	ldr r3, _0801ABEC ;@ =sub_80143E0
	bl sub_803C3A4
	adds r0, r6, #0
	bl sub_801A8B8
	movs r7, #0
_0801AB5C
	ldr r0, _0801ABF0 ;@ =gUnknown_03003444
	adds r1, r7, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0801AB6A
	ldrh r1, [r0, #6]
_0801AB6A
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x19
	bpl _0801AB7C
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_801A82E
_0801AB7C
	lsls r0, r4, #0x18
	bpl _0801AB88
	movs r1, #1
	adds r0, r6, #0
	bl sub_801A82E
_0801AB88
	lsls r4, r4, #0x1f
	lsrs r4, r4, #0x1f
	bl sub_800EF2A
	cmp r4, #0
	beq _0801AB5C
	ldr r0, _0801ABF4 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	bl sub_8028C2E
	add r3, sp, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801ABDA
	cmp r0, #1
	beq _0801ABE2
	cmp r0, #2
	bne _0801ABB2
	movs r0, #8
	bl sub_8018386
_0801ABB2
	adds r0, r6, #0
	bl sub_801A760
	movs r2, #0x77
	adds r0, r6, #0
	adds r0, #0xff
	mvns r2, r2
	adds r1, r5, #0
	adds r0, #0x6d
	ldr r3, _0801ABF8 ;@ =sub_8014436
	bl sub_803C3C8
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	add sp, #0x1fc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801ABDA
	movs r0, #0x13
	bl sub_8018386
	b _0801ABB2
_0801ABE2
	movs r0, #9
	bl sub_8018386
	b _0801ABB2
	ALIGN
_0801ABEC DCDU sub_80143E0
_0801ABF0 DCDU gUnknown_03003444
_0801ABF4 DCDU gUnknown_0300345C
_0801ABF8 DCDU sub_8014436

	thumb_func_start sub_801ABFC
sub_801ABFC ;@ 0x0801ABFC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl _080180BE
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x8d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r0, #0
	bl sub_80050FA
	ldr r7, _0801AEA0 ;@ =gUnknown_03003448
	movs r4, #0
_0801AC2E
	lsls r0, r4, #2
	adds r5, r0, r6
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xff
	adds r1, #0x85
	ldr r0, [r7]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0801AC2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801AC60
sub_801AC60 ;@ 0x0801AC60
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x27
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrb r0, [r4, #0xc]
	adds r7, r1, #0
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xc]
	bpl _0801AC7C
	movs r0, #0
	strb r0, [r4, #0xc]
_0801AC7C
	adds r6, r5, #0
	adds r6, #0xff
	movs r3, #0xc
	ldrsb r0, [r4, r3]
	adds r6, #0x81
	ldrb r2, [r6]
	cmp r0, r2
	blt _0801AC90
	ldrb r0, [r6]
	strb r0, [r4, #0xc]
_0801AC90
	movs r3, #0xc
	ldrsb r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x8d
	cmp r1, r2
	bne _0801ACAC
	movs r3, #0xff
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x33
	bl sub_80138E2
	b _0801ACBC
_0801ACAC
	adds r2, r1, #1
	str r2, [sp]
	movs r2, #0
	movs r1, #0xff
	movs r3, #0xff
	adds r1, #0x34
	bl sub_8013946
_0801ACBC
	movs r3, #0xc
	ldrsb r0, [r4, r3]
	movs r2, #0x81
	lsls r2, r2, #2
	ldrb r1, [r6]
	adds r4, r5, r2
	movs r2, #1
	cmp r0, r1
	bne _0801ACEC
	lsls r1, r0, #1
	adds r1, #0xe6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	lsls r2, r3
	cmp r1, #0
	beq _0801ACEC
	lsrs r1, r1, #5
	ldr r3, _0801AEA4 ;@ =gUnknown_03003478
	lsls r1, r1, #2
	ldr r1, [r3, r1]
	ands r1, r2
	beq _0801AD00
_0801ACEC
	adds r0, #0xff
	adds r0, #0x36
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	b _0801AD0E
_0801AD00
	movs r1, #0xff
	adds r1, #0x35
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
_0801AD0E
	cmp r7, #0
	beq _0801AD1C
	ldr r0, _0801AEA8 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_0801AD1C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801AD22
sub_801AD22 ;@ 0x0801AD22
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0xff
	movs r6, #0
	adds r4, r0, #0
	adds r5, #0x81
	sub sp, #0x2c
	strb r6, [r5, #1]
	strb r6, [r5]
	str r6, [r0]
	str r6, [r0, #4]
	ldr r0, _0801AEAC ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	mov r0, sp
	bl sub_8001A60
	ldr r0, _0801AEB0 ;@ =gUnknown_03003EA8
	add r1, pc, #0x168 ;@ =_0801AEB4
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r7, _0801AEC8 ;@ =gUnknown_03003450
	str r0, [sp]
	ldr r0, [r7]
	mov r1, sp
	bl sub_800D9E0
	ldr r0, _0801AECC ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r7]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r2, r4, #0
	adds r2, #0xff
	adds r2, #0x85
	adds r1, r2, #0
	subs r0, r2, #6
	subs r1, #0x84
	str r1, [sp, #4]
	str r2, [sp, #8]
	subs r2, r0, #6
	subs r1, r0, #4
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	ldr r0, _0801AEAC ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	movs r2, #4
	movs r0, #0x98
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x24
	adds r0, r4, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp]
	movs r2, #0
	adds r0, #0x8d
	movs r1, #0
	movs r3, #0x2e
	adds r6, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	movs r7, #0xff
	movs r1, #0xff
	adds r1, #0x33
	adds r3, r7, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_80138E2
	movs r2, #0xff
	movs r0, #0xc8
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x36
	movs r0, #0x81
	movs r1, #0x40
	str r1, [sp, #8]
	lsls r0, r0, #2
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0x14
	adds r6, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	movs r1, #0xff
	adds r1, #0x36
	adds r3, r7, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_80138E2
	movs r0, #0x20
	movs r6, #1
	b _0801AE7A
_0801AE28
	lsls r3, r0, #1
	adds r1, r3, #0
	adds r1, #0xe6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	adds r2, r6, #0
	lsls r2, r7
	cmp r1, #0
	beq _0801AE4A
	lsrs r1, r1, #5
	ldr r7, _0801AEA4 ;@ =gUnknown_03003478
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r2
	beq _0801AE72
_0801AE4A
	adds r3, #0xe7
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	lsls r7, r2, #0x1b
	lsrs r7, r7, #0x1b
	adds r3, r6, #0
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r7
	cmp r2, #0
	strb r1, [r5]
	beq _0801AE6E
	lsrs r2, r2, #5
	ldr r7, _0801AEA4 ;@ =gUnknown_03003478
	lsls r2, r2, #2
	ldr r2, [r7, r2]
	ands r2, r3
	beq _0801AE72
_0801AE6E
	adds r1, #1
	strb r1, [r5]
_0801AE72
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bmi _0801AE80
_0801AE7A
	ldrb r1, [r5]
	cmp r1, #0
	beq _0801AE28
_0801AE80
	ldrb r0, [r5]
	movs r1, #0x27
	lsls r1, r1, #4
	adds r1, r4, r1
	strb r0, [r1, #0xc]
	movs r1, #0
	adds r0, r4, #0
	bl sub_801AC60
	bl sub_8018070
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801AEA0 DCDU gUnknown_03003448
_0801AEA4 DCDU gUnknown_03003478
_0801AEA8 DCDU gUnknown_0300345C
_0801AEAC DCDU gUnknown_03003468
_0801AEB0 DCDU gUnknown_03003EA8
_0801AEB4 DCDU 0x654D6742
_0801AEB8 DCDU 0x624F756E
_0801AEBC DCDU 0x7463656A
_0801AEC0 DCDU 0x73657669
_0801AEC4 DCDU 0x00000000
_0801AEC8 DCDU gUnknown_03003450
_0801AECC DCDU gUnknown_03003E98

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

	thumb_func_start sub_801B10C
sub_801B10C ;@ 0x0801B10C
	push {r4, lr}
	adds r4, r0, #0
	bne _0801B124
	ldr r0, _0801B464 ;@ =0x00000524
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0801B124
	adds r0, r4, #0
_0801B11E
	pop {r4}
	pop {r3}
	bx r3
_0801B124
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0xb5
	bl sub_80154DC
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r1, [r0, #0x1c]
	movs r2, #0xfe
	lsrs r1, r1, #1
	lsls r1, r1, #1
	bics r1, r2
	adds r2, #2
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #2
	bics r1, r2
	str r1, [r0, #0x1c]
	movs r0, #0x29
	lsls r0, r0, #5
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	movs r0, #0
_0801B160
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	cmp r0, #0x64
	str r1, [r2, #0x20]
	blo _0801B160
	adds r0, r4, #0
	b _0801B11E

	thumb_func_start sub_801B170
sub_801B170 ;@ 0x0801B170
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0801B468 ;@ =gUnknown_03003454
	movs r6, #0
	ldr r7, [r4]
	adds r3, r6, #0
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803FC68
	adds r5, r0, #0
	adds r2, r0, #0
	cmp r0, #0xff
	strb r0, [r7, #0x14]
	bne _0801B192
	ldr r0, [r4]
	ldrb r2, [r0, #0x14]
_0801B192
	ldr r0, _0801B46C ;@ =gUnknown_03003E88
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x17
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	adds r2, r0, #0
	str r5, [sp]
	movs r3, #1
	movs r1, #2
	ldr r0, [r4]
	bl sub_8017A0A
	ldr r0, [r4]
	lsls r5, r5, #2
	strb r6, [r0, #0x14]
	movs r6, #5
	lsls r6, r6, #7
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801B1DA
_0801B1C6
	movs r1, #0xff
	ldr r0, [r4]
	bl sub_8017620
	ldr r0, [r4]
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B1C6
_0801B1DA
	ldr r0, _0801B470 ;@ =gUnknown_03003448
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_80015E6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801B1EC
sub_801B1EC ;@ 0x0801B1EC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_801B170
	adds r0, r4, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0xb5
	bl sub_8015588
	cmp r5, #0
	beq _0801B20C
	adds r0, r4, #0
	bl sub_803DA18
_0801B20C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801B212
sub_801B212 ;@ 0x0801B212
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xff
	adds r0, #1
	ldr r1, [r0, #0x3c]
	sub sp, #8
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1f
	beq _0801B308
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	beq _0801B308
	ldr r4, [r0, #0x24]
	cmp r4, #0
	beq _0801B308
	ldr r0, [r4]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1f
	bne _0801B308
	lsls r0, r0, #0x1f
	beq _0801B308
	ldr r0, [r4, #0x18]
	ldr r6, _0801B474 ;@ =gUnknown_03003EA0
	cmp r0, #0
	bne _0801B25C
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0801B25C
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r5, [r5, #0x2c]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _0801B294
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0801B294
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	ldrh r0, [r3, #4]
	ldrh r1, [r3]
	movs r0, #0
	ldrsh r0, [r3, r0]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1d
	adds r0, r1, r0
	movs r1, #2
	ldrsh r1, [r3, r1]
	asrs r0, r0, #3
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1d
	adds r1, r2, r1
	asrs r1, r1, #3
	muls r0, r1
	ldr r1, [r4, #0x14]
	ldr r1, [r1]
	lsrs r1, r1, #0x15
	lsls r2, r1, #5
	ldr r1, _0801B478 ;@ =0x06010000
	adds r4, r2, r1
	ldr r2, [r5, #0x14]
	ldr r2, [r2]
	lsrs r2, r2, #0x15
	lsls r2, r2, #5
	adds r5, r2, r1
	subs r0, #1
	blo _0801B308
	ldr r1, _0801B47C ;@ =0x0F0F0F0F
	mvns r2, r1
_0801B2E8
	ldm r5!, {r3}
	ands r3, r2
	str r3, [r4]
	adds r3, r4, #4
	adds r4, r5, #0
	ldr r5, [r5]
	adds r4, #4
	ands r5, r1
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r1
	stm r3!, {r5}
	b _0801B30A
_0801B308
	b _0801B32A
_0801B30A
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r1
	stm r3!, {r5}
	ldm r4!, {r5}
	ands r5, r2
	stm r3!, {r5}
	ldm r4!, {r6}
	adds r5, r4, #0
	ands r6, r1
	stm r3!, {r6}
	adds r4, r3, #0
	subs r0, #1
	bhs _0801B2E8
_0801B32A
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801B332
sub_801B332 ;@ 0x0801B332
	push {r4, r5, r6, r7, lr}
	ldr r1, _0801B480 ;@ =gUnknown_03003478
	movs r2, #4
	ldr r1, [r1]
	sub sp, #0x14
	ands r1, r2
	cmp r1, #0
	ldr r6, _0801B484 ;@ =gUnknown_03003450
	bne _0801B366
	ldr r0, [r0, #0x20]
	ldr r1, _0801B488 ;@ =gUnknown_080507EC
	ldr r0, [r0, #0x7c]
	add r3, sp, #0
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	ldrb r1, [r1, r0]
	strh r1, [r3, #0xc]
	adds r1, #0x10
	strh r1, [r3, #0x10]
	ldr r1, _0801B488 ;@ =gUnknown_080507EC
	adds r1, #4
	ldrb r0, [r1, r0]
	strh r0, [r3, #0xe]
	adds r0, #0x20
	strh r0, [r3, #0x12]
	b _0801B42A
_0801B366
	ldr r0, _0801B468 ;@ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0xc
	adds r0, r0, r1
	ldr r5, [r0, #0x1c]
	ldr r0, [r6]
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r4, [r0, #0xc]
	ldr r7, _0801B474 ;@ =gUnknown_03003EA0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0801B39E
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0801B39E
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #8]
	strh r0, [r3, #0xa]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0801B3C6
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0801B3C6
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	movs r0, #4
	ldrsh r0, [r3, r0]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x78
	subs r0, r0, r1
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	strh r0, [r3, #0xc]
	adds r0, #1
	strh r0, [r3, #0x10]
	movs r0, #6
	ldrsh r0, [r3, r0]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x50
	subs r0, r0, r1
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	adds r0, #1
	strh r0, [r3, #0x12]
	cmp r5, #0
	beq _0801B42A
	adds r0, r5, #0
	bl sub_80158E0
	cmp r0, #0
	beq _0801B42A
	add r3, sp, #0
	ldrh r0, [r3, #0xe]
	subs r0, #0x20
	strh r0, [r3, #0xe]
	ldrh r0, [r3, #0x12]
	subs r0, #0x20
	strh r0, [r3, #0x12]
_0801B42A
	add r3, sp, #0
	ldrh r1, [r3, #0xe]
	ldr r0, [r6]
	lsls r2, r1, #8
	movs r1, #0x27
	lsls r1, r1, #6
	adds r1, r0, r1
	str r2, [r1]
	ldrh r2, [r3, #0xc]
	movs r3, #0x13
	lsls r3, r3, #7
	adds r0, r0, r3
	lsls r2, r2, #8
	str r2, [r0, #0x3c]
	add r3, sp, #0
	ldrh r0, [r3, #0x12]
	movs r2, #1
	lsls r0, r0, #8
	str r0, [r1, #8]
	ldrh r0, [r3, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r0, [r1, #0x3c]
	orrs r0, r2
	str r0, [r1, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801B464 DCDU 0x00000524
_0801B468 DCDU gUnknown_03003454
_0801B46C DCDU gUnknown_03003E88
_0801B470 DCDU gUnknown_03003448
_0801B474 DCDU gUnknown_03003EA0
_0801B478 DCDU 0x06010000
_0801B47C DCDU 0x0F0F0F0F
_0801B480 DCDU gUnknown_03003478
_0801B484 DCDU gUnknown_03003450
_0801B488 DCDU gUnknown_080507EC

	thumb_func_start sub_801B48C
sub_801B48C ;@ 0x0801B48C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, _0801B870 ;@ =gUnknown_03003450
	adds r4, r1, #0
	ldr r0, [r5]
	bl sub_8002004
	movs r3, #0x58
	ldr r2, [r5]
	muls r3, r6
	adds r2, r3, r2
	movs r3, #0x11
	lsls r3, r3, #7
	adds r2, r2, r3
	ldr r3, _0801B874 ;@ =gUnknown_03003458
	adds r1, r0, #0
	ldr r5, [r3]
	ldr r1, [r1, #4]
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	ldr r6, [r5, #0xc]
	movs r7, #7
	lsls r7, r7, #0x10
	adds r2, #0xc
	cmp r6, #0
	beq _0801B506
	ldr r5, [r5, #4]
	subs r5, r0, r5
	subs r5, r6, r5
	NEGS r6, r7
	cmp r5, r6
	bge _0801B4D0
	adds r5, r6, #0
	b _0801B4D6
_0801B4D0
	cmp r5, r7
	ble _0801B4D6
	adds r5, r7, #0
_0801B4D6
	ldr r6, [r4]
	subs r5, r6, r5
	movs r6, #3
	lsls r6, r6, #0x1d
	cmp r5, r6
	str r5, [r4]
	blt _0801B4EC
	ldr r6, [r3]
	ldr r6, [r6, #0xc]
	cmp r6, #0
	bgt _0801B4FC
_0801B4EC
	movs r6, #5
	lsls r6, r6, #0x1d
	cmp r5, r6
	bgt _0801B510
	ldr r5, [r3]
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bge _0801B510
_0801B4FC
	ldr r5, [r3]
	ldr r6, [r5, #0xc]
	NEGS r6, r6
	str r6, [r5, #0xc]
	b _0801B510
_0801B506
	ldrh r5, [r2]
	lsls r5, r5, #0x13
	subs r5, #1
	ands r5, r0
	str r5, [r4]
_0801B510
	ldr r3, [r3]
	ldr r5, [r3, #0x10]
	cmp r5, #0
	beq _0801B558
	ldr r2, [r3, #8]
	subs r2, r1, r2
	subs r2, r5, r2
	ldr r5, _0801B878 ;@ =0xFFF90000
	cmp r2, r5
	bge _0801B528
	adds r2, r5, #0
	b _0801B52E
_0801B528
	cmp r2, r7
	ble _0801B52E
	adds r2, r7, #0
_0801B52E
	ldr r5, [r4, #4]
	subs r2, r5, r2
	str r2, [r4, #4]
	movs r4, #7
	lsls r4, r4, #0x1c
	cmp r2, r4
	blt _0801B542
	ldr r4, [r3, #0x10]
	cmp r4, #0
	bgt _0801B550
_0801B542
	movs r4, #9
	lsls r4, r4, #0x1c
	cmp r2, r4
	bgt _0801B562
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bge _0801B562
_0801B550
	ldr r2, [r3, #0x10]
	NEGS r2, r2
	str r2, [r3, #0x10]
	b _0801B562
_0801B558
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x13
	subs r2, #1
	ands r2, r1
	str r2, [r4, #4]
_0801B562
	adds r3, #4
	stm r3!, {r0, r1}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801B56C
sub_801B56C ;@ 0x0801B56C
	push {r4, r5, r6, r7, lr}
	movs r7, #0x16
	ldr r6, _0801B87C ;@ =gUnknown_03003D2C
	adds r4, r0, #0
	movs r5, #1
	sub sp, #0x4c
_0801B578
	ldr r0, [r6]
	adds r2, r7, #0
	adds r0, #0x90
	ldrb r0, [r0]
	subs r2, #0x16
	adds r1, r5, #0
	cmp r0, r2
	beq _0801B58A
	movs r1, #0
_0801B58A
	adds r0, r7, #0
	bl sub_803FEF8
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #0x32
	blo _0801B578
	ldr r0, _0801B880 ;@ =gUnknown_03003D20
	ldrb r1, [r0]
	ldr r0, _0801B884 ;@ =gUnknown_0300345C
	cmp r1, #0
	beq _0801B5B0
	movs r2, #1
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
	b _0801B5C8
_0801B5B0
	ldr r1, [r6]
	ldr r2, _0801B888 ;@ =gUnknown_08050E84
	adds r1, #0x90
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	ldr r0, [r0]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	movs r1, #1
	bl sub_8028A7C
_0801B5C8
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r2, #3
	ldr r0, [r0]
	lsls r2, r2, #9
	adds r1, r0, #4
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	ldr r3, _0801B890 ;@ =0x00002EE0
	adds r7, r1, #0
	adds r7, #0x10
	movs r2, #1
	add r1, pc, #0x2B4 ;@ =_0801B894
	bl sub_803FC68
	movs r2, #0
	ldr r6, _0801B87C ;@ =gUnknown_03003D2C
	str r2, [sp]
	adds r5, r0, #0
	ldr r0, [r6]
	ldr r2, _0801B8AC ;@ =gUnknown_08050C54
	adds r0, #0x90
	ldrb r0, [r0]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	ldrh r1, [r2, r0]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	lsls r6, r5, #2
	ldr r0, [r0]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801B638
_0801B61C
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B61C
_0801B638
	movs r2, #0
	str r2, [sp]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r2, r5, #0
	movs r3, #1
	movs r1, #0xcf
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801B678
_0801B65C
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B65C
_0801B678
	ldr r0, _0801B87C ;@ =gUnknown_03003D2C
	movs r1, #0x90
	ldr r0, [r0]
	ldr r2, _0801B8AC ;@ =gUnknown_08050C54
	ldrb r1, [r1, r0]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0801B6D4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801B6D4
_0801B6B8
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B6B8
_0801B6D4
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	ldr r1, [r0]
	lsls r0, r5, #1
	str r1, [sp, #0x48]
	adds r1, r0, r1
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	bl sub_8017862
	ldr r1, [sp, #0x48]
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r6, r1
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1, #0x18]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B8B0 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, _0801B870 ;@ =gUnknown_03003450
	movs r1, #1
	ldr r0, [r0]
	bl sub_800D912
	ldr r0, _0801B888 ;@ =gUnknown_08050E84
	add r5, sp, #0x30
	adds r0, #0x38
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r0, r1, r2, r3}
	stm r5!, {r0, r1, r2, r3}
	ldr r0, _0801B87C ;@ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0x1c
	bhs _0801B772
	add r3, pc, #0x4 ;@ =_0801B740
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0801B740
	DCB 0x0D
_0801B741
	DCB 0x0D
_0801B742
	DCB 0x0D
_0801B743
	DCB 0x0F
_0801B744
	DCB 0x0F
_0801B745
	DCB 0x0F
_0801B746
	DCB 0x0F
_0801B747
	DCB 0x11
_0801B748
	DCB 0x11
_0801B749
	DCB 0x11
_0801B74A
	DCB 0x11
_0801B74B
	DCB 0x11
_0801B74C
	DCB 0x13
_0801B74D
	DCB 0x13
_0801B74E
	DCB 0x13
_0801B74F
	DCB 0x13
_0801B750
	DCB 0x13
_0801B751
	DCB 0x13
_0801B752
	DCB 0x15
_0801B753
	DCB 0x15
_0801B754
	DCB 0x15
_0801B755
	DCB 0x15
_0801B756
	DCB 0x17
_0801B757
	DCB 0x17
_0801B758
	DCB 0x17
_0801B759
	DCB 0x17
_0801B75A
	DCB 0x17
_0801B75B
	DCB 0x17
loc_801b75c
	movs r5, #0
	b _0801B772
loc_801b760
	movs r5, #5
	b _0801B772
loc_801b764
	movs r5, #1
	b _0801B772
loc_801b768
	movs r5, #6
	b _0801B772
loc_801b76c
	movs r5, #3
	b _0801B772
loc_801b770
	movs r5, #2
_0801B772
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801B8B4 ;@ =gUnknown_03003EA8
	lsls r1, r5, #2
	add r2, sp, #0x30
	ldr r0, [r0]
	ldr r1, [r2, r1]
	bl sub_8004FFC
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r0, _0801B87C ;@ =gUnknown_03003D2C
	add r3, sp, #0
	strb r6, [r3, #0x14]
	ldr r0, [r0]
	ldr r1, _0801B888 ;@ =gUnknown_08050E84
	adds r0, #0x90
	ldrb r0, [r0]
	adds r1, #0xca
	lsls r0, r0, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	b _0801B7C0
_0801B7B2
	add r3, sp, #0
	ldrb r1, [r3, #0x14]
	adds r0, #1
	adds r1, #1
	strb r1, [r3, #0x14]
	cmp r0, #4
	bhs _0801B7C8
_0801B7C0
	ldr r1, [sp, #0x18]
	ldrb r1, [r1, r0]
	cmp r1, #0xff
	bne _0801B7B2
_0801B7C8
	ldr r5, _0801B870 ;@ =gUnknown_03003450
	add r1, sp, #4
	ldr r0, [r5]
	bl sub_800D9E0
	movs r3, #6
	ldrsh r2, [r7, r3]
	movs r3, #4
	str r2, [sp]
	ldrsh r0, [r7, r3]
	movs r3, #2
	ldrsh r2, [r7, r3]
	movs r3, #0
	ldrsh r1, [r7, r3]
	adds r3, r0, #0
	adds r0, r5, #0
	ldr r0, [r0]
	bl sub_803FD5C
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r4, #0x20]
	ldr r0, [r1, #0x30]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp, #0x44]
	ldr r1, [r1, #4]
	str r1, [sp, #0x48]
	add r1, sp, #0x44
	bl sub_803FF24
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r1, [r0, #0x1c]
	movs r2, #0xff
	adds r2, #1
	bics r1, r2
	str r1, [r0, #0x1c]
	movs r3, #0
	str r3, [r4, #8]
	str r6, [r4, #4]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	strh r3, [r4, #0x1c]
	adds r3, r4, #0
	adds r3, #0x10
	movs r7, #6
	strb r7, [r3, #0xe]
	ldr r7, _0801B87C ;@ =gUnknown_03003D2C
	ldr r7, [r7]
	adds r7, #0x90
	ldrb r7, [r7]
	cmp r7, #0xa
	beq _0801B91A
	bgt _0801B8CE
	cmp r7, #3
	beq _0801B91C
	cmp r7, #4
	beq _0801B91E
	cmp r7, #5
	beq _0801B920
	cmp r7, #6
	bne _0801B922
	ldr r0, _0801B8B8 ;@ =0x04000008
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r0]
	adds r3, r6, #0
	b _0801B8BC
	ALIGN
_0801B870 DCDU gUnknown_03003450
_0801B874 DCDU gUnknown_03003458
_0801B878 DCDU 0xFFF90000
_0801B87C DCDU gUnknown_03003D2C
_0801B880 DCDU gUnknown_03003D20
_0801B884 DCDU gUnknown_0300345C
_0801B888 DCDU gUnknown_08050E84
_0801B88C DCDU gUnknown_03003454
_0801B890 DCDU 0x00002EE0
_0801B894 DCDU 0x67697254
_0801B898 DCDU 0x20726567
_0801B89C DCDU 0x74696E49
_0801B8A0 DCDU 0x696C6169
_0801B8A4 DCDU 0x69746173
_0801B8A8 DCDU 0x00006E6F
_0801B8AC DCDU gUnknown_08050C54
_0801B8B0 DCDU gUnknown_03003468
_0801B8B4 DCDU gUnknown_03003EA8
_0801B8B8 DCDU 0x04000008
_0801B8BC
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	movs r1, #2
	ldr r0, [r5]
	bl sub_8002010
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	b _0801BA66
_0801B8CE
	cmp r7, #0xb
	beq _0801B9BA
	cmp r7, #0xd
	beq _0801B9BA
	cmp r7, #0x16
	bne _0801B922
	ldr r0, _0801BBCC ;@ =0x04000008
	ldr r7, _0801BBD0 ;@ =gUnknown_03003478
	ldrh r1, [r0]
	movs r2, #0x10
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r7, [r7, #0x10]
	movs r1, #4
	ands r7, r2
	bne _0801B9D8
	strh r1, [r4, #0x1c]
	movs r0, #0xa
	strb r0, [r3, #0xe]
	lsls r2, r1, #0x18
	ldrh r0, [r2]
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r2]
	b _0801BA66
_0801B91A
	b _0801B9FA
_0801B91C
	b _0801B924
_0801B91E
	b _0801B98A
_0801B920
	b _0801B9C4
_0801B922
	b _0801BA4E
_0801B924
	orrs r1, r2
	str r1, [r0, #0x1c]
	ldr r1, _0801BBCC ;@ =0x04000008
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	ldrh r0, [r1]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r7, r1, #2
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r7]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	strh r0, [r7]
	adds r3, r6, #0
	movs r1, #2
	ldr r0, [r5]
	bl sub_8002010
	subs r0, r7, #4
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	bics r1, r2
	adds r1, #1
	strh r1, [r0]
	ldrh r0, [r7]
	bics r0, r2
	adds r0, #2
	strh r0, [r7]
	ldr r0, _0801BBD4 ;@ =0xFFFFC000
	str r0, [r4, #0xc]
	NEGS r0, r0
	str r0, [r4, #0x10]
	movs r0, #4
	strh r0, [r4, #0x1c]
	lsls r2, r0, #0x18
	ldrh r0, [r2]
	lsrs r1, r2, #0x10
	bics r0, r1
	strh r0, [r2]
	b _0801BA66
_0801B98A
	ldr r0, _0801BBCC ;@ =0x04000008
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r0]
	adds r3, r6, #0
	movs r1, #2
	ldr r0, [r5]
	bl sub_8002010
	b _0801B9BC
_0801B9BA
	b _0801B9DA
_0801B9BC
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	b _0801BA66
_0801B9C4
	adds r3, r6, #0
	movs r1, #3
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	ldr r0, [r5]
	bl sub_8002010
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	b _0801BA66
_0801B9D8
	b _0801BA44
_0801B9DA
	ldr r0, _0801BBCC ;@ =0x04000008
	movs r2, #3
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	bics r1, r2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	bics r1, r2
	adds r1, #1
	strh r1, [r0]
	b _0801BA66
_0801B9FA
	ldr r2, _0801BBCC ;@ =0x04000008
	movs r7, #3
	ldrh r0, [r2]
	adds r3, r2, #2
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #2
	strh r0, [r2]
	ldrh r0, [r2, #2]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #1
	strh r0, [r2, #2]
	ldrh r1, [r2, #4]
	adds r0, r2, #4
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r2, #4]
	ldrh r1, [r2]
	orrs r1, r7
	strh r1, [r2]
	ldrh r1, [r3]
	bics r1, r7
	adds r1, #1
	strh r1, [r3]
	ldrh r1, [r0]
	bics r1, r7
	adds r1, #2
	strh r1, [r0]
	movs r0, #4
	strh r0, [r4, #0x1c]
	lsls r2, r0, #0x18
	ldrh r0, [r2]
	lsrs r1, r2, #0x10
	bics r0, r1
	strh r0, [r2]
	b _0801BA66
_0801BA44
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
	b _0801BA66
_0801BA4E
	ldr r0, _0801BBCC ;@ =0x04000008
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
_0801BA66
	movs r6, #0
	str r6, [sp, #0x44]
	str r6, [sp, #0x48]
	ldr r0, [r5]
	add r1, sp, #0x44
	bl sub_800242C
	b _0801BA7C
_0801BA76
	ldr r0, [r5]
	bl sub_800E178
_0801BA7C
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0]
	cmp r0, #0
	bne _0801BA76
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0801BA76
	ldr r1, [r4, #0x20]
	ldr r0, [r5]
	movs r2, #0x27
	lsls r2, r2, #6
	ldr r1, [r1, #0x2c]
	adds r0, r0, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	bl sub_801B332
	movs r1, #4
	add r3, sp, #0x40
	ldr r0, [r5]
	strb r1, [r3, #8]
	movs r1, #3
	strb r1, [r3, #9]
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r1, [r3, #8]
	strb r1, [r0]
	ldrb r1, [r3, #9]
	strb r1, [r0, #1]
_0801BAC2
	ldr r0, [r5]
	bl sub_8002004
	ldm r0!, {r6, r7}
	ldr r0, [r5]
	bl sub_8001C22
	ldr r0, [r5]
	bl sub_800E178
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0]
	cmp r0, r6
	bne _0801BAC2
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0, #4]
	cmp r0, r7
	bne _0801BAC2
	movs r6, #0
	strb r6, [r4]
	strb r6, [r4, #1]
	ldr r2, [r5]
	adds r1, r6, #0
	ldr r2, [r2, #8]
	movs r0, #0
	cmp r2, #0
	beq _0801BB02
	ldrb r1, [r2]
_0801BB02
	cmp r1, #0
	bls _0801BB4A
	adds r1, r5, #0
	movs r2, #0x11
	lsls r2, r2, #7
_0801BB0C
	movs r6, #0x58
	ldr r7, [r1]
	muls r6, r0
	adds r3, r6, r7
	adds r3, r3, r2
	ldr r3, [r3, #0x10]
	ldrh r3, [r3, #0xc]
	ldrb r7, [r4]
	cmp r3, r7
	bls _0801BB22
	strb r3, [r4]
_0801BB22
	ldr r3, [r1]
	adds r3, r6, r3
	adds r3, r3, r2
	ldr r3, [r3, #0x10]
	ldrh r3, [r3, #0xe]
	ldrb r6, [r4, #1]
	cmp r3, r6
	bls _0801BB34
	strb r3, [r4, #1]
_0801BB34
	ldr r6, [r1]
	adds r0, #1
	lsls r0, r0, #0x18
	ldr r6, [r6, #8]
	lsrs r0, r0, #0x18
	movs r3, #0
	cmp r6, #0
	beq _0801BB46
	ldrb r3, [r6]
_0801BB46
	cmp r3, r0
	bhi _0801BB0C
_0801BB4A
	ldr r0, [r5]
	movs r1, #0x13
	lsls r1, r1, #7
	adds r1, r0, r1
	ldr r6, [r1, #0x20]
	adds r5, r0, #0
	cmp r6, #0
	bne _0801BB5E
	mvns r1, r6
	b _0801BB6A
_0801BB5E
	movs r1, #0x21
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r6, r0
	bl sub_8040504
_0801BB6A
	movs r0, #0x58
	muls r0, r1
	movs r1, #0x11
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #0xc]
	lsls r7, r0, #0x10
	cmp r6, #0
	bne _0801BB84
	mvns r1, r6
	b _0801BB90
_0801BB84
	movs r1, #0x21
	lsls r1, r1, #6
	adds r0, r5, r1
	subs r0, r6, r0
	bl sub_8040504
_0801BB90
	movs r0, #0x58
	muls r0, r1
	movs r1, #0x11
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	lsls r1, r7, #3
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #0x13
	str r0, [r4, #0x18]
	str r1, [r4, #0x14]
	movs r0, #5
	lsls r0, r0, #0x18
	movs r1, #0xff
	adds r1, #0xb1
	str r0, [r1, r4]
	ldr r0, _0801BBDC ;@ =gUnknown_03003448
	ldr r2, [r4, #0x20]
	ldr r0, [r0]
	ldr r1, _0801BBD8 ;@ =sub_801B212
	bl sub_80015E6
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801BBC8 DCDU sub_801B48C
_0801BBCC DCDU 0x04000008
_0801BBD0 DCDU gUnknown_03003478
_0801BBD4 DCDU 0xFFFFC000
_0801BBD8 DCDU sub_801B212
_0801BBDC DCDU gUnknown_03003448

	thumb_func_start sub_801BBE0
sub_801BBE0 ;@ 0x0801BBE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r4, r6, r0
	ldr r0, [r4, #0x1c]
	movs r1, #0xfe
	bics r0, r1
	sub sp, #0x14
	ldr r7, _0801BE64 ;@ =gUnknown_03003454
	str r0, [r4, #0x1c]
	ldr r1, [r7]
	movs r2, #3
	lsls r2, r2, #9
	adds r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	movs r3, #0
	adds r1, #0x10
	strh r3, [r1]
	strh r3, [r1, #2]
	strh r3, [r1, #4]
	movs r0, #1
	movs r5, #0
	strh r3, [r1, #6]
_0801BC12
	ldr r0, [r7]
	lsls r1, r5, #2
	movs r2, #5
	lsls r2, r2, #7
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq _0801BC2A
	adds r1, r5, #0
	bl sub_8017862
_0801BC2A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo _0801BC12
	movs r1, #0xff
	ldr r0, [r7]
	bl sub_8017620
	ldr r0, _0801BE68 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #1
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #0xa
	bl sub_803DA9C
	str r0, [sp, #8]
	movs r0, #0
	bl sub_80050FA
	ldr r0, _0801BE64 ;@ =gUnknown_03003454
	ldr r3, _0801BE6C ;@ =0x00002EE0
	movs r2, #1
	add r1, pc, #0x208 ;@ =_0801BE70
	ldr r0, [r0]
	bl sub_803FC68
	adds r5, r0, #0
	ldr r0, _0801BE68 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, [sp, #8]
	bl sub_803DA4C
	movs r0, #0
	bl sub_80050FA
	movs r2, #0
	ldr r0, _0801BE88 ;@ =gUnknown_03003D2C
	str r2, [sp]
	ldr r0, [r0]
	ldr r1, _0801BE8C ;@ =gUnknown_080507F4
	adds r0, #0x90
	ldrb r0, [r0]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, _0801BE64 ;@ =gUnknown_03003454
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801BE88 ;@ =gUnknown_03003D2C
	movs r1, #0x90
	ldr r0, [r0]
	ldr r2, _0801BE8C ;@ =gUnknown_080507F4
	ldrb r1, [r1, r0]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0801BCD2
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r7]
	bl sub_8017884
	b _0801BCFC
_0801BCD2
	adds r2, r5, #0
	cmp r5, #0xff
	bne _0801BCDC
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_0801BCDC
	ldr r0, _0801BE90 ;@ =gUnknown_03003E88
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x16
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	adds r2, r0, #0
	str r5, [sp]
	movs r3, #1
	movs r1, #2
	ldr r0, [r7]
	bl sub_8017A0A
_0801BCFC
	movs r2, #0
	ldr r0, _0801BE88 ;@ =gUnknown_03003D2C
	str r2, [sp]
	ldr r0, [r0]
	ldr r1, _0801BE94 ;@ =gUnknown_08050A24
	adds r0, #0x90
	ldrb r0, [r0]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	ldrh r1, [r1, r0]
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r7]
	bl sub_8017884
	ldr r0, _0801BE88 ;@ =gUnknown_03003D2C
	movs r1, #0x90
	ldr r0, [r0]
	ldr r2, _0801BE94 ;@ =gUnknown_08050A24
	ldrb r1, [r1, r0]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0801BD48
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r7]
	bl sub_8017884
_0801BD48
	ldr r0, _0801BE88 ;@ =gUnknown_03003D2C
	ldr r2, _0801BE98 ;@ =0x0000FFFF
	ldr r0, [r0]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	cmp r1, r2
	beq _0801BD9A
	asrs r1, r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r0, [r0, #0x18]
	adds r2, r5, #0
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	cmp r5, #0xff
	bne _0801BD72
	ldr r0, [r7]
	ldrb r2, [r0, #0x14]
_0801BD72
	ldr r0, _0801BE90 ;@ =gUnknown_03003E88
	movs r1, #8
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x20
	strh r1, [r0]
	movs r1, #8
	strh r1, [r0, #2]
	ldr r1, [sp]
	adds r2, r0, #0
	strh r1, [r0, #4]
	ldr r1, [sp, #4]
	movs r3, #1
	strh r1, [r0, #6]
	str r5, [sp]
	ldr r0, [r7]
	movs r1, #0
	bl sub_8017A56
_0801BD9A
	ldr r7, _0801BE64 ;@ =gUnknown_03003454
	lsls r1, r5, #2
	ldr r0, [r7]
	str r1, [sp, #0x10]
	adds r0, r1, r0
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801BDCA
_0801BDB0
	movs r1, #0xff
	ldr r0, [r7]
	bl sub_8017620
	ldr r0, [r7]
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801BDB0
_0801BDCA
	ldr r0, [r4, #0x1c]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801BE24
_0801BDD4
	lsls r0, r7, #2
	adds r0, r0, r6
	str r0, [sp, #0xc]
	ldr r0, [r0, #0x20]
	bl sub_801F2F8
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x20]
	ldrh r1, [r0, #4]
	cmp r1, #9
	bne _0801BDFC
	movs r1, #0x7f
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0xd
	bics r0, r1
	lsls r1, r7, #0x19
	lsrs r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x1c]
	b _0801BE14
_0801BDFC
	movs r3, #0x97
	ldrsb r0, [r0, r3]
	cmp r0, #0
	bne _0801BE14
	movs r1, #0x7f
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x14
	bics r0, r1
	lsls r1, r7, #0x19
	lsrs r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0x1c]
_0801BE14
	ldr r0, [r4, #0x1c]
	adds r7, #1
	lsls r7, r7, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi _0801BDD4
_0801BE24
	ldr r7, _0801BE64 ;@ =gUnknown_03003454
	lsls r1, r5, #1
	ldr r0, [r7]
	adds r2, r1, r0
	movs r1, #0xb
	lsls r1, r1, #7
	adds r1, r2, r1
	ldrh r2, [r1, #0x18]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	strh r2, [r1, #0x18]
	ldr r2, [sp, #0x10]
	movs r1, #0
	adds r0, r2, r0
	movs r2, #9
	lsls r2, r2, #7
	adds r0, r0, r2
	str r1, [r0, #0x18]
	ldr r0, [r6, #0x20]
	ldr r1, _0801BE9C ;@ =gUnknown_03003D20
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801BE64 DCDU gUnknown_03003454
_0801BE68 DCDU gUnknown_03003468
_0801BE6C DCDU 0x00002EE0
_0801BE70 DCDU 0x6576654C
_0801BE74 DCDU 0x6E49206C
_0801BE78 DCDU 0x61697469
_0801BE7C DCDU 0x6173696C
_0801BE80 DCDU 0x6E6F6974
_0801BE84 DCDU 0x00000000
_0801BE88 DCDU gUnknown_03003D2C
_0801BE8C DCDU gUnknown_080507F4
_0801BE90 DCDU gUnknown_03003E88
_0801BE94 DCDU gUnknown_08050A24
_0801BE98 DCDU 0x0000FFFF
_0801BE9C DCDU gUnknown_03003D20

	thumb_func_start sub_801BEA0
sub_801BEA0 ;@ 0x0801BEA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801BBE0
	adds r0, r4, #0
	bl sub_801B56C
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start nullsub_47
nullsub_47 ;@ 0x0801BEB4
	bx lr

	non_word_aligned_thumb_func_start sub_801BEB6
sub_801BEB6 ;@ 0x0801BEB6
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r6, r0, #0
	ldr r0, _0801C1F0 ;@ =0x000003E7
	movs r7, #0
	str r7, [sp, #0x28]
	str r7, [sp, #0x20]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x20]
	movs r2, #5
	ldr r0, [r0, #0x30]
	lsls r2, r2, #8
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	adds r0, r6, r2
	str r0, [sp, #0x30]
	ldr r0, [r0, #0x1c]
	movs r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #1
	bls _0801BFCE
_0801BEEA
	lsls r0, r7, #2
	adds r4, r0, r6
	ldr r0, [r4, #0x20]
	ldr r1, [r0, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	bne _0801BFD0
	adds r1, r0, #0
	adds r1, #0x70
	ldrb r2, [r1, #0xd]
	cmp r2, #0
	beq _0801BF0A
	ldrb r1, [r1, #0xc]
	cmp r1, #0
	beq _0801BF28
_0801BF0A
	movs r1, #0x80
	ldr r1, [r1, r0]
	lsls r1, r1, #9
	lsrs r1, r1, #0x14
	beq _0801BFEA
	ldr r1, [r0, #0x28]
	bl sub_801D9B0
	cmp r0, #0
	beq _0801BF22
	movs r0, #1
	b _0801BF24
_0801BF22
	movs r0, #0
_0801BF24
	cmp r0, #0
	beq _0801BFEA
_0801BF28
	ldr r0, [r4, #0x20]
	movs r1, #0x7d
	ldrsb r5, [r1, r0]
	cmp r5, #0
	beq _0801BFD0
	ldr r0, [r0, #0x30]
	ldr r2, _0801C1F4 ;@ =gUnknown_03003D20
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #4]
	str r1, [sp, #8]
	subs r0, r0, r2
	str r0, [sp, #0xc]
	add r0, sp, #8
	add r1, sp, #0x10
	bl sub_80187A0
	cmp r0, r5
	bhs _0801BF70
	cmp r5, #0
	bgt _0801BF7A
_0801BF70
	NEGS r1, r5
	cmp r0, r1
	bls _0801BFD0
	cmp r5, #0
	bge _0801BFD0
_0801BF7A
	ldr r1, [r4, #0x20]
	adds r1, #0x70
	ldrb r2, [r1, #0xd]
	cmp r2, #0
	beq _0801BFEC
	ldrb r2, [r1, #0xc]
	cmp r2, #0
	bne _0801BFEC
	strb r2, [r1, #0xd]
	ldr r1, _0801C1F8 ;@ =gUnknown_03003458
	movs r2, #5
	ldr r1, [r1]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne _0801BFEC
	movs r1, #1
	cmp r5, #0
	bgt _0801BFA6
	movs r1, #0
_0801BFA6
	movs r0, #5
	bl sub_803FEF8
	lsrs r1, r5, #0x1f
	movs r0, #6
	bl sub_803FEF8
	movs r1, #1
	movs r0, #7
	bl sub_803FEF8
	ldr r0, _0801C1FC ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x2c
	strh r1, [r0]
	b _0801BFD2
_0801BFCE
	b _0801C1A0
_0801BFD0
	b _0801C0A6
_0801BFD2
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r0, #0
	ldr r0, _0801C200 ;@ =gUnknown_03003454
	ldr r1, [r4, #0x20]
	ldr r0, [r0]
	bl sub_80179BE
	b _0801C0A6
_0801BFEA
	b _0801C00C
_0801BFEC
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bhs _0801BFF6
	str r0, [sp, #0x2c]
	str r7, [sp, #0x28]
_0801BFF6
	ldr r1, [r4, #0x20]
	adds r1, #0x70
	ldrb r1, [r1, #0xc]
	cmp r0, r1
	bhs _0801C0A6
	ldr r1, [sp, #0x24]
	cmp r0, r1
	bhs _0801C0A6
	str r0, [sp, #0x24]
	str r7, [sp, #0x20]
	b _0801C0A6
_0801C00C
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x14
	bpl _0801C0A6
	ldr r0, [r6, #0x20]
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	cmp r0, #5
	beq _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x2c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r5, r0, #0
	beq _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r1, r2, r1
	bl sub_803B8CA
	cmp r0, #0
	bne _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r2, _0801C1F4 ;@ =gUnknown_03003D20
	adds r0, #0x58
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	lsls r0, r0, #1
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #4]
	str r1, [sp, #8]
	subs r0, r0, r2
	str r0, [sp, #0xc]
	add r0, sp, #8
	add r1, sp, #0x10
	bl sub_80187A0
	cmp r0, r5
	bhs _0801C0A6
	ldr r0, [r4, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x24]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4, #0x20]
	movs r2, #0xac
	ldr r2, [r2, r1]
	ldr r0, [r6, #0x20]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r1
	adds r2, #0x80
	ldr r2, [r2, #0x38]
	lsls r2, r2, #2
	lsrs r3, r2, #0x19
	ldr r2, [r0]
	ldr r4, [r2, #0x34]
	adds r4, r4, r2
	movs r2, #1
	bl sub_803B8D0
_0801C0A6
	ldr r0, [sp, #0x30]
	adds r7, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r7
	bls _0801C0B6
	b _0801BEEA
_0801C0B6
	ldr r7, [sp, #0x28]
	cmp r7, #0
	beq _0801C1A0
	movs r5, #1
	ldr r7, [sp, #0x20]
	lsls r5, r5, #0x18
	cmp r7, #0
	beq _0801C178
	ldr r0, [r6, #0x20]
	ldr r1, [r0, #0x7c]
	adds r0, #0x58
	lsls r1, r1, #4
	lsrs r2, r1, #0x1c
	ldr r1, [r0]
	str r1, [sp, #8]
	ldr r0, [r0, #4]
	ldr r7, [sp, #0x20]
	str r0, [sp, #0xc]
	lsls r0, r7, #2
	adds r4, r0, r6
	ldr r0, [r4, #0x20]
	add r1, sp, #8
	bl sub_801F28C
	cmp r0, #0
	beq _0801C178
	ldr r0, [r4, #0x20]
	movs r1, #0x80
	ldr r1, [r1, r0]
	lsls r1, r1, #9
	lsrs r2, r1, #0x14
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x24]
	lsls r3, r0, #0x10
	ldr r0, _0801C204 ;@ =gUnknown_030034F8
	lsrs r3, r3, #0x10
	ldr r0, [r0]
	bl sub_8024D30
	ldr r1, [r4, #0x20]
	adds r1, #0x80
	ldr r0, [r1]
	lsls r2, r0, #7
	lsrs r2, r2, #0x1f
	bne _0801C126
	bics r0, r5
	orrs r0, r5
	str r0, [r1]
	ldr r0, [r4, #0x20]
	adds r0, #0x80
	ldr r1, [r0]
	lsrs r2, r5, #1
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	str r1, [r0]
_0801C126
	ldr r0, _0801C208 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	lsls r1, r1, #0x1c
	bmi _0801C134
	ldrh r2, [r0, #8]
_0801C134
	lsls r0, r2, #0x1f
	bpl _0801C170
	ldr r0, _0801C1F8 ;@ =gUnknown_03003458
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	adds r0, r0, r2
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne _0801C170
	ldr r0, _0801C1FC ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x2c
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	adds r2, r0, #0
	ldr r0, _0801C200 ;@ =gUnknown_03003454
	ldr r1, [r4, #0x20]
	ldr r0, [r0]
	bl sub_80179BE
_0801C170
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801C178
	ldr r7, [sp, #0x20]
	lsls r0, r7, #2
	adds r0, r0, r6
	ldr r2, [r0, #0x20]
	adds r2, #0x80
	ldr r1, [r2]
	lsls r3, r1, #7
	lsrs r3, r3, #0x1f
	beq _0801C192
	bics r1, r5
	movs r3, #0
	orrs r1, r3
	str r1, [r2]
_0801C192
	ldr r2, [r0, #0x20]
	adds r2, #0x80
	ldr r1, [r2]
	lsls r3, r1, #8
	lsrs r3, r3, #0x1f
	bne _0801C1AC
	b _0801C1A2
_0801C1A0
	b _0801C1C2
_0801C1A2
	movs r3, #1
	lsls r3, r3, #0x17
	bics r1, r3
	orrs r1, r3
	str r1, [r2]
_0801C1AC
	ldr r0, [r0, #0x20]
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x2c]
	lsls r3, r0, #0x10
	ldr r0, _0801C204 ;@ =gUnknown_030034F8
	lsrs r3, r3, #0x10
	movs r2, #0
	ldr r0, [r0]
	bl sub_8024D30
	b _0801C170
_0801C1C2
	ldr r0, [r6, #0x20]
	movs r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1f
	beq _0801C170
	ldr r0, _0801C204 ;@ =gUnknown_030034F8
	adds r3, r4, #0
	movs r2, #0
	ldr r1, _0801C20C ;@ =0x0000FFFE
	ldr r0, [r0]
	bl sub_8024D30
	ldr r0, [r6, #0x20]
	movs r2, #1
	adds r0, #0x80
	ldr r1, [r0]
	lsls r2, r2, #0x17
	bics r1, r2
	orrs r1, r4
	str r1, [r0]
	b _0801C170
	ALIGN
_0801C1F0 DCDU 0x000003E7
_0801C1F4 DCDU gUnknown_03003D20
_0801C1F8 DCDU gUnknown_03003458
_0801C1FC DCDU gUnknown_03003E88
_0801C200 DCDU gUnknown_03003454
_0801C204 DCDU gUnknown_030034F8
_0801C208 DCDU gUnknown_03003444
_0801C20C DCDU 0x0000FFFE

	thumb_func_start sub_801C210
sub_801C210 ;@ 0x0801C210
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	movs r4, #0
	add r5, sp, #0x58
	adds r1, r5, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494 ;@ =0x05000014
	bl sub_803D468
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494 ;@ =0x05000014
	add r1, sp, #8
	bl sub_803D468
	ldr r0, _0801C498 ;@ =gUnknown_03003450
	ldr r0, [r0]
	bl sub_8002004
	ldr r3, [r0, #4]
	movs r0, #5
	ldr r6, [sp, #0xa8]
	lsls r0, r0, #8
	adds r2, r6, r0
	ldr r0, [r2, #0x1c]
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801C2DC
	add r0, sp, #8
_0801C250
	ldr r6, [sp, #0xa8]
	lsls r5, r1, #2
	adds r5, r5, r6
	ldr r5, [r5, #0x20]
	ldr r6, [r5, #0x2c]
	ldr r6, [r6]
	lsls r6, r6, #0x16
	lsrs r6, r6, #0x1f
	bne _0801C28E
	movs r6, #0x8c
	ldr r6, [r6, r5]
	lsls r6, r6, #0x11
	lsrs r6, r6, #0x1f
	beq _0801C28E
	ldr r6, [r5, #0x5c]
	ldr r5, [r5, #0x30]
	subs r6, r6, r3
	ldr r5, [r5, #0x10]
	asrs r7, r6, #0x1f
	lsrs r7, r7, #0x10
	ldr r5, [r5]
	adds r6, r7, r6
	lsls r5, r5, #1
	lsrs r5, r5, #0x16
	asrs r6, r6, #0x10
	adds r6, r5, r6
	lsls r5, r4, #2
	add r7, sp, #0x58
	str r6, [r7, r5]
	str r1, [r0, r5]
	adds r4, #1
_0801C28E
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi _0801C250
	cmp r4, #0
	beq _0801C2DC
	movs r5, #0
	subs r1, r4, #1
	beq _0801C2DC
	mov lr, r1
_0801C2A6
	movs r1, #0
	subs r0, r4, r5
	subs r2, r0, #1
	beq _0801C2D6
	subs r0, #1
	mov ip, r0
_0801C2B2
	lsls r0, r1, #2
	add r7, sp, #0x58
	ldr r2, [r7, r0]
	adds r6, r0, r7
	ldr r3, [r6, #4]
	cmp r2, r3
	bhs _0801C2D0
	str r3, [r7, r0]
	str r2, [r6, #4]
	add r7, sp, #8
	adds r2, r0, r7
	ldr r6, [r2, #4]
	ldr r3, [r7, r0]
	str r6, [r7, r0]
	str r3, [r2, #4]
_0801C2D0
	adds r1, #1
	cmp ip, r1
	bhi _0801C2B2
_0801C2D6
	adds r5, #1
	cmp r5, lr
	blo _0801C2A6
_0801C2DC
	movs r0, #0
	cmp r4, #0
	bls _0801C34A
	movs r5, #3
	lsls r5, r5, #0xa
	movs r6, #0x80
_0801C2E8
	lsls r1, r0, #2
	add r2, sp, #8
	ldr r1, [r2, r1]
	ldr r2, [sp, #0xa8]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0x2c]
	ldrb r2, [r1, #5]
	cmp r2, #0x80
	bls _0801C322
	lsls r3, r0, #1
	adds r3, #0x82
	cmp r3, r2
	beq _0801C344
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi _0801C344
	orrs r2, r6
	str r2, [r1]
	b _0801C344
_0801C322
	lsls r3, r0, #1
	adds r3, #0x42
	cmp r3, r2
	beq _0801C344
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi _0801C344
	orrs r2, r6
	str r2, [r1]
_0801C344
	adds r0, #1
	cmp r0, r4
	blo _0801C2E8
_0801C34A
	add sp, #0xac
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801C352
sub_801C352 ;@ 0x0801C352
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #0x20]
	adds r0, #0xff
	adds r0, #0x41
	ldrh r0, [r0, #6]
	cmp r0, #0x3c
	bls _0801C42C
	movs r0, #5
	ldr r1, [sp, #0x18]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x1c]
	movs r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #1
	bls _0801C42C
_0801C37A
	ldr r1, [sp, #0x18]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r5, [r0, #0x20]
	ldrh r0, [r5, #4]
	cmp r0, #0x12
	bne _0801C46C
	movs r0, #0xa0
	ldrh r0, [r0, r5]
	ldr r1, _0801C49C ;@ =0x00002712
	cmp r0, r1
	bne _0801C46C
	movs r0, #0x94
	ldr r0, [r0, r5]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1f
	beq _0801C46C
	ldr r1, [sp, #0x18]
	ldr r2, [r5, #0x30]
	ldr r0, [r1, #0x20]
	adds r2, #0x2c
	ldr r0, [r0, #0x30]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r3, [r2]
	str r3, [sp, #8]
	ldr r2, [r2, #4]
	cmp r3, #0
	str r2, [sp, #0xc]
	beq _0801C46C
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	subs r4, r1, r3
	subs r7, r0, r2
	cmp r4, #0
	bge _0801C3C8
	NEGS r0, r4
	b _0801C3CA
_0801C3C8
	adds r0, r4, #0
_0801C3CA
	str r0, [sp, #0x10]
	cmp r7, #0
	bge _0801C3D4
	NEGS r1, r7
	b _0801C3D6
_0801C3D4
	adds r1, r7, #0
_0801C3D6
	cmp r0, r1
	ble _0801C400
	adds r0, r7, #0
	asrs r1, r7, #0x1f
	movs r2, #0x10
	bl sub_803B998
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	ldr r3, [sp, #4]
	asrs r1, r0, #0x1f
	bl sub_803B9C4
	cmp r4, #0
	bge _0801C3FA
	ldr r4, _0801C4A0 ;@ =0xFFFF0000
	b _0801C448
_0801C3FA
	movs r4, #1
	lsls r4, r4, #0x10
	b _0801C448
_0801C400
	cmp r7, #0
	bne _0801C416
	cmp r4, #0
	ble _0801C40C
	movs r4, #1
	b _0801C43C
_0801C40C
	cmp r4, #0
	bge _0801C43C
	movs r4, #0
	mvns r4, r4
	b _0801C43C
_0801C416
	adds r0, r4, #0
	asrs r1, r4, #0x1f
	movs r2, #0x10
	bl sub_803B998
	adds r4, r0, #0
	cmp r7, #0
	str r1, [sp, #4]
	bge _0801C42E
	NEGS r0, r7
	b _0801C430
_0801C42C
	b _0801C48A
_0801C42E
	adds r0, r7, #0
_0801C430
	asrs r1, r0, #0x1f
	adds r2, r4, #0
	ldr r3, [sp, #4]
	bl sub_803B9C4
	adds r4, r0, #0
_0801C43C
	cmp r7, #0
	bge _0801C444
	ldr r0, _0801C4A0 ;@ =0xFFFF0000
	b _0801C448
_0801C444
	movs r0, #1
	lsls r0, r0, #0x10
_0801C448
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r0, r2, r0
	adds r1, r1, r4
	str r0, [r5, #0x5c]
	str r1, [r5, #0x58]
	cmp r1, #0
	bne _0801C46C
	cmp r0, #0
	bne _0801C46C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x2c]
	mov r1, sp
	bl sub_803FF24
	b _0801C46E
_0801C46C
	b _0801C47A
_0801C46E
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, sp
	bl sub_803FF24
_0801C47A
	ldr r0, [sp, #0x14]
	adds r6, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r6
	bls _0801C48A
	b _0801C37A
_0801C48A
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801C494 DCDU 0x05000014
_0801C498 DCDU gUnknown_03003450
_0801C49C DCDU 0x00002712
_0801C4A0 DCDU 0xFFFF0000

	thumb_func_start sub_801C4A4
sub_801C4A4 ;@ 0x0801C4A4
	push {r4, r5, r6, r7, lr}
	mov lr, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1, #0x20]
	sub sp, #0x14
	ldr r1, [r4, #0x7c]
	movs r2, #5
	lsls r2, r2, #8
	movs r5, #0
	str r1, [sp, #0x10]
	lsrs r1, r1, #0x1f
	mvns r5, r5
	adds r6, r0, r2
	cmp r1, #0
	beq _0801C5AA
	ldr r2, [r6, #0x1c]
	movs r1, #0
	lsls r2, r2, #0x18
	str r2, [sp, #0xc]
	lsrs r2, r2, #0x19
	beq _0801C5AC
_0801C4D0
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r5, [r2, #0x20]
	ldr r3, [r5, #0x2c]
	ldr r2, [r3]
	mov ip, r3
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1f
	bne _0801C5AE
	movs r2, #0x8c
	ldr r2, [r2, r5]
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x1f
	beq _0801C5AE
	cmp lr, r1
	beq _0801C5AE
	ldr r2, [r4, #0x34]
	movs r6, #0
_0801C4F4
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq _0801C504
	ldr r3, [r3, #4]
	cmp r3, r2
	beq _0801C50E
_0801C504
	adds r6, #1
	cmp r6, #5
	blo _0801C4F4
	movs r6, #0
	mvns r6, r6
_0801C50E
	adds r3, r6, #1
	beq _0801C5C2
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r2, r3
	bne _0801C5AE
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _0801C52A
	cmp r0, #6
	bne _0801C52E
_0801C52A
	movs r1, #1
	b _0801C530
_0801C52E
	movs r1, #0
_0801C530
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq _0801C53C
	cmp r0, #6
	bne _0801C540
_0801C53C
	movs r0, #1
	b _0801C542
_0801C540
	movs r0, #0
_0801C542
	adds r0, r1, r0
	cmp r0, #1
	beq _0801C576
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x34]
	movs r7, #0
	adds r4, r2, r1
	movs r2, #1
	adds r1, r5, #0
	adds r3, r7, #0
	bl sub_803B8D0
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r7, [r0, #0xc]
_0801C56E
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801C576
	lsls r0, r6, #2
	adds r6, r0, r5
	ldr r0, [r6, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r3, r0, #0
	ldr r0, [r4]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r7, r1, r0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803B8D6
	cmp r0, #0
	ldr r0, [r6, #0x38]
	beq _0801C5B2
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C5B0
_0801C5AA
	b _0801C660
_0801C5AC
	b _0801C652
_0801C5AE
	b _0801C646
_0801C5B0
	b _0801C56E
_0801C5B2
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b _0801C56E
_0801C5C2
	ldr r3, [r5, #0x30]
	cmp r2, r3
	beq _0801C5CC
	cmp r2, ip
	bne _0801C646
_0801C5CC
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _0801C5D8
	cmp r0, #6
	bne _0801C5DC
_0801C5D8
	movs r1, #1
	b _0801C5DE
_0801C5DC
	movs r1, #0
_0801C5DE
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq _0801C5EA
	cmp r0, #6
	bne _0801C5EE
_0801C5EA
	movs r0, #1
	b _0801C5F0
_0801C5EE
	movs r0, #0
_0801C5F0
	adds r0, r1, r0
	cmp r0, #1
	beq _0801C61E
	ldr r1, [r4]
	movs r6, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B8D6
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl sub_803B8D6
	b _0801C56E
_0801C61E
	ldr r1, [r4]
	movs r6, #1
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B8D6
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl sub_803B8D6
	b _0801C56E
_0801C646
	ldr r2, [sp, #0xc]
	adds r1, #1
	lsrs r2, r2, #0x19
	cmp r2, r1
	bls _0801C652
	b _0801C4D0
_0801C652
	ldr r1, [sp, #0x10]
	lsls r0, r1, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r6, #0
	str r6, [r4, #0x34]
	b _0801C56E
_0801C660
	movs r1, #0
_0801C662
	lsls r2, r1, #2
	adds r2, r2, r4
	ldr r2, [r2, #0x38]
	cmp r2, #0
	beq _0801C674
	ldr r2, [r2, #0x34]
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x1f
	bne _0801C67C
_0801C674
	adds r1, #1
	cmp r1, #5
	blo _0801C662
	adds r1, r5, #0
_0801C67C
	adds r3, r1, #1
	beq _0801C5B0
	lsls r1, r1, #2
	adds r7, r1, r4
	ldr r1, [r7, #0x38]
	ldr r2, [r1, #0xc]
	ldr r3, [r6, #0x1c]
	mov ip, r1
	lsls r3, r3, #0x18
	str r3, [sp, #8]
	movs r1, #0
	lsrs r3, r3, #0x19
	beq _0801C760
_0801C696
	lsls r3, r1, #2
	adds r3, r3, r0
	ldr r5, [r3, #0x20]
	ldr r3, [r5, #0x2c]
	str r3, [sp, #4]
	ldr r3, [r3]
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x1f
	bne _0801C770
	movs r3, #0x8c
	ldr r3, [r3, r5]
	lsls r3, r3, #0x13
	lsrs r3, r3, #0x1f
	beq _0801C770
	cmp lr, r1
	beq _0801C770
	movs r6, #0
_0801C6B8
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq _0801C6C8
	ldr r3, [r3, #4]
	cmp r3, r2
	beq _0801C6D2
_0801C6C8
	adds r6, #1
	cmp r6, #5
	blo _0801C6B8
	movs r6, #0
	mvns r6, r6
_0801C6D2
	adds r3, r6, #1
	beq _0801C702
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r3, r2
	bne _0801C770
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x20]
	adds r1, r1, r0
	mov r0, ip
	bl sub_803B8CA
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C56E
_0801C702
	ldr r3, [r5, #0x30]
	cmp r3, r2
	beq _0801C70E
	ldr r3, [sp, #4]
	cmp r3, r2
	bne _0801C770
_0801C70E
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _0801C71A
	cmp r0, #6
	bne _0801C71E
_0801C71A
	movs r1, #1
	b _0801C720
_0801C71E
	movs r1, #0
_0801C720
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq _0801C72C
	cmp r0, #6
	bne _0801C730
_0801C72C
	movs r0, #1
	b _0801C732
_0801C730
	movs r0, #0
_0801C732
	adds r0, r1, r0
	cmp r0, #1
	beq _0801C772
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	movs r6, #0
	adds r3, r2, r1
	adds r1, r4, #0
	adds r4, r3, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_803B8D0
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq _0801C762
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C56E
_0801C760
	b _0801C7C0
_0801C762
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r6, [r0, #0xc]
	b _0801C56E
_0801C770
	b _0801C7B4
_0801C772
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r0
	mov r0, ip
	bl sub_803B8CA
	adds r3, r0, #0
	ldr r0, [r5]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r6, r1, r0
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_803B8D4
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq _0801C7A4
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C56E
_0801C7A4
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b _0801C56E
_0801C7B4
	ldr r3, [sp, #8]
	adds r1, #1
	lsrs r3, r3, #0x19
	cmp r3, r1
	bls _0801C7C0
	b _0801C696
_0801C7C0
	mov r0, ip
	ldr r1, [r0, #0x34]
	movs r2, #1
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b _0801C56E

	non_word_aligned_thumb_func_start sub_801C7D2
sub_801C7D2 ;@ 0x0801C7D2
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x29
	lsls r0, r0, #5
	adds r4, r5, r0
	ldrb r1, [r4]
	subs r0, #0x20
	adds r6, r5, r0
	movs r2, #1
	lsls r2, r2, #9
	cmp r1, #0
	ldr r0, [r6, #0x1c]
	sub sp, #0x1c
	beq _0801C800
	lsls r1, r0, #0x16
	bmi _0801C810
	orrs r0, r2
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F1AC
	b _0801C810
_0801C800
	lsls r1, r0, #0x16
	bpl _0801C810
	bics r0, r2
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F1AC
_0801C810
	ldrb r0, [r4, #1]
	movs r1, #1
	lsls r1, r1, #0xa
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq _0801C82E
	lsls r2, r0, #0x15
	bmi _0801C83E
	orrs r0, r1
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F23C
	b _0801C83E
_0801C82E
	lsls r2, r0, #0x15
	bpl _0801C83E
	bics r0, r1
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F23C
_0801C83E
	ldrb r0, [r4, #2]
	movs r1, #1
	lsls r1, r1, #0xb
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq _0801C854
	lsls r2, r0, #0x14
	bmi _0801C85C
	orrs r0, r1
	str r0, [r6, #0x1c]
	b _0801C85C
_0801C854
	lsls r2, r0, #0x14
	bpl _0801C85C
	bics r0, r1
	str r0, [r6, #0x1c]
_0801C85C
	ldr r0, [r6, #0x1c]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801C94E
_0801C866
	lsls r0, r7, #2
	adds r0, r0, r5
	ldr r4, [r0, #0x20]
	cmp r7, #0
	beq _0801C898
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _0801C898
	movs r0, #0x94
	ldr r0, [r0, r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1f
	bne _0801C898
	ldr r0, _0801CB08 ;@ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0801C97E
_0801C898
	ldrh r0, [r4, #4]
	cmp r0, #0x10
	beq _0801C980
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r7, #0
	adds r0, r5, #0
	bl sub_801C4A4
	adds r2, r4, #0
	adds r2, #0x80
	str r2, [sp, #0x18]
	ldr r1, [r2, #4]
	movs r3, #0xff
	lsls r0, r1, #0x18
	lsls r3, r3, #8
	bics r1, r3
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [r2, #4]
	ldr r0, _0801CB0C ;@ =gUnknown_03003450
	ldr r0, [r0]
	ldr r1, [r4, #0x58]
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	movs r2, #0x13
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x20]
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x54]
	ldr r2, [r2, #4]
	lsls r3, r2, #5
	lsrs r3, r3, #0x1d
	asrs r1, r3
	str r1, [sp, #4]
	ldr r1, [r4, #0x5c]
	lsls r2, r2, #2
	asrs r3, r1, #0x1f
	lsrs r3, r3, #0x10
	adds r1, r3, r1
	asrs r1, r1, #0x10
	lsrs r2, r2, #0x1d
	asrs r1, r2
	str r1, [sp, #8]
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	lsls r0, r0, #0x1f
	bpl _0801C916
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0xc]
	bl sub_803C04C
	str r1, [sp, #4]
_0801C916
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x1e
	bpl _0801C928
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldrh r0, [r0, #0xe]
	bl sub_803C04C
	str r1, [sp, #8]
_0801C928
	movs r2, #1
	movs r1, #0
	ldr r0, [sp, #0x10]
	bl sub_8001B80
	ldr r1, [r0]
	movs r2, #0xff
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	adds r2, #1
	cmp r1, r2
	ldr r0, [r0, #0x10]
	bhi _0801C95A
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	b _0801C950
_0801C94E
	b _0801C9F8
_0801C950
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	ldrb r0, [r0, r1]
	b _0801C970
_0801C95A
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	lsls r1, r1, #1
	ldrh r0, [r0, r1]
_0801C970
	ldr r2, [sp, #0x18]
	lsls r0, r0, #0x18
	ldr r1, [r2, #4]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	b _0801C982
_0801C97E
	b _0801C9D2
_0801C980
	b _0801C9AC
_0801C982
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b _0801C9EA
_0801C9AC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b _0801C9EA
_0801C9D2
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq _0801C9EA
	ldr r1, _0801CB10 ;@ =gUnknown_03003478
	movs r0, #8
	ldr r1, [r1]
	ands r1, r0
	beq _0801C9EA
	adds r0, r4, #0
	bl sub_801F65C
_0801C9EA
	ldr r0, [r6, #0x1c]
	adds r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r7
	bls _0801C9F8
	b _0801C866
_0801C9F8
	adds r0, r5, #0
	bl sub_801C352
	adds r0, r5, #0
	bl sub_801C210
	adds r0, r5, #0
	bl sub_801BEB6
	ldr r0, [r5, #0x20]
	bl sub_802222C
	adds r0, r5, #0
	bl sub_801B332
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CA1E
sub_801CA1E ;@ 0x0801CA1E
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r2, r0
	ldm r1!, {r6, r7}
	ldr r0, [r0, #0x1c]
	movs r1, #0
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x19
	sub sp, #0xc
	beq _0801CAAE
_0801CA36
	lsls r0, r1, #2
	adds r4, r0, r2
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #4]
	cmp r5, #0xa
	bne _0801CAB6
	movs r5, #0xac
	ldr r5, [r5, r0]
	lsls r5, r5, #5
	lsrs r5, r5, #0x17
	cmp r5, #0x2c
	bne _0801CAB6
	movs r1, #0x2c
	bl sub_80293D0
	ldr r0, [r4, #0x20]
	ldr r2, _0801CB14 ;@ =0xFFFF000F
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r3, #0
	ands r1, r2
	movs r2, #0x33
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	str r3, [r0, #0x1c]
	movs r2, #0
	ldr r0, _0801CB0C ;@ =gUnknown_03003450
	str r2, [sp]
	ldr r0, [r0]
	movs r1, #0
	bl sub_803FD5C
	ldr r5, [r4, #0x20]
	cmp r6, #0
	str r6, [r5, #0x58]
	str r7, [r5, #0x5c]
	bne _0801CA9E
	cmp r7, #0
	bne _0801CA9E
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
_0801CA9E
	ldr r0, [r4, #0x20]
	movs r2, #1
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	lsls r2, r2, #0xb
	bics r1, r2
	orrs r1, r2
	str r1, [r0, #0x14]
_0801CAAE
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801CAB6
	adds r1, #1
	lsrs r0, r3, #0x19
	cmp r0, r1
	bhi _0801CA36
	b _0801CAAE

	thumb_func_start sub_801CAC0
sub_801CAC0 ;@ 0x0801CAC0
	movs r2, #5
	lsls r2, r2, #8
	adds r2, r0, r2
	push {r4, r5, r6}
	ldr r3, [r2, #0x1c]
	movs r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq _0801CB04
	movs r3, #1
	lsls r3, r3, #0xb
	movs r4, #0
_0801CAD8
	lsls r5, r1, #2
	adds r5, r5, r0
	ldr r5, [r5, #0x20]
	ldrh r6, [r5, #4]
	cmp r6, #0xa
	bne _0801CAF8
	adds r5, #0x80
	ldr r6, [r5, #0x2c]
	lsls r6, r6, #5
	lsrs r6, r6, #0x17
	cmp r6, #0x2c
	bne _0801CAF8
	ldr r6, [r5, #0x14]
	bics r6, r3
	orrs r6, r4
	str r6, [r5, #0x14]
_0801CAF8
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi _0801CAD8
_0801CB04
	pop {r4, r5, r6}
	bx lr
	ALIGN
_0801CB08 DCDU gUnknown_03003454
_0801CB0C DCDU gUnknown_03003450
_0801CB10 DCDU gUnknown_03003478
_0801CB14 DCDU 0xFFFF000F

	thumb_func_start sub_801CB18
sub_801CB18 ;@ 0x0801CB18
	adds r3, r0, #0
	adds r3, #0xff
	adds r3, #0x81
	push {r4, r5, r6, r7}
	ldr r0, [r3, #0x30]
	lsls r4, r1, #1
	ldrh r5, [r0, r4]
	adds r4, r1, r2
	adds r6, r4, #0
	subs r4, #1
	cmp r4, r1
	bls _0801CB40
_0801CB30
	ldr r0, [r3, #0x30]
	lsls r2, r1, #1
	adds r7, r0, r2
	ldrh r7, [r7, #2]
	adds r1, #1
	cmp r4, r1
	strh r7, [r0, r2]
	bhi _0801CB30
_0801CB40
	ldr r0, [r3, #0x30]
	lsls r1, r6, #1
	adds r0, r0, r1
	subs r0, #0x20
	strh r5, [r0, #0x1e]
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_801CB4E
sub_801CB4E ;@ 0x0801CB4E
	push {r3, r4, r5, lr}
	ldr r5, _0801CCE0 ;@ =gUnknown_03003450
	adds r4, r0, #0
	ldr r0, [r5]
	bl sub_8001C22
	ldr r0, [r5]
	bl sub_800202A
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x17
	bpl _0801CBA4
	ldr r0, _0801CCE4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0xf
	bics r0, r1
	bne _0801CBA4
	adds r3, r4, #0
	adds r3, #0xff
	adds r3, #0x81
	ldr r0, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0xf9
	ldrh r4, [r0, r1]
	movs r0, #0xfc
_0801CB88
	ldr r1, [r3, #0x30]
	lsls r2, r0, #1
	adds r5, r1, r2
	ldrh r5, [r5, #2]
	adds r0, #1
	cmp r0, #0xff
	strh r5, [r1, r2]
	blo _0801CB88
	movs r1, #1
	ldr r0, [r3, #0x30]
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r0, #0x20
	strh r4, [r0, #0x1e]
_0801CBA4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CBAA
sub_801CBAA ;@ 0x0801CBAA
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r7, r1, #0
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CBD8
_0801CBC0
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	adds r1, r7, #0
	bl sub_801F640
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CBC0
_0801CBD8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CBDE
sub_801CBDE ;@ 0x0801CBDE
	push {r4, r5, r6, r7}
	movs r3, #5
	lsls r3, r3, #8
	adds r5, r0, r3
	ldr r3, [r5, #0x1c]
	movs r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq _0801CC38
	ldr r3, _0801CCE8 ;@ =gUnknown_03003454
	movs r7, #2
	ldr r4, [r3]
_0801CBF6
	lsls r3, r2, #2
	adds r3, r3, r0
	ldr r3, [r3, #0x20]
	ldr r3, [r3, #0x7c]
	lsls r3, r3, #8
	lsrs r3, r3, #0x18
	cmp r1, #0
	beq _0801CC18
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r3, r3, r6
	ldrh r6, [r3, #0x18]
	orrs r6, r7
	strh r6, [r3, #0x18]
	b _0801CC28
_0801CC18
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r6, r3, r6
	ldrh r3, [r6, #0x18]
	bics r3, r7
	strh r3, [r6, #0x18]
_0801CC28
	ldr r3, [r5, #0x1c]
	adds r2, #1
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	lsrs r2, r2, #0x18
	cmp r3, r2
	bhi _0801CBF6
_0801CC38
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_801CC3C
sub_801CC3C ;@ 0x0801CC3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CC6C
_0801CC50
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CC50
_0801CC6C
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CC72
sub_801CC72 ;@ 0x0801CC72
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CCA2
_0801CC86
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CC86
_0801CCA2
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801CCA8
sub_801CCA8 ;@ 0x0801CCA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801CCD8
_0801CCBC
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi _0801CCBC
_0801CCD8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0801CCE0 DCDU gUnknown_03003450
_0801CCE4 DCDU gUnknown_03003E98
_0801CCE8 DCDU gUnknown_03003454

	thumb_func_start sub_801CCEC
sub_801CCEC ;@ 0x0801CCEC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0801D0D4 ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r6, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0801CD0E
	bl sub_801810E
	b _0801CD12
_0801CD0E
	bl _080180BE
_0801CD12
	adds r1, r6, #0
	ldr r4, _0801D0D8 ;@ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0x11
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0x39
	ldr r0, [r4]
	bl sub_8000DE6
	movs r5, #0
_0801CD3E
	lsls r0, r5, #2
	adds r1, r0, r6
	adds r4, r1, #0
	ldr r7, _0801D0D8 ;@ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0x21
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x15
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x2d
	ldr r0, [r7]
	bl sub_8000DE6
	movs r4, #0
	lsls r0, r5, #3
	adds r7, r0, r6
_0801CD6E
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _0801D0D8 ;@ =gUnknown_03003448
	adds r1, #0xf8
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0801CD6E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801CD3E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CD96
sub_801CD96 ;@ 0x0801CD96
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r6, r5, r0
	ldrb r0, [r6, #0xd]
	cmp r1, #0
	sub sp, #0xc
	bge _0801CDB2
	adds r0, #2
	bl sub_8040640
	strb r0, [r6, #0xd]
	b _0801CDBE
_0801CDB2
	cmp r1, #0
	ble _0801CDBE
	adds r0, #1
	bl sub_8040640
	strb r0, [r6, #0xd]
_0801CDBE
	movs r4, #0
_0801CDC0
	ldrb r0, [r6, #0xd]
	ldr r7, _0801D0DC ;@ =0x00000CED
	cmp r0, r4
	bne _0801CDCA
	subs r7, #2
_0801CDCA
	lsls r0, r4, #3
	adds r0, r0, r5
	adds r0, #0xc0
	str r0, [sp, #8]
	ldr r1, [r0, #0x38]
	ldr r0, _0801D0E0 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0801CE04
	ldr r0, [sp, #8]
	adds r1, r7, #0
	ldr r0, [r0, #0x38]
	bl sub_800065C
	ldr r0, [sp, #8]
	adds r1, r7, #1
	ldr r0, [r0, #0x3c]
	bl sub_800065C
_0801CE04
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0801CDC0
	ldrb r0, [r6, #0xd]
	movs r1, #5
	adds r4, r5, #0
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #4
	add r3, sp, #0
	strh r1, [r3, #4]
	adds r0, #2
	adds r4, #0xff
	adds r4, #1
	strh r0, [r3, #6]
	ldr r0, [r4, #0x38]
	add r1, sp, #4
	bl sub_8040034
	ldrb r0, [r6, #0xd]
	movs r1, #0x13
	lsls r1, r1, #7
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	adds r1, r5, #0
	adds r1, #8
	cmp r0, #0
	beq _0801CE50
	movs r3, #2
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _0801CE5A
_0801CE50
	movs r3, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_0801CE5A
	ldr r0, _0801D0E0 ;@ =gUnknown_03003EA0
	ldr r7, [r4, #0x10]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0801CE76
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0801CE76
	lsls r0, r1, #0x10
	ldrb r1, [r6, #0xd]
	lsrs r0, r0, #0x10
	adds r2, r1, r5
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r1, r2, r1
	ldrb r1, [r1, #0xc]
	ldr r2, _0801D0E4 ;@ =gUnknown_08050716
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	beq _0801CE96
	ldr r0, [r4, #0x10]
	bl sub_800065C
_0801CE96
	ldr r0, [r4, #0x10]
	movs r3, #0x13
	ldr r1, [r0]
	lsls r3, r3, #7
	lsls r2, r1, #0x1f
	ldrb r1, [r6, #0xd]
	lsrs r2, r2, #0x1f
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, r1, r3
	ldr r1, [r1, #0x30]
	cmp r2, r1
	beq _0801CEB4
	bl sub_80401E4
_0801CEB4
	ldr r0, _0801D0D4 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CEC6
sub_801CEC6 ;@ 0x0801CEC6
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r5, r0
	sub sp, #0x5c
	str r0, [sp, #0x58]
	movs r4, #0
	strb r4, [r0, #0xc]
	ldr r0, [sp, #0x58]
	strb r4, [r0, #0xd]
	str r4, [r5]
	str r4, [r5, #4]
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl sub_800E71C
	ldr r0, _0801D0E8 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801D0EC ;@ =gUnknown_03003EA8
	add r1, pc, #0x1F0 ;@ =_0801D0F0
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, _0801D0FC ;@ =gUnknown_03003450
	add r1, sp, #4
	ldr r0, [r0]
	bl sub_800D9E0
	ldr r0, _0801D100 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	ldr r0, _0801D0FC ;@ =gUnknown_03003450
	movs r1, #0
	ldr r0, [r0]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	movs r0, #0x70
	str r0, [sp, #4]
	movs r2, #2
	adds r0, r5, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp, #0xc]
	str r2, [sp]
	movs r2, #0
	adds r0, #0x3d
	movs r1, #1
	movs r3, #0x78
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r6, #0xff
	adds r3, r6, #0
	movs r2, #0
	movs r1, #2
	adds r0, r4, #0
	bl sub_80138E2
	movs r4, #0
_0801CF6E
	ldr r0, [sp, #0x58]
	ldr r1, _0801D0DC ;@ =0x00000CED
	ldrb r0, [r0, #0xd]
	cmp r0, r4
	bne _0801CF7A
	subs r1, #2
_0801CF7A
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	str r1, [sp, #0x30]
	str r0, [sp, #0x50]
	adds r0, #5
	str r0, [sp, #0x54]
	lsls r0, r4, #3
	movs r6, #0
	adds r1, r0, r5
	str r1, [sp, #0x4c]
_0801CF90
	ldr r7, _0801D0D8 ;@ =gUnknown_03003448
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, [sp, #0x4c]
	lsls r2, r6, #2
	adds r7, r1, r2
	adds r7, #0xc0
	str r0, [r7, #0x38]
	ldr r1, [sp, #0x30]
	adds r1, r1, r6
	bl sub_800065C
	lsls r1, r6, #6
	adds r1, #5
	add r3, sp, #0
	ldr r0, [sp, #0x54]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r7, #0x38]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #5
	ldr r0, [r7, #0x38]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x38]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _0801CF90
	ldr r7, _0801D0D8 ;@ =gUnknown_03003448
	ldr r0, [r7]
	bl sub_800116A
	lsls r1, r4, #2
	adds r6, r1, r5
	str r6, [sp, #0x44]
	adds r6, #0xff
	str r1, [sp, #0x48]
	adds r6, #1
	str r0, [r6, #0x20]
	ldr r1, _0801D104 ;@ =0x000008A4
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xf
	movs r1, #0x21
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x20]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x20]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x20]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, _0801D108 ;@ =0x00000C9D
	str r0, [r6, #0x14]
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xe
	str r0, [sp, #0x40]
	movs r1, #0x3a
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x14]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x14]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x14]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, _0801D10C ;@ =0x00000C8B
	str r0, [r6, #0x2c]
	bl sub_800065C
	movs r1, #0x58
	add r3, sp, #0
	ldr r0, [sp, #0x40]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x2c]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x2c]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x2c]
	bl sub_80401E4
	ldr r0, _0801D110 ;@ =gUnknown_03003D28
	strb r4, [r0]
	bl sub_802383A
	ldr r0, _0801D114 ;@ =gUnknown_03003D2C
	movs r3, #0x9b
	ldr r1, [r0]
	movs r0, #0x90
	ldrb r0, [r0, r1]
	lsls r3, r3, #4
	adds r2, r5, r4
	adds r2, r2, r3
	strb r0, [r2, #0xc]
	ldr r1, [r1]
	movs r0, #1
	cmp r1, #0
	bne _0801D0A0
	movs r0, #0
_0801D0A0
	movs r1, #0x13
	ldr r6, [sp, #0x44]
	lsls r1, r1, #7
	adds r1, r6, r1
	str r1, [sp, #0x3c]
	str r0, [r1, #0x30]
	movs r0, #8
	str r0, [sp, #4]
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r2, [sp, #0x50]
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r1, #0xa9
	adds r2, #0xa
	lsls r1, r1, #2
	adds r6, r0, r1
	movs r3, #0x10
	str r2, [sp]
	str r0, [sp, #0x38]
	b _0801D118
	ALIGN
_0801D0D4 DCDU gUnknown_0300345C
_0801D0D8 DCDU gUnknown_03003448
_0801D0DC DCDU 0x00000CED
_0801D0E0 DCDU gUnknown_03003EA0
_0801D0E4 DCDU gUnknown_08050716
_0801D0E8 DCDU gUnknown_03003468
_0801D0EC DCDU gUnknown_03003EA8
_0801D0F0 DCDU 0x654D6742
_0801D0F4 DCDU 0x6153756E
_0801D0F8 DCDU 0x00006576
_0801D0FC DCDU gUnknown_03003450
_0801D100 DCDU gUnknown_03003E98
_0801D104 DCDU 0x000008A4
_0801D108 DCDU 0x00000C9D
_0801D10C DCDU 0x00000C8B
_0801D110 DCDU gUnknown_03003D28
_0801D114 DCDU gUnknown_03003D2C
_0801D118
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801D4F4 ;@ =gUnknown_08050FC0
	ldr r0, [sp, #0x48]
	movs r2, #0
	ldr r1, [r1, r0]
	adds r0, r6, #0
	bl _080137F8
	movs r0, #0xff
	adds r0, #0x69
	ldr r1, _0801D4F8 ;@ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x50]
	muls r0, r4
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r0, r5
	ldr r0, _0801D4FC ;@ =0x00000574
	adds r2, #0x10
	adds r7, r2, #0
	str r2, [sp]
	str r1, [sp, #0x34]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x31
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0801D500 ;@ =gUnknown_03003D2C
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	adds r2, r1, #0
	add r1, pc, #0x388 ;@ =_0801D504
	adds r0, r6, #0
	bl sub_801390A
	ldr r1, _0801D4F8 ;@ =0x0000FFFF
	ldr r0, _0801D508 ;@ =0x000005EC
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	movs r2, #0xff
	str r2, [sp, #0xc]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x4a
	adds r0, r6, #0
	str r7, [sp]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0801D500 ;@ =gUnknown_03003D2C
	add r1, pc, #0x360 ;@ =_0801D50C
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r2, [r0, #2]
	adds r0, r6, #0
	bl sub_801390A
	ldr r1, _0801D4F8 ;@ =0x0000FFFF
	ldr r0, _0801D514 ;@ =0x00000664
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	movs r2, #0xff
	str r2, [sp, #0xc]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x69
	adds r0, r6, #0
	str r7, [sp]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0801D500 ;@ =gUnknown_03003D2C
	ldr r0, [r0]
	ldr r7, [r0]
	adds r0, r7, #0
	bl sub_80406C4
	adds r0, r1, #0
	bl sub_80406C4
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	bl sub_8040660
	adds r2, r1, #0
	add r1, pc, #0x31C ;@ =_0801D518
	adds r0, r6, #0
	ldr r3, [sp, #0x2c]
	bl sub_801390A
	movs r2, #4
	str r2, [sp, #0xc]
	movs r1, #0x10
	movs r0, #0x80
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [sp, #0x50]
	ldr r1, _0801D524 ;@ =0x0000040C
	ldr r0, [sp, #0x38]
	adds r2, #0x21
	str r2, [sp]
	adds r6, r0, r1
	movs r1, #0
	movs r2, #0
	movs r3, #5
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, [sp, #0x3c]
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _0801D24E
	ldr r0, _0801D500 ;@ =gUnknown_03003D2C
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r1, #0x78
	adds r0, r6, #0
	bl sub_80138E2
	b _0801D25A
_0801D24E
	movs r3, #0xff
	movs r2, #0
	movs r1, #0x77
	adds r0, r6, #0
	bl sub_80138E2
_0801D25A
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	bhs _0801D266
	b _0801CF6E
_0801D266
	ldr r0, [sp, #0x58]
	movs r4, #0x13
	ldrb r0, [r0, #0xd]
	lsls r4, r4, #7
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r4
	ldr r0, [r0, #0x30]
	adds r1, #8
	cmp r0, #0
	beq _0801D28A
	movs r3, #2
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _0801D294
_0801D28A
	movs r3, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_0801D294
	ldr r0, _0801D528 ;@ =gUnknown_03003D28
	movs r3, #0
	strb r3, [r0]
	bl sub_802383A
	ldr r7, _0801D52C ;@ =gUnknown_03003448
	ldr r0, [r7]
	bl sub_800116A
	adds r6, r5, #0
	adds r6, #0xff
	adds r6, #1
	movs r3, #0x9b
	lsls r3, r3, #4
	adds r1, r5, r3
	str r0, [r6, #0x10]
	ldrb r1, [r1, #0xc]
	ldr r2, _0801D530 ;@ =gUnknown_08050716
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0x8f
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	movs r0, #0x3c
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x10]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #5
	ldr r0, [r6, #0x10]
	bl sub_80401C0
	adds r0, r5, r4
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0801D2EA
	movs r1, #1
	ldr r0, [r6, #0x10]
	bl sub_80401E4
_0801D2EA
	ldr r0, [r7]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xff
	adds r1, #0xf0
	str r0, [r6, #0x38]
	bl sub_80007A0
	ldr r0, [sp, #0x58]
	ldrb r0, [r0, #0xd]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #4
	adds r0, #2
	movs r1, #5
	add r3, sp, #0
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x38]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #3
	ldr r0, [r6, #0x38]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x38]
	bl sub_80401E4
	ldr r0, [r6, #0x38]
	bl sub_8000914
	ldr r4, _0801D534 ;@ =gUnknown_03003460
	ldr r0, [r4]
	cmp r0, #0
	beq _0801D354
	bl sub_800B72A
	cmp r0, #0
	beq _0801D348
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq _0801D354
_0801D348
	ldr r0, _0801D538 ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_0801D354
	bl sub_8018070
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801D360
sub_801D360 ;@ 0x0801D360
	push {r4, r5, r6, r7, lr}
	ldr r3, _0801D53C ;@ =0xFFFFF634
	ldr r4, _0801D540 ;@ =sub_80143E0
	add sp, r3
	add r5, sp, #4
	adds r1, r5, #0
	adds r1, #0xf8
	adds r0, r5, #0
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #8
	bl sub_803C3A4
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x3d
	adds r7, r0, #0
	bl sub_80143E0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0xb5
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _0801D524 ;@ =0x0000040C
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	str r1, [r3, #0x48]
	adds r0, r6, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _0801D4FC ;@ =0x00000574
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	ldr r0, [r3, #0x48]
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _0801D544 ;@ =0x000009AC
	movs r2, #0x78
	adds r1, r5, r0
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_803C3A4
	adds r0, r5, #0
	bl sub_801CEC6
	movs r0, #0x4d
	lsls r0, r0, #5
	ldr r6, _0801D538 ;@ =gUnknown_0300345C
	adds r4, r5, r0
_0801D3E4
	ldr r0, _0801D548 ;@ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0801D3F2
	ldrh r1, [r0, #6]
_0801D3F2
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x19
	bpl _0801D406
	movs r1, #0
	mvns r1, r1
	adds r0, r5, #0
	bl sub_801CD96
	b _0801D456
_0801D406
	lsls r1, r0, #0x18
	bpl _0801D414
	movs r1, #1
	adds r0, r5, #0
	bl sub_801CD96
	b _0801D456
_0801D414
	lsls r1, r0, #0x1e
	bpl _0801D424
	ldr r0, [r6]
	bl sub_8028C2E
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0801D456
_0801D424
	lsls r0, r0, #0x1f
	bpl _0801D456
	ldrb r0, [r4, #0xd]
	movs r2, #0x13
	lsls r2, r2, #7
	lsls r1, r0, #2
	adds r1, r1, r5
	adds r1, r1, r2
	ldr r1, [r1, #0x30]
	cmp r1, #0
	beq _0801D44E
	ldr r1, _0801D528 ;@ =gUnknown_03003D28
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, [r6]
	bl sub_8028C2E
	bl sub_802383A
	b _0801D456
_0801D44E
	ldr r0, [r6]
	adds r0, #0x60
	bl sub_8028C2E
_0801D456
	bl sub_800EF2A
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0801D3E4
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0801D4F2
	cmp r0, #4
	bne _0801D470
	movs r0, #0x10
	bl sub_8018386
_0801D470
	adds r0, r5, #0
	bl sub_801CCEC
	ldr r0, _0801D550 ;@ =0x000004FC
	ldr r4, _0801D54C ;@ =sub_8014436
	adds r1, r5, r0
	ldr r0, _0801D554 ;@ =0x00000934
	movs r2, #0x77
	mvns r2, r2
	adds r6, r1, #0
	adds r0, r5, r0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r0, #0xe5
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	str r1, [r3, #0x44]
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r0, #0x8b
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	ldr r0, [r3, #0x44]
	adds r6, r1, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r2, #0x77
	mvns r2, r2
	adds r1, r7, #0
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r5, #0
	adds r0, #0x80
	bl sub_803C3C8
	ldr r3, _0801D558 ;@ =0x000009CC
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801D4F2
	b _0801D55C
	ALIGN
_0801D4F4 DCDU gUnknown_08050FC0
_0801D4F8 DCDU 0x0000FFFF
_0801D4FC DCDU 0x00000574
_0801D500 DCDU gUnknown_03003D2C
_0801D504 DCDU 0x00006925
_0801D508 DCDU 0x000005EC
_0801D50C DCDU 0x69323025
_0801D510 DCDU 0x00000000
_0801D514 DCDU 0x00000664
_0801D518 DCDU 0x69323025
_0801D51C DCDU 0x3230253A
_0801D520 DCDU 0x00000069
_0801D524 DCDU 0x0000040C
_0801D528 DCDU gUnknown_03003D28
_0801D52C DCDU gUnknown_03003448
_0801D530 DCDU gUnknown_08050716
_0801D534 DCDU gUnknown_03003460
_0801D538 DCDU gUnknown_0300345C
_0801D53C DCDU 0xFFFFF634
_0801D540 DCDU sub_80143E0
_0801D544 DCDU 0x000009AC
_0801D548 DCDU gUnknown_03003444
_0801D54C DCDU sub_8014436
_0801D550 DCDU 0x000004FC
_0801D554 DCDU 0x00000934
_0801D558 DCDU 0x000009CC
_0801D55C
	movs r0, #2
	bl sub_8018386
	b _0801D470

	thumb_func_start sub_801D564
sub_801D564 ;@ 0x0801D564
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne _0801D57C
	movs r0, #0xa0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0801D57C
	adds r0, r4, #0
_0801D576
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0801D57C
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _0801D92C ;@ =_0803EB40
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	movs r0, #1
	lsls r0, r0, #0x10
	str r1, [r4, #0x30]
	str r0, [r4, #0x70]
	str r1, [r4, #0x34]
	str r1, [r4, #0x74]
	adds r0, r4, #0
	adds r0, #0x70
	str r1, [r4, #0x78]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	ldr r0, [r4, #0x7c]
	movs r2, #0xff
	lsls r2, r2, #0x10
	bics r0, r2
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x18
	movs r3, #7
	lsls r3, r3, #0x1c
	adds r0, r0, r2
	bics r0, r3
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r3, [r0]
	movs r5, #2
	lsrs r3, r3, #1
	lsls r3, r3, #1
	bics r3, r5
	movs r5, #4
	movs r6, #0xff
	lsls r6, r6, #3
	orrs r3, r5
	bics r3, r6
	ldr r6, _0801D930 ;@ =0xFF8007FF
	ands r3, r6
	lsrs r6, r2, #1
	bics r3, r6
	bics r3, r2
	str r3, [r0]
	ldr r2, [r0, #4]
	movs r3, #0xff
	lsrs r2, r2, #8
	lsls r2, r2, #8
	lsls r3, r3, #8
	bics r2, r3
	str r2, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _0801D934 ;@ =0xFF8003FF
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	ands r2, r3
	str r2, [r0, #8]
	ldr r2, [r0, #0xc]
	lsls r3, r5, #0xa
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	orrs r2, r3
	lsls r3, r3, #1
	bics r2, r3
	lsls r3, r3, #1
	orrs r2, r3
	movs r3, #0xf
	lsls r3, r3, #0xf
	bics r2, r3
	ldr r3, _0801D938 ;@ =0x8007FFFF
	ands r2, r3
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x10]
	movs r3, #0x20
	lsrs r2, r2, #5
	lsls r2, r2, #5
	adds r2, #5
	bics r2, r3
	ldr r3, _0801D93C ;@ =0xFFF007FF
	ands r2, r3
	ldr r3, _0801D940 ;@ =0xE00FFFFF
	ands r2, r3
	str r2, [r0, #0x10]
	ldr r2, [r0, #0x14]
	lsls r3, r5, #9
	lsrs r2, r2, #0xb
	lsls r2, r2, #0xb
	bics r2, r3
	movs r3, #7
	lsls r3, r3, #0xc
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	lsls r3, r5, #0x10
	orrs r2, r3
	str r2, [r0, #0x14]
	adds r2, r4, #0
	adds r2, #0x90
	mvns r3, r1
	strb r3, [r2, #7]
	strb r3, [r2, #8]
	strb r1, [r2, #9]
	strb r1, [r2, #0xa]
	str r5, [r0, #0x1c]
	str r1, [r4, #0x58]
	str r1, [r4, #0x5c]
	str r1, [r4, #0x68]
	str r1, [r4, #0x6c]
	movs r3, #0
_0801D66A
	lsls r2, r1, #2
	adds r2, r2, r4
	adds r1, #1
	cmp r1, #5
	str r3, [r2, #0x38]
	blo _0801D66A
	ldr r1, _0801D944 ;@ =gUnknown_03003458
	ldr r2, [r1]
	movs r1, #5
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r5, [r1, #0x1c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r2, r5, r2
	str r4, [r2, #0x20]
	ldr r2, [r1, #0x1c]
	movs r5, #0xfe
	adds r6, r2, #0
	adds r2, #2
	ands r2, r5
	bics r6, r5
	orrs r2, r6
	str r2, [r1, #0x1c]
	ldr r1, _0801D948 ;@ =0x0000FFFF
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x22]
	strh r3, [r4, #0x24]
	strh r1, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #8
	movs r3, #0
	movs r2, #0
	stm r1!, {r2, r3}
	stm r1!, {r2, r3}
	stm r1!, {r2, r3}
	adds r1, #0x30
	stm r1!, {r2, r3}
	ldr r1, [r0, #4]
	ldr r2, _0801D94C ;@ =0xF000FFFF
	ands r1, r2
	str r1, [r0, #4]
	adds r0, r4, #0
	b _0801D576

	thumb_func_start sub_801D6C4
sub_801D6C4 ;@ 0x0801D6C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x2c]
	movs r5, #0
	cmp r0, #0
	ldr r6, _0801D950 ;@ =gUnknown_03003EB8
	beq _0801D6DE
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x2c]
_0801D6DE
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0801D6F0
	adds r1, r4, #0
	adds r1, #0x30
	ldr r0, [r6]
	bl sub_8000DE6
	str r5, [r4, #0x30]
_0801D6F0
	str r5, [r4, #0x34]
	movs r5, #0
_0801D6F4
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801D708
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
_0801D708
	adds r5, #1
	cmp r5, #5
	blo _0801D6F4
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801D714
sub_801D714 ;@ 0x0801D714
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801D92C ;@ =_0803EB40
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq _0801D754
	ldr r1, _0801D954 ;@ =gUnknown_03003454
	lsrs r6, r0, #0x18
	ldr r5, [r1]
	lsls r0, r6, #1
	adds r1, r0, r5
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_8017862
	lsls r1, r6, #2
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r1, r5
	movs r0, #0
	adds r1, r1, r2
	str r0, [r1, #0x18]
_0801D754
	adds r0, r4, #0
	bl sub_801D6C4
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0801D770
_0801D760
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x18]
	str r1, [r4, #0x28]
	bl sub_803DA18
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0801D760
_0801D770
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r7, #0
	beq _0801D782
	adds r0, r4, #0
	bl sub_803DA18
_0801D782
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801D788
sub_801D788 ;@ 0x0801D788
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r1, #0x14]
	adds r4, r1, #0
	ldr r5, _0801D954 ;@ =gUnknown_03003454
	cmp r0, #1
	bne _0801D87A
	ldr r0, _0801D958 ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r7, #2
	adds r3, r7, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	ldr r0, _0801D958 ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	movs r1, #0
	str r1, [r0, #8]
	str r7, [r0, #4]
	movs r2, #0
	str r2, [sp]
	adds r3, r7, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	ldr r0, _0801D958 ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r7, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl sub_8017A0A
	ldr r0, _0801D958 ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	movs r2, #0
	str r2, [r0, #8]
	str r2, [sp]
	adds r2, r0, #0
	movs r3, #2
	movs r1, #1
	ldr r0, [r5]
	bl sub_8017A0A
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	lsls r6, r1, #0x14
	lsrs r6, r6, #0x14
	lsls r0, r0, #9
	lsrs r7, r0, #0x13
	ldr r0, _0801D958 ;@ =gUnknown_03003E88
	movs r2, #0
	ldrh r5, [r4, #0x10]
	ldr r0, [r0]
	movs r1, #0x10
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [r0, #4]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	strh r7, [r0, #0xc]
	movs r7, #2
	adds r3, r7, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r5, _0801D954 ;@ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r5]
	bl sub_8017A0A
	movs r2, #0
	ldr r0, _0801D958 ;@ =gUnknown_03003E88
	b _0801D87C
_0801D87A
	b _0801D89E
_0801D87C
	ldr r0, [r0]
	movs r1, #4
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r7, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	b _0801D8D2
_0801D89E
	cmp r0, #2
	bne _0801D8C0
	movs r3, #0xfd
	lsls r3, r3, #5
	movs r2, #0
	add r1, pc, #0xB0 ;@ =_0801D95C
	ldr r0, [r5]
	bl sub_803FC68
	str r6, [sp]
	movs r3, #1
	adds r2, r0, #0
	ldrh r1, [r4, #0x10]
	ldr r0, [r5]
	bl sub_8017884
	b _0801D8D2
_0801D8C0
	cmp r0, #3
	bne _0801D8D2
	ldr r1, [r6]
	adds r0, r6, #0
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	adds r1, r4, #0
	bl sub_803B8CC
_0801D8D2
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D8E8
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _0801D8F4
_0801D8E8
	cmp r0, #0
	ble _0801D8F4
	ldrh r0, [r4, #8]
	movs r1, #1
	bl sub_803FEF8
_0801D8F4
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D90A
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _0801D916
_0801D90A
	cmp r0, #0
	ble _0801D916
	ldrh r0, [r4, #0xa]
	movs r1, #1
	bl sub_803FEF8
_0801D916
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D97C
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
	b _0801D988
	ALIGN
_0801D92C DCDU _0803EB40
_0801D930 DCDU 0xFF8007FF
_0801D934 DCDU 0xFF8003FF
_0801D938 DCDU 0x8007FFFF
_0801D93C DCDU 0xFFF007FF
_0801D940 DCDU 0xE00FFFFF
_0801D944 DCDU gUnknown_03003458
_0801D948 DCDU 0x0000FFFF
_0801D94C DCDU 0xF000FFFF
_0801D950 DCDU gUnknown_03003EB8
_0801D954 DCDU gUnknown_03003454
_0801D958 DCDU gUnknown_03003E88
_0801D95C DCDU 0x72616843
_0801D960 DCDU 0x65746361
_0801D964 DCDU 0x72542072
_0801D968 DCDU 0x65676769
_0801D96C DCDU 0x63532072
_0801D970 DCDU 0x74706972
_0801D974 DCDU 0x6F724720
_0801D978 DCDU 0x00007075
_0801D97C
	cmp r0, #0
	ble _0801D988
	ldrh r0, [r4, #0xc]
	movs r1, #1
	bl sub_803FEF8
_0801D988
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801D9A2
	NEGS r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_803FEF8
_0801D99C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801D9A2
	cmp r0, #0
	ble _0801D99C
	ldrh r0, [r4, #0xe]
	movs r1, #1
	bl sub_803FEF8
	b _0801D99C

	thumb_func_start sub_801D9B0
sub_801D9B0 ;@ 0x0801D9B0
	push {r4, r5, r6}
	adds r0, r1, #0
	movs r2, #0
	movs r4, #1
	ldr r5, _0801DCE0 ;@ =gUnknown_03003478
	b _0801DA1E
_0801D9BC
	movs r1, #0
_0801D9BE
	lsls r3, r1, #1
	ldrsh r2, [r0, r3]
	cmp r2, #0
	blt _0801D9E6
	ldrh r2, [r0, r3]
	adds r3, r4, #0
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	lsls r3, r6
	cmp r2, #0
	beq _0801D9DE
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq _0801D9E2
_0801D9DE
	movs r2, #1
	b _0801DA0A
_0801D9E2
	movs r2, #0
	b _0801DA0A
_0801D9E6
	NEGS r2, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	adds r3, r4, #0
	lsls r3, r6
	cmp r2, #0
	beq _0801DA02
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq _0801DA06
_0801DA02
	movs r2, #1
	b _0801DA08
_0801DA06
	movs r2, #0
_0801DA08
	subs r2, r4, r2
_0801DA0A
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	bhs _0801DA18
	cmp r2, #0
	bne _0801D9BE
_0801DA18
	cmp r2, #0
	bne _0801DA1E
	ldr r0, [r0, #0x18]
_0801DA1E
	cmp r0, #0
	beq _0801DA26
	cmp r2, #0
	beq _0801D9BC
_0801DA26
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_801DA2A
sub_801DA2A ;@ 0x0801DA2A
	push {r4, lr}
	ldr r1, [r0, #0x28]
	adds r4, r0, #0
	bl sub_801D9B0
	cmp r0, #0
	beq _0801DA40
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
_0801DA40
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801DA46
sub_801DA46 ;@ 0x0801DA46
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r5, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0801DA6E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0801DA6E
	movs r1, #0
_0801DA70
	lsls r2, r1, #1
	adds r3, r2, r4
	ldrh r6, [r3, #4]
	adds r1, #1
	lsls r1, r1, #0x18
	strh r6, [r0, r2]
	ldrh r3, [r3, #0xc]
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r3, [r2, #8]
	blo _0801DA70
	ldrh r1, [r4, #0x14]
	strh r1, [r0, #0x10]
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0x12]
	ldrh r1, [r4, #0x18]
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801DAA0
sub_801DAA0 ;@ 0x0801DAA0
	push {r4, r5}
	ldr r3, [r1]
	ldrh r1, [r3, #4]
	cmp r1, #0
	beq _0801DAB2
	cmp r1, #1
	bne _0801DAD2
	movs r1, #0
	b _0801DAD6
_0801DAB2
	movs r1, #0
_0801DAB4
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r5, [r4, #6]
	adds r2, r2, r0
	strh r5, [r2, #8]
	ldrh r5, [r2, #0x18]
	cmp r5, #0
	bne _0801DAC8
	ldrh r4, [r4, #6]
	strh r4, [r2, #0x18]
_0801DAC8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	blo _0801DAB4
_0801DAD2
	pop {r4, r5}
	bx lr
_0801DAD6
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r4, [r4, #6]
	adds r1, #1
	lsls r1, r1, #0x18
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r4, [r2, #0x18]
	blo _0801DAD6
	b _0801DAD2

	thumb_func_start sub_801DAEC
sub_801DAEC ;@ 0x0801DAEC
	push {r3, r4, r5, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r1, [r5, #6]
	ldr r0, [r0, #0x2c]
	cmp r1, #0
	beq _0801DB02
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801DB38
_0801DB02
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x18]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1a]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1c]
	ldrh r1, [r5, #4]
	strh r1, [r4, #0x1e]
	bl sub_803F6B4
	ldrh r1, [r5, #4]
	cmp r0, r1
	beq _0801DB24
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
_0801DB24
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801DB38
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0801DB38
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801DB3E
sub_801DB3E ;@ 0x0801DB3E
	push {r4, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r2, [r1, #4]
	adds r4, #0x80
	ldr r0, [r4, #0x10]
	ldr r3, _0801DCE4 ;@ =0xE00FFFFF
	lsls r2, r2, #0x17
	lsrs r2, r2, #3
	ands r0, r3
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r2, [r1, #6]
	asrs r3, r3, #9
	ands r0, r3
	lsls r2, r2, #0x17
	lsrs r2, r2, #0xc
	orrs r0, r2
	str r0, [r4, #0x10]
	ldrh r0, [r1, #8]
	lsls r0, r0, #7
	bl sub_8040594
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x15
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	lsrs r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #0x14]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801DB80
sub_801DB80 ;@ 0x0801DB80
	ldr r1, _0801DCE8 ;@ =gUnknown_03003450
	movs r2, #0x27
	ldr r1, [r1]
	lsls r2, r2, #6
	ldr r0, [r0, #0x2c]
	adds r1, r1, r2
	str r0, [r1, #0xc]
	bx lr

	thumb_func_start sub_801DB90
sub_801DB90 ;@ 0x0801DB90
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #4]
	ldr r3, [r4, #0x58]
	movs r6, #0
	mvns r6, r6
	asrs r1, r3, #0x10
	cmp r0, r1
	beq _0801DBA8
	lsls r1, r0, #0x10
	b _0801DBAA
_0801DBA8
	movs r1, #0
_0801DBAA
	ldrh r0, [r5, #6]
	ldr r2, [r4, #0x5c]
	asrs r7, r2, #0x10
	cmp r0, r7
	beq _0801DBB8
	lsls r0, r0, #0x10
	b _0801DBBA
_0801DBB8
	movs r0, #0
_0801DBBA
	ldrh r5, [r5, #8]
	movs r7, #0
	cmp r5, #2
	bne _0801DC0E
	cmp r1, #0
	beq _0801DC0E
	cmp r0, #0
	beq _0801DC0E
	adds r5, r7, #0
	cmp r3, r1
	blt _0801DBD2
	movs r5, #2
_0801DBD2
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	movs r6, #1
	cmp r2, r0
	blt _0801DBDE
	movs r6, #3
_0801DBDE
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble _0801DBF2
	cmp r2, r0
	bge _0801DBEE
	subs r2, r0, r2
	b _0801DBFC
_0801DBEE
	subs r2, r2, r0
	b _0801DBFC
_0801DBF2
	cmp r3, r1
	bge _0801DBFA
	subs r2, r1, r3
	b _0801DBFC
_0801DBFA
	subs r2, r3, r1
_0801DBFC
	add r0, pc, #0xEC ;@ =_0801DCEC
	ldm r0!, {r0, r1}
	bl sub_803B914
	add r2, pc, #0xEC ;@ =_0801DCF4
	ldm r2!, {r2, r3}
	bl sub_803B940
	b _0801DCB8
_0801DC0E
	cmp r5, #3
	bne _0801DC5E
	cmp r1, #0
	beq _0801DC5E
	cmp r0, #0
	beq _0801DC5E
	movs r6, #1
	cmp r2, r0
	blt _0801DC22
	movs r6, #3
_0801DC22
	lsls r5, r6, #0x18
	asrs r5, r5, #0x18
	adds r6, r7, #0
	cmp r3, r1
	blt _0801DC2E
	movs r6, #2
_0801DC2E
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble _0801DC42
	cmp r2, r0
	bge _0801DC3E
	subs r2, r0, r2
	b _0801DC4C
_0801DC3E
	subs r2, r2, r0
	b _0801DC4C
_0801DC42
	cmp r3, r1
	bge _0801DC4A
	subs r2, r1, r3
	b _0801DC4C
_0801DC4A
	subs r2, r3, r1
_0801DC4C
	add r0, pc, #0x9C ;@ =_0801DCEC
	ldm r0!, {r0, r1}
	bl sub_803B914
	add r2, pc, #0x9C ;@ =_0801DCF4
	ldm r2!, {r2, r3}
	bl sub_803B940
	b _0801DCB8
_0801DC5E
	cmp r1, #0
	beq _0801DC82
	cmp r5, #1
	bne _0801DC82
	cmp r0, #0
	beq _0801DC82
	movs r1, #1
	cmp r2, r0
	blt _0801DC72
	movs r1, #3
_0801DC72
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge _0801DC7E
	subs r0, r0, r2
	b _0801DCB8
_0801DC7E
	subs r0, r2, r0
	b _0801DCB8
_0801DC82
	cmp r1, #0
	beq _0801DC9E
	adds r0, r7, #0
	cmp r3, r1
	blt _0801DC8E
	movs r0, #2
_0801DC8E
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	cmp r3, r1
	bge _0801DC9A
	subs r0, r1, r3
	b _0801DCB8
_0801DC9A
	subs r0, r3, r1
	b _0801DCB8
_0801DC9E
	cmp r0, #0
	beq _0801DCDC
	movs r1, #1
	cmp r2, r0
	blt _0801DCAA
	movs r1, #3
_0801DCAA
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge _0801DCB6
	subs r0, r0, r2
	b _0801DCB8
_0801DCB6
	subs r0, r2, r0
_0801DCB8
	cmp r0, #0
	ble _0801DCDC
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	lsls r2, r5, #0x1c
	lsrs r2, r2, #4
	orrs r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x98
	strb r6, [r1, r4]
	str r0, [r4, #0x78]
	adds r4, #0x80
	str r7, [r4, #0x1c]
_0801DCD6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801DCDC
	str r7, [r4, #0x78]
	b _0801DCD6
	ALIGN
_0801DCE0 DCDU gUnknown_03003478
_0801DCE4 DCDU 0xE00FFFFF
_0801DCE8 DCDU gUnknown_03003450
_0801DCEC DCDU 0x0000B504
_0801DCF0 DCDU 0x00000000
_0801DCF4 DCDU 0x00010000
_0801DCF8 DCDU 0x00000000

	thumb_func_start sub_801DCFC
sub_801DCFC ;@ 0x0801DCFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	beq _0801DD3A
	bl sub_803BE1C
	adds r1, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	bl sub_803C04C
	ldr r0, [r5, #8]
	str r4, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r1, r0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x7c]
	lsrs r1, r1, #0x10
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	ldr r0, _0801DFC8 ;@ =gUnknown_03003454
	movs r3, #1
	ldr r0, [r0]
	bl sub_8017884
_0801DD3A
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_801DD40
sub_801DD40 ;@ 0x0801DD40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r2, [r0]
	subs r2, #0x1c
	cmp r2, #0x11
	bhs _0801DD58
	add r3, pc, #0x10 ;@ =_0801DD60
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_0801DD58
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801DD60
	DCB 0x33, 0x00
_0801DD62
	DCB 0x15, 0x00
_0801DD64
	DCB 0x14, 0x00
_0801DD66
	DCB 0xAE, 0x00
_0801DD68
	DCB 0xB2, 0x00
_0801DD6A
	DCB 0x14, 0x00
_0801DD6C
	DCB 0xC1, 0x00
_0801DD6E
	DCB 0xB9, 0x00
_0801DD70
	DCB 0x14, 0x00
_0801DD72
	DCB 0x14, 0x00
_0801DD74
	DCB 0x14, 0x00
_0801DD76
	DCB 0xE4, 0x00
_0801DD78
	DCB 0x14, 0x00
_0801DD7A
	DCB 0xE8, 0x00
_0801DD7C
	DCB 0xC8, 0x00
_0801DD7E
	DCB 0xEC, 0x00
_0801DD80
	DCB 0xF0, 0x00
loc_801dd82
	b _0801DD58
loc_801dd84
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	beq _0801DD58
	bl sub_803BE1C
	adds r1, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	bl sub_803C04C
	ldr r0, [r5, #8]
	str r4, [sp]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r1, r0
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x7c]
	lsrs r1, r1, #0x10
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	ldr r0, _0801DFC8 ;@ =gUnknown_03003454
	movs r3, #1
	ldr r0, [r0]
	bl sub_8017884
	b _0801DD58
loc_801ddc0
	ldrb r1, [r0, #5]
	movs r2, #0x9c
	lsls r1, r1, #0x10
	str r1, [r4, #0x78]
	movs r1, #0
	str r1, [r2, r4]
	ldrb r1, [r0, #4]
	cmp r1, #0xc
	bhs _0801DD58
	add r3, pc, #0x8 ;@ =_0801DDDC
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0801DDDC
	DCB 0x06
_0801DDDD
	DCB 0x06
_0801DDDE
	DCB 0x06
_0801DDDF
	DCB 0x06
_0801DDE0
	DCB 0x13
_0801DDE1
	DCB 0x1C
_0801DDE2
	DCB 0x28
_0801DDE3
	DCB 0x34
_0801DDE4
	DCB 0x40
_0801DDE5
	DCB 0x49
_0801DDE6
	DCB 0x55
_0801DDE7
	DCB 0x61
loc_801dde8
	ldrb r0, [r0, #4]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0xff
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de02
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #3
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de14
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #2
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de2c
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #3
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de44
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0
	adds r4, #0x90
	strb r0, [r4, #8]
_0801DE5A
	b _0801DD58
loc_801de5c
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #1
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de6e
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de86
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x19
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #1
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801de9e
	movs r1, #0xf
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x18
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	movs r0, #2
	adds r4, #0x90
	strb r0, [r4, #8]
	b _0801DD58
loc_801deb6
	adds r0, r4, #0
	bl sub_801DB90
	b _0801DD58
loc_801debe
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl sub_803B8CC
	b _0801DD58
loc_801decc
	ldr r0, _0801DFCC ;@ =gUnknown_03003450
	movs r2, #0x27
	ldr r0, [r0]
	lsls r2, r2, #6
	ldr r1, [r4, #0x2c]
	adds r0, r0, r2
	str r1, [r0, #0xc]
	b _0801DD58
loc_801dedc
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
	b _0801DD58
loc_801deea
	ldrh r1, [r0, #4]
	adds r4, #0x80
	ldr r2, [r4, #0x10]
	ldr r3, _0801DFD0 ;@ =0xE00FFFFF
	lsls r1, r1, #0x17
	lsrs r1, r1, #3
	ands r2, r3
	orrs r1, r2
	str r1, [r4, #0x10]
	ldrh r2, [r0, #6]
	asrs r3, r3, #9
	ands r1, r3
	lsls r2, r2, #0x17
	lsrs r2, r2, #0xc
	orrs r1, r2
	str r1, [r4, #0x10]
	ldrh r0, [r0, #8]
	lsls r0, r0, #7
	bl sub_8040594
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x15
	lsrs r0, r0, #0xb
	lsls r0, r0, #0xb
	lsrs r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #0x14]
	b _0801DD58
loc_801df22
	adds r0, r4, #0
	bl sub_801DAEC
	b _0801DD58
loc_801df2a
	adds r0, r4, #0
	bl sub_801DAA0
	b _0801DD58
loc_801df32
	adds r0, r4, #0
	bl sub_801DA46
	b _0801DD58
loc_801df3a
	adds r0, r4, #0
	ldr r1, [r4, #0x28]
	bl sub_801D9B0
	cmp r0, #0
	beq _0801DE5A
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
	b _0801DD58

	thumb_func_start sub_801DF50
sub_801DF50 ;@ 0x0801DF50
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	adds r5, r1, #0
	ldrb r0, [r0]
	subs r0, #0x1c
	cmp r0, #0x11
	bhs _0801DFC4
	add r3, pc, #0x4 ;@ =_0801DF68
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0801DF68
	DCB 0x0C
_0801DF69
	DCB 0x08
_0801DF6A
	DCB 0x2D
_0801DF6B
	DCB 0x12
_0801DF6C
	DCB 0x1C
_0801DF6D
	DCB 0x2D
_0801DF6E
	DCB 0x1C
_0801DF6F
	DCB 0x1C
_0801DF70
	DCB 0x2D
_0801DF71
	DCB 0x2D
_0801DF72
	DCB 0x2D
_0801DF73
	DCB 0x1E
_0801DF74
	DCB 0x2D
_0801DF75
	DCB 0x1C
_0801DF76
	DCB 0x1C
_0801DF77
	DCB 0x1C
_0801DF78
	DCB 0x1C, 0x00
loc_801df7a
	movs r0, #1
_0801DF7C
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_801df82
	ldr r1, [r4, #0x78]
	movs r0, #1
	cmp r1, #0
	beq _0801DF7C
	movs r0, #0
	b _0801DF7C
loc_801df8e
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801DB90
	ldr r1, [r4, #0x78]
	movs r0, #1
	cmp r1, #0
	beq _0801DF7C
	movs r0, #0
	b _0801DF7C
loc_801dfa2
	movs r0, #1
	b _0801DF7C
loc_801dfa6
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bne _0801DFB8
	movs r0, #1
	b _0801DF7C
_0801DFB8
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801DAEC
	movs r0, #0
	b _0801DF7C
_0801DFC4
	movs r0, #0
	b _0801DF7C
	ALIGN
_0801DFC8 DCDU gUnknown_03003454
_0801DFCC DCDU gUnknown_03003450
_0801DFD0 DCDU 0xE00FFFFF

	thumb_func_start sub_801DFD4
sub_801DFD4 ;@ 0x0801DFD4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq _0801DFF0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0801DFF0
	movs r1, #1
	bl sub_80401E4
_0801DFF0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x19
	ldr r0, [r4, #0x2c]
	lsls r7, r6, #4
	cmp r0, #0
	beq _0801E0B8
	bl sub_803F6B4
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r0, r1
	str r0, [r4, #0x50]
	ldr r0, _0801E2C4 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
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
	ldr r1, [r4, #0x2c]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x50]
	ldr r2, [r1]
	lsrs r3, r6, #1
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1f
	lsls r2, r2, #0x18
	bics r0, r3
	orrs r2, r0
	str r2, [r4, #0x50]
	ldr r0, [r1]
	bics r2, r6
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r2, r0
	str r2, [r4, #0x50]
	ldrh r0, [r1, #0x28]
	lsls r3, r3, #3
	bics r2, r3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	orrs r2, r0
	str r2, [r4, #0x50]
	ldrh r0, [r1, #0x28]
	bics r2, r3
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	orrs r0, r2
	orrs r0, r7
	str r0, [r4, #0x50]
	ldrb r2, [r1, #5]
	cmp r2, #0x42
	bhi _0801E09C
	lsls r2, r3, #3
	orrs r0, r2
	str r0, [r4, #0x50]
_0801E09C
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0801E0B8
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0801E2C8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0801E0B8
	ldr r5, [r4, #0x30]
	cmp r5, #0
	beq _0801E0EC
	ldr r0, _0801E2C4 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r1, [r4, #0x54]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x30]
	bics r1, r6
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r7
	str r0, [r4, #0x54]
_0801E0EC
	movs r5, #0
_0801E0EE
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801E102
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
_0801E102
	adds r5, #1
	cmp r5, #5
	blo _0801E0EE
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _0801E11A
_0801E10E
	adds r0, r5, #0
	ldr r5, [r5, #0x18]
	bl sub_803DA18
	cmp r5, #0
	bne _0801E10E
_0801E11A
	movs r0, #0
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801E124
sub_801E124 ;@ 0x0801E124
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x50]
	adds r7, r4, #0
	adds r5, r4, #0
	adds r5, #0x80
	adds r7, #0x58
	lsls r0, r0, #2
	cmp r0, #0
	sub sp, #0xc
	bge _0801E20A
	ldr r0, _0801E2C8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x50]
	ldr r6, [r4, #0x2c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r0, r0, #0x1a
	str r0, [sp, #8]
	ldr r0, _0801E2C4 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	ldr r3, _0801E2CC ;@ =0x0010BE20
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #4]
	movs r2, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [sp, #8]
	strb r0, [r6, #3]
	ldr r0, [sp, #8]
	muls r0, r3
	str r0, [r6, #8]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x12
	bpl _0801E1A4
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_803F170
_0801E1A4
	ldr r0, [r4, #0x50]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x2c]
	bl sub_803F2CC
	adds r1, r7, #0
	ldr r0, [r4, #0x2c]
	bl sub_803FF24
	ldr r0, [r5, #0x14]
	movs r6, #1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	lsls r6, r6, #0xe
	cmp r0, #1
	bne _0801E1D6
	movs r1, #0xbf
	ldr r0, [r4, #0x2c]
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b _0801E1F0
_0801E1D6
	cmp r0, #2
	ldr r0, [r4, #0x2c]
	bne _0801E1EA
	movs r1, #0x7f
	bl sub_80401C0
	ldr r0, [r5, #0xc]
	bics r0, r6
	str r0, [r5, #0xc]
	b _0801E1F0
_0801E1EA
	movs r1, #0x82
	bl sub_80401C0
_0801E1F0
	ldr r0, [r4, #0x50]
	lsls r0, r0, #7
	bpl _0801E1FC
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0801E1FC
	ldr r0, [r4, #0x50]
	lsls r0, r0, #6
	bpl _0801E20A
	movs r1, #1
	ldr r0, [r4, #0x2c]
	bl sub_80401E4
_0801E20A
	ldr r0, [r4, #0x54]
	lsls r0, r0, #2
	bpl _0801E284
	ldr r0, _0801E2C8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x54]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x13
	bpl _0801E24C
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_803F170
_0801E24C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r1, #0xbe
	bl sub_80401C0
	adds r1, r7, #0
	ldr r0, [r4, #0x30]
	bl sub_803FF24
	ldr r0, [r4, #0x54]
	lsls r0, r0, #6
	bpl _0801E284
	movs r1, #1
	ldr r0, [r4, #0x30]
	bl sub_80401E4
_0801E284
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x3c]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r5, #0
_0801E292
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801E2A8
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl sub_803B8CC
_0801E2A8
	adds r5, #1
	cmp r5, #5
	blo _0801E292
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801E2C4 DCDU gUnknown_03003EA0
_0801E2C8 DCDU gUnknown_03003EB8
_0801E2CC DCDU 0x0010BE20

	thumb_func_start sub_801E2D0
sub_801E2D0 ;@ 0x0801E2D0
	movs r0, #0
	bx lr

	thumb_func_start nullsub_48
nullsub_48 ;@ 0x0801E2D4
	bx lr

	non_word_aligned_thumb_func_start sub_801E2D6
sub_801E2D6 ;@ 0x0801E2D6
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_801E2DA
sub_801E2DA ;@ 0x0801E2DA
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0x22
	bhs _0801E2F0
	add r3, pc, #0x10 ;@ =_0801E2F8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0801E2F0
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801E2F8
	DCB 0x25, 0x00
_0801E2FA
	DCB 0x26, 0x00
_0801E2FC
	DCB 0xB0, 0x00
_0801E2FE
	DCB 0x2C, 0x00
_0801E300
	DCB 0x37, 0x00
_0801E302
	DCB 0x65, 0x00
_0801E304
	DCB 0x68, 0x00
_0801E306
	DCB 0x5F, 0x00
_0801E308
	DCB 0x62, 0x00
_0801E30A
	DCB 0x25, 0x00
_0801E30C
	DCB 0x25, 0x00
_0801E30E
	DCB 0x25, 0x00
_0801E310
	DCB 0x25, 0x00
_0801E312
	DCB 0x25, 0x00
_0801E314
	DCB 0x25, 0x00
_0801E316
	DCB 0x25, 0x00
_0801E318
	DCB 0x25, 0x00
_0801E31A
	DCB 0x25, 0x00
_0801E31C
	DCB 0x25, 0x00
_0801E31E
	DCB 0x25, 0x00
_0801E320
	DCB 0x59, 0x00
_0801E322
	DCB 0x5C, 0x00
_0801E324
	DCB 0x7E, 0x00
_0801E326
	DCB 0xA0, 0x00
_0801E328
	DCB 0x25, 0x00
_0801E32A
	DCB 0x25, 0x00
_0801E32C
	DCB 0x6B, 0x00
_0801E32E
	DCB 0x76, 0x00
_0801E330
	DCB 0x7A, 0x00
_0801E332
	DCB 0x43, 0x00
_0801E334
	DCB 0x4E, 0x00
_0801E336
	DCB 0x9A, 0x00
_0801E338
	DCB 0x8A, 0x00
_0801E33A
	DCB 0xBA, 0x00
loc_801e33c
	b _0801E2F0
loc_801e33e
	ldr r0, [r1, #4]
	lsls r0, r0, #0x10
	bl sub_8040594
	str r1, [r4, #0x70]
	b _0801E2F0
loc_801e34a
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #8]
	lsls r0, r0, #0x16
	lsrs r2, r2, #0xa
_0801E3AE
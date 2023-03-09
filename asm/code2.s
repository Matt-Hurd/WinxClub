	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03000000
	IMPORT gUnknown_03000058
	IMPORT gUnknown_03000090
	IMPORT gUnknown_03000190
	IMPORT gUnknown_030001E0
	IMPORT gUnknown_03000284
	IMPORT gUnknown_0300028C
	IMPORT gUnknown_03000308
	IMPORT gUnknown_03001444
	IMPORT gUnknown_03001A54
	IMPORT gUnknown_03001BBC
	IMPORT gUnknown_03001C24
	IMPORT gUnknown_03002F48
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
	IMPORT gUnknown_030033E8
	IMPORT gUnknown_030033EC
	IMPORT gUnknown_030033F0
	IMPORT gUnknown_030033F4
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
	IMPORT gUnknown_03003C58
	IMPORT gUnknown_03003D1C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003D24
	IMPORT gUnknown_03003D28
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003D34
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003D38
	IMPORT gUnknown_03003D98
	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003E94
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003E9C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_03003EB4
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_03003EC0
	IMPORT gUnknown_03003EC4
	IMPORT gUnknown_03007F00
	IMPORT gUnknown_0803E2A0
	IMPORT gUnknown_0803E2C4
	IMPORT gUnknown_0803E32C
	IMPORT gUnknown_0803E350
	IMPORT gUnknown_0803E3D4
	IMPORT gUnknown_0803E424
	IMPORT gUnknown_0803E488
	IMPORT gUnknown_0803E4D8
	IMPORT gUnknown_0803E528
	IMPORT gUnknown_0803E578
	IMPORT gUnknown_0803E5F4
	IMPORT gUnknown_0803E658
	IMPORT gUnknown_0803E7B0
	IMPORT gUnknown_0803E814
	IMPORT gUnknown_0803E89C
	IMPORT gUnknown_0803E8EC
	IMPORT gUnknown_0803E950
	IMPORT gUnknown_0803E9B4
	IMPORT gUnknown_0803EA18
	IMPORT gUnknown_0803EA68
	IMPORT gUnknown_0803EA90
	IMPORT gUnknown_0803EB10
	IMPORT gUnknown_0803EB38
	IMPORT gUnknown_0803EB90
	IMPORT gUnknown_0803EBF4
	IMPORT gUnknown_0803EC44
	IMPORT gUnknown_0803EC7C
	IMPORT gUnknown_0803ECD8
	IMPORT gUnknown_0803ECF8
	IMPORT gUnknown_0803ED28
	IMPORT gUnknown_0803ED4C
	IMPORT gUnknown_0803ED70
	IMPORT gUnknown_0803EDA0
	IMPORT gUnknown_0803EDC4
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_0804A948
	IMPORT gUnknown_0804AE30
	IMPORT gUnknown_0804AE80
	IMPORT gUnknown_08050716
	IMPORT gUnknown_08050FD4
	IMPORT gUnknown_08051038
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

	IMPORT sub_80002A8
	IMPORT sub_8000324
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000AC4
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_80019B4
	IMPORT sub_8001A60
	IMPORT sub_8002004
	IMPORT sub_8004674
	IMPORT sub_80046EE
	IMPORT sub_80046F8
	IMPORT sub_800476C
	IMPORT sub_8004784
	IMPORT sub_80047B6
	IMPORT sub_80047BA
	IMPORT sub_80047BE
	IMPORT sub_80047DA
	IMPORT sub_8004C44
	IMPORT sub_8004FFC
	IMPORT sub_80050C0
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_80051D6
	IMPORT sub_8005220
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_800802E
	IMPORT sub_800805E
	IMPORT sub_800808E
	IMPORT sub_80081A8
	IMPORT sub_80081B6
	IMPORT sub_80081D4
	IMPORT sub_8008EB4
	IMPORT sub_800A270
	IMPORT sub_800A9BC
	IMPORT sub_800AD8C
	IMPORT sub_800B058
	IMPORT sub_800B08E
	IMPORT sub_800B1D0
	IMPORT sub_800B314
	IMPORT sub_800B698
	IMPORT sub_800B6A8
	IMPORT sub_800B6AC
	IMPORT sub_800B6EC
	IMPORT sub_800B714
	IMPORT sub_800B72A
	IMPORT sub_800B764
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_800CD58
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800ED7C
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_8010574
	IMPORT sub_80105AE
	IMPORT sub_80108DA
	IMPORT sub_8010B8A
	IMPORT sub_8010D60
	IMPORT sub_80121C4
	IMPORT sub_801220C
	IMPORT sub_801228C
	IMPORT sub_80122F0
	IMPORT sub_801230C
	IMPORT sub_8012334
	IMPORT sub_80130DC
	IMPORT sub_80132F4
	IMPORT sub_80133A0
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_801390A
	IMPORT sub_80139AC
	IMPORT sub_8013B76
	IMPORT sub_8013B9C
	IMPORT sub_8013C40
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT sub_80158E0
	IMPORT sub_8016108
	IMPORT sub_8017620
	IMPORT sub_8017884
	IMPORT sub_80179BE
	IMPORT sub_8017A0A
	IMPORT sub_8017B9A
	IMPORT sub_8017CA0
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_801810E
	IMPORT sub_8018386
	IMPORT sub_8018390
	IMPORT sub_8018620
	IMPORT sub_80187A0
	IMPORT sub_8018C48
	IMPORT sub_801B170
	IMPORT sub_801B56C
	IMPORT sub_801BEA0
	IMPORT sub_801C7D2
	IMPORT sub_801CA1E
	IMPORT sub_801CAC0
	IMPORT sub_801CB4E
	IMPORT sub_801CC3C
	IMPORT sub_801CC72
	IMPORT sub_801CCA8
	IMPORT sub_801D564
	IMPORT sub_801D6C4
	IMPORT sub_801D714
	IMPORT sub_801DA2A
	IMPORT sub_801DB90
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT sub_801DFD4
	IMPORT sub_801E124
	IMPORT sub_801E2DA
	IMPORT sub_801EBCA
	IMPORT sub_801F286
	IMPORT sub_801F450
	IMPORT sub_801F65C
	IMPORT sub_8020AB6
	IMPORT sub_8020B50
	IMPORT sub_8020B60
	IMPORT sub_80235E4
	IMPORT sub_80237DA
	IMPORT sub_802383A

	IMPORT sub_802F926
	IMPORT sub_802FA92
	IMPORT sub_8031D00
	IMPORT sub_803772C
	IMPORT sub_803AB80
	IMPORT sub_803AE68
	IMPORT sub_803B860
	IMPORT sub_803B8CA
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803B8D4
	IMPORT sub_803B8D6
	IMPORT sub_803B92C
	IMPORT sub_803B940
	IMPORT sub_803B998
	IMPORT sub_803BE1C
	IMPORT sub_803C04C
	IMPORT sub_803C3A4
	IMPORT sub_803C3C8
	IMPORT sub_803D468
	IMPORT sub_803D66C
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803DA4C
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803EF1C
	IMPORT sub_803F0A8
	IMPORT sub_803F110
	IMPORT sub_803F2CC
	IMPORT sub_803F38C
	IMPORT sub_803F464
	IMPORT sub_803F528
	IMPORT sub_803F654
	IMPORT sub_803F6B4
	IMPORT sub_803F708
	IMPORT sub_803F72C
	IMPORT sub_803F814
	IMPORT sub_803F898
	IMPORT sub_803F904
	IMPORT sub_803F9C4
	IMPORT sub_803FC14
	IMPORT sub_803FEF8
	IMPORT sub_803FF24
	IMPORT sub_8040034
	IMPORT sub_8040148
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_804025C
	IMPORT sub_80403A4
	IMPORT sub_8040468
	IMPORT sub_8040490
	IMPORT sub_80404B4
	IMPORT sub_8040528
	IMPORT sub_8040574
	IMPORT sub_8040594
	IMPORT sub_8040640
	IMPORT sub_8040660
	IMPORT sub_8040684
	IMPORT sub_80406A4
	IMPORT sub_80406C4
	IMPORT sub_8041020
	IMPORT sub_8041438
	IMPORT sub_8041440
	IMPORT _08008B14
	IMPORT nullsub_1

	thumb_func_start sub_80239EC
sub_80239EC ;@ 0x080239EC
	push {r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #8
	movs r1, #1
	lsls r1, r1, #9
	add r5, sp, #4
	movs r2, #0
	adds r0, r5, #0
	bl sub_803F464
	movs r2, #1
	lsls r2, r2, #9
	ldr r4, _08023CE8 ;@ =gUnknown_03003D28
	str r2, [sp]
	ldrb r0, [r4]
	lsls r2, r0, #9
	adds r2, #0x20
	ldr r0, _08023CEC ;@ =gUnknown_03003464
	adds r3, r5, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B314
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08023A24
	bl sub_803DA18
_08023A24
	movs r0, #0
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #4
	bl sub_803FEF8
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start ModifyPlayerHealth
ModifyPlayerHealth ;@ 0x08023A3A
	push {r3, lr}
	ldrb r2, [r0]
	adds r2, r2, r1
	cmp r1, #0
	bge _08023A4A
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	bne _08023A6A
_08023A4A
	cmp r2, #0
	bge _08023A54
	movs r2, #0
	strb r2, [r0]
	b _08023A60
_08023A54
	ldrb r3, [r0, #3]
	cmp r3, r2
	bge _08023A5E
	strb r3, [r0]
	b _08023A60
_08023A5E
	strb r2, [r0]
_08023A60
	ldr r0, _08023CF0 ;@ =0x030034F8
	lsrs r1, r1, #0x1f
	ldr r0, [r0]
	bl sub_80244C6
_08023A6A
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8023A70
sub_8023A70 ;@ 0x08023A70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #1]
	adds r0, r0, r1
	bpl _08023A80
	movs r0, #0
	strb r0, [r4, #1]
	b _08023A8C
_08023A80
	ldrb r1, [r4, #4]
	cmp r1, r0
	bge _08023A8A
	strb r1, [r4, #1]
	b _08023A8C
_08023A8A
	strb r0, [r4, #1]
_08023A8C
	ldr r0, _08023CF0 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_802416A
	ldr r0, _08023CF4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r0, [r0, #8]
	str r0, [r4, #0x14]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8023AA2
sub_8023AA2 ;@ 0x08023AA2
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #2]
	adds r0, r0, r1
	bmi _08023AB8
	ldr r1, _08023CE8 ;@ =gUnknown_03003D28
	ldr r1, [r1, #4]
	adds r1, #0x80
	ldrb r1, [r1, #4]
	cmp r1, #1
	bne _08023ABE
_08023AB8
	movs r0, #0
	strb r0, [r4, #2]
	b _08023ACA
_08023ABE
	ldrb r1, [r4, #5]
	cmp r1, r0
	bge _08023AC8
	strb r1, [r4, #2]
	b _08023ACA
_08023AC8
	strb r0, [r4, #2]
_08023ACA
	ldr r0, _08023CF0 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8024084
	ldr r0, _08023CF4 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r0, [r0, #8]
	str r0, [r4, #0x18]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8023AE0
sub_8023AE0 ;@ 0x08023AE0
	push {r3, lr}
	ldrb r2, [r0, #8]
	adds r2, r2, r1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bpl _08023AF2
	movs r2, #0
	strb r2, [r0, #8]
	b _08023AFE
_08023AF2
	ldrb r3, [r0, #7]
	cmp r3, r2
	bge _08023AFC
	strb r3, [r0, #8]
	b _08023AFE
_08023AFC
	strb r2, [r0, #8]
_08023AFE
	ldrb r2, [r0, #8]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	strb r2, [r0, #3]
	strb r2, [r0]
	movs r0, #1
	cmp r1, #0
	bgt _08023B12
	movs r0, #0
_08023B12
	adds r1, r0, #0
	ldr r0, _08023CF0 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80244C6
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8023B22
sub_8023B22 ;@ 0x08023B22
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
	ldr r7, _08023CE8 ;@ =gUnknown_03003D28
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
	ldr r3, _08023CF8 ;@ =gUnknown_08051038
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
	ldr r7, _08023CFC ;@ =gUnknown_0300344C
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
	ldr r0, _08023D00 ;@ =0x000004E9
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
	bl sub_803B860
	ldr r7, _08023D04 ;@ =gUnknown_03003E88
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
	ldr r6, _08023D08 ;@ =gUnknown_03003454
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
_08023CE8 DCDU gUnknown_03003D28
_08023CEC DCDU gUnknown_03003464
_08023CF0 DCDU gUnknown_030034F8
_08023CF4 DCDU gUnknown_03003E98
_08023CF8 DCDU gUnknown_08051038
_08023CFC DCDU gUnknown_0300344C
_08023D00 DCDU 0x000004E9
_08023D04 DCDU gUnknown_03003E88
_08023D08 DCDU gUnknown_03003454

	thumb_func_start sub_8023D0C
sub_8023D0C ;@ 0x08023D0C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08023D26
	movs r0, #0xff
	adds r0, #0x95
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08023D26
	adds r0, r4, #0
_08023D20
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08023D26
	movs r5, #0
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xc0
	strb r5, [r4, #0xd]
	str r5, [r0, #8]
	str r5, [r0, #0xc]
	str r5, [r0, #0x10]
	adds r0, #0x5c
	bl sub_80143E0
	movs r0, #0
	adds r1, r5, #0
_08023D40
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	str r1, [r2, #0x1c]
	blo _08023D40
	movs r0, #0
_08023D54
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc0
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo _08023D54
	movs r0, #0
_08023D68
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #6
	str r1, [r2, #0x10]
	blo _08023D68
	movs r0, #0
_08023D7A
	lsls r3, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r3, r3, r4
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	str r1, [r3, #0x28]
	blo _08023D7A
	movs r0, #0
_08023D8E
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x48]
	str r2, [r1, #0x60]
	cmp r0, #6
	blo _08023D8E
	movs r0, #0
_08023DA2
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x78]
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, #0x80
	lsrs r0, r0, #0x18
	cmp r0, #4
	str r2, [r1, #8]
	blo _08023DA2
	movs r0, #0
_08023DB8
	lsls r1, r0, #2
	adds r1, r1, r4
	adds r1, #0x80
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [r1, #0x18]
	str r2, [r1, #0x30]
	cmp r0, #6
	blo _08023DB8
	adds r0, r4, #0
	b _08023D20

	thumb_func_start sub_8023DD0
sub_8023DD0 ;@ 0x08023DD0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xff
	adds r0, #0x1d
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r5, #0
	movs r7, #0
_08023DE6
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _08023DFE
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x10
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x10]
_08023DFE
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023DE6
	movs r5, #0
_08023E0A
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _08023E22
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
_08023E22
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08023E0A
	movs r5, #0
_08023E2E
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _08023E46
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x48]
_08023E46
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E2E
	movs r5, #0
_08023E52
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _08023E6E
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0x98
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x18]
_08023E6E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E52
	movs r5, #0
_08023E7A
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x78]
	cmp r0, #0
	beq _08023E92
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x78
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x78]
_08023E92
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _08023E7A
	movs r5, #0
_08023E9E
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #0x30]
	cmp r1, #0
	beq _08023EBA
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0xb0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x30]
_08023EBA
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023E9E
	movs r5, #0
_08023EC6
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x60]
	cmp r0, #0
	beq _08023EDE
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x60]
_08023EDE
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08023EC6
	movs r5, #0
_08023EEA
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #8]
	cmp r1, #0
	beq _08023F06
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0x88
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
_08023F06
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _08023EEA
	movs r5, #0
_08023F12
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _08023F2E
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0xd4
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x14]
_08023F2E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08023F12
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _08023F50
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xd0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0x10]
_08023F50
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08023F64
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xc8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #8]
_08023F64
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08023F78
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #0xcc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r5, #0xc]
_08023F78
	ldr r0, _08024070 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xc0
	bl sub_80268AC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023F88
sub_8023F88 ;@ 0x08023F88
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x28]
	sub sp, #4
	cmp r0, #0
	beq _08023F9A
	adds r0, r5, #0
	bl sub_8023DD0
_08023F9A
	movs r4, #0
	movs r7, #0
_08023F9E
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _08023FBA
	adds r1, r0, #0
	ldr r0, _0802406C ;@ =gUnknown_03003448
	adds r1, #0xdc
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x1c]
_08023FBA
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x10
	blo _08023F9E
	adds r0, r5, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0x1d
	bl sub_8014436
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08023FDC
	adds r0, r5, #0
	bl sub_803DA18
_08023FDC
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8023FE4
sub_8023FE4 ;@ 0x08023FE4
	push {r0, r4, r5, r6, r7, lr}
	ldr r0, _08024074 ;@ =gPlayerEntity
	movs r3, #8
	ldr r0, [r0]
	sub sp, #8
	adds r0, #0xa0
	ldrsb r1, [r0, r3]
	lsls r1, r1, #6
	movs r3, #9
	ldrsb r0, [r0, r3]
	bl sub_803C04C
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r4, #2
_08024002
	lsls r0, r4, #4
	subs r0, #0x20
	cmp r0, r6
	bge _08024012
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08024014
_08024012
	movs r0, #0
_08024014
	ldr r2, _08024078 ;@ =0x0000087D
	adds r1, r2, #0
	cmp r0, #0x10
	bhs _08024020
	ldr r1, _0802407C ;@ =0x0000086D
	adds r1, r0, r1
_08024020
	subs r0, r2, r1
	ldr r1, _0802407C ;@ =0x0000086D
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r7, r0, r1
	lsrs r5, r5, #0x10
	adds r7, #0x80
	ldr r1, [r7, #0x30]
	ldr r0, _08024080 ;@ =gUnknown_03003EA0
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
	cmp r0, r5
	beq _08024058
	adds r1, r5, #0
	ldr r0, [r7, #0x30]
	bl sub_800065C
_08024058
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo _08024002
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802406C DCDU gUnknown_03003448
_08024070 DCDU gUnknown_0300345C
_08024074 DCDU gPlayerEntity
_08024078 DCDU 0x0000087D
_0802407C DCDU 0x0000086D
_08024080 DCDU gUnknown_03003EA0

	thumb_func_start sub_8024084
sub_8024084 ;@ 0x08024084
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
_0802408A
	ldr r1, _0802446C ;@ =gPlayerEntity
	lsls r0, r4, #4
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r1, [r1, #0xe]
	cmp r0, r1
	bhs _080240A0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080240A2
_080240A0
	movs r0, #0
_080240A2
	movs r2, #0x23
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0x10
	bhs _080240B2
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r0, r1
_080240B2
	subs r0, r2, r1
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r6, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r5, r0, r1
	adds r7, r5, #0
	lsrs r6, r6, #0x10
	adds r7, #0x80
	ldr r1, [r7, #8]
	ldr r0, _08024470 ;@ =gUnknown_03003EA0
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
	cmp r0, r6
	beq _080240EE
	adds r1, r6, #0
	ldr r0, [r7, #8]
	bl sub_800065C
_080240EE
	ldr r1, _0802446C ;@ =gPlayerEntity
	ldr r7, [r5, #0x78]
	ldr r0, [r1]
	ldr r1, _08024474 ;@ =gUnknown_0805104C
	adds r0, #0xa0
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	ldrh r6, [r1, r0]
	ldr r0, _08024470 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r7, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq _08024120
	adds r1, r6, #0
	ldr r0, [r5, #0x78]
	bl sub_800065C
_08024120
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	blo _0802408A
	ldr r0, _0802446C ;@ =gPlayerEntity
	ldr r1, _08024474 ;@ =gUnknown_0805104C
	ldr r0, [r0]
	adds r1, #0xa
	adds r0, #0xa0
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	ldrh r4, [r1, r0]
	ldr r6, [sp, #8]
	ldr r0, _08024470 ;@ =gUnknown_03003EA0
	adds r6, #0xc0
	ldr r5, [r6, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq _08024162
	adds r1, r4, #0
	ldr r0, [r6, #0xc]
	bl sub_800065C
_08024162
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802416A
sub_802416A ;@ 0x0802416A
	push {r0, r4, r5, r6, r7, lr}
	movs r4, #0
_0802416E
	ldr r1, _0802446C ;@ =gPlayerEntity
	lsls r0, r4, #4
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r1, [r1, #0xd]
	cmp r0, r1
	bhs _08024184
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08024186
_08024184
	movs r0, #0
_08024186
	movs r2, #0x23
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0x10
	bhs _08024196
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r0, r1
_08024196
	subs r0, r2, r1
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp]
	lsrs r5, r5, #0x10
	lsls r0, r4, #2
	adds r7, r0, r1
	ldr r0, _08024470 ;@ =gUnknown_03003EA0
	ldr r6, [r7, #0x60]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _080241CA
	adds r1, r5, #0
	ldr r0, [r7, #0x60]
	bl sub_800065C
_080241CA
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo _0802416E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80241DA
sub_80241DA ;@ 0x080241DA
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	movs r7, #0
	cmp r0, #0
	sub sp, #0x14
	beq _08024210
	ldr r1, _08024478 ;@ =gUnknown_03003E98
	ldr r1, [r1]
	ldr r2, [r1, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	cmp r2, r0
	blo _080241FA
	movs r1, #1
	str r7, [r4]
_080241FA
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	cmp r2, r1
	beq _08024210
	bl sub_80401E4
_08024210
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0802421A
	cmp r0, #3
	bne _080242E4
_0802421A
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802447C ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	movs r1, #0x11
	lsls r0, r0, #2
	lsls r1, r1, #0x14
	bl sub_803B92C
	add r2, pc, #0x234 ;@ =_08024480
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r6, r0, #0x10
	movs r0, #0xf0
	subs r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r6, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	movs r5, #0
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_08024268
	lsls r0, r5, #5
	adds r1, r0, #0
	adds r1, #0x20
	str r1, [sp, #8]
	cmp r1, r6
	ble _080242A0
	ldr r0, [sp, #0xc]
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
	b _080242CC
_080242A0
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r1, [sp, #8]
	movs r0, #0xf0
	subs r0, r0, r1
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
_080242CC
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08024268
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r1, #1
	bne _080242E6
	adds r0, #2
	strb r0, [r4, #0xd]
	b _080242EA
_080242E4
	b _080244B4
_080242E6
	adds r0, #0xfe
	strb r0, [r4, #0xd]
_080242EA
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	cmp r0, #0
	bgt _080243D6
	cmp r1, #3
	bne _080243D6
	movs r0, #0
	ldr r7, _08024488 ;@ =gUnknown_03003448
	strb r0, [r4, #0xc]
	movs r5, #0
_080242FE
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _0802431A
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r6, #0x1c]
_0802431A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x10
	blo _080242FE
	movs r5, #0
_08024326
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0802433C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802433C
	movs r1, #1
	bl sub_80401E4
_0802433C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024326
	movs r5, #0
_08024348
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0802435E
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802435E
	movs r1, #1
	bl sub_80401E4
_0802435E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024348
	movs r5, #0
_0802436A
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _08024380
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08024380
	movs r1, #1
	bl sub_80401E4
_08024380
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _0802436A
	movs r5, #0
_0802438C
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq _080243A2
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080243A2
	movs r1, #1
	bl sub_80401E4
_080243A2
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0802438C
	movs r5, #0
_080243AE
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080243C6
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080243C6
	movs r1, #1
	bl sub_80401E4
_080243C6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _080243AE
	movs r5, #0
_080243D2
	lsls r0, r5, #2
	b _080243D8
_080243D6
	b _080244BC
_080243D8
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _080243EE
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080243EE
	movs r1, #1
	bl sub_80401E4
_080243EE
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _080243D2
	movs r5, #0
_080243FA
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _08024412
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08024412
	movs r1, #1
	bl sub_80401E4
_08024412
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _080243FA
	ldr r6, _0802446C ;@ =gPlayerEntity
	movs r5, #0
_08024420
	ldr r0, [r6]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	cmp r1, r5
	bls _0802443A
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl sub_80401E4
_0802443A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08024420
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0802445A
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802445A
	movs r1, #1
	bl sub_80401E4
_0802445A
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08024490
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08024490
	movs r1, #1
	b _0802448C
	ALIGN
_0802446C DCDU gPlayerEntity
_08024470 DCDU gUnknown_03003EA0
_08024474 DCDU gUnknown_0805104C
_08024478 DCDU gUnknown_03003E98
_0802447C DCDU gUnknown_080414B8
_08024480 DCDU 0x00010000
_08024484 DCDU 0x00000000
_08024488 DCDU gUnknown_03003448
_0802448C
	bl sub_80401E4
_08024490
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0802449C
	adds r0, r4, #0
	bl sub_802416A
_0802449C
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _080244A8
	adds r0, r4, #0
	bl sub_8024084
_080244A8
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080244B4
	adds r0, r4, #0
	bl sub_8023FE4
_080244B4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080244BC
	cmp r0, #0x5a
	blt _080244B4
	movs r0, #2
	strb r0, [r4, #0xc]
	b _080244B4

	non_word_aligned_thumb_func_start sub_80244C6
sub_80244C6 ;@ 0x080244C6
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	sub sp, #4
_080244CE
	ldr r1, _08024788 ;@ =gPlayerEntity
	lsls r0, r5, #1
	ldr r1, [r1]
	adds r0, r0, r5
	adds r1, #0xa0
	ldrb r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r0, r1
	bhs _080244E8
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080244EA
_080244E8
	movs r0, #0
_080244EA
	ldr r1, _0802478C ;@ =0x000008A4
	cmp r0, #6
	bhs _080244F4
	subs r7, r1, #6
	adds r1, r0, r7
_080244F4
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r1, [r6, #0x28]
	ldr r0, _08024790 ;@ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _08024522
	adds r1, r7, #0
	ldr r0, [r6, #0x28]
	bl sub_800065C
_08024522
	ldr r1, _08024788 ;@ =gPlayerEntity
	ldr r0, [r1]
	adds r0, #0xb0
	ldrb r0, [r0, #4]
	cmp r0, r5
	bls _0802453C
	ldr r0, [r6, #0x28]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802453C
	movs r1, #1
	bl sub_80401E4
_0802453C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _080244CE
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08024596
	ldr r0, _08024794 ;@ =gUnknown_03003E98
	ldr r5, _08024790 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	ldr r7, _08024798 ;@ =0x0000089E
	ldr r0, [r0, #8]
	adds r0, #0x78
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #4]
	b _0802456E
_08024560
	ldrb r0, [r4, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #4]
	cmp r0, #8
	bhs _0802458C
_0802456E
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	bne _08024560
_0802458C
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08024596
	adds r0, #0xff
	strb r0, [r4, #4]
_08024596
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802459E
sub_802459E ;@ 0x0802459E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xc0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	cmp r1, #0
	beq _08024692
	cmp r0, #0
	bne _08024692
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r6, #0
_080245BA
	ldr r0, _0802479C ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x1c]
	ldr r1, _080247A0 ;@ =0x00000892
	bl sub_800065C
	movs r0, #0x1f
	mvns r0, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x12
	ldr r0, [r7, #0x1c]
	bl sub_80401C0
	movs r1, #1
	cmp r6, #8
	ldr r5, [r7, #0x1c]
	bhs _080245F4
	movs r1, #0
_080245F4
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r2, r3
	lsls r1, r1, #0xd
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_8000324
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi _08024614
	adds r0, r5, #0
	bl sub_804025C
_08024614
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r7, #0x1c]
	movs r1, #1
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x10
	blo _080245BA
	movs r5, #0
_08024630
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _08024646
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024646
	movs r1, #0
	bl sub_80401E4
_08024646
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024630
	movs r5, #0
_08024652
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _08024668
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024668
	movs r1, #0
	bl sub_80401E4
_08024668
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024652
	movs r5, #0
_08024674
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _0802468A
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802468A
	movs r1, #0
	bl sub_80401E4
_0802468A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	b _08024694
_08024692
	b _08024778
_08024694
	cmp r5, #6
	blo _08024674
	movs r5, #0
_0802469A
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq _080246B0
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246B0
	movs r1, #0
	bl sub_80401E4
_080246B0
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0802469A
	movs r5, #0
_080246BC
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080246D4
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246D4
	movs r1, #0
	bl sub_80401E4
_080246D4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _080246BC
	movs r5, #0
_080246E0
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _080246F8
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246F8
	movs r1, #0
	bl sub_80401E4
_080246F8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _080246E0
	movs r5, #0
_08024704
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0802471C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802471C
	movs r1, #0
	bl sub_80401E4
_0802471C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024704
	movs r5, #0
_08024728
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0802473E
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802473E
	movs r1, #0
	bl sub_80401E4
_0802473E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08024728
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0802475C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802475C
	movs r1, #0
	bl sub_80401E4
_0802475C
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08024770
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024770
	movs r1, #0
	bl sub_80401E4
_08024770
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08024778
	cmp r0, #0
	beq _08024770
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x59
	strb r0, [r4, #0xd]
	b _08024770
	ALIGN
_08024788 DCDU gPlayerEntity
_0802478C DCDU 0x000008A4
_08024790 DCDU gUnknown_03003EA0
_08024794 DCDU gUnknown_03003E98
_08024798 DCDU 0x0000089E
_0802479C DCDU gUnknown_03003448
_080247A0 DCDU 0x00000892

	thumb_func_start sub_80247A4
sub_80247A4 ;@ 0x080247A4
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x28]
	sub sp, #0x14
	cmp r0, #0
	beq _080247B6
	adds r0, r4, #0
	bl sub_8023DD0
_080247B6
	adds r5, r4, #0
	ldr r1, [sp, #0x18]
	adds r5, #0xc0
	cmp r1, #0
	beq _080248A6
	movs r6, #0
_080247C2
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	ldr r1, _08024BA4 ;@ =0x00000893
	str r0, [r7, #0x10]
	adds r1, r6, r1
	bl sub_800065C
	lsls r0, r6, #5
	movs r1, #0x78
	subs r0, r1, r0
	movs r1, #0xd0
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x10]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x12
	ldr r0, [r7, #0x10]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x10]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #6
	blo _080247C2
	movs r0, #0xb0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r1, #0x58
	strh r1, [r3, #6]
	ldr r0, [r4, #0x24]
	add r1, sp, #4
	bl sub_8040034
	movs r7, #0
_0802481C
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r7, #2
	adds r6, r1, r4
	ldr r1, _08024BA8 ;@ =0x000008AA
	str r0, [r6, #0x48]
	adds r1, r7, r1
	bl sub_800065C
	lsls r0, r7, #4
	movs r1, #0x68
	subs r0, r1, r0
	str r0, [sp, #0x10]
	movs r1, #0xe2
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r6, #0x48]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r6, #0x48]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x48]
	bl sub_80401E4
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	movs r1, #0x8b
	lsls r1, r1, #4
	str r0, [r6, #0x60]
	bl sub_800065C
	movs r1, #0xe2
	add r3, sp, #0
	ldr r0, [sp, #0x10]
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r6, #0x60]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, [r6, #0x60]
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
	ldr r0, [r6, #0x60]
	movs r1, #0x13
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x60]
	b _080248A8
_080248A6
	b _08024A8C
_080248A8
	bl sub_80401E4
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #6
	blo _0802481C
	movs r6, #0
_080248B8
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	ldr r1, _08024BAC ;@ =gUnknown_0805104C
	str r0, [r7, #0x78]
	ldrh r1, [r1]
	bl sub_800065C
	lsls r0, r6, #4
	movs r1, #0x58
	subs r0, r1, r0
	str r0, [sp, #0xc]
	movs r1, #0xda
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x78]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x78]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x78]
	bl sub_80401E4
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	adds r7, #0x80
	movs r1, #0x8b
	lsls r1, r1, #4
	str r0, [r7, #8]
	bl sub_800065C
	movs r1, #0xda
	add r3, sp, #0
	ldr r0, [sp, #0xc]
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #8]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x13
	ldr r0, [r7, #8]
	bl sub_80401C0
	ldr r0, [r7, #8]
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
	ldr r0, [r7, #8]
	movs r1, #1
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #4
	blo _080248B8
	movs r6, #0
_08024952
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0x80
	adds r1, r6, #1
	str r0, [r7, #0x18]
	str r1, [sp, #8]
	cmp r1, #6
	bhs _08024980
	ldr r1, _08024BB0 ;@ =gPlayerEntity
	ldr r2, _08024BAC ;@ =gUnknown_0805104C
	ldr r1, [r1]
	adds r2, #0x14
	adds r1, #0x80
	ldrb r1, [r1, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	b _08024996
_08024980
	ldr r1, _08024BB0 ;@ =gPlayerEntity
	ldr r2, _08024BAC ;@ =gUnknown_0805104C
	ldr r1, [r1]
	adds r2, #0x14
	adds r1, #0x80
	ldrb r1, [r1, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	adds r1, #1
_08024996
	bl sub_800065C
	lsls r6, r6, #4
	add r3, sp, #0
	strh r6, [r3, #4]
	movs r0, #0x97
	strh r0, [r3, #6]
	ldr r0, [r7, #0x18]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x18]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x18]
	bl sub_80401E4
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08024BB4 ;@ =0x0000086D
	str r0, [r7, #0x30]
	bl sub_800065C
	subs r0, r6, #1
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x98
	strh r0, [r3, #6]
	ldr r0, [r7, #0x30]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x13
	ldr r0, [r7, #0x30]
	bl sub_80401C0
	ldr r0, [r7, #0x30]
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
	ldr r0, [r7, #0x30]
	movs r1, #1
	bl sub_80401E4
	ldr r1, [sp, #8]
	lsls r6, r1, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #6
	blo _08024952
	ldr r6, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r6]
	bl sub_800116A
	ldr r1, _08024BAC ;@ =gUnknown_0805104C
	str r0, [r5, #0xc]
	adds r1, #0xa
	ldrh r1, [r1]
	bl sub_800065C
	movs r0, #0xce
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r1, #0x68
	strh r1, [r3, #6]
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x11
	ldr r0, [r5, #0xc]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r5, #0xc]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	ldr r1, _08024BB0 ;@ =gPlayerEntity
	str r0, [r5, #8]
	ldr r1, [r1]
	ldr r2, _08024BAC ;@ =gUnknown_0805104C
	adds r1, #0x80
	ldrb r1, [r1, #4]
	adds r2, #0x14
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r1, #0x20
	ldrh r1, [r1, #0x1e]
	adds r1, #2
	bl sub_800065C
	movs r0, #0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #0x7e
	strh r0, [r3, #6]
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x11
	ldr r0, [r5, #8]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r5, #8]
	bl sub_80401E4
_08024A8C
	movs r6, #0
_08024A8E
	ldr r0, _08024BA0 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	str r0, [r7, #0x28]
	ldr r1, _08024BB8 ;@ =0x0000089E
	bl sub_800065C
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #5
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	ldr r0, [r7, #0x28]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x28]
	bl sub_80401C0
	ldr r0, _08024BB0 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	cmp r1, r6
	bls _08024ADA
	movs r1, #1
	ldr r0, [r7, #0x28]
	bl sub_80401E4
_08024ADA
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo _08024A8E
	ldr r0, _08024BBC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x48
	str r0, [r5, #0x10]
	bl sub_80007A0
	movs r7, #0xe0
	add r3, sp, #0
	strh r7, [r3, #4]
	movs r0, #2
	strh r0, [r3, #6]
	ldr r0, [r5, #0x10]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x11
	ldr r0, [r5, #0x10]
	bl sub_80401C0
	ldr r0, [r5, #0x10]
	bl sub_8000914
	movs r6, #0
_08024B1A
	ldr r0, _08024BBC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x14]
	ldr r1, _08024BC0 ;@ =0x0000088D
	bl sub_800065C
	lsls r0, r6, #6
	movs r1, #0xe0
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	movs r0, #3
	strh r0, [r3, #6]
	ldr r0, [r7, #0x14]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x14
	ldr r0, [r7, #0x14]
	bl sub_80401C0
	cmp r6, #0
	bne _08024B7A
	ldr r7, [r5, #0x14]
	movs r2, #1
	ldrh r1, [r7, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r7, #0x28]
	adds r0, r7, #0
	bl sub_80003F4
	ldr r0, [r7]
	lsls r0, r0, #0x1e
	bmi _08024B72
	adds r0, r7, #0
	bl sub_804025C
_08024B72
	ldr r0, [r7]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7]
_08024B7A
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo _08024B1A
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #0x1d
	ldr r0, [r5]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	b _08024BC4
	ALIGN
_08024BA0 DCDU gUnknown_03003448
_08024BA4 DCDU 0x00000893
_08024BA8 DCDU 0x000008AA
_08024BAC DCDU gUnknown_0805104C
_08024BB0 DCDU gPlayerEntity
_08024BB4 DCDU 0x0000086D
_08024BB8 DCDU 0x0000089E
_08024BBC DCDU gUnknown_03003EB8
_08024BC0 DCDU 0x0000088D
_08024BC4
	movs r1, #0
	adds r0, r5, #0
	bl sub_803B8CC
	ldr r0, [r5]
	movs r2, #2
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0xa1
	adds r0, r5, #0
	bl sub_803B8CE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x10
	movs r1, #0x40
	bl sub_803B8CE
	movs r2, #0
	str r2, [sp]
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x20]
	movs r6, #0
	adds r7, r2, r1
	movs r2, #0xff
	adds r3, r6, #0
	movs r1, #4
	bl sub_803B8D6
	adds r0, r5, #0
	bl sub_8013B76
	movs r1, #0x13
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x20C ;@ =_08024E24
	bl sub_80137F8
	str r6, [r4]
	ldr r1, [sp, #0x18]
	ldr r5, _08024E28 ;@ =gUnknown_03003478
	str r1, [r4, #8]
	ldr r1, [r5]
	movs r6, #1
	movs r0, #4
	ands r1, r0
	beq _08024C32
	movs r1, #1
	b _08024C34
_08024C32
	movs r1, #0
_08024C34
	ldr r0, _08024E2C ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_802459E
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08024C70
	adds r0, r4, #0
	bl sub_802416A
	adds r0, r4, #0
	bl sub_8024084
	adds r0, r4, #0
	bl sub_8023FE4
	ldr r0, _08024E30 ;@ =gUnknown_03003460
	ldr r0, [r0]
	cmp r0, #0
	beq _08024C70
	bl sub_800B6A8
	cmp r0, #1
	beq _08024C70
	ldr r0, _08024E34 ;@ =gUnknown_0300345C
	movs r2, #1
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
_08024C70
	ldr r0, _08024E38 ;@ =gUnknown_03003458
	ldr r2, _08024E3C ;@ =gUnknown_03003D20
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	strb r1, [r2]
	ldr r1, [sp, #0x18]
	adds r2, r6, #0
	cmp r1, #0
	bne _08024C84
	movs r2, #0
_08024C84
	movs r1, #0x10
	cmp r2, #0
	ldr r2, [r5]
	beq _08024C92
	orrs r1, r2
	str r1, [r5]
	b _08024C96
_08024C92
	bics r2, r1
	str r2, [r5]
_08024C96
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08024D1A
	ldr r5, [r0, #0x20]
	movs r0, #0x38
	strh r0, [r5, #0xe]
	movs r0, #0x39
	strh r0, [r5, #0xa]
	movs r0, #0x3a
	strh r0, [r5, #0xc]
	strh r0, [r5, #8]
	movs r0, #0x3e
	strh r0, [r5, #0x1e]
	movs r0, #0x3f
	strh r0, [r5, #0x1a]
	movs r0, #0x40
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	ldr r1, [r5, #0x30]
	cmp r1, #0
	beq _08024D1A
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08024D1A
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _08024E40 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
	ldr r0, _08024E44 ;@ =gUnknown_03003EA0
	ldr r5, [r5, #0x30]
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
	bl sub_803B998
	add r2, pc, #0x144 ;@ =_08024E48
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
_08024D1A
	movs r1, #0
	adds r0, r4, #0
	bl sub_80244C6
	adds r0, r4, #0
	bl sub_80241DA
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8024D30
sub_8024D30 ;@ 0x08024D30
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08024E38 ;@ =gUnknown_03003458
	ldr r1, [sp, #8]
	adds r6, r0, #0
	movs r0, #5
	ldr r4, [r4]
	lsls r0, r0, #8
	ldr r2, _08024E50 ;@ =0x0000FFFE
	adds r0, r4, r0
	cmp r1, r2
	beq _08024D54
	ldr r1, [r0, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne _08024D54
	movs r5, #1
	b _08024D56
_08024D54
	movs r5, #0
_08024D56
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _08024D68
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne _08024D68
	movs r4, #1
	b _08024D6A
_08024D68
	movs r4, #0
_08024D6A
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _08024E1C
	ldr r7, _08024E34 ;@ =gUnknown_0300345C
	ldr r0, [r7]
	adds r0, #0xc0
	cmp r5, #0
	beq _08024DB6
	movs r2, #0x40
	adds r1, r2, #0
	cmp r3, #0x40
	bhi _08024D84
	adds r1, r3, #0
_08024D84
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r1, r2, r1
	movs r3, #0x64
	muls r1, r3
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1a
	adds r1, r2, r1
	asrs r1, r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [r0, #0x14]
	bl sub_80268BA
	ldr r0, [r7]
	adds r0, #0xc0
	bl sub_8028BE4
	cmp r0, #0
	bne _08024DBA
	ldr r0, [r7]
	adds r0, #0xc0
	bl sub_8028C2E
	b _08024DBA
_08024DB6
	bl sub_80268AC
_08024DBA
	adds r7, r6, #0
	adds r7, #0xc0
	ldr r0, [r7, #0x10]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, r5
	beq _08024DD0
	adds r1, r5, #0
	bl sub_80401E4
_08024DD0
	ldr r0, [r7, #0x14]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, r4
	beq _08024E1C
	adds r1, r4, #0
	bl sub_80401E4
	adds r1, r4, #0
	ldr r0, [r7, #0x18]
	bl sub_80401E4
	adds r5, r6, #0
	adds r5, #0xff
	adds r5, #0x1d
	cmp r4, #0
	beq _08024DFC
	ldr r2, _08024E50 ;@ =0x0000FFFE
	ldr r1, [sp, #8]
	cmp r1, r2
	bne _08024E08
_08024DFC
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x20 ;@ =_08024E24
	bl sub_80137F8
	b _08024E14
_08024E08
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	bl sub_80138E2
_08024E14
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
_08024E1C
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08024E24 DCDU 0x00000020
_08024E28 DCDU gUnknown_03003478
_08024E2C DCDU gUnknown_030034F8
_08024E30 DCDU gUnknown_03003460
_08024E34 DCDU gUnknown_0300345C
_08024E38 DCDU gUnknown_03003458
_08024E3C DCDU gUnknown_03003D20
_08024E40 DCDU gUnknown_03003EB8
_08024E44 DCDU gUnknown_03003EA0
_08024E48 DCDU 0x0010BE20
_08024E4C DCDU 0x00000000
_08024E50 DCDU 0x0000FFFE

	thumb_func_start sub_8024E54
sub_8024E54 ;@ 0x08024E54
	push {r4, lr}
	adds r4, r0, #0
	bne _08024E6C
	movs r0, #0x44
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08024E6C
	adds r0, r4, #0
_08024E66
	pop {r4}
	pop {r3}
	bx r3
_08024E6C
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _080250D0 ;@ =gUnknown_0803ECF8
	ldr r1, _080250D4 ;@ =0xFFFE0001
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ands r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b _08024E66

	non_word_aligned_thumb_func_start sub_8024E8A
sub_8024E8A ;@ 0x08024E8A
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08024EA8
	ldr r0, _080250D8 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08024EA8
	ldr r0, _080250DC ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8024EBC
sub_8024EBC ;@ 0x08024EBC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080250D0 ;@ =gUnknown_0803ECF8
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08024EE2
	ldr r0, _080250D8 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08024EE2
	ldr r0, _080250DC ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08024F02
	adds r0, r4, #0
	bl sub_803DA18
_08024F02
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8024F08
sub_8024F08 ;@ 0x08024F08
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0xd
	bics r6, r7
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne _08024F4E
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08024F5C
_08024F4E
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_08024F5C
	cmp r2, #0
	bne _08024F68
	movs r0, #0xff
	adds r0, #0xba
	str r0, [r4, #0x38]
	b _08024F6E
_08024F68
	movs r0, #0xff
	adds r0, #0xbc
	str r0, [r4, #0x38]
_08024F6E
	movs r1, #1
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x40]
	ldr r2, _080250D4 ;@ =0xFFFE0001
	lsrs r1, r1, #1
	lsls r1, r1, #1
	ands r1, r2
	str r1, [r4, #0x40]
	ldr r1, _080250E0 ;@ =gUnknown_0805107A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrsb r1, [r1, r0]
	lsls r5, r1, #0x10
	ldr r1, _080250E0 ;@ =gUnknown_0805107A
	adds r1, #4
	ldrsb r0, [r1, r0]
	lsls r6, r0, #0x10
	ldr r0, _080250D8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	adds r0, r0, r5
	adds r1, r1, r6
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r1, [r4, #0x34]
	ldr r3, _080250E0 ;@ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #4]
	subs r3, #8
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08024FE4
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08024FEA
_08024FE4
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08024FEA
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r7, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _0802500C
	orrs r1, r7
	str r1, [r0]
_0802500C
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r4, #0x34]
	ldr r1, _080250E0 ;@ =gUnknown_0805107A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #8
	ldrsb r1, [r1, r0]
	lsls r5, r1, #0x10
	ldr r1, _080250E0 ;@ =gUnknown_0805107A
	adds r1, #0xc
	ldrsb r0, [r1, r0]
	lsls r6, r0, #0x10
	ldr r0, _080250D8 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	adds r0, r0, r5
	adds r1, r1, r6
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F2CC
	ldr r1, [r4, #0x34]
	ldr r3, _080250E0 ;@ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #0x3c]
	subs r3, #4
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08025086
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _0802508C
_08025086
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_0802508C
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080250AA
	orrs r1, r7
	str r1, [r0]
_080250AA
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, _080250DC ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080250D0 DCDU gUnknown_0803ECF8
_080250D4 DCDU 0xFFFE0001
_080250D8 DCDU gUnknown_03003EB8
_080250DC DCDU gUnknown_0300345C
_080250E0 DCDU gUnknown_0805107A

	thumb_func_start sub_80250E4
sub_80250E4 ;@ 0x080250E4
	push {r4, r5, r6, lr}
	ldr r1, _0802538C ;@ =gUnknown_03003478
	adds r4, r0, #0
	ldr r1, [r1]
	movs r0, #0x10
	movs r5, #1
	ands r1, r0
	sub sp, #8
	beq _08025154
	ldr r0, [r4, #0x34]
	ldr r1, _08025390 ;@ =gUnknown_0805107A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	ldrsb r1, [r1, r0]
	ldr r3, [r4, #0x14]
	adds r2, #4
	ldrsb r0, [r2, r0]
	adds r3, #0x2c
	ldr r6, [r3]
	ldr r3, [r3, #4]
	subs r0, #4
	lsls r2, r0, #0x10
	lsls r1, r1, #0x10
	adds r0, r6, r1
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r1, r3, r2
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	subs r1, #4
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
_08025154
	ldr r1, _08025394 ;@ =0xFFFE0001
	ldr r0, [r4, #0x40]
	ldr r2, _08025398 ;@ =0x0001FFFE
	ands r1, r0
	adds r0, #2
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0x40]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08025190
	ldr r0, [r4, #0x38]
	subs r0, #0xff
	subs r0, #0xba
	bne _08025190
	movs r0, #0xff
	adds r0, #0xbc
	adds r1, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
_08025190
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080251C2
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r0, [r4, #0x40]
	orrs r0, r5
	str r0, [r4, #0x40]
_080251C2
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80251CA
sub_80251CA ;@ 0x080251CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080251EC
	ldrh r0, [r0, #0x28]
	movs r2, #1
	lsls r2, r2, #0x1b
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x2c]
_080251EC
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _0802520E
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802520E
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802539C ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0802520E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8025214
sub_8025214 ;@ 0x08025214
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802530A
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	adds r2, #4
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r5, _08025390 ;@ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r0, #5]
	subs r5, #8
	ldrb r2, [r5, r2]
	cmp r3, r2
	beq _08025268
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	adds r3, #1
	b _0802526E
_08025268
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	subs r3, #1
_0802526E
	cmp r3, #0
	beq _080252A4
	cmp r2, #0
	beq _0802527E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08025284
_0802527E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08025284
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080252A4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080252A4
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0802539C ;@ =gUnknown_03003EB8
	lsls r7, r1, #0x10
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080253A0 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #4]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _080253A4 ;@ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	b _0802530C
_0802530A
	b _08025382
_0802530C
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	str r0, [sp]
	adds r1, r1, r7
	str r1, [sp, #4]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F2CC
	ldr r1, [r4, #0x34]
	ldr r3, _08025390 ;@ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #0x3c]
	subs r3, #4
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _0802534E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08025354
_0802534E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08025354
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08025374
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08025374
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_08025382
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802538C DCDU gUnknown_03003478
_08025390 DCDU gUnknown_0805107A
_08025394 DCDU 0xFFFE0001
_08025398 DCDU 0x0001FFFE
_0802539C DCDU gUnknown_03003EB8
_080253A0 DCDU gUnknown_03003EA0
_080253A4 DCDU 0x0010BE20

	thumb_func_start sub_80253A8
sub_80253A8 ;@ 0x080253A8
	push {r4, lr}
	adds r4, r0, #0
	bne _080253C0
	movs r0, #0xa0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _080253C0
	adds r0, r4, #0
_080253BA
	pop {r4}
	pop {r3}
	bx r3
_080253C0
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802576C ;@ =gUnknown_0803E2C4
	movs r1, #0x97
	str r0, [r4]
	add r0, pc, #0x3A0 ;@ =_08025770
	str r0, [r4, #0x4c]
	movs r0, #8
	strh r0, [r4, #4]
	movs r0, #4
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	movs r2, #0xf
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x11
	adds r2, r1, r2
	adds r1, r4, #0
	adds r1, #0x70
	movs r3, #0x3c
	strb r3, [r1, #0xd]
	movs r3, #0x14
	strb r3, [r1, #0xc]
	ldr r1, [r0, #4]
	ldr r3, _08025784 ;@ =0xF000FFFF
	ands r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #4]
	ldr r1, [r0]
	ldr r3, _08025788 ;@ =0xFF8007FF
	ands r1, r3
	ldr r3, _0802578C ;@ =0x0027B000
	adds r1, r1, r3
	str r1, [r0]
	lsrs r1, r2, #0xc
	ldr r2, _08025790 ;@ =0x0000052A
	lsls r1, r1, #0xc
	adds r1, r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _080253BA

	non_word_aligned_thumb_func_start sub_802541E
sub_802541E ;@ 0x0802541E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802576C ;@ =gUnknown_0803E2C4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802543A
	adds r0, r4, #0
	bl sub_803DA18
_0802543A
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8025440
sub_8025440 ;@ 0x08025440
	push {r3, lr}
	bl sub_801DD40
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802544C
sub_802544C ;@ 0x0802544C
	push {r3, lr}
	bl sub_801DF50
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8025458
sub_8025458 ;@ 0x08025458
	push {lr}
	ldr r1, [r0, #0x58]
	ldr r3, [r0, #0x5c]
	sub sp, #0xc
	movs r2, #1
	lsls r2, r2, #0x14
	subs r2, r3, r2
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_8025478
sub_8025478 ;@ 0x08025478
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r2, [r4, #0x5c]
	movs r1, #1
	lsls r1, r1, #0x14
	sub sp, #8
	subs r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _080254A2
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_080254A2
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80254AA
sub_80254AA ;@ 0x080254AA
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x97
	ldrsb r0, [r0, r1]
	adds r0, r0, r2
	cmp r0, #8
	bhs _080254F2
	add r3, pc, #0x4 ;@ =_080254C0
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_080254C0
	DCB 0x03
_080254C1
	DCB 0x03
_080254C2
	DCB 0x0A
_080254C3
	DCB 0x0A
_080254C4
	DCB 0x11
_080254C5
	DCB 0x1E
_080254C6
	DCB 0x11
_080254C7
	DCB 0x1E
loc_80254c8
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080254FE
loc_80254d6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080254FE
loc_80254e4
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080254FE
_080254F2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
_080254FE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	non_word_aligned_thumb_func_start sub_8025512
sub_8025512 ;@ 0x08025512
	push {r3, lr}
	bl sub_801EBCA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802551E
sub_802551E ;@ 0x0802551E
	push {r4, r5, r6, r7, lr}
	movs r2, #5
	lsls r2, r2, #0xe
	str r2, [r0, #0x70]
	adds r7, r1, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r1, #0x80
	cmp r7, #0x12
	ldr r6, _08025794 ;@ =0xFF8003FF
	ldr r5, _08025788 ;@ =0xFF8007FF
	ldr r4, _0802578C ;@ =0x0027B000
	beq _08025620
	bgt _08025574
	cmp r7, #0x12
	bhs _0802554A
	add r3, pc, #0xC ;@ =_08025550
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0802554A
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08025550
	DCB 0xED, 0x00
_08025552
	DCB 0xCA, 0x00
_08025554
	DCB 0xA8, 0x00
_08025556
	DCB 0x82, 0x00
_08025558
	DCB 0x93, 0x02
_0802555A
	DCB 0xB5, 0x02
_0802555C
	DCB 0xD7, 0x02
_0802555E
	DCB 0xF9, 0x02
_08025560
	DCB 0x9A, 0x03
_08025562
	DCB 0xBB, 0x03
_08025564
	DCB 0xDB, 0x03
_08025566
	DCB 0x3E, 0x01
_08025568
	DCB 0x61, 0x01
_0802556A
	DCB 0x84, 0x01
_0802556C
	DCB 0xC6, 0x01
_0802556E
	DCB 0x1C, 0x03
_08025570
	DCB 0x7C, 0x03
_08025572
	DCB 0xA6, 0x01
_08025574
	cmp r7, #0x1c
	beq _0802564E
	bgt _0802559E
	subs r7, #0x13
	cmp r7, #9
	bhs _0802558A
	add r3, pc, #0x8 ;@ =_0802558C
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
_0802558A
	b _0802554A
	ALIGN
_0802558C DCDU 0x01EA01C7
_08025590 DCDU 0x0230020C
_08025594 DCDU 0x043104D5
_08025598 DCDU 0x02530452
_0802559C
	DCB 0xB5, 0x04
_0802559E
	cmp r7, #0x21
	bne _080255A6
	bl sub_8025F7C
_080255A6
	bgt _080255D2
	cmp r7, #0x1d
	beq _08025690
	cmp r7, #0x1e
	beq _08025692
	cmp r7, #0x1f
	beq _08025694
	cmp r7, #0x20
	bne _0802554A
	movs r2, #7
	lsls r2, r2, #7
	adds r3, r2, #1
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xa]
	adds r1, r2, #2
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
_080255D0
	b _0802554A
_080255D2
	cmp r7, #0x22
	bne _080255DA
	bl sub_8025F94
_080255DA
	cmp r7, #0x42
	beq _08025638
	cmp r7, #0x4c
	bne _0802554A
	movs r3, #0xe1
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r3, [r1, #0xc]
	ldr r7, _08025798 ;@ =0x0000052D
	lsrs r3, r3, #0xc
	lsls r3, r3, #0xc
	adds r3, r3, r7
	ldr r7, [r1, #8]
	ands r7, r6
	ldr r6, _0802579C ;@ =0x00451800
	adds r6, r7, r6
	str r6, [r1, #8]
	ldr r6, [r1]
	ands r6, r5
	adds r4, r6, r4
	str r4, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r4, #0x1e
	strb r4, [r2, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	b _08025622
_08025620
	b _08025D44
_08025622
	orrs r2, r3
	lsls r3, r4, #0xe
	bics r2, r3
	movs r3, #3
	lsls r3, r3, #0x10
	adds r2, r2, r3
	movs r3, #8
	adds r0, #0x90
	str r2, [r1, #0xc]
	strb r3, [r0, #7]
_08025636
	b _0802554A
_08025638
	movs r1, #0x13
	lsls r1, r1, #5
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
_0802564C
	b _0802554A
_0802564E
	b _08025D90
loc_8025650
	ldr r3, _080257A0 ;@ =0x0000030A
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257A4 ;@ =0x00000501
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257A8 ;@ =0x0044E000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	b _08025696
_08025690
	b _08025DAA
_08025692
	b _08025E70
_08025694
	b _08025E72
_08025696
	movs r0, #0x14
	strb r0, [r2, #0xc]
_0802569A
	b _0802554A
sub_802569C
	ldr r3, _080257AC ;@ =0x00000355
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257B0 ;@ =0x00000504
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257B4 ;@ =0x0044F800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
_080256DE
	b _0802554A
sub_80256E0
	movs r3, #0x43
	lsls r3, r3, #3
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257B8 ;@ =0x00000503
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257BC ;@ =0x00447000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
_08025724
	b _0802554A
sub_8025726
	movs r3, #0xed
	strh r3, [r0, #0xe]
	movs r3, #0xee
	strh r3, [r0, #0xa]
	movs r3, #0xef
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xea
	strh r3, [r0, #0x1e]
	movs r3, #0xeb
	strh r3, [r0, #0x1a]
	movs r3, #0xec
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _080257C0 ;@ =0x00000502
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _080257C4 ;@ =0x00440800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
_08025768
	b _0802554A
	ALIGN
_0802576C DCDU gUnknown_0803E2C4
_08025770 DCDU 0x2063704E
_08025774 DCDU 0x69726353
_08025778 DCDU 0x47207470
_0802577C DCDU 0x70756F72
_08025780 DCDU 0x00000000
_08025784 DCDU 0xF000FFFF
_08025788 DCDU 0xFF8007FF
_0802578C DCDU 0x0027B000
_08025790 DCDU 0x0000052A
_08025794 DCDU 0xFF8003FF
_08025798 DCDU 0x0000052D
_0802579C DCDU 0x00451800
_080257A0 DCDU 0x0000030A
_080257A4 DCDU 0x00000501
_080257A8 DCDU 0x0044E000
_080257AC DCDU 0x00000355
_080257B0 DCDU 0x00000504
_080257B4 DCDU 0x0044F800
_080257B8 DCDU 0x00000503
_080257BC DCDU 0x00447000
_080257C0 DCDU 0x00000502
_080257C4 DCDU 0x00440800
sub_80257C8
	movs r3, #0xcc
	strh r3, [r0, #0xe]
	movs r3, #0xcd
	strh r3, [r0, #0xa]
	movs r3, #0xce
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xc9
	strh r3, [r0, #0x1e]
	movs r3, #0xca
	strh r3, [r0, #0x1a]
	movs r3, #0xcb
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BC8 ;@ =0x0000050A
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	movs r3, #0x11
	lsls r3, r3, #0x12
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
_0802580C
	b _0802554A
sub_802580E
	movs r3, #0xff
	adds r3, #0x12
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BCC ;@ =0x0000050B
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BD0 ;@ =0x00442000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025854
	ldr r3, _08025BD4 ;@ =0x000002BE
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BD8 ;@ =0x0000050D
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BDC ;@ =0x00448800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025898
	movs r7, #0xc6
	strh r7, [r0, #0xe]
	movs r3, #0xc7
	strh r3, [r0, #0xa]
	movs r3, #0xc8
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0xc7
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BE0 ;@ =0x00000513
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BE4 ;@ =0x0043F800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_80258D8
	movs r3, #0xff
	adds r3, #0x18
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BE8 ;@ =0x00000514
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ands r0, r6
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A

	non_word_aligned_thumb_func_start sub_802591A
sub_802591A ;@ 0x0802591A
	movs r3, #0x83
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BEC ;@ =0x0000050C
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BF0 ;@ =0x00441800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A

	thumb_func_start sub_8025960
sub_8025960 ;@ 0x08025960
	movs r3, #6
	strh r3, [r0, #0xe]
	movs r3, #7
	strh r3, [r0, #0xa]
	movs r3, #8
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #3
	strh r3, [r0, #0x1e]
	movs r3, #4
	strh r3, [r0, #0x1a]
	movs r3, #5
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025BF4 ;@ =0x00000511
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BF8 ;@ =0x00439000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A

	thumb_func_start sub_80259A4
sub_80259A4 ;@ 0x080259A4
	movs r3, #0xb1
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0x51
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025BFC ;@ =0x00449000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A

	thumb_func_start sub_80259EC
sub_80259EC ;@ 0x080259EC
	ldr r3, _08025C00 ;@ =0x0000022D
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C04 ;@ =0x00000512
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	movs r3, #0x89
	lsls r3, r3, #0xf
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A

	non_word_aligned_thumb_func_start sub_8025A32
sub_8025A32 ;@ 0x08025A32
	movs r7, #0x88
	strh r7, [r0, #0xe]
	movs r3, #0x89
	strh r3, [r0, #0xa]
	movs r3, #0x8a
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x89
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C08 ;@ =0x00000517
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C0C ;@ =0x0043D800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025A72
	ldr r3, _08025C10 ;@ =0x000002D6
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C14 ;@ =0x00000506
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C18 ;@ =0x0044A800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025AB6
	ldr r3, _08025C1C ;@ =0x0000035B
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C20 ;@ =0x00000509
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C24 ;@ =0x00450800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025AFA
	ldr r3, _08025C28 ;@ =0x000002FB
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C2C ;@ =0x00000507
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C30 ;@ =0x0044C800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025B3E
	movs r3, #0x7f
	strh r3, [r0, #0xe]
	movs r3, #0x80
	strh r3, [r0, #0xa]
	movs r3, #0x81
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0x7c
	strh r3, [r0, #0x1e]
	movs r3, #0x7d
	strh r3, [r0, #0x1a]
	movs r3, #0x7e
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0xa1
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C34 ;@ =0x0043B800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025B84
	movs r3, #0x71
	lsls r3, r3, #3
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025C38 ;@ =0x0000050E
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025C3C ;@ =0x00452000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	b _08025C40
	ALIGN
_08025BC8 DCDU 0x0000050A
_08025BCC DCDU 0x0000050B
_08025BD0 DCDU 0x00442000
_08025BD4 DCDU 0x000002BE
_08025BD8 DCDU 0x0000050D
_08025BDC DCDU 0x00448800
_08025BE0 DCDU 0x00000513
_08025BE4 DCDU 0x0043F800
_08025BE8 DCDU 0x00000514
_08025BEC DCDU 0x0000050C
_08025BF0 DCDU 0x00441800
_08025BF4 DCDU 0x00000511
_08025BF8 DCDU 0x00439000
_08025BFC DCDU 0x00449000
_08025C00 DCDU 0x0000022D
_08025C04 DCDU 0x00000512
_08025C08 DCDU 0x00000517
_08025C0C DCDU 0x0043D800
_08025C10 DCDU 0x000002D6
_08025C14 DCDU 0x00000506
_08025C18 DCDU 0x0044A800
_08025C1C DCDU 0x0000035B
_08025C20 DCDU 0x00000509
_08025C24 DCDU 0x00450800
_08025C28 DCDU 0x000002FB
_08025C2C DCDU 0x00000507
_08025C30 DCDU 0x0044C800
_08025C34 DCDU 0x0043B800
_08025C38 DCDU 0x0000050E
_08025C3C DCDU 0x00452000
_08025C40
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025C44
	movs r3, #0xb7
	lsls r3, r3, #2
	strh r3, [r0, #0xe]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FAC ;@ =0x0000051A
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FB0 ;@ =0x0044B800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025C80
	movs r7, #0x97
	strh r7, [r0, #0xe]
	movs r3, #0x98
	strh r3, [r0, #0xa]
	movs r3, #0x99
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x98
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0x29
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FB4 ;@ =0x0043E000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025CC2
	ldr r7, _08025FB8 ;@ =0x0000032E
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, r7, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	adds r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FBC ;@ =0x00000521
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC0 ;@ =0x0044F000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
sub_8025D02
	movs r7, #0xff
	adds r7, #0x7a
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	subs r7, r3, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FC4 ;@ =0x0000051F
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FC8 ;@ =0x00443000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802554A
_08025D44
	movs r3, #0xff
	adds r3, #0xa8
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #3
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FCC ;@ =0x0000051D
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	ldr r3, [r1, #8]
	ands r3, r6
	ldr r6, _08025FD0 ;@ =0x00445000
	adds r3, r3, r6
	str r3, [r1, #8]
	ldr r3, [r1]
	ands r3, r5
	adds r3, r3, r4
	str r3, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r3, #0x14
	strb r3, [r2, #0xc]
	movs r2, #1
	lsls r3, r4, #0xd
	bics r0, r3
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r1, #0xc]
	b _080255D0
_08025D90
	movs r2, #0xff
	adds r2, #0xab
	adds r3, r2, #1
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xa]
	adds r1, r2, #2
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	b _080255D0
_08025DAA
	movs r3, #0xba
	strh r3, [r0, #0xe]
	movs r3, #0xbb
	strh r3, [r0, #0xa]
	movs r3, #0xbc
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	movs r3, #0xb7
	strh r3, [r0, #0x1e]
	movs r3, #0xb8
	strh r3, [r0, #0x1a]
	movs r3, #0xb9
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FD4 ;@ =0x0000051E
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FD8 ;@ =0x0043E800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _08025636

	non_word_aligned_thumb_func_start sub_8025DEE
sub_8025DEE ;@ 0x08025DEE
	movs r7, #0xff
	adds r7, #0xd6
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	subs r7, r3, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FDC ;@ =0x0000051B
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FE0 ;@ =0x00445800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802564C

	thumb_func_start sub_8025E30
sub_8025E30 ;@ 0x08025E30
	movs r7, #0x82
	strh r7, [r0, #0xe]
	movs r3, #0x83
	strh r3, [r0, #0xa]
	movs r3, #0x84
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x83
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FE4 ;@ =0x00000516
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FE8 ;@ =0x0043C800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802569A
_08025E70
	b _08025E74
_08025E72
	b _08025EB6
_08025E74
	movs r7, #0
	strh r7, [r0, #0xe]
	movs r3, #1
	strh r3, [r0, #0xa]
	movs r3, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	movs r3, #0x53
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FEC ;@ =0x00438800
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _080256DE
_08025EB6
	ldr r7, _08025FF0 ;@ =0x000002D9
	strh r7, [r0, #0xe]
	adds r3, r7, #1
	strh r3, [r0, #0xa]
	adds r3, r7, #2
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	adds r7, #1
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FF4 ;@ =0x00000519
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08025FF8 ;@ =0x0044B000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _08025724

	non_word_aligned_thumb_func_start sub_8025EF6
sub_8025EF6 ;@ 0x08025EF6
	movs r7, #0x85
	strh r7, [r0, #0xe]
	movs r3, #0x86
	strh r3, [r0, #0xa]
	movs r3, #0x87
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	strh r7, [r0, #0x1e]
	movs r7, #0x86
	strh r7, [r0, #0x1a]
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08025FFC ;@ =0x0000050F
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08026000 ;@ =0x0043D000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _08025768

	non_word_aligned_thumb_func_start sub_8025F36
sub_8025F36 ;@ 0x08025F36
	movs r3, #0xff
	adds r3, #0x12
	strh r3, [r0, #0xe]
	adds r3, #1
	strh r3, [r0, #0xa]
	adds r3, #1
	strh r3, [r0, #0xc]
	strh r3, [r0, #8]
	subs r3, #5
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	adds r3, #1
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x18]
	ldr r0, [r1, #0xc]
	ldr r3, _08026004 ;@ =0x00000501
	lsrs r0, r0, #0xc
	lsls r0, r0, #0xc
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	ldr r3, _08026008 ;@ =0x0044E000
	ands r0, r6
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1]
	ands r0, r5
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x3c
	strb r4, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xc]
	b _0802580C

	thumb_func_start sub_8025F7C
sub_8025F7C ;@ 0x08025F7C
	ldr r2, _0802600C ;@ =0x0000037A
	adds r3, r2, #1
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xa]
	adds r1, r2, #2
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	b _0802580C

	thumb_func_start sub_8025F94
sub_8025F94 ;@ 0x08025F94
	ldr r2, _08026010 ;@ =0x000002FE
	adds r3, r2, #1
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xa]
	adds r1, r2, #2
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x18]
	b _0802580C
	ALIGN
_08025FAC DCDU 0x0000051A
_08025FB0 DCDU 0x0044B800
_08025FB4 DCDU 0x0043E000
_08025FB8 DCDU 0x0000032E
_08025FBC DCDU 0x00000521
_08025FC0 DCDU 0x0044F000
_08025FC4 DCDU 0x0000051F
_08025FC8 DCDU 0x00443000
_08025FCC DCDU 0x0000051D
_08025FD0 DCDU 0x00445000
_08025FD4 DCDU 0x0000051E
_08025FD8 DCDU 0x0043E800
_08025FDC DCDU 0x0000051B
_08025FE0 DCDU 0x00445800
_08025FE4 DCDU 0x00000516
_08025FE8 DCDU 0x0043C800
_08025FEC DCDU 0x00438800
_08025FF0 DCDU 0x000002D9
_08025FF4 DCDU 0x00000519
_08025FF8 DCDU 0x0044B000
_08025FFC DCDU 0x0000050F
_08026000 DCDU 0x0043D000
_08026004 DCDU 0x00000501
_08026008 DCDU 0x0044E000
_0802600C DCDU 0x0000037A
_08026010 DCDU 0x000002FE

	thumb_func_start sub_8026014
sub_8026014 ;@ 0x08026014
	push {r3, lr}
	movs r0, #0x10
	bl sub_8018386
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	thumb_func_start sub_8026024
sub_8026024 ;@ 0x08026024
	push {r4, lr}
	adds r4, r0, #0
	bne _0802603C
	movs r0, #0xa4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802603C
	adds r0, r4, #0
_08026036
	pop {r4}
	pop {r3}
	bx r3
_0802603C
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _080262AC ;@ =gUnknown_0803EA18
	movs r1, #0x3c
	str r0, [r4]
	add r0, pc, #0x264 ;@ =_080262B0
	str r0, [r4, #0x4c]
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	adds r0, #0x10
	ldr r1, [r0, #4]
	ldr r2, _080262C8 ;@ =0xF000FFFF
	ands r1, r2
	str r1, [r0, #4]
	ldr r1, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x11
	str r1, [r0, #0x1c]
	ldr r1, [r0, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	movs r0, #8
	movs r1, #0x97
	strb r0, [r1, r4]
	movs r0, #0xcf
	movs r1, #0xa0
	strh r0, [r1, r4]
	adds r0, r4, #0
	b _08026036

	thumb_func_start sub_802608C
sub_802608C ;@ 0x0802608C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080262AC ;@ =gUnknown_0803EA18
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _080260A8
	adds r0, r4, #0
	bl sub_803DA18
_080260A8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80260AE
sub_80260AE ;@ 0x080260AE
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _080260C2
	movs r0, #0x13
	str r0, [r4, #0x1c]
_080260C2
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_80260C8
sub_80260C8 ;@ 0x080260C8
	push {r4}
	ldr r1, [r1]
	movs r3, #0
	ldrb r2, [r1, #5]
	lsls r2, r2, #0x10
	str r2, [r0, #0x78]
	adds r2, r0, #0
	adds r2, #0x80
	str r3, [r2, #0x1c]
	ldrb r4, [r1, #4]
	cmp r4, #0xc
	bhs _08026166
	add r3, pc, #0x4 ;@ =_080260E8
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
_080260E8
	DCB 0x05
_080260E9
	DCB 0x05
_080260EA
	DCB 0x05
_080260EB
	DCB 0x05
_080260EC
	DCB 0x12
_080260ED
	DCB 0x1B
_080260EE
	DCB 0x27
_080260EF
	DCB 0x33
_080260F0
	DCB 0x3F
_080260F1
	DCB 0x48
_080260F2
	DCB 0x54
_080260F3
	DCB 0x60
loc_80260f4
	ldrb r1, [r1, #4]
	movs r4, #0xf
	ldr r3, [r0, #0x7c]
	lsls r4, r4, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r3, r4
	orrs r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0xff
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_802610e
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026120
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026138
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #3
	adds r0, #0x90
	strb r1, [r0, #8]
	b _08026166
loc_8026150
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
_08026166
	b _080261C0
loc_8026168
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_802617a
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #0
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_8026192
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0x19
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #1
	adds r0, #0x90
	strb r1, [r0, #8]
	b _080261C0
loc_80261aa
	movs r3, #0xf
	ldr r1, [r0, #0x7c]
	lsls r3, r3, #0x18
	bics r1, r3
	movs r3, #3
	lsls r3, r3, #0x18
	adds r1, r1, r3
	str r1, [r0, #0x7c]
	movs r1, #2
	adds r0, #0x90
	strb r1, [r0, #8]
_080261C0
	movs r0, #0x13
	str r0, [r2, #0x1c]
	pop {r4}
	bx lr

	thumb_func_start sub_80261C8
sub_80261C8 ;@ 0x080261C8
	push {r3, lr}
	ldr r1, [r1]
	movs r3, #0xf
	ldrh r1, [r1, #4]
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	ldr r0, [r0, #0x2c]
	movs r2, #0
	bl sub_80007A0
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80261F6
sub_80261F6 ;@ 0x080261F6
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r2, [r0]
	cmp r2, #0x1c
	beq _08026234
	cmp r2, #0x1f
	beq _0802623C
	cmp r2, #0x26
	bne _08026250
	ldrh r0, [r0, #4]
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
_0802622E
	pop {r4}
	pop {r3}
	bx r3
_08026234
	adds r0, r4, #0
	bl sub_80260C8
	b _0802622E
_0802623C
	adds r0, r4, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0802622E
	movs r0, #0x13
	str r0, [r4, #0x1c]
	b _0802622E
_08026250
	adds r0, r4, #0
	bl sub_801DD40
	b _0802622E

	thumb_func_start sub_8026258
sub_8026258 ;@ 0x08026258
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r5, #1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08026276
	cmp r0, #0x1f
	beq _08026282
	cmp r0, #0x26
	bne _080262A2
	movs r0, #1
_08026270
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08026276
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _08026270
	movs r0, #0
	b _08026270
_08026282
	adds r0, r4, #0
	bl sub_801DB90
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _08026296
	movs r1, #0x13
	str r1, [r0, #0x1c]
_08026296
	ldr r1, [r4, #0x78]
	adds r0, r5, #0
	cmp r1, #0
	beq _08026270
	movs r0, #0
	b _08026270
_080262A2
	adds r0, r4, #0
	bl sub_801DF50
	b _08026270
	ALIGN
_080262AC DCDU gUnknown_0803EA18
_080262B0 DCDU 0x656E6547
_080262B4 DCDU 0x20636972
_080262B8 DCDU 0x656A624F
_080262BC DCDU 0x47207463
_080262C0 DCDU 0x70756F72
_080262C4 DCDU 0x00000000
_080262C8 DCDU 0xF000FFFF

	thumb_func_start sub_80262CC
sub_80262CC ;@ 0x080262CC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r0, #0x1a]
	adds r6, r4, #0
	adds r6, #0x80
	cmp r0, #0
	ldr r7, _08026684 ;@ =gUnknown_03003EA0
	beq _0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
	bne _0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08026312
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08026312
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802632E
	bl sub_803BE1C
	movs r1, #0xa0
	ldrh r1, [r1, r4]
	ands r0, r1
	bne _0802632E
	movs r0, #0x12
	str r0, [r6, #0x1c]
	b _08026360
_0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08026348
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08026348
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _08026360
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08026360
	movs r0, #0x11
	str r0, [r6, #0x1c]
_08026360
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802636C
sub_802636C ;@ 0x0802636C
	subs r1, #0x42
	cmp r1, #0x14
	push {r4, lr}
	bhs _0802637E
	add r3, pc, #0xC ;@ =_08026384
	adds r3, r3, r1
	ldrh r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_0802637E
	pop {r4}
	pop {r3}
	bx r3
_08026384
	DCB 0x16, 0x00
_08026386
	DCB 0x20, 0x00
_08026388
	DCB 0x85, 0x00
_0802638A
	DCB 0x42, 0x00
_0802638C
	DCB 0xA8, 0x00
_0802638E
	DCB 0xBC, 0x00
_08026390
	DCB 0xDB, 0x00
_08026392
	DCB 0xFA, 0x00
_08026394
	DCB 0x0F, 0x01
_08026396
	DCB 0x21, 0x01
_08026398
	DCB 0x57, 0x01
_0802639A
	DCB 0xB0, 0x01
_0802639C
	DCB 0xD0, 0x01
_0802639E
	DCB 0x63, 0x00
_080263A0
	DCB 0x4D, 0x02
_080263A2
	DCB 0x3D, 0x02
_080263A4
	DCB 0x45, 0x02
_080263A6
	DCB 0x56, 0x02
_080263A8
	DCB 0x17, 0x02
_080263AA
	DCB 0xF1, 0x01
loc_80263ac
	movs r1, #0x13
	lsls r1, r1, #5
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	b _0802637E
loc_80263c0
	ldr r1, _08026688 ;@ =0x00000289
	ldr r3, _0802668C ;@ =0x00000522
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 ;@ =0xFF8003FF
	ands r2, r3
	ldr r3, _08026694 ;@ =0x0044A000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802669C ;@ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026404
	ldr r1, _080266A0 ;@ =0x000002B5
	ldr r3, _0802668C ;@ =0x00000522
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 ;@ =0xFF8003FF
	ands r2, r3
	ldr r3, _080266A4 ;@ =0x0043B000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802669C ;@ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026446
	ldr r1, _080266A8 ;@ =0x00000239
	ldr r3, _080266AC ;@ =0x00000527
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 ;@ =0xFF8003FF
	ands r2, r3
	ldr r3, _080266B0 ;@ =0x0043C000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802669C ;@ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x23
	strb r1, [r0, #0xc]
	b _0802637E
loc_802648a
	movs r1, #0xab
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _080266B4 ;@ =0x00000523
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690 ;@ =0xFF8003FF
	ands r2, r3
	ldr r3, _080266B8 ;@ =0x0044C000
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _080266BC ;@ =0x0027D800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_80264d0
	ldr r1, _080266C0 ;@ =0x00000237
	movs r2, #4
	strh r1, [r0, #0x18]
	movs r1, #0
	strh r1, [r0, #0x1a]
	movs r1, #0x47
	lsls r1, r1, #3
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #1
	lsls r1, r1, #0xe
	str r1, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r0, [r1]
	bics r0, r2
	str r0, [r1]
	b _0802637E
loc_80264f8
	movs r1, #0x91
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026690 ;@ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _080266C4 ;@ =0x0027E800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
_08026534
	b _0802637E
loc_8026536
	movs r1, #0x91
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026690 ;@ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _080266C4 ;@ =0x0027E800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026574
	ldr r1, _080266C8 ;@ =0x000002AE
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #3
	lsls r1, r1, #0xe
	str r1, [r0, #0x70]
	adds r0, #0x80
	ldr r1, [r0]
	movs r2, #4
	bics r1, r2
	str r1, [r0]
	ldr r1, [r0, #0x14]
	lsls r2, r2, #0x10
	bics r1, r2
	str r1, [r0, #0x14]
	b _0802637E
loc_802659e
	ldr r1, _080266CC ;@ =0x0000024D
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r0, #0x14]
	b _0802637E
loc_80265c2
	ldr r1, _080266D0 ;@ =0x0000026E
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r1, #0x14]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq _080265F6
	cmp r2, #2
	beq _080265F6
	movs r2, #1
	b _080265F8
_080265F6
	movs r2, #0
_080265F8
	movs r4, #1
	ldr r3, [r1, #0xc]
	lsls r4, r4, #0xe
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x11
	bics r3, r4
	orrs r2, r3
	str r2, [r1, #0xc]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _08026534
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	lsrs r3, r4, #3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xbf
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08026534
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	b _0802637E
loc_802662e
	movs r1, #0xe1
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _080266D4 ;@ =0x0000052D
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	ldr r3, [r1, #8]
	ldr r4, _08026690 ;@ =0xFF8003FF
	adds r0, #0x70
	ands r3, r4
	ldr r4, _080266D8 ;@ =0x00451800
	adds r3, r3, r4
	str r3, [r1, #8]
	ldr r3, [r1]
	ldr r4, _08026698 ;@ =0xFF8007FF
	ands r3, r4
	ldr r4, _080266DC ;@ =0x0027B000
	adds r3, r3, r4
	str r3, [r1]
	movs r3, #0x3c
	strb r3, [r0, #0xd]
	movs r3, #0x1e
	strb r3, [r0, #0xc]
	movs r0, #1
	lsls r0, r0, #0xc
	orrs r0, r2
	lsls r2, r3, #0xe
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r1, #0xc]
	b _0802637E
	ALIGN
_08026684 DCDU gUnknown_03003EA0
_08026688 DCDU 0x00000289
_0802668C DCDU 0x00000522
_08026690 DCDU 0xFF8003FF
_08026694 DCDU 0x0044A000
_08026698 DCDU 0xFF8007FF
_0802669C DCDU 0x0027B800
_080266A0 DCDU 0x000002B5
_080266A4 DCDU 0x0043B000
_080266A8 DCDU 0x00000239
_080266AC DCDU 0x00000527
_080266B0 DCDU 0x0043C000
_080266B4 DCDU 0x00000523
_080266B8 DCDU 0x0044C000
_080266BC DCDU 0x0027D800
_080266C0 DCDU 0x00000237
_080266C4 DCDU 0x0027E800
_080266C8 DCDU 0x000002AE
_080266CC DCDU 0x0000024D
_080266D0 DCDU 0x0000026E
_080266D4 DCDU 0x0000052D
_080266D8 DCDU 0x00451800
_080266DC DCDU 0x0027B000
loc_80266e0
	ldr r1, _08026874 ;@ =0x00000297
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026878 ;@ =0x00000526
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C ;@ =0xFF8003FF
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _08026884 ;@ =0x0027C800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x19
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026720
	movs r1, #0xa5
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026878 ;@ =0x00000526
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C ;@ =0xFF8003FF
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _08026884 ;@ =0x0027C800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x19
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026762
	ldr r1, _08026888 ;@ =0x0000024E
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _0802687C ;@ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	adds r0, #0x70
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _0802688C ;@ =0x0027F000
	adds r2, r2, r3
	str r2, [r1]
	movs r2, #0x3c
	strb r2, [r0, #0xd]
	ldr r2, [r1, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r1, #0x14]
	movs r1, #0x28
	strb r1, [r0, #0xc]
	b _0802637E
loc_80267ae
	ldr r1, _08026890 ;@ =0x0000026B
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _0802687C ;@ =0xFF8003FF
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	adds r0, #0x70
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _08026894 ;@ =0x0027F800
	adds r2, r2, r3
	str r2, [r1]
	movs r2, #0x3c
	strb r2, [r0, #0xd]
	movs r2, #0x14
	strb r2, [r0, #0xc]
	movs r2, #3
	ldr r0, [r1, #0x14]
	lsls r2, r2, #0xf
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r1, #0x14]
	b _0802637E
loc_80267fa
	ldr r1, _08026898 ;@ =0x00000286
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802680a
	ldr r1, _0802689C ;@ =0x00000287
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802681a
	movs r1, #0x51
	lsls r1, r1, #3
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802682c
	ldr r1, _080268A0 ;@ =0x00000285
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	movs r3, #0xa5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	lsls r3, r3, #3
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C ;@ =0xFF8003FF
	ands r2, r3
	ldr r3, _080268A4 ;@ =0x00449800
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880 ;@ =0xFF8007FF
	ands r2, r3
	ldr r3, _080268A8 ;@ =0x0027B800
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
	ALIGN
_08026874 DCDU 0x00000297
_08026878 DCDU 0x00000526
_0802687C DCDU 0xFF8003FF
_08026880 DCDU 0xFF8007FF
_08026884 DCDU 0x0027C800
_08026888 DCDU 0x0000024E
_0802688C DCDU 0x0027F000
_08026890 DCDU 0x0000026B
_08026894 DCDU 0x0027F800
_08026898 DCDU 0x00000286
_0802689C DCDU 0x00000287
_080268A0 DCDU 0x00000285
_080268A4 DCDU 0x00449800
_080268A8 DCDU 0x0027B800

	thumb_func_start sub_80268AC
sub_80268AC ;@ 0x080268AC
	push {r3, lr}
	adds r0, #4
	bl sub_8012334
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80268BA
sub_80268BA ;@ 0x080268BA
	push {r3, lr}
	adds r0, #4
	bl sub_801228C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80268C8
sub_80268C8 ;@ 0x080268C8
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _080268D8
	movs r0, #0x20
	bl sub_803D9F8
	cmp r0, #0
	beq _08026902
_080268D8
	movs r4, #0
	str r4, [r0]
	adds r5, r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	movs r1, #0x98
	str r1, [r0, #8]
	mvns r1, r2
	str r1, [r0, #0x10]
	movs r1, #0xff
	adds r1, #1
	str r1, [r0, #0x14]
	movs r1, #5
	str r1, [r0, #0xc]
	ldr r1, _08026CDC ;@ =0x00002B11
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
_08026902
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8026908
sub_8026908 ;@ 0x08026908
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08026920
	ldr r0, _08026CE0 ;@ =0x00001308
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08026920
	adds r0, r4, #0
_0802691A
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08026920
	movs r0, #0x13
	lsls r0, r0, #8
	adds r1, r4, r0
	adds r5, r1, #0
	movs r2, #0x20
	adds r0, r4, #0
	ldr r3, _08026CE4 ;@ =sub_80268C8
	bl sub_803C3A4
	movs r0, #0
	strb r0, [r5, #5]
	adds r0, r4, #0
	b _0802691A

	non_word_aligned_thumb_func_start sub_802693A
sub_802693A ;@ 0x0802693A
	push {r3, r4, r5, lr}
	movs r2, #0x1f
	mvns r2, r2
	adds r5, r1, #0
	adds r1, r0, r2
	adds r4, r0, #0
	movs r0, #0x97
	lsls r0, r0, #5
	adds r0, r4, r0
	ldr r3, _08026CE8 ;@ =sub_80403A4
	bl sub_803C3C8
	cmp r5, #0
	beq _0802695C
	adds r0, r4, #0
	bl sub_803DA18
_0802695C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8026962
sub_8026962 ;@ 0x08026962
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08026CEC ;@ =gUnknown_03003460
	sub sp, #0x164
	ldr r0, [r0]
	cmp r0, #0
	beq _08026A54
	movs r0, #0
	str r0, [r4, #8]
	ldr r5, _08026CDC ;@ =0x00002B11
	adds r0, r4, #4
	adds r7, r0, #0
	str r5, [r4, #0x1c]
	bl sub_801228C
	movs r6, #0x80
	str r6, [r4, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #1
	str r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x160]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x3c]
	bl sub_801228C
	ldr r0, [sp, #0x160]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x160]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x160]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #2
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x40
	str r0, [sp, #0x15c]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x5c]
	bl sub_801228C
	ldr r0, [sp, #0x15c]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x15c]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x15c]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #3
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [sp, #0x158]
	adds r0, #4
	adds r7, r0, #0
	str r5, [r4, #0x7c]
	bl sub_801228C
	ldr r0, [sp, #0x158]
	str r6, [r0, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x158]
	mvns r1, r1
	str r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	ldr r0, [sp, #0x158]
	movs r1, #0x10
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	adds r7, r4, r6
	movs r0, #4
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, r0
	b _08026A56
_08026A54
	b _0802723A
_08026A56
	str r0, [sp, #0x154]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x154]
	bl sub_801228C
	adds r7, r4, #0
	adds r7, #0xa0
	movs r0, #5
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x150]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x150]
	bl sub_801228C
	adds r7, #0x40
	movs r0, #7
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x14c]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x14c]
	bl sub_801228C
	adds r7, #0x20
	movs r0, #8
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	str r0, [sp, #0x148]
	bl sub_801228C
	str r6, [r7, #0x14]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x148]
	bl sub_801228C
	adds r7, #0x20
	movs r0, #9
	str r0, [r7, #8]
	str r5, [r7, #0x1c]
	adds r0, r7, #4
	adds r5, r0, #0
	bl sub_801228C
	adds r0, r5, #0
	str r6, [r7, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r6, #0x10
	str r6, [r7, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r4, #0
	adds r0, #0xc0
	str r0, [sp, #0x144]
	adds r1, r0, #0
	movs r0, #6
	str r0, [r1, #8]
	ldr r0, [sp, #0x144]
	ldr r1, _08026CDC ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x144]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	str r6, [r0, #0xc]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	adds r5, #0x1c
	movs r0, #0xa
	str r0, [r5, #8]
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xb
	str r0, [r5, #8]
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xc
	str r0, [r5, #8]
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xd
	str r0, [r5, #8]
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xe
	str r0, [r5, #8]
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	adds r5, #0x20
	movs r0, #0xf
	str r0, [r5, #8]
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r7, #0
	str r6, [r5, #0xc]
	bl sub_801228C
	lsls r0, r6, #5
	adds r5, r4, r0
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	str r6, [r5, #8]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x11
	str r0, [r5, #8]
	ldr r0, _08026CDC ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	b _08026CF0
	ALIGN
_08026CDC DCDU 0x00002B11
_08026CE0 DCDU 0x00001308
_08026CE4 DCDU sub_80268C8
_08026CE8 DCDU sub_80403A4
_08026CEC DCDU gUnknown_03003460
_08026CF0
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x12
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x13
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x14
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x15
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x16
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x17
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x18
	str r0, [r6, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r7, #0x80
	str r7, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x19
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x1a
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1b
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x1c
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1d
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x1e
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x1f
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x14]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #1
	lsls r0, r0, #0xa
	adds r5, r4, r0
	movs r0, #0x20
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x21
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x22
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x23
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x24
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x26
	str r0, [r5, #8]
	ldr r0, _080270F8 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	b _080270FC
	ALIGN
_080270F8 DCDU 0x00002B11
_080270FC
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x25
	str r0, [r5, #8]
	movs r0, #0x7d
	lsls r0, r0, #7
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x27
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x27
	str r0, [r6, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r7, #0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #8
	adds r5, r4, r0
	movs r0, #0x28
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x29
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x29
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x2a
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x2b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2b
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	b _0802723C
_0802723A
	b _08027938
_0802723C
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x2c
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x2d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2d
	str r0, [r5, #8]
	movs r0, #0x7d
	lsls r0, r0, #7
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x33
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x13c]
	adds r1, r0, #0
	movs r0, #0x2e
	str r0, [r1, #8]
	ldr r0, [sp, #0x13c]
	ldr r1, _08027538 ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	movs r1, #0x33
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x13c]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	movs r0, #0x2f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x2f
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x33
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #9
	adds r5, r4, r0
	movs r0, #0x30
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x31
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x31
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x134]
	adds r1, r0, #0
	movs r0, #0x32
	str r0, [r1, #8]
	ldr r0, [sp, #0x134]
	ldr r1, _08027538 ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x130]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x134]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r0, #0x33
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x33
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x34
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x35
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x35
	str r0, [r5, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r7, r4, r0
	movs r0, #0x36
	str r0, [r7, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r7, #0x1c]
	adds r0, r7, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r5, #0x80
	str r5, [r7, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r7, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x37
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x37
	str r0, [r6, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x38
	str r0, [r6, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x39
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x39
	str r0, [r6, #8]
	ldr r0, _08027538 ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	b _0802753C
	ALIGN
_08027538 DCDU 0x00002B11
_0802753C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x3a
	str r0, [r6, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x3b
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x3b
	str r0, [r6, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x3c
	str r0, [r6, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	adds r0, r7, #0
	str r5, [r6, #0x14]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x3d
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0x12c]
	adds r1, r0, #0
	movs r0, #0x3d
	str r0, [r1, #8]
	ldr r0, [sp, #0x12c]
	ldr r1, _0802793C ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x128]
	bl sub_801228C
	ldr r0, [sp, #0x12c]
	str r5, [r0, #0x14]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	movs r7, #0
	ldr r0, [sp, #0x12c]
	mvns r7, r7
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	ldr r1, [sp, #0x12c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x124]
	adds r1, r0, #0
	movs r0, #0x3e
	str r0, [r1, #8]
	ldr r0, [sp, #0x124]
	ldr r1, _0802793C ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r1, [sp, #0x124]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	movs r0, #0x3f
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0x11c]
	adds r1, r0, #0
	movs r0, #0x3f
	str r0, [r1, #8]
	ldr r1, [sp, #0x11c]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x118]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r1, [sp, #0x11c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	lsls r0, r5, #4
	adds r1, r4, r0
	str r1, [sp, #0x114]
	movs r0, #0x40
	str r0, [r1, #8]
	ldr r1, [sp, #0x114]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	movs r0, #0x80
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	movs r0, #0x41
	lsls r0, r0, #5
	adds r1, r4, r0
	str r1, [sp, #0x10c]
	movs r0, #0x41
	str r0, [r1, #8]
	ldr r1, [sp, #0x10c]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r1, #0x1c]
	adds r0, r1, #4
	str r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	movs r0, #0x80
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	ldr r1, [sp, #0x10c]
	movs r0, #0x10
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x42
	str r0, [r5, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x43
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x43
	str r0, [r5, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #7
	adds r5, r4, r0
	movs r0, #0x44
	str r0, [r5, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0x10]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x45
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x45
	str r0, [r6, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	adds r0, r7, #0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r7, #0x10
	str r7, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp, #0x104]
	adds r1, r0, #0
	movs r0, #0x46
	str r0, [r1, #8]
	ldr r0, [sp, #0x104]
	ldr r1, _0802793C ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0x104]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	movs r0, #0x47
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0xfc]
	adds r1, r0, #0
	movs r0, #0x47
	str r0, [r1, #8]
	ldr r0, [sp, #0xfc]
	ldr r1, _0802793C ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xfc]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #8
	adds r0, r4, r0
	str r0, [sp, #0xf4]
	adds r1, r0, #0
	movs r0, #0x48
	str r0, [r1, #8]
	ldr r0, [sp, #0xf4]
	ldr r1, _0802793C ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xf4]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	movs r0, #0x49
	lsls r0, r0, #5
	adds r0, r4, r0
	str r0, [sp, #0xec]
	adds r1, r0, #0
	movs r0, #0x49
	str r0, [r1, #8]
	ldr r0, [sp, #0xec]
	ldr r1, _0802793C ;@ =0x00002B11
	str r1, [r0, #0x1c]
	adds r0, #4
	str r0, [sp, #0xe8]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	movs r1, #0x80
	str r1, [r0, #0x14]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	movs r1, #0
	ldr r0, [sp, #0xec]
	mvns r1, r1
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x4a
	str r0, [r5, #8]
	ldr r0, _08027940 ;@ =0x00002B12
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x4b
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4b
	str r0, [r5, #8]
	ldr r0, _0802793C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	b _08027944
_08027938
	b _0802811E
	ALIGN
_0802793C DCDU 0x00002B11
_08027940 DCDU 0x00002B12
_08027944
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	adds r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x4c
	str r0, [r6, #8]
	ldr r0, _08027D4C ;@ =0x00002B11
	str r0, [r6, #0x1c]
	adds r0, r6, #4
	adds r5, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r6, #0xc]
	adds r0, r5, #0
	bl sub_801228C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4d
	str r0, [r5, #8]
	ldr r0, _08027D4C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x27
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x4e
	str r0, [r5, #8]
	ldr r0, _08027D4C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x4f
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x4f
	str r0, [r5, #8]
	movs r7, #0x7d
	lsls r7, r7, #7
	adds r0, r5, #4
	adds r6, r0, #0
	str r7, [r5, #0x1c]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #5
	lsls r0, r0, #9
	adds r5, r4, r0
	movs r0, #0x50
	str r0, [r5, #8]
	ldr r0, _08027D4C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x51
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x51
	str r0, [r5, #8]
	ldr r0, _08027D4C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x29
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #0x52
	str r0, [r5, #8]
	ldr r0, _08027D4C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	adds r6, r0, #0
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_801228C
	movs r0, #0x53
	lsls r0, r0, #5
	adds r5, r4, r0
	movs r0, #0x53
	str r0, [r5, #8]
	ldr r0, _08027D4C ;@ =0x00002B11
	str r0, [r5, #0x1c]
	adds r0, r5, #4
	str r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r5, #0x14]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r5, #0x10]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x10
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	movs r0, #0x15
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r0, #0x54
	str r0, [r6, #8]
	str r7, [r6, #0x1c]
	adds r0, r6, #4
	adds r7, r0, #0
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x55
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x55
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x2b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x56
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x57
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x57
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0xb
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x58
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x59
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x59
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x2d
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5a
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x5b
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x5b
	str r0, [r6, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xe0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xe0]
	bl sub_801228C
	movs r0, #0x17
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5c
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xdc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xdc]
	bl sub_801228C
	movs r0, #0x5d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5d
	str r0, [r1, #8]
	ldr r1, _08027D4C ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd8]
	bl sub_801228C
	movs r0, #0x2f
	lsls r0, r0, #6
	b _08027D50
	ALIGN
_08027D4C DCDU 0x00002B11
_08027D50
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5e
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd4]
	bl sub_801228C
	movs r0, #0x5f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x5f
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xd0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xd0]
	bl sub_801228C
	movs r0, #3
	lsls r0, r0, #0xa
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x60
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xcc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xcc]
	bl sub_801228C
	movs r0, #0x61
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x61
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xc8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xc8]
	bl sub_801228C
	movs r0, #0x31
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x62
	str r0, [r6, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xc4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xc4]
	bl sub_801228C
	movs r0, #0x63
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x63
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x19
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x64
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xc0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xc0]
	bl sub_801228C
	movs r0, #0x65
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x65
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xbc]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xbc]
	bl sub_801228C
	movs r0, #0x33
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x66
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb8]
	bl sub_801228C
	movs r0, #0x67
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x67
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb4]
	bl sub_801228C
	movs r0, #0xd
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x68
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xb0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xb0]
	bl sub_801228C
	movs r0, #0x69
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x69
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xac]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0xac]
	bl sub_801228C
	movs r0, #0x35
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x6a
	str r0, [r6, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa8]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa8]
	bl sub_801228C
	movs r0, #0x6b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6b
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa4]
	bl sub_801228C
	movs r0, #0x1b
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6c
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0xa0]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0xa0]
	bl sub_801228C
	movs r0, #0x6d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6d
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x9c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x9c]
	bl sub_801228C
	movs r0, #0x37
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6e
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x98]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x98]
	bl sub_801228C
	movs r0, #0x6f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x6f
	str r0, [r1, #8]
	ldr r1, _08028138 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x94]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	b _08028120
_0802811E
	b _08028906
_08028120
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x94]
	bl sub_801228C
	movs r0, #7
	lsls r0, r0, #9
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x70
	b _0802813C
	ALIGN
_08028138 DCDU 0x00002B11
_0802813C
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x90]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x90]
	bl sub_801228C
	movs r0, #0x71
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x71
	str r0, [r6, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x8c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x8c]
	bl sub_801228C
	movs r0, #0x39
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x72
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x73
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x73
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x88]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x88]
	bl sub_801228C
	movs r0, #0x1d
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x74
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x84]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x84]
	bl sub_801228C
	movs r0, #0x75
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x75
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x80]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x80]
	bl sub_801228C
	movs r0, #0x3b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x76
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x7c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x7c]
	bl sub_801228C
	movs r0, #0x77
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x77
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x78]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x78]
	bl sub_801228C
	movs r0, #0xf
	lsls r0, r0, #8
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x78
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x74]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x74]
	bl sub_801228C
	movs r0, #0x79
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x79
	str r0, [r6, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x70]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x70]
	bl sub_801228C
	movs r0, #0x3d
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7a
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x6c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x6c]
	bl sub_801228C
	movs r0, #0x7b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7b
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x68]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x68]
	bl sub_801228C
	movs r0, #0x1f
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7c
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x64]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x64]
	bl sub_801228C
	movs r0, #0x7d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7d
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x60]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x60]
	bl sub_801228C
	movs r0, #0x3f
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7e
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x5c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x5c]
	bl sub_801228C
	movs r0, #0x7f
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x7f
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x58]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x58]
	bl sub_801228C
	movs r0, #1
	lsls r0, r0, #0xc
	adds r6, r4, r0
	movs r1, #0x80
	str r1, [r6, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x54]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x54]
	bl sub_801228C
	movs r0, #0x81
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x81
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	adds r0, r6, #0
	movs r6, #0x10
	str r6, [r0, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x41
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x82
	str r0, [r1, #8]
	ldr r1, _08028520 ;@ =0x00002B11
	b _08028524
	ALIGN
_08028520 DCDU 0x00002B11
_08028524
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x50]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x50]
	bl sub_801228C
	movs r0, #0x83
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x83
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x4c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x4c]
	bl sub_801228C
	movs r0, #0x21
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x84
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x48]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x48]
	bl sub_801228C
	movs r0, #0x85
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x85
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x44]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x44]
	bl sub_801228C
	movs r0, #0x43
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x86
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x40]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x40]
	bl sub_801228C
	movs r0, #0x87
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x87
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x3c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	str r6, [r7, #0xc]
	ldr r0, [sp, #0x3c]
	bl sub_801228C
	movs r0, #0x11
	lsls r0, r0, #8
	adds r6, r4, r0
	movs r0, #0x88
	str r0, [r6, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x38]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r7, #0
	mvns r7, r7
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x38]
	bl sub_801228C
	movs r0, #0x89
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x89
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x34]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x34]
	bl sub_801228C
	movs r0, #0x45
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8a
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x30]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x30]
	bl sub_801228C
	movs r0, #0x8b
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8b
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x2c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x2c]
	bl sub_801228C
	movs r0, #0x23
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8c
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x28]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x28]
	bl sub_801228C
	movs r0, #0x8d
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8d
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x24]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x24]
	bl sub_801228C
	movs r0, #0x47
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x8e
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x20]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x20]
	bl sub_801228C
	movs r0, #0x8f
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x8f
	str r0, [r6, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x1c]
	bl sub_801228C
	movs r0, #9
	lsls r0, r0, #9
	adds r0, r4, r0
	adds r6, r0, #0
	adds r1, r0, #0
	movs r0, #0x90
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x91
	lsls r0, r0, #5
	adds r6, r4, r0
	movs r0, #0x91
	str r0, [r6, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	adds r7, r0, #0
	str r1, [r6, #0x1c]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	adds r0, r7, #0
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	adds r0, r7, #0
	bl sub_801228C
	movs r0, #0x49
	lsls r0, r0, #6
	adds r6, r4, r0
	movs r0, #0x92
	str r0, [r6, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r6, #4
	str r1, [r6, #0x1c]
	str r0, [sp, #0x18]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r6, #0x14]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r6, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r6, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	movs r0, #0x93
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x93
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0x14]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x14]
	bl sub_801228C
	movs r0, #0x25
	lsls r0, r0, #7
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x94
	str r0, [r1, #8]
	ldr r1, _08028938 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	b _08028908
_08028906
	b _08028A74
_08028908
	str r0, [sp, #0x10]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0x10]
	bl sub_801228C
	movs r0, #0x95
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	b _0802893C
	ALIGN
_08028938 DCDU 0x00002B11
_0802893C
	adds r1, r0, #0
	movs r0, #0x95
	str r0, [r1, #8]
	ldr r1, _08028BD8 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #0xc]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #0xc]
	bl sub_801228C
	movs r0, #0x4b
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x96
	str r0, [r1, #8]
	ldr r1, _08028BD8 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #8]
	bl sub_801228C
	movs r0, #0x80
	str r0, [r7, #0x14]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r1, #0
	mvns r1, r1
	str r1, [r7, #0x10]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #8]
	bl sub_801228C
	movs r0, #0x97
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r7, r0, #0
	adds r1, r0, #0
	movs r0, #0x97
	str r0, [r1, #8]
	ldr r1, _08028BD8 ;@ =0x00002B11
	adds r0, r7, #4
	str r1, [r7, #0x1c]
	str r0, [sp, #4]
	bl sub_801228C
	movs r1, #0x80
	str r1, [r7, #0x14]
	ldr r0, [sp, #4]
	bl sub_801228C
	movs r0, #0
	mvns r0, r0
	str r0, [r7, #0x10]
	ldr r0, [sp, #4]
	bl sub_801228C
	movs r1, #0x10
	str r1, [r7, #0xc]
	ldr r0, [sp, #4]
	bl sub_801228C
	ldr r0, [sp, #0x144]
	movs r7, #0
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x140]
	bl sub_801228C
	ldr r0, [sp, #0x13c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x138]
	bl sub_801228C
	ldr r0, [sp, #0x12c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x128]
	bl sub_801228C
	ldr r0, [sp, #0x124]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x120]
	bl sub_801228C
	ldr r0, [sp, #0x11c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x118]
	bl sub_801228C
	ldr r1, [sp, #0x114]
	str r7, [r1, #0x10]
	ldr r0, [sp, #0x110]
	bl sub_801228C
	ldr r0, [sp, #0x10c]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x108]
	bl sub_801228C
	str r7, [r5, #0x10]
	ldr r0, [sp, #0xe4]
	bl sub_801228C
	ldr r0, [sp, #0x104]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x100]
	bl sub_801228C
	ldr r0, [sp, #0xfc]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xf8]
	bl sub_801228C
	ldr r0, [sp, #0xf4]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xf0]
	bl sub_801228C
	ldr r0, [sp, #0xec]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0xe8]
	bl sub_801228C
	str r7, [r6, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_801228C
	ldr r0, [sp, #0x134]
	str r7, [r0, #0x10]
	ldr r0, [sp, #0x130]
	bl sub_801228C
	movs r0, #0x13
	lsls r0, r0, #8
	adds r0, r4, r0
	strb r7, [r0, #4]
_08028A74
	add sp, #0x164
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8028A7C
sub_8028A7C ;@ 0x08028A7C
	push {r3, r4, r5, r6, r7, lr}
_08028A7E
	adds r6, r0, #0
	ldr r0, _08028BDC ;@ =gUnknown_03003460
	adds r4, r2, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _08028AC4
	movs r2, #0x13
	lsls r2, r2, #8
	adds r5, r6, r2
	strb r1, [r5, #5]
	cmp r1, #7
	bhs _08028AC4
	add r3, pc, #0x8 ;@ =_08028AA0
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08028AA0
	DCB 0x12
_08028AA1
	DCB 0x04
_08028AA2
	DCB 0x15
_08028AA3
	DCB 0x1A
_08028AA4
	DCB 0x2A
_08028AA5
	DCB 0x3F
_08028AA6
	DCB 0x2F, 0x00
loc_8028aa8
	cmp r4, #0xff
	beq _08028ABA
	ldr r5, _08028BDC ;@ =gUnknown_03003460
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
_08028ABA
	ldr r0, _08028BDC ;@ =gUnknown_03003460
	movs r1, #0x40
	ldr r0, [r0]
	bl sub_800B6EC
_08028AC4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
loc_8028aca
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b _08028AC4
loc_8028ad4
	cmp r4, #0xff
	beq _08028AE6
	ldr r5, _08028BDC ;@ =gUnknown_03003460
	bl sub_800B6AC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800B698
_08028AE6
	ldr r0, _08028BDC ;@ =gUnknown_03003460
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r0]
	bl sub_800B6EC
	b _08028AC4
loc_8028af4
	movs r1, #0xff
	mvns r1, r1
	bl sub_800B6EC
	b _08028AC4
loc_8028afe
	ldr r7, _08028BDC ;@ =gUnknown_03003460
	bl sub_800B72A
	cmp r0, #0
	beq _08028B16
	movs r1, #0xff
	mvns r1, r1
	ldr r0, [r7]
	bl sub_800B6EC
	strb r4, [r5]
	b _08028AC4
_08028B16
	adds r2, r4, #0
	movs r1, #3
	adds r0, r6, #0
	b _08028A7E
loc_8028b1e
	ldr r0, _08028BE0 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B764
	strb r0, [r5, #6]
	strb r4, [r5]
	b _08028AC4

	thumb_func_start sub_8028B2C
sub_8028B2C ;@ 0x08028B2C
	ldr r1, _08028BDC ;@ =gUnknown_03003460
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	cmp r1, #0
	beq _08028B62
	movs r2, #0x13
	lsls r2, r2, #8
	adds r4, r0, r2
	ldrb r0, [r4, #5]
	cmp r0, #7
	bhs _08028B62
	add r3, pc, #0x8 ;@ =_08028B4C
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08028B4C
	DCB 0x0B
_08028B4D
	DCB 0x04
_08028B4E
	DCB 0x0E
_08028B4F
	DCB 0x04
_08028B50
	DCB 0x0E
_08028B51
	DCB 0x32
_08028B52
	DCB 0x1C, 0x00
loc_8028b54
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne _08028B62
	strb r0, [r4, #4]
	strb r0, [r4, #5]
_08028B62
	pop {r3, r4, r5}
	pop {r3}
	bx r3
loc_8028b68
	ldr r5, _08028BDC ;@ =gUnknown_03003460
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne _08028B62
	movs r0, #1
	strb r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #5]
	ldr r0, [r5]
	bl sub_800B6AC
	b _08028B62
loc_8028b84
	ldr r5, _08028BDC ;@ =gUnknown_03003460
	adds r0, r1, #0
	bl sub_800B714
	cmp r0, #0
	bne _08028B62
	ldr r0, [r5]
	bl sub_800B6AC
	movs r1, #0xff
	adds r1, #1
	ldr r0, [r5]
	bl sub_800B6EC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	b _08028B62
loc_8028bb0
	ldr r0, _08028BE0 ;@ =gUnknown_03003E94
	ldr r0, [r0]
	bl sub_800B764
	ldrb r1, [r4, #6]
	cmp r0, r1
	beq _08028B62
	ldr r5, _08028BDC ;@ =gUnknown_03003460
	ldr r0, [r5]
	bl sub_800B6AC
	ldrb r1, [r4]
	ldr r0, [r5]
	bl sub_800B698
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	strb r0, [r4, #5]
	b _08028B62
	ALIGN
_08028BD8 DCDU 0x00002B11
_08028BDC DCDU gUnknown_03003460
_08028BE0 DCDU gUnknown_03003E94

	thumb_func_start sub_8028BE4
sub_8028BE4 ;@ 0x08028BE4
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_80121C4
	cmp r0, #0
	beq _08028BF8
	movs r0, #1
_08028BF2
	add sp, #4
	pop {r3}
	bx r3
_08028BF8
	movs r0, #0
	b _08028BF2

	thumb_func_start sub_8028BFC
sub_8028BFC ;@ 0x08028BFC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08028C78 ;@ =gUnknown_03003460
	ldr r0, [r0]
	cmp r0, #0
	beq _08028C28
	movs r4, #0
_08028C0A
	lsls r0, r4, #5
	adds r5, r0, r6
	ldr r0, [r5, #8]
	bl sub_80121C4
	cmp r0, #0
	beq _08028C1E
	adds r0, r5, #4
	bl sub_8012334
_08028C1E
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x98
	blo _08028C0A
_08028C28
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8028C2E
sub_8028C2E ;@ 0x08028C2E
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #4
	bl sub_801220C
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8028C42
sub_8028C42 ;@ 0x08028C42
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028C56
	adds r0, r4, #4
	bl sub_80122F0
	movs r0, #1
	strb r0, [r4]
_08028C56
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8028C5C
sub_8028C5C ;@ 0x08028C5C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028C70
	adds r0, r4, #4
	bl sub_801230C
	movs r0, #0
	strb r0, [r4]
_08028C70
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08028C78 DCDU gUnknown_03003460

	thumb_func_start sub_8028C7C
sub_8028C7C ;@ 0x08028C7C
	push {r4, lr}
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	movs r3, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq _08028C9A
	adds r0, r4, #0
	bl sub_8023D0C
_08028C9A
	ldr r0, _08028CDC ;@ =gUnknown_030034F8
	ldr r1, _08028CE0 ;@ =gUnknown_03003478
	str r4, [r0]
	ldr r1, [r1]
	movs r0, #0x10
	ands r1, r0
	beq _08028CAC
	movs r1, #1
	b _08028CAE
_08028CAC
	movs r1, #0
_08028CAE
	adds r0, r4, #0
	bl sub_80247A4
	ldr r4, _08028CE4 ;@ =gUnknown_03003458
	ldr r0, [r4]
	bl sub_801CCA8
	ldr r0, [r4]
	bl sub_801B56C
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_801C7D2
	bl sub_8018070
	movs r0, #0x12
	bl sub_8018386
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08028CDC DCDU gUnknown_030034F8
_08028CE0 DCDU gUnknown_03003478
_08028CE4 DCDU gUnknown_03003458

	thumb_func_start sub_8028CE8
sub_8028CE8 ;@ 0x08028CE8
	push {r4, lr}
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl sub_800E71C
	ldr r3, _08028D50 ;@ =gUnknown_03003478
	movs r0, #0x10
	ldr r2, [r3]
	ldr r1, _08028D58 ;@ =gUnknown_03003D20
	bics r2, r0
	ldr r0, _08028D54 ;@ =gUnknown_03003458
	str r2, [r3]
	ldr r0, [r0]
	movs r4, #0
	strb r4, [r1]
	movs r1, #0x10
	bics r2, r1
	str r2, [r3]
	bl sub_801BEA0
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	adds r3, r4, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq _08028D30
	adds r0, r4, #0
	bl sub_8023D0C
_08028D30
	ldr r0, _08028D5C ;@ =gUnknown_030034F8
	movs r1, #0
	str r4, [r0]
	adds r0, r4, #0
	bl sub_80247A4
	bl sub_800EF2A
	bl sub_8018070
	movs r0, #0x12
	bl sub_8018386
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08028D50 DCDU gUnknown_03003478
_08028D54 DCDU gUnknown_03003458
_08028D58 DCDU gUnknown_03003D20
_08028D5C DCDU gUnknown_030034F8

	thumb_func_start sub_8028D60
sub_8028D60 ;@ 0x08028D60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	add r6, sp, #8
	adds r0, r6, #0
	bl sub_802B288
	ldr r0, _08028F44 ;@ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0xc
	adds r0, r0, r1
	ldr r2, _08028F48 ;@ =gUnknown_03003478
	ldr r5, [r0, #0x1c]
	ldr r1, [r2]
	movs r0, #8
	orrs r0, r1
	str r0, [r2]
	mov r0, sp
	mov r4, sp
	bl sub_80046F8
	movs r1, #1
	adds r0, r4, #0
	bl sub_800476C
	ldr r7, _08028F4C ;@ =gUnknown_03003458
	movs r2, #0x3f
	ldr r0, [r7]
	ldrh r0, [r0, #0x1c]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_8004784
	ldr r0, [r7]
	adds r0, #0x10
	ldrb r1, [r0, #0xe]
	movs r0, #0x10
	subs r2, r0, r1
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	ldr r2, [r7]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r2, #0x1c]
	ldrh r0, [r1]
	lsls r2, r2, #8
	orrs r0, r2
	strh r0, [r1]
	bl sub_8018390
	cmp r0, #0x12
	bne _08028E76
_08028DD6
	ldr r0, _08028F44 ;@ =gUnknown_03003454
	movs r1, #0xff
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _08028F50 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	lsls r3, r0, #0x1c
	bmi _08028DEE
	ldrh r2, [r1, #6]
_08028DEE
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x1c
	adds r0, r5, #0
	bl sub_80158E0
	cmp r0, #0
	beq _08028E06
	adds r0, r5, #0
	bl sub_8016108
	b _08028E5C
_08028E06
	adds r0, r6, #0
	bl sub_802B382
	cmp r0, #0
	beq _08028E18
	adds r0, r6, #0
	bl sub_802BA20
	b _08028E5C
_08028E18
	movs r1, #5
	ldr r0, [r7]
	lsls r1, r1, #8
	adds r1, r0, r1
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	bne _08028E34
	lsls r2, r4, #0x1c
	bpl _08028E34
	adds r0, r6, #0
	bl sub_802B3D6
	b _08028E5C
_08028E34
	cmp r1, #0
	bne _08028E44
	lsls r1, r4, #0x1d
	bpl _08028E44
	movs r0, #4
	bl sub_8018386
	b _08028E5C
_08028E44
	adds r4, r7, #0
	bl sub_801C7D2
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	adds r0, #0x80
	ldr r0, [r0, #0x1c]
	cmp r0, #0x10
	bne _08028E5C
	movs r0, #0x16
	bl sub_8018386
_08028E5C
	ldr r0, [r7]
	bl sub_801CB4E
	ldr r0, _08028F54 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_80241DA
	bl sub_800EF2A
	bl sub_8018390
	cmp r0, #0x12
	beq _08028DD6
_08028E76
	ldr r2, _08028F48 ;@ =gUnknown_03003478
	movs r1, #0
	ldr r1, [r2]
	movs r0, #8
	bics r1, r0
	ldr r4, _08028F58 ;@ =gUnknown_0300345C
	str r1, [r2]
	ldr r0, [r4]
	bl sub_8028BFC
	ldr r5, _08028F54 ;@ =gUnknown_030034F8
	ldr r0, [r5]
	cmp r0, #0
	beq _08028E98
	movs r1, #1
	bl sub_8023F88
_08028E98
	movs r0, #0
	str r0, [r5]
	bl sub_800EF2A
	ldr r2, [r7]
	movs r1, #1
	lsls r1, r1, #0x1a
	ldrh r2, [r2, #0x1c]
	ldrh r0, [r1]
	lsls r2, r2, #8
	bics r0, r2
	strh r0, [r1]
	bl sub_8018390
	cmp r0, #4
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0x15
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0xd
	beq _08028EE6
	bl sub_8018390
	cmp r0, #0x14
	beq _08028EE6
	bl sub_801810E
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	ldr r0, [r7]
	bl sub_801B170
	b _08028F18
_08028EE6
	bl sub_8018390
	cmp r0, #0x15
	bne _08028EFE
	bl sub_801810E
	movs r2, #0xff
	movs r1, #2
	ldr r0, [r4]
	bl sub_8028A7C
	b _08028F0C
_08028EFE
	bl sub_80180BE
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
_08028F0C
	ldr r0, [r7]
	bl sub_801CC3C
	ldr r0, [r7]
	bl sub_801CC72
_08028F18
	ldr r0, _08028F5C ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, _08028F60 ;@ =gUnknown_03003450
	movs r1, #1
	ldr r0, [r0]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	movs r1, #0
	adds r0, r6, #0
	bl sub_802B390
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08028F44 DCDU gUnknown_03003454
_08028F48 DCDU gUnknown_03003478
_08028F4C DCDU gUnknown_03003458
_08028F50 DCDU gUnknown_03003444
_08028F54 DCDU gUnknown_030034F8
_08028F58 DCDU gUnknown_0300345C
_08028F5C DCDU gUnknown_03003468
_08028F60 DCDU gUnknown_03003450

	thumb_func_start sub_8028F64
sub_8028F64 ;@ 0x08028F64
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _08029040 ;@ =gUnknown_03003E98
	ldr r1, _08029044 ;@ =gPlayerEntity
	ldr r0, [r5]
	ldr r4, [r1]
	movs r1, #0x88
	ldr r0, [r0, #8]
	ldr r1, [r1, r4]
	subs r0, r0, r1
	bl sub_80406C4
	ldr r0, [r4]
	adds r0, r1, r0
	str r0, [r4]
	movs r0, #0
	bl sub_800E53C
	ldr r4, _08029048 ;@ =gUnknown_03003454
	ldr r0, [r4]
	bl sub_8017B9A
	bl sub_800EF2A
	movs r1, #3
	ldr r0, [r5]
	bl sub_800B058
	ldr r0, _0802904C ;@ =gUnknown_03003EB4
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #0x18
	movs r7, #0
	cmp r0, #0
	beq _08028FBA
	movs r0, #0
	ldr r2, _08029050 ;@ =0x05000020
	str r0, [sp]
	adds r1, r2, #0
	subs r1, #0x20
	mov r0, sp
	bl sub_803D468
	b _08028FCC
_08028FBA
	movs r0, #0
	str r0, [sp]
	ldr r0, _08029054 ;@ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08029058 ;@ =0x85000020
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08028FCC
	add r0, pc, #0x8C ;@ =_0802905C
	bl sub_800EF60
	bl sub_8018070
	ldr r5, _08029064 ;@ =gUnknown_03003468
	ldr r0, [r5]
	bl sub_803DA4C
	ldr r6, _08029068 ;@ =gUnknown_03003C58
	movs r1, #0
	ldrh r0, [r6]
	bl sub_800ED7C
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r7, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl sub_80050C0
	str r0, [r5]
	movs r0, #0
	bl sub_800E71C
	ldr r0, [r4]
	bl sub_8017CA0
	ldr r0, _08029040 ;@ =gUnknown_03003E98
	ldr r1, _08029044 ;@ =gPlayerEntity
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0, #8]
	adds r1, #0x80
	str r0, [r1, #8]
	ldrh r0, [r6]
	cmp r0, #6
	bne _08029038
	ldr r0, _0802906C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_801B170
	movs r0, #0x17
	bl sub_8018386
_08029032
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08029038
	movs r0, #0x11
	bl sub_8018386
	b _08029032
	ALIGN
_08029040 DCDU gUnknown_03003E98
_08029044 DCDU gPlayerEntity
_08029048 DCDU gUnknown_03003454
_0802904C DCDU gUnknown_03003EB4
_08029050 DCDU 0x05000020
_08029054 DCDU 0x040000D4
_08029058 DCDU 0x85000020
_0802905C DCDU 0x6F4D6742
_08029060 DCDU 0x00656976
_08029064 DCDU gUnknown_03003468
_08029068 DCDU gUnknown_03003C58
_0802906C DCDU gUnknown_03003458

	thumb_func_start sub_8029070
sub_8029070 ;@ 0x08029070
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne _08029088
	movs r0, #0xe0
	bl sub_803D9F8
	adds r4, r0, #0
	bne _08029088
	adds r0, r4, #0
_08029082
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08029088
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _08029354 ;@ =gUnknown_0803E5F4
	movs r2, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	str r2, [r0, #0x20]
	adds r1, r4, #0
	adds r1, #0xa0
	str r2, [r0, #0x24]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r1, [r0, #0x2c]
	movs r3, #8
	lsrs r1, r1, #3
	lsls r1, r1, #3
	bics r1, r3
	ldr r3, _08029358 ;@ =0xFFFF000F
	adds r5, r4, #0
	ands r1, r3
	movs r3, #0x33
	lsls r3, r3, #6
	adds r1, r1, r3
	movs r3, #1
	lsls r3, r3, #0x10
	orrs r1, r3
	lsls r3, r3, #1
	bics r1, r3
	ldr r3, _0802935C ;@ =0xF803FFFF
	adds r5, #0xb8
	ands r1, r3
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	movs r3, #7
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r3, r3, #0x10
	bics r1, r3
	movs r3, #0xff
	lsls r3, r3, #0x13
	bics r1, r3
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x34]
	movs r3, #3
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsls r3, r3, #8
	bics r1, r3
	movs r3, #1
	lsls r3, r3, #0xe
	bics r1, r3
	str r1, [r0, #0x34]
	movs r1, #0xb6
	strb r2, [r1, r4]
	movs r1, #0
	movs r3, #0
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	stm r5!, {r3}
	ldr r1, _08029360 ;@ =gUnknown_0300327E
	movs r3, #0xf
	ldrb r1, [r1, #3]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x34]
	adds r0, r4, #0
	b _08029082

	thumb_func_start sub_802911C
sub_802911C ;@ 0x0802911C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08029354 ;@ =gUnknown_0803E5F4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _08029138
	adds r0, r4, #0
	bl sub_803DA18
_08029138
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802913E
sub_802913E ;@ 0x0802913E
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x80
	mov lr, r2
	ldr r2, [r1, #0x30]
	add r6, sp, #0x30
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	ldr r3, [r2]
	ldm r6!, {r4, r5, r6}
	lsrs r7, r3, #1
	mov r3, ip
	lsls r3, r3, #0x1f
	lsrs r3, r3, #0x1f
	lsls r7, r7, #1
	orrs r3, r7
	str r3, [r2]
	movs r7, #0xe
	bics r3, r7
	ldr r2, [r1, #0x30]
	mov r7, lr
	lsls r7, r7, #0x1d
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r7, r7, #0x1c
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0xff
	lsls r7, r7, #4
	bics r3, r7
	ldr r7, [sp, #0xc]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x14
	lsls r2, r2, #3
	adds r2, r2, r0
	orrs r3, r7
	adds r2, #0xb8
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, _08029364 ;@ =0xFFC00FFF
	lsls r2, r2, #0xd
	ands r3, r7
	ldr r7, [sp, #0x24]
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	lsls r7, r7, #0x16
	lsrs r7, r7, #0xa
	adds r2, r2, r0
	adds r2, #0xb8
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x3f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	ldr r3, [r2]
	lsls r7, r7, #8
	bics r3, r7
	ldr r7, [sp, #0x28]
	lsls r4, r4, #0x1b
	lsls r7, r7, #0x1a
	lsrs r7, r7, #0x12
	orrs r3, r7
	str r3, [r2]
	ldr r2, [r1, #0x30]
	ldr r7, [sp, #0x2c]
	lsrs r3, r3, #8
	lsls r2, r2, #0xd
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	lsrs r2, r2, #0x1d
	lsls r3, r3, #8
	orrs r3, r7
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r7, #0x1f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r7, r7, #0xe
	bics r3, r7
	lsls r2, r2, #3
	lsrs r4, r4, #0xd
	orrs r3, r4
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	lsls r4, r7, #5
	bics r3, r4
	lsls r4, r5, #0x1b
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsrs r4, r4, #8
	orrs r3, r4
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r2, #0xbc
	str r3, [r2]
	ldr r2, [r1, #0x30]
	movs r3, #0x7f
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	lsls r2, r2, #3
	adds r0, r2, r0
	adds r0, #0xb8
	ldr r2, [r0]
	lsls r3, r3, #0x17
	bics r2, r3
	lsls r3, r6, #0x19
	lsrs r3, r3, #2
	orrs r2, r3
	str r2, [r0]
	ldr r0, [r1, #0x30]
	movs r2, #7
	lsls r2, r2, #0x10
	movs r4, #1
	adds r3, r0, #0
	lsls r4, r4, #0x10
	adds r0, r0, r4
	ands r0, r2
	bics r3, r2
	orrs r0, r3
	str r0, [r1, #0x30]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802925C
sub_802925C ;@ 0x0802925C
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	sub sp, #0x18
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8029290
sub_8029290 ;@ 0x08029290
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r0, [r3]
	sub sp, #0x18
	cmp r0, #0x22
	beq _080292CE
	cmp r0, #0x24
	bne _080292DC
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
_080292C6
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3
_080292CE
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl sub_803B8CC
	b _080292C6
_080292DC
	adds r0, r4, #0
	bl sub_801DD40
	b _080292C6

	thumb_func_start sub_80292E4
sub_80292E4 ;@ 0x080292E4
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x21
	beq _080292FA
	cmp r2, #0x24
	bne _0802934E
	movs r0, #1
_080292F4
	add sp, #4
	pop {r3}
	bx r3
_080292FA
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0x1c]
	cmp r2, #4
	bne _0802934A
	ldr r2, [r1, #0x2c]
	movs r3, #8
	bics r2, r3
	str r2, [r1, #0x2c]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r0
	adds r1, #0x80
	ldr r2, [r1, #0x38]
	lsls r1, r2, #0x1f
	bmi _08029346
	adds r1, r0, #0
	adds r1, #0x90
	ldrb r3, [r1, #9]
	cmp r3, #0
	beq _08029346
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne _08029330
	ldr r2, [r0, #0x74]
	str r2, [r0, #0x70]
_08029330
	ldr r0, _08029368 ;@ =gUnknown_03003458
	movs r2, #0x29
	ldr r0, [r0]
	lsls r2, r2, #5
	adds r0, r0, r2
	ldrb r2, [r0, #2]
	adds r2, #0xff
	strb r2, [r0, #2]
	ldrb r0, [r1, #9]
	adds r0, #0xff
	strb r0, [r1, #9]
_08029346
	movs r0, #1
	b _080292F4
_0802934A
	movs r0, #0
	b _080292F4
_0802934E
	bl sub_801DF50
	b _080292F4
	ALIGN
_08029354 DCDU gUnknown_0803E5F4
_08029358 DCDU 0xFFFF000F
_0802935C DCDU 0xF803FFFF
_08029360 DCDU gUnknown_0300327E
_08029364 DCDU 0xFFC00FFF
_08029368 DCDU gUnknown_03003458

	thumb_func_start sub_802936C
sub_802936C ;@ 0x0802936C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r5, [r4, #0x30]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _08029390
	ldr r0, _080296BC ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_08029390
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r6, #0xc]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x1c
	beq _080293C6
	lsrs r0, r0, #0x1c
	ldr r1, _080296C0 ;@ =gUnknown_08050FD4
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #0x20
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #0x30]
	bl sub_800065C
_080293C0
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_080293C6
	ldr r1, _080296C4 ;@ =0x000011EF
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _080293C0

	thumb_func_start sub_80293D0
sub_80293D0 ;@ 0x080293D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, #0x80
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	beq _080293E8
	adds r0, r5, #0
	bl sub_802936C
_080293E8
	ldr r1, _080296C8 ;@ =0xF803FFFF
	ldr r0, [r4, #0x2c]
	movs r2, #7
	ands r0, r1
	lsls r1, r6, #0x17
	lsrs r1, r1, #5
	orrs r1, r0
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	lsls r2, r2, #0x10
	bics r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r5]
	adds r0, r5, #0
	ldr r3, [r2, #0x40]
	lsls r1, r1, #6
	adds r2, r3, r2
	lsrs r1, r1, #0x18
	bl sub_803B8CC
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	adds r5, #0xb0
	strb r0, [r5, #6]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8029420
sub_8029420 ;@ 0x08029420
	push {r4, lr}
	ldr r3, [r1]
	adds r2, r0, #0
	ldrh r4, [r3, #8]
	adds r2, #0x80
	cmp r4, #0xd
	beq _0802947A
	bgt _0802945C
	cmp r4, #2
	beq _080294A6
	cmp r4, #3
	beq _08029456
	cmp r4, #4
	bne _080294E8
	ldr r1, [r3, #4]
	movs r0, #1
	lsls r1, r1, #0x10
	bne _08029446
	movs r0, #0
_08029446
	movs r3, #1
	lsls r3, r3, #0xe
	ldr r1, [r2, #0x34]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x11
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x34]
_08029456
	pop {r4}
	pop {r3}
	bx r3
_0802945C
	cmp r4, #0xe
	beq _08029494
	cmp r4, #0x13
	beq _080294AE
	cmp r4, #0x18
	bne _080294E8
	ldr r0, [r3, #4]
	ldr r3, _080296CC ;@ =0xFFFF000F
	ldr r1, [r2, #0x2c]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ands r1, r3
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _08029456
_0802947A
	ldr r1, [r3, #4]
	ldr r3, [r2, #0x30]
	ldr r4, _080296D0 ;@ =0xFFFF007F
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x10
	ands r3, r4
	orrs r1, r3
	str r1, [r2, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x17
	adds r0, #0xb0
	strb r1, [r0, #6]
	b _08029456
_08029494
	ldr r1, [r2, #0x30]
	ldr r0, [r3, #4]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	orrs r0, r1
	str r0, [r2, #0x30]
	b _08029456
_080294A6
	ldr r1, [r3, #4]
	bl sub_80293D0
	b _08029456
_080294AE
	ldr r0, _080296D4 ;@ =gUnknown_03003458
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	ldr r1, [r3, #4]
	adds r2, r0, r2
	ldr r3, [r2, #0x1c]
	movs r4, #0x7f
	lsls r4, r4, #0x14
	lsls r1, r1, #0x19
	lsrs r1, r1, #5
	bics r3, r4
	orrs r1, r3
	movs r3, #1
	lsls r3, r3, #9
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	str r1, [r2, #0x1c]
	movs r2, #0x29
	lsls r2, r2, #5
	movs r1, #0
	adds r0, r0, r2
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	b _08029456
_080294E8
	bl sub_801E2DA
	b _08029456

	non_word_aligned_thumb_func_start sub_80294EE
sub_80294EE ;@ 0x080294EE
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r5, #0
	adds r4, #0x80
	ldrb r0, [r0, #4]
	ldr r1, [r4, #0x2c]
	lsrs r1, r1, #3
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #0xb
	bhs _0802959C
	add r3, pc, #0x4 ;@ =_08029518
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08029518
	DCB 0x05
_08029519
	DCB 0x05
_0802951A
	DCB 0x1E
_0802951B
	DCB 0x1E
_0802951C
	DCB 0x1E
_0802951D
	DCB 0x1E
_0802951E
	DCB 0x41
_0802951F
	DCB 0x30
_08029520
	DCB 0x30
_08029521
	DCB 0x30
_08029522
	DCB 0x30, 0x00
loc_8029524
	bl sub_803BE1C
	adds r1, r0, #0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1d
	bl sub_803C04C
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r0, r0, #3
	lsls r0, r0, #3
	lsrs r1, r1, #0x1d
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	movs r2, #1
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b _0802959C
loc_8029556
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #6
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	bics r1, r2
	str r1, [r0]
	b _0802959C
loc_802957a
	ldr r0, [r4, #0x2c]
	movs r2, #1
	lsrs r1, r0, #3
	adds r0, #1
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0xb8
	ldr r1, [r0]
	lsls r2, r2, #0x16
	orrs r1, r2
	str r1, [r0]
_0802959C
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r5
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0x1f
	bmi _080295BE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x58]
	adds r1, r2, r1
	bl sub_803B8CA
_080295B8
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_080295BE
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl sub_803B8CA
	b _080295B8

	thumb_func_start sub_80295CC
sub_80295CC ;@ 0x080295CC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080296D4 ;@ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldm r0!, {r6, r7}
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp]
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1a
	beq _080296B8
	ldr r0, _080296D8 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802960E
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802960E
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x10
	lsls r0, r0, #4
	lsrs r2, r0, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x10]
	lsrs r1, r1, #0x10
	cmp r1, r2
	bne _080296B8
	ldr r1, [r4, #0x30]
	ldr r2, _080296DC ;@ =gUnknown_03003D24
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x1c
	beq _0802964E
	cmp r0, #1
	beq _0802965C
	cmp r0, #2
	beq _08029668
	cmp r0, #3
	bne _080296B8
	ldr r0, [r2]
	ldr r2, [r4, #0x5c]
	subs r0, r7, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt _080296B8
	b _08029674
_0802964E
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	subs r0, r6, r0
	adds r1, r2, r1
	cmp r0, r1
	blt _080296B8
	b _08029674
_0802965C
	ldr r0, [r2]
	ldr r1, [r4, #0x5c]
	subs r0, r7, r0
	cmp r0, r1
	blt _080296B8
	b _08029674
_08029668
	ldr r0, [r2]
	ldr r2, [r4, #0x58]
	adds r0, r6, r0
	subs r1, r2, r1
	cmp r0, r1
	bgt _080296B8
_08029674
	ldr r0, _080296D8 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	ldr r1, [sp]
	asrs r0, r0, #2
	ldr r1, [r1, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x3c]
	lsls r2, r1, #0xd
	lsrs r2, r2, #0x1b
	cmp r2, r0
	bhi _080296B8
	lsls r2, r1, #8
	lsrs r2, r2, #0x1b
	cmp r2, r0
	blo _080296B8
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1a
_080296B2
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080296B8
	movs r0, #0
	b _080296B2
	ALIGN
_080296BC DCDU gUnknown_03003EB8
_080296C0 DCDU gUnknown_08050FD4
_080296C4 DCDU 0x000011EF
_080296C8 DCDU 0xF803FFFF
_080296CC DCDU 0xFFFF000F
_080296D0 DCDU 0xFFFF007F
_080296D4 DCDU gUnknown_03003458
_080296D8 DCDU gUnknown_03003EA0
_080296DC DCDU gUnknown_03003D24

	thumb_func_start sub_80296E0
sub_80296E0 ;@ 0x080296E0
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _080296F8
	movs r1, #0
_080296F8
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _0802970A
	movs r1, #0
_0802970A
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne _0802972A
	adds r1, #1
	cmp r1, #5
	bne _0802971C
	movs r1, #0
_0802971C
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0802972A
	movs r0, #1
	bx lr
_0802972A
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_802972E
sub_802972E ;@ 0x0802972E
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	sub sp, #0x1c
	lsls r0, r0, #0xe
	bmi _08029822
	adds r0, r4, #0
	bl sub_801EBCA
	movs r6, #0
	ldr r1, [r5, #0x1c]
	mvns r6, r6
	movs r7, #0
	cmp r1, #0xe
	ldr r0, _08029B28 ;@ =gUnknown_03003EA0
	bne _08029824
	ldr r7, [r4, #0x2c]
	ldr r0, [r0]
	ldr r1, [r7, #0x44]
	cmp r1, #0
	beq _08029768
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r6, r0, #3
_08029768
	ldr r0, [r4, #0x7c]
	lsls r1, r6, #0x10
	lsls r2, r0, #4
	lsrs r2, r2, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x18]
	lsrs r1, r1, #0x10
	cmp r1, r2
	beq _080297C4
	ldr r1, _08029B2C ;@ =gUnknown_03003454
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0x18]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080297C4
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080297C4
	ldr r6, [r4, #0x2c]
	ldrh r0, [r6, #0x28]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsrs r1, r1, #0x1c
	cmp r1, #2
	bne _080297E0
	ldr r2, [r5]
	lsls r2, r2, #0x1d
	bpl _080297E0
	movs r2, #1
	b _080297E2
_080297E0
	movs r2, #0
_080297E2
	cmp r0, r2
	beq _080298C6
	cmp r1, #2
	bne _080297F4
	ldr r0, [r5]
	lsls r0, r0, #0x1d
	bpl _080297F4
	movs r1, #1
	b _080297F6
_080297F4
	movs r1, #0
_080297F6
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
	movs r7, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _080298AC
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	blt _0802983A
	movs r2, #0xf
	lsls r2, r2, #0x14
	ldr r1, [r6, #0x34]
	b _08029826
_08029822
	b _080298F0
_08029824
	b _080298F8
_08029826
	cmp r1, r2
	bge _0802983A
	ldr r1, [r6, #0x40]
	cmp r1, #0
	blt _0802983A
	movs r2, #5
	ldr r1, [r6, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt _08029856
_0802983A
	lsls r0, r0, #0x16
	bmi _080298AC
	ldr r0, _08029B28 ;@ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r6]
	b _080298AC
_08029856
	lsls r0, r0, #0x16
	bpl _08029876
	ldr r0, _08029B28 ;@ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6]
_08029876
	ldr r0, [r6, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r6, #0x28]
	ldr r0, [r6, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r6, #0x26]
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
_080298AC
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080298C6
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_080298C6
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _080298F0
	ldr r1, _08029B2C ;@ =gUnknown_03003454
	movs r2, #2
	ldr r0, [r1]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0xb
	lsls r0, r0, #7
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	bics r0, r2
	strh r0, [r1, #0x18]
	movs r0, #4
	str r0, [r5, #0x1c]
_080298F0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080298F8
	cmp r1, #0x10
	bne _080299E2
	ldr r6, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08029B30 ;@ =0x00000F42
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _080298F0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r5, #0x10]
	lsls r0, r0, #3
	lsrs r1, r0, #0x17
	beq _08029948
	ldr r6, _08029B34 ;@ =gUnknown_0300345C
	lsls r0, r0, #1
	lsrs r0, r0, #0x18
	ldr r1, [r6]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	beq _08029948
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_08029948
	ldr r1, _08029B38 ;@ =0xE00FFFFF
	ldr r0, [r5, #0x10]
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	beq _080298F0
	ldr r0, _08029B2C ;@ =gUnknown_03003454
	movs r6, #4
	ldr r2, [r0]
	add r0, pc, #0x1DC ;@ =_08029B3C
	str r0, [sp, #8]
	str r2, [sp, #4]
	b _08029970
_08029966
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x40
	bhs _0802997C
_08029970
	ldr r2, [sp, #4]
	lsls r0, r6, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _08029966
_0802997C
	ldr r0, _08029B58 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xfd
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	ldr r2, [sp, #4]
	lsls r1, r6, #2
	adds r1, r1, r2
	adds r7, r1, #0
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	ldr r2, [sp, #4]
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0xff
	movs r1, #0xfd
	lsls r1, r1, #5
	adds r2, #0x99
	strh r1, [r2, r0]
	movs r1, #0xff
	adds r1, #0x19
	movs r3, #0
	strh r3, [r1, r0]
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	strh r3, [r1, #0x18]
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r0, #0x18]
	movs r2, #9
	lsls r2, r2, #7
	ldr r0, [sp, #8]
	adds r1, r7, r2
	str r0, [r1, #0x18]
	movs r0, #0x61
	ldr r2, [sp, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	b _080299E4
_080299E2
	b _08029A08
_080299E4
	ldrb r1, [r0, #8]
	movs r3, #1
	adds r1, #1
	strb r1, [r0, #8]
	str r4, [sp]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r0, _08029B2C ;@ =gUnknown_03003454
	adds r2, r6, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r1, _08029B5C ;@ =0xFFFF000F
	ldr r0, [r5, #0x2c]
	ands r0, r1
	str r0, [r5, #0x2c]
	b _080298F0
_08029A08
	cmp r1, #9
	beq _08029A10
_08029A0C
	bl sub_802AC4E
_08029A10
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bpl _08029A0C
	ldr r1, [r4, #0x2c]
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x48]
	subs r0, r1, r0
	asrs r1, r0, #2
	ldr r0, [r5, #0x2c]
	lsls r2, r0, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r4
	adds r2, #0x80
	ldr r2, [r2, #0x3c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1b
	cmp r1, r2
	blo _08029A0C
	lsls r1, r0, #0xf
	bpl _08029A0C
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq _08029A6C
_08029A68
	bl _0802A990
_08029A6C
	lsls r1, r0, #5
	lsrs r1, r1, #0x17
	subs r1, #0x27
	cmp r1, #0x17
	bhs _08029A80
	add r3, pc, #0xC ;@ =_08029A84
	adds r3, r3, r1
	ldrh r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_08029A80
	b _08029A68
	ALIGN
_08029A84
	DCB 0x18, 0x00
_08029A86
	DCB 0x7D, 0x00
_08029A88
	DCB 0xC0, 0x00
_08029A8A
	DCB 0xC0, 0x00
_08029A8C
	DCB 0x87, 0x07
_08029A8E
	DCB 0x87, 0x07
_08029A90
	DCB 0x87, 0x07
_08029A92
	DCB 0x46, 0x01
_08029A94
	DCB 0x87, 0x07
_08029A96
	DCB 0x87, 0x07
_08029A98
	DCB 0x87, 0x07
_08029A9A
	DCB 0xB5, 0x03
_08029A9C
	DCB 0x87, 0x07
_08029A9E
	DCB 0x03, 0x01
_08029AA0
	DCB 0x89, 0x01
_08029AA2
	DCB 0xE3, 0x02
_08029AA4
	DCB 0x87, 0x07
_08029AA6
	DCB 0x87, 0x07
_08029AA8
	DCB 0x87, 0x07
_08029AAA
	DCB 0xF8, 0x03
_08029AAC
	DCB 0x88, 0x04
_08029AAE
	DCB 0x13, 0x05
_08029AB0
	DCB 0x6F, 0x06
loc_8029ab2
	ldr r0, _08029B60 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029AD4
	adds r0, r7, #0
	bl sub_8031D00
_08029AD4
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029B64 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]

	thumb_func_start sub_8029B18
sub_8029B18 ;@ 0x08029B18
	ldr r1, [r4, #0x7c]
	movs r0, #7
	lsls r0, r0, #0x1c
	adds r2, r1, #0
	bics r1, r0
	adds r2, r2, r3
	b _08029B68
	ALIGN
_08029B28 DCDU gUnknown_03003EA0
_08029B2C DCDU gUnknown_03003454
_08029B30 DCDU 0x00000F42
_08029B34 DCDU gUnknown_0300345C
_08029B38 DCDU 0xE00FFFFF
_08029B3C DCDU 0x6D656E45
_08029B40 DCDU 0x65442079
_08029B44 DCDU 0x20687461
_08029B48 DCDU 0x69726353
_08029B4C DCDU 0x47207470
_08029B50 DCDU 0x70756F72
_08029B54 DCDU 0x00000000
_08029B58 DCDU gUnknown_03003468
_08029B5C DCDU 0xFFFF000F
_08029B60 DCDU gUnknown_0300346C
_08029B64 DCDU gUnknown_03003458
_08029B68
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029A80
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029A68
loc_8029b7c
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029B9E
	adds r0, r7, #0
	bl sub_802D2E8
_08029B9E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029C86
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029C86
loc_8029c02
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029C24
	adds r0, r7, #0
	bl sub_802C884
_08029C24
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029C86
	bics r1, r0
	str r1, [r4, #0x7c]
_08029C86
	b _08029D92
loc_8029c88
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029CAA
	adds r0, r7, #0
	bl sub_8031D00
_08029CAA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029D92
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029D92
loc_8029d0e
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029D30
	adds r0, r7, #0
	bl sub_803772C
_08029D30
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029D92
	bics r1, r0
	str r1, [r4, #0x7c]
_08029D92
	b _08029EFC
loc_8029d94
	lsls r0, r0, #0x1d
	bne _08029E1E
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _08029DBA
	adds r0, r7, #0
	bl sub_8031D00
_08029DBA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _08029EFC
	bics r1, r0
	str r1, [r4, #0x7c]
	b _08029EFC
_08029E1E
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _08029EFC
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029E4A
	adds r0, r6, #0
	bl sub_8031D00
_08029E4A
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x18]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029EB2
	bics r0, r2
	str r0, [r4, #0x7c]
_08029EB2
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029ED4
	adds r0, r6, #0
	bl sub_8031D00
_08029ED4
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r3, #1
	b _08029EFE
_08029EFC
	b _0802A0DA
_08029EFE
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _08029F60 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029F38
	bics r0, r2
	str r0, [r4, #0x7c]
_08029F38
	ldr r0, _08029F5C ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029F64
	adds r0, r6, #0
	bl sub_8031D00
	b _08029F64
	ALIGN
_08029F5C DCDU gUnknown_0300346C
_08029F60 DCDU gUnknown_03003458
_08029F64
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _08029FC4
	bics r0, r2
	str r0, [r4, #0x7c]
_08029FC4
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq _08029FE6
	adds r0, r6, #0
	bl sub_8031D00
_08029FE6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A0DA
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A0DA
loc_802a048
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A0DC
	cmp r0, #1
	beq _0802A136
	cmp r0, #2
	bne _0802A0DA
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A078
	adds r0, r7, #0
	bl sub_802C884
_0802A078
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A0DA
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A0DA
	b _0802A1EA
_0802A0DC
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A0FE
	adds r0, r7, #0
	bl sub_8031D00
_0802A0FE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	b _0802A138
_0802A136
	b _0802A166
_0802A138
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A1EA
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A1EA
_0802A166
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A188
	adds r0, r7, #0
	bl sub_802C884
_0802A188
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A1EA
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A1EA
	b _0802A300
loc_802a1ec
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A20E
	adds r0, r7, #0
	bl sub_802D2E8
_0802A20E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A300
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A300
loc_802a272
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A302
	cmp r0, #1
	bne _0802A300
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A29E
	adds r0, r7, #0
	bl sub_802DFF4
_0802A29E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A300
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A300
	b _0802A420
_0802A302
	ldr r0, _0802A374 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A324
	adds r0, r7, #0
	bl sub_802BFBC
_0802A324
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A370 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	bics r1, r0
	b _0802A378
	ALIGN
_0802A370 DCDU gUnknown_03003458
_0802A374 DCDU gUnknown_0300346C
_0802A378
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r2, r2, r3
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A420
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A420
loc_802a392
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A422
	cmp r0, #1
	bne _0802A420
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A3BE
	adds r0, r7, #0
	bl sub_803AE68
_0802A3BE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A420
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A420
	b _0802A536
_0802A422
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A444
	adds r0, r7, #0
	bl sub_802C884
_0802A444
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #5
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A536
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A536
loc_802a4a8
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A538
	cmp r0, #1
	bne _0802A536
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A4D4
	adds r0, r7, #0
	bl sub_802C884
_0802A4D4
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #6
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A536
	bics r1, r0
	str r1, [r4, #0x7c]
_0802A536
	b _0802A626
_0802A538
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A626
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A564
	adds r0, r6, #0
	bl sub_802BA4C
_0802A564
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x14]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A5CC
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A5CC
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A5EE
	adds r0, r6, #0
	bl sub_802BA4C
_0802A5EE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	b _0802A628
_0802A626
	b _0802A838
_0802A628
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A652
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A652
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A674
	adds r0, r6, #0
	bl sub_802BA4C
_0802A674
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A6D4
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A6D4
	ldr r0, _0802A758 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A6F6
	adds r0, r6, #0
	bl sub_802BA4C
_0802A6F6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802A75C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A838
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A838
	ALIGN
_0802A758 DCDU gUnknown_0300346C
_0802A75C DCDU gUnknown_03003458
loc_802a760
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq _0802A83A
	cmp r0, #1
	beq _0802A83C
	cmp r0, #2
	bne _0802A838
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A838
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A79A
	adds r0, r6, #0
	bl sub_803AB80
_0802A79A
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0xc]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A802
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A802
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A824
	adds r0, r6, #0
	bl sub_803AB80
_0802A824
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b _0802A83E
_0802A838
	b _0802A990
_0802A83A
	b _0802A99E
_0802A83C
	b _0802AA24
_0802A83E
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A88C
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A88C
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A8AE
	adds r0, r6, #0
	bl sub_803AB80
_0802A8AE
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A90E
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A90E
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802A930
	adds r0, r6, #0
	bl sub_803AB80
_0802A930
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802A990
	bics r0, r2
	str r0, [r4, #0x7c]
_0802A990
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
_0802A99A
	bl _080298F0
_0802A99E
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq _0802A9C0
	adds r0, r7, #0
	bl sub_802C884
_0802A9C0
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #7
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne _0802A990
	bics r1, r0
	str r1, [r4, #0x7c]
	b _0802A990
_0802AA24
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq _0802A990
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802AA50
	adds r0, r6, #0
	bl sub_802BA4C
_0802AA50
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_803B8D4
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x10]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802AAB8
	bics r0, r2
	str r0, [r4, #0x7c]
_0802AAB8
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802AADA
	adds r0, r6, #0
	bl sub_802BA4C
_0802AADA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AB5C ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802AB3A
	bics r0, r2
	str r0, [r4, #0x7c]
_0802AB3A
	ldr r0, _0802AB58 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	b _0802AB60
	ALIGN
_0802AB58 DCDU gUnknown_0300346C
_0802AB5C DCDU gUnknown_03003458
_0802AB60
	beq _0802AB68
	adds r0, r6, #0
	bl sub_802BA4C
_0802AB68
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne _0802ABC8
	bics r0, r2
	str r0, [r4, #0x7c]
_0802ABC8
	ldr r0, _0802AF74 ;@ =gUnknown_0300346C
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq _0802ABEA
	adds r0, r6, #0
	bl sub_802BA4C
_0802ABEA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl sub_803B8D6
	ldr r0, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	beq _0802AC48
	b _0802A990
_0802AC48
	bics r0, r2
	str r0, [r4, #0x7c]
	b _0802A990

	non_word_aligned_thumb_func_start sub_802AC4E
sub_802AC4E ;@ 0x0802AC4E
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	bne _0802AC56
_0802AC54
	b _0802A99A
_0802AC56
	ldr r1, _0802AF78 ;@ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne _0802AC54
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl _0802AC54
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0802A99A

	thumb_func_start sub_802AC74
sub_802AC74 ;@ 0x0802AC74
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	NEGS r4, r2
	subs r3, r1, r3
	cmp r2, #0
	blt _0802AC8A
	adds r4, r2, #0
_0802AC8A
	NEGS r5, r3
	cmp r3, #0
	blt _0802AC92
	adds r5, r3, #0
_0802AC92
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble _0802ACB4
	cmp r2, #0
	ble _0802ACAE
	str r1, [r0, #0x7c]
_0802ACAA
	pop {r4, r5, r6, r7}
	bx lr
_0802ACAE
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACB4
	cmp r5, r4
	ble _0802ACD0
	cmp r3, #0
	ble _0802ACC6
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACC6
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACD0
	cmp r2, #0
	ble _0802ACD8
	str r1, [r0, #0x7c]
	b _0802ACAA
_0802ACD8
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b _0802ACAA

	non_word_aligned_thumb_func_start sub_802ACDE
sub_802ACDE ;@ 0x0802ACDE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #0x7c]
	movs r7, #0
	movs r6, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq _0802AD50
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bne _0802AD50
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x1e
	beq _0802AD30
	adds r0, r4, #0
	ldr r1, _0802AF70 ;@ =gUnknown_03003458
	adds r0, #0x58
	cmp r2, #1
	ldr r1, [r1]
	beq _0802ADD8
	cmp r2, #2
	bne _0802AD50
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x3c
	bhs _0802ADF4
	movs r6, #1
	b _0802AEBC
_0802AD30
	bl sub_803BE1C
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AD58
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r5, #0x34]
_0802AD50
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802AD58
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	ble _0802AD64
	movs r0, #0
	b _0802AD6A
_0802AD64
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0802AD6A
	ldr r1, [r5, #0x34]
	lsls r2, r1, #0x12
	lsrs r2, r2, #0x1c
	adds r0, r2, r0
	bpl _0802AD78
	adds r0, #0xc
	b _0802AD7E
_0802AD78
	cmp r0, #0xc
	blt _0802AD7E
	subs r0, #0xc
_0802AD7E
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r3
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	beq _0802AD50
	lsrs r2, r1, #0x18
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C ;@ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802ADA8
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802ADA8
	ldr r0, _0802AF84 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802ADD6
	b _0802AD50
_0802ADD8
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x32
	bls _0802ADF6
	movs r0, #1
	str r0, [sp, #8]
	b _0802AE26
_0802ADF4
	b _0802AEA8
_0802ADF6
	bl sub_803BE1C
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AE0C
	movs r7, #1
	b _0802AE26
_0802AE0C
	cmp r0, #0x75
	ble _0802AE22
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	subs r1, #0xff
	subs r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x34]
	b _0802AE26
_0802AE22
	movs r0, #1
	str r0, [sp, #8]
_0802AE26
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0802AEBC
	ldr r0, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq _0802ADD6
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C ;@ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802AE78
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AE78
	ldr r0, _0802AF84 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802AEA6
	b _0802AD50
_0802AEA8
	bl sub_803BE1C
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble _0802AEBE
	movs r7, #1
_0802AEBC
	b _0802AED0
_0802AEBE
	cmp r0, #0x75
	ble _0802AECE
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	str r0, [r5, #0x34]
	b _0802AED0
_0802AECE
	movs r6, #1
_0802AED0
	cmp r6, #0
	beq _0802AF88
	ldr r1, _0802AF70 ;@ =gUnknown_03003458
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #4
	lsrs r0, r0, #0x1c
	adds r0, #2
	bpl _0802AEFA
	adds r0, #4
	b _0802AF00
_0802AEFA
	cmp r0, #4
	blt _0802AF00
	subs r0, #4
_0802AF00
	movs r2, #0xf
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	str r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq _0802AEA6
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C ;@ =gUnknown_0300327E
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne _0802AF40
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AF40
	ldr r0, _0802AF84 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80 ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_0802AF6E
	b _0802AD50
	ALIGN
_0802AF70 DCDU gUnknown_03003458
_0802AF74 DCDU gUnknown_0300346C
_0802AF78 DCDU gUnknown_03003478
_0802AF7C DCDU gUnknown_0300327E
_0802AF80 DCDU gUnknown_03003454
_0802AF84 DCDU gUnknown_03003E88
_0802AF88
	cmp r7, #0
	beq _0802AEA6
	ldr r1, _0802B268 ;@ =gUnknown_03003458
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq _0802AF6E
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _0802AFB8
	ldr r0, _0802B26C ;@ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
_0802AFB8
	ldr r0, _0802B270 ;@ =gUnknown_03003E88
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x21
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #4]
	movs r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802B26C ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b _0802AD50

	non_word_aligned_thumb_func_start sub_802AFEA
sub_802AFEA ;@ 0x0802AFEA
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r1, [r5, #0x24]
	ldr r2, [r4, #0x5c]
	sub sp, #0xc
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0802B016
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_0802B016
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl _0802B036
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r2, r2, #0xa
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x34]
_0802B036
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B03E
sub_802B03E ;@ 0x0802B03E
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x2c]
	bx lr

	non_word_aligned_thumb_func_start sub_802B04A
sub_802B04A ;@ 0x0802B04A
	adds r0, #0x80
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_802B054
sub_802B054 ;@ 0x0802B054
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_801E124
	ldr r1, _0802B274 ;@ =gUnknown_03003478
	movs r0, #0x10
	ldr r1, [r1]
	ands r1, r0
	beq _0802B070
	ldr r0, _0802B278 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	bl sub_8023FE4
_0802B070
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x24]
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r2, r1
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq _0802B098
	cmp r0, #0x10
	beq _0802B098
	adds r0, r4, #0
	bl sub_802936C
_0802B098
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start nullsub_52
nullsub_52 ;@ 0x0802B0A0
	bx lr

	non_word_aligned_thumb_func_start sub_802B0A2
sub_802B0A2 ;@ 0x0802B0A2
	ldr r0, _0802B27C ;@ =gUnknown_03003E98
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0802B0B4
	movs r0, #0
_0802B0B4
	ldr r1, _0802B280 ;@ =gUnknown_0300345C
	adds r0, #0x42
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B0CA
sub_802B0CA ;@ 0x0802B0CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801F65C
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _0802B284 ;@ =0x8007FFFF
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x1c]
	cmp r1, #9
	bne _0802B10A
	ldr r1, [r0, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bmi _0802B10A
	ldr r1, _0802B268 ;@ =gUnknown_03003458
	movs r2, #0x29
	ldr r1, [r1]
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r2, [r1, #2]
	adds r2, #0xff
	strb r2, [r1, #2]
_0802B10A
	movs r1, #0xf
	str r1, [r0, #0x1c]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_802B114
sub_802B114 ;@ 0x0802B114
	push {r4, r5, r6, lr}
	ldr r6, _0802B268 ;@ =gUnknown_03003458
	adds r4, r0, #0
	ldr r0, [r6]
	sub sp, #8
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	bhi _0802B150
	lsls r0, r1, #9
	bpl _0802B1C4
_0802B150
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r1, [r0, #0x38]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _0802B198
	movs r2, #7
	ldr r1, [r5, #0x14]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r5, #0x14]
	ldr r1, [r0, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x70]
	asrs r2, r1, #1
	str r1, [r4, #0x74]
	adds r1, r1, r2
	str r1, [r4, #0x70]
_0802B198
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r6]
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	adds r4, #0x90
	adds r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_0802B1C4
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802B1CC
sub_802B1CC ;@ 0x0802B1CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802B268 ;@ =gUnknown_03003458
	sub sp, #0xc
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x1c]
	cmp r1, #9
	beq _0802B25E
	ldr r1, [r4, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	bne _0802B25E
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs _0802B25E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r5, #0x2c]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r2, r0, #1
	strh r2, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #1
	lsls r0, r0, #0x10
	orrs r0, r1
	str r0, [r5, #0x2c]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x14]
_0802B25E
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0802B268 DCDU gUnknown_03003458
_0802B26C DCDU gUnknown_03003454
_0802B270 DCDU gUnknown_03003E88
_0802B274 DCDU gUnknown_03003478
_0802B278 DCDU gUnknown_030034F8
_0802B27C DCDU gUnknown_03003E98
_0802B280 DCDU gUnknown_0300345C
_0802B284 DCDU 0x8007FFFF

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

	thumb_func_start sub_802B670
sub_802B670 ;@ 0x0802B670
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802BA04 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r1, [r0]
	adds r3, r2, #0
	ldr r0, [r1, #0x14]
	lsls r5, r0, #0x1c
	bmi _0802B684
	ldrh r3, [r1, #6]
_0802B684
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #0x1c
	lsls r1, r5, #0x1e
	movs r3, #3
	cmp r1, #0
	ldr r0, _0802BA08 ;@ =gUnknown_030034F8
	bge _0802B6A4
	strb r2, [r4, #1]
	strb r2, [r4]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
	b _0802B6B4
_0802B6A4
	lsls r1, r5, #0x1f
	bpl _0802B6B4
	strb r2, [r4, #1]
	strb r3, [r4, #2]
	ldr r0, [r0]
	movs r1, #0
	bl sub_802459E
_0802B6B4
	lsls r0, r5, #0x1a
	bmi _0802B6BC
	lsls r0, r5, #0x1b
	bpl _0802B6EE
_0802B6BC
	ldr r0, _0802BA0C ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	strb r0, [r4]
	ldrb r0, [r4]
	adds r4, #0xff
	muls r0, r3
	lsrs r0, r0, #1
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	adds r4, #0xc1
	ldr r0, [r4, #0x38]
	bl sub_8040034
_0802B6EE
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802B6F4
sub_802B6F4 ;@ 0x0802B6F4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x1d
	lsls r0, r0, #0x12
	sub sp, #0x1c
	str r0, [sp, #8]
	ldrb r6, [r4, #1]
	movs r5, #0xd
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0xc]
	adds r1, r5, #0
	bl sub_803B92C
	add r2, pc, #0x2E4 ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r1, #0xa0
	subs r0, r1, r0
	subs r0, #0x38
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r0, #0x38
	lsls r1, r0, #0x10
	movs r5, #0
	asrs r1, r1, #0x10
	ldr r7, _0802BA1C ;@ =gUnknown_08051090
	str r1, [sp, #0x18]
_0802B74E
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	ldr r1, [sp, #0x18]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	strh r1, [r3, #2]
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B74E
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	adds r0, r6, #0
	adds r0, #0x4d
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0xc1
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x38]
	mov r1, sp
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x3c
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl sub_803B8CE
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x46
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	adds r6, #0x50
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r5, r2, #0
	movs r1, #0x90
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r2, r5, #0
	movs r1, #0xbb
	bl sub_803B8CE
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_803B92C
	add r2, pc, #0x21C ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x10
	movs r5, #0
	movs r6, #0x28
	str r1, [sp, #0x10]
_0802B804
	ldr r1, [sp, #0x10]
	lsls r0, r5, #6
	adds r0, r0, r1
	subs r0, #0x60
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B804
	ldrb r0, [r4, #1]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo _0802B8A8
	movs r0, #2
	strb r0, [r4, #2]
	movs r5, #0
	mov r7, sp
_0802B842
	ldr r1, _0802BA1C ;@ =gUnknown_08051090
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B842
	movs r5, #0
	mov r7, sp
_0802B870
	lsls r0, r5, #6
	adds r0, #0x14
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B870
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	ldr r0, [sp, #0x14]
	mov r1, sp
	ldr r0, [r0, #0x38]
	bl sub_8040034
_0802B8A8
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802B8B0
sub_802B8B0 ;@ 0x0802B8B0
	push {r4, r5, r6, r7, lr}
	movs r6, #0x1d
	lsls r6, r6, #0x12
	sub sp, #0xc
	str r6, [sp, #8]
	ldrb r5, [r0, #1]
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10 ;@ =gUnknown_080414B8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	adds r1, r6, #0
	lsls r7, r0, #2
	adds r0, r7, #0
	bl sub_803B92C
	add r2, pc, #0x12C ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r6, r0, #0x10
	movs r5, #0
_0802B8F0
	ldr r1, _0802BA1C ;@ =gUnknown_08051090
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	mov r1, sp
	adds r0, r0, r6
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0802B8F0
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	muls r0, r3
	lsrs r0, r0, #1
	adds r0, r0, r6
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	movs r0, #0xff
	adds r0, #0xf9
	ldr r0, [r0, r4]
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x7c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	adds r5, r1, #0
	bl sub_803B8CE
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	movs r2, #0x46
	adds r1, r5, #0
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x90
	lsls r1, r1, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl sub_803B8CE
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r6, #0xbb
	lsls r1, r6, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl sub_803B8CE
	adds r0, r7, #0
	ldr r1, [sp, #8]
	bl sub_803B92C
	add r2, pc, #0x74 ;@ =_0802BA14
	ldm r2!, {r2, r3}
	bl sub_803B940
	asrs r0, r0, #0x10
	movs r5, #0
	movs r1, #0x14
	subs r6, r1, r0
	mov r7, sp
_0802B9B0
	lsls r0, r5, #6
	adds r0, r6, r0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x28
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0802B9B0
	ldrb r0, [r4, #1]
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo _0802B9FA
	movs r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0802B9F4
	movs r0, #2
	bl sub_8018386
_0802B9F4
	adds r0, r4, #0
	bl sub_802B2F8
_0802B9FA
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802BA04 DCDU gUnknown_03003444
_0802BA08 DCDU gUnknown_030034F8
_0802BA0C DCDU gUnknown_0300345C
_0802BA10 DCDU gUnknown_080414B8
_0802BA14 DCDU 0x00010000
_0802BA18 DCDU 0x00000000
_0802BA1C DCDU gUnknown_08051090

	thumb_func_start sub_802BA20
sub_802BA20 ;@ 0x0802BA20
	push {r3, lr}
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _0802BA38
	cmp r1, #1
	beq _0802BA3E
	cmp r1, #2
	beq _0802BA44
	cmp r1, #3
	bne _0802BA38
	bl sub_802B8B0
_0802BA38
	add sp, #4
	pop {r3}
	bx r3
_0802BA3E
	bl sub_802B6F4
	b _0802BA38
_0802BA44
	bl sub_802B670
	b _0802BA38
	ALIGN

	thumb_func_start sub_802BA4C
sub_802BA4C ;@ 0x0802BA4C
	push {r4, lr}
	adds r4, r0, #0
	bne _0802BA64
	movs r0, #0x40
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802BA64
	adds r0, r4, #0
_0802BA5E
	pop {r4}
	pop {r3}
	bx r3
_0802BA64
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802BCD4 ;@ =gUnknown_0803E32C
	str r0, [r4]
	adds r0, r4, #0
	b _0802BA5E

	non_word_aligned_thumb_func_start sub_802BA72
sub_802BA72 ;@ 0x0802BA72
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802BCD4 ;@ =gUnknown_0803E32C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802BA8E
	adds r0, r4, #0
	bl sub_803DA18
_0802BA8E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802BA94
sub_802BA94 ;@ 0x0802BA94
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0xd
	bics r6, r7
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	adds r6, r4, #0
	str r3, [r4, #0x20]
	adds r6, #0x1c
	adds r3, r0, #1
	str r5, [r4, #0x1c]
	bne _0802BADE
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802BAEC
_0802BADE
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802BAEC
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802BB80
	add r3, pc, #0x4 ;@ =_0802BB0C
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802BB0C
	DCB 0x02
_0802BB0D
	DCB 0x1E
_0802BB0E
	DCB 0x3A
_0802BB0F
	DCB 0x56
_0802BB10
	DCB 0x71, 0x00
loc_802bb12
	movs r1, #0xf
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #7
	lsls r1, r1, #0x11
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0xa
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xca
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BB80
	ldr r0, _0802BCDC ;@ =gPlayerEntity
	movs r1, #0xc
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b _0802BB80
loc_802bb4a
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x11
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x12
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0xf
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xd0
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BB80
	ldr r0, _0802BCDC ;@ =gPlayerEntity
	movs r1, #0x11
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
_0802BB80
	b _0802BC12
loc_802bb82
	movs r1, #5
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x12
	subs r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0x14
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0xcd
	str r0, [r4, #0x38]
	ldr r0, _0802BCD8 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BC12
	ldr r0, _0802BCDC ;@ =gPlayerEntity
	movs r1, #0x15
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b _0802BC12
loc_802bbba
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x11
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #0x15
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #5
	movs r1, #0x3c
	strb r0, [r1, r4]
	ldr r0, _0802BCE0 ;@ =0x00000337
	movs r2, #0xff
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802BC12
loc_802bbf0
	movs r0, #3
	movs r1, #0x3c
	strb r0, [r1, r4]
	movs r0, #0xff
	adds r0, #0x84
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x14]
	movs r2, #0xff
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	ldr r1, [r4, #0x34]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xd
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802BC12
	ldr r0, _0802BCE4 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
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
	bmi _0802BC5A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802BC5A
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802BC98
	ldr r0, _0802BCE4 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802BC88
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802BC88
	ldr r0, _0802BCE8 ;@ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800CD58
_0802BC88
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802BC98
	orrs r0, r7
	str r0, [r5]
_0802BC98
	ldr r1, [r4, #0x34]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0802BCC4
	ldr r0, _0802BCEC ;@ =gUnknown_0300345C
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
_0802BCBC
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802BCC4
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	b _0802BCBC
	ALIGN
_0802BCD4 DCDU gUnknown_0803E32C
_0802BCD8 DCDU gUnknown_03003D20
_0802BCDC DCDU gPlayerEntity
_0802BCE0 DCDU 0x00000337
_0802BCE4 DCDU gUnknown_03003EB8
_0802BCE8 DCDU gUnknown_03003EA0
_0802BCEC DCDU gUnknown_0300345C

	thumb_func_start sub_802BCF0
sub_802BCF0 ;@ 0x0802BCF0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	ldr r7, _0802BF98 ;@ =gUnknown_03003EB8
	beq _0802BD72
	adds r6, r4, #4
	cmp r0, #1
	beq _0802BDD4
	cmp r0, #2
	bne _0802BD6A
	ldr r0, _0802BF9C ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802BD2C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802BD2C
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802BE20
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802BD52
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_8001338
_0802BD52
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802BD6A
	bl sub_8000914
_0802BD6A
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802BD72
	ldr r0, [r4, #4]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0802BD6A
	lsls r0, r1, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802BDEA
	add r3, pc, #0x4 ;@ =_0802BD8C
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802BD8C
	DCB 0x02
_0802BD8D
	DCB 0x2E
_0802BD8E
	DCB 0x0D
_0802BD8F
	DCB 0x18
_0802BD90
	DCB 0x24, 0x00
loc_802bd92
	movs r2, #0x11
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
loc_802bda8
	movs r2, #7
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #1
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
loc_802bdbe
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
_0802BDD4
	b _0802BEA2
loc_802bdd6
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
_0802BDEA
	lsls r1, r1, #0x18
	ldr r2, _0802BFA0 ;@ =gUnknown_0300328A
	lsrs r1, r1, #0x18
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	ldr r2, _0802BFA4 ;@ =gUnknown_0300328E
	str r0, [r4, #0x1c]
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x20]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	ldr r0, _0802BFA8 ;@ =gUnknown_03003292
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, _0802BFAC ;@ =gUnknown_03003296
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	b _0802BE22
_0802BE20
	b _0802BEE2
_0802BE22
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
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
	movs r2, #4
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802BE82
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802BE82
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_0802BEA0
	b _0802BD6A
_0802BEA2
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
	beq _0802BEDA
	cmp r0, #0
	beq _0802BEA0
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b _0802BD6A
_0802BEDA
	adds r1, r5, #0
	bl sub_803FF24
	b _0802BD6A
_0802BEE2
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802BEA0
	cmp r0, #0
	beq _0802BEA0
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b _0802BD6A

	thumb_func_start sub_802BEFC
sub_802BEFC ;@ 0x0802BEFC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r5, _0802BFB0 ;@ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802BF2E
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802BF2E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802BF34
sub_802BF34 ;@ 0x0802BF34
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802BF90
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq _0802BF90
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x5a
	muls r4, r0
	adds r0, r4, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r4
	lsrs r2, r4, #1
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
_0802BF90
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0802BF98 DCDU gUnknown_03003EB8
_0802BF9C DCDU gUnknown_03003EA0
_0802BFA0 DCDU gUnknown_0300328A
_0802BFA4 DCDU gUnknown_0300328E
_0802BFA8 DCDU gUnknown_03003292
_0802BFAC DCDU gUnknown_03003296
_0802BFB0 DCDU gUnknown_0300345C

	thumb_func_start sub_802BFB4
sub_802BFB4 ;@ 0x0802BFB4
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	ALIGN

	thumb_func_start sub_802BFBC
sub_802BFBC ;@ 0x0802BFBC
	push {r4, lr}
	adds r4, r0, #0
	bne _0802BFD4
	movs r0, #0x4c
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802BFD4
	adds r0, r4, #0
_0802BFCE
	pop {r4}
	pop {r3}
	bx r3
_0802BFD4
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802C3BC ;@ =gUnknown_0803E658
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	b _0802BFCE

	non_word_aligned_thumb_func_start sub_802BFEA
sub_802BFEA ;@ 0x0802BFEA
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802C3BC ;@ =gUnknown_0803E658
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C00A
	ldr r0, _0802C3C0 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_0802C00A
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802C01C
	adds r0, r4, #0
	bl sub_803DA18
_0802C01C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C022
sub_802C022 ;@ 0x0802C022
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [r0, #0x10]
	adds r5, r3, #0
	ldr r3, [r1, #0x2c]
	adds r4, r0, #0
	str r3, [r0, #0x14]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x18]
	ldrb r6, [r3, #5]
	movs r0, #0xff
	ldr r7, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r7, r0
	lsls r6, r6, #0xb
	orrs r6, r7
	str r6, [r4, #0x34]
	adds r3, #0x2c
	ldr r7, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r7, [r4, #0x1c]
	adds r3, r5, #1
	bne _0802C064
	ldr r1, [r1, #0x7c]
	ldr r3, [r4, #0x34]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r3, r3, #8
	lsls r3, r3, #8
	orrs r1, r3
	str r1, [r4, #0x34]
	b _0802C072
_0802C064
	ldr r1, [r4, #0x34]
	lsls r3, r5, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r3, r3, #0x18
	orrs r1, r3
	str r1, [r4, #0x34]
_0802C072
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x16
	lsls r2, r2, #0x1c
	lsrs r2, r2, #6
	bics r1, r3
	orrs r2, r1
	lsls r1, r2, #6
	lsrs r3, r1, #0x1c
	ldr r5, _0802C3C4 ;@ =gUnknown_0300329A
	lsls r3, r3, #1
	str r2, [r4, #0x34]
	ldrh r3, [r5, r3]
	lsrs r7, r1, #0x1c
	ldr r1, _0802C3C8 ;@ =gUnknown_03003D20
	str r3, [r4, #0x38]
	ldrb r1, [r1]
	movs r3, #1
	movs r5, #7
	adds r6, r4, #0
	adds r6, #0x40
	lsls r5, r5, #0x11
	lsls r3, r3, #0xb
	cmp r7, #0
	mov ip, r1
	beq _0802C0E2
	cmp r7, #1
	beq _0802C17E
	cmp r7, #2
	bne _0802C17C
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq _0802C1A4
	cmp r7, #1
	beq _0802C1A6
	cmp r7, #2
	beq _0802C1A8
	cmp r7, #3
	bne _0802C1AA
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC ;@ =0xFFFE0000
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C1AA
_0802C0E2
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	adds r7, r1, #0
	str r1, [r4, #0x44]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	beq _0802C14C
	cmp r1, #1
	beq _0802C118
	cmp r1, #2
	beq _0802C132
	cmp r1, #3
	bne _0802C166
	subs r1, r7, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC ;@ =0xFFFE0000
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C118
	adds r1, r7, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C132
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC ;@ =0xFFFE0000
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C166
_0802C14C
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C166
	movs r0, #3
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq _0802C17C
	subs r1, r0, #5
	ldr r0, _0802C3D0 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_0802C17C
	b _0802C276
_0802C17E
	b _0802C180
_0802C180
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq _0802C1F2
	cmp r7, #1
	beq _0802C1BE
	cmp r7, #2
	beq _0802C1D8
	cmp r7, #3
	bne _0802C20C
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC ;@ =0xFFFE0000
	b _0802C1AC
_0802C1A4
	b _0802C258
_0802C1A6
	b _0802C224
_0802C1A8
	b _0802C23E
_0802C1AA
	b _0802C272
_0802C1AC
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1BE
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1D8
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC ;@ =0xFFFE0000
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C20C
_0802C1F2
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C20C
	movs r0, #2
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq _0802C276
	NEGS r1, r0
	ldr r0, _0802C3D0 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	b _0802C276
_0802C224
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C272
_0802C23E
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC ;@ =0xFFFE0000
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b _0802C272
_0802C258
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
_0802C272
	movs r0, #3
	strb r0, [r6, #8]
_0802C276
	ldr r5, _0802C3C0 ;@ =gUnknown_03003EB8
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1c
	bmi _0802C2D4
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_80012F0
_0802C2D4
	ldr r0, [r6]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
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
	movs r6, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _0802C336
	orrs r1, r6
	str r1, [r0]
_0802C336
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
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
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #0xd
	b _0802C3D4
	ALIGN
_0802C3BC DCDU gUnknown_0803E658
_0802C3C0 DCDU gUnknown_03003EB8
_0802C3C4 DCDU gUnknown_0300329A
_0802C3C8 DCDU gUnknown_03003D20
_0802C3CC DCDU 0xFFFE0000
_0802C3D0 DCDU gPlayerEntity
_0802C3D4
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsrs r1, r1, #0x18
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802C3F4
	orrs r1, r6
	str r1, [r0]
_0802C3F4
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, _0802C6C4 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C41E
sub_802C41E ;@ 0x0802C41E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802C434
	movs r1, #0
	bl sub_80401E4
	b _0802C43A
_0802C434
	movs r1, #1
	bl sub_80401E4
_0802C43A
	ldr r0, [r4, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	beq _0802C4D4
	adds r6, r4, #0
	adds r6, #0x3c
	adds r7, r4, #4
	cmp r0, #1
	beq _0802C51C
	cmp r0, #2
	bne _0802C4CC
	ldr r0, _0802C6C8 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802C472
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802C472
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802C566
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C494
	bl sub_8000914
_0802C494
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C4AE
	bl sub_8000914
_0802C4AE
	ldr r4, [r4, #4]
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl _0802C4C2
	ldr r0, _0802C6CC ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0802C4C2
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	orrs r0, r5
	str r0, [r4]
_0802C4CC
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802C4D4
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq _0802C51E
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
_0802C51A
	b _0802C4CC
_0802C51C
	b _0802C56C
_0802C51E
	ldr r1, [r4, #0x38]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C548
	bl sub_8000914
_0802C548
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	b _0802C568
_0802C566
	b _0802C5CA
_0802C568
	str r0, [r4, #0x34]
	b _0802C4CC
_0802C56C
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
	beq _0802C5BA
	cmp r0, #0
	beq _0802C5A4
	ldr r0, _0802C6CC ;@ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_0802C5A4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C4CC
	ldr r0, _0802C6CC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _0802C4CC
_0802C5BA
	adds r1, r5, #0
	bl sub_803FF24
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	b _0802C4CC
_0802C5CA
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802C51A
	cmp r0, #0
	beq _0802C5E4
	ldr r0, _0802C6CC ;@ =gUnknown_03003EB8
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
_0802C5E4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C51A
	ldr r0, _0802C6CC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b _0802C4CC

	non_word_aligned_thumb_func_start sub_802C5FA
sub_802C5FA ;@ 0x0802C5FA
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C6BC
	ldr r6, _0802C6C8 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802C624
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802C624
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
	beq _0802C6BC
	lsrs r2, r3, #0xe
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802C6CC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0802C6BC
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0802C6C4 DCDU gUnknown_0300345C
_0802C6C8 DCDU gUnknown_03003EA0
_0802C6CC DCDU gUnknown_03003EB8

	thumb_func_start sub_802C6D0
sub_802C6D0 ;@ 0x0802C6D0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0802C6EE
	ldr r0, _0802C874 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_0802C6EE
	ldr r5, _0802C878 ;@ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802C718
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802C718
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C71E
sub_802C71E ;@ 0x0802C71E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802C772
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	movs r6, #0x5a
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
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
_0802C772
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _0802C85C
	ldr r0, _0802C874 ;@ =gUnknown_03003EB8
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
	lsrs r7, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _0802C87C ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _0802C880 ;@ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #3
	lsrs r3, r1, #0x1f
	movs r1, #0xff
	adds r1, #1
	cmp r3, #0
	ldr r3, [r0]
	beq _0802C7D8
	orrs r2, r3
	bics r2, r1
	str r2, [r0]
	b _0802C7DE
_0802C7D8
	bics r3, r2
	bics r3, r1
	str r3, [r0]
_0802C7DE
	adds r1, r4, #0
	adds r1, #0x1c
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x3c]
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
	bmi _0802C810
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802C810
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
	bpl _0802C854
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_0802C854
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _0802C85C
	b _0802C85E
_0802C85C
	b _0802C866
_0802C85E
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_0802C866
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C86E
sub_802C86E ;@ 0x0802C86E
	adds r0, #0x40
	ldrb r0, [r0, #8]
	bx lr
	ALIGN
_0802C874 DCDU gUnknown_03003EB8
_0802C878 DCDU gUnknown_0300345C
_0802C87C DCDU gUnknown_03003EA0
_0802C880 DCDU 0x0010BE20

	thumb_func_start sub_802C884
sub_802C884 ;@ 0x0802C884
	push {r4, lr}
	adds r4, r0, #0
	bne _0802C89C
	movs r0, #0x48
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802C89C
	adds r0, r4, #0
_0802C896
	pop {r4}
	pop {r3}
	bx r3
_0802C89C
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802CC68 ;@ =gUnknown_0803E578
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b _0802C896

	thumb_func_start sub_802C8B0
sub_802C8B0 ;@ 0x0802C8B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802CC68 ;@ =gUnknown_0803E578
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802C8CC
	adds r0, r4, #0
	bl sub_803DA18
_0802C8CC
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C8D2
sub_802C8D2 ;@ 0x0802C8D2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne _0802C914
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802C922
_0802C914
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802C922
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _0802CC6C ;@ =gUnknown_030032A0
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #8
	str r1, [r4, #0x38]
	bhs _0802C94C
	add r3, pc, #0xC ;@ =_0802C950
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802C94C
	b _0802CAF8
	ALIGN
_0802C950
	DCB 0x09, 0x00
_0802C952
	DCB 0x75, 0x00
_0802C954
	DCB 0xD6, 0x00
_0802C956
	DCB 0x41, 0x01
_0802C958
	DCB 0xB2, 0x01
_0802C95A
	DCB 0x1D, 0x02
_0802C95C
	DCB 0x7E, 0x02
_0802C95E
	DCB 0xDF, 0x02
loc_802c960
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802C9EC
	cmp r1, #1
	beq _0802C998
	cmp r1, #2
	beq _0802C9BE
	cmp r1, #3
	bne _0802CA1A
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C998
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C9BE
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CA1A
_0802C9EC
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CA1A
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	ldr r0, _0802CC74 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CAF8
	ldr r0, _0802CC78 ;@ =gPlayerEntity
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b _0802CAF8
loc_802ca38
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CAC4
	cmp r1, #1
	beq _0802CA70
	cmp r1, #2
	beq _0802CA96
	cmp r1, #3
	bne _0802CAF2
	movs r2, #0x1d
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CA70
	movs r2, #7
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CA96
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CAF2
_0802CAC4
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CAF2
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CAF8
	b _0802CF0A
loc_802cafa
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CB9A
	cmp r1, #1
	beq _0802CB3C
	cmp r1, #2
	beq _0802CB6C
	cmp r1, #3
	bne _0802CB98
	movs r2, #0x15
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CB98
_0802CB3C
	movs r2, #5
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #7
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CB98
_0802CB6C
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CB98
	b _0802CBC8
_0802CB9A
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CBC8
	movs r0, #3
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802cbd0
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CC7C
	cmp r1, #1
	beq _0802CC12
	cmp r1, #2
	beq _0802CC38
	cmp r1, #3
	bne _0802CC64
	movs r2, #3
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CC64
_0802CC12
	movs r2, #0x19
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CC64
_0802CC38
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CC64
	b _0802CCAA
	ALIGN
_0802CC68 DCDU gUnknown_0803E578
_0802CC6C DCDU gUnknown_030032A0
_0802CC70 DCDU 0xFFFE0000
_0802CC74 DCDU gUnknown_03003D20
_0802CC78 DCDU gPlayerEntity
_0802CC7C
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CCAA
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802ccb2
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CD52
	cmp r1, #1
	beq _0802CCF4
	cmp r1, #2
	beq _0802CD24
	cmp r1, #3
	bne _0802CD50
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CD50
_0802CCF4
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x15
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CD50
_0802CD24
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CD50
	b _0802CD80
_0802CD52
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CD80
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802cd88
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CE14
	cmp r1, #1
	beq _0802CDC0
	cmp r1, #2
	beq _0802CDE6
	cmp r1, #3
	bne _0802CE42
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CDC0
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CDE6
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CE42
_0802CE14
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CE42
	movs r0, #1
	movs r1, #0x44
	strb r0, [r1, r4]
	b _0802CF0A
loc_802ce4a
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CED6
	cmp r1, #1
	beq _0802CE82
	cmp r1, #2
	beq _0802CEA8
	cmp r1, #3
	bne _0802CF04
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CE82
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CEA8
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CF04
_0802CED6
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CF04
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CF0A
	b _0802CFCC
loc_802cf0c
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802CF98
	cmp r1, #1
	beq _0802CF44
	cmp r1, #2
	beq _0802CF6A
	cmp r1, #3
	bne _0802CFC6
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF44
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF6A
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8 ;@ =0xFFFE0000
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802CFC6
_0802CF98
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
_0802CFC6
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
_0802CFCC
	ldr r7, _0802D0BC ;@ =gUnknown_03003EB8
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r6, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802D02C
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802D02C
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
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
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
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
	bmi _0802D08C
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D08C
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r5, [r4, #4]
	movs r6, #1
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802D0DA
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802D0C8
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802D0C8
	ldr r0, _0802D0C0 ;@ =gUnknown_03003EA0
	adds r1, r5, #0
	ldr r0, [r0]
	b _0802D0C4
	ALIGN
_0802D0B8 DCDU 0xFFFE0000
_0802D0BC DCDU gUnknown_03003EB8
_0802D0C0 DCDU gUnknown_03003EA0
_0802D0C4
	bl sub_800CD58
_0802D0C8
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802D0DA
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r5]
_0802D0DA
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8 ;@ =gUnknown_030032B0
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt _0802D0F8
	ldr r1, _0802D2DC ;@ =gUnknown_0300345C
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
_0802D0F8
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D100
sub_802D100 ;@ 0x0802D100
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	beq _0802D180
	adds r6, r4, #4
	movs r7, #0
	cmp r0, #1
	beq _0802D1E0
	cmp r0, #2
	bne _0802D178
	ldr r0, _0802D2E0 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r7
	cmp r2, #0
	beq _0802D13A
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802D13A
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802D218
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802D160
	ldr r0, _0802D2E4 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802D160
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802D178
	bl sub_8000914
_0802D178
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802D180
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq _0802D1B0
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	b _0802D178
_0802D1B0
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r5]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _0802D178
_0802D1E0
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
	beq _0802D21A
	cmp r0, #0
	beq _0802D178
	ldr r0, _0802D2E4 ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0802D178
_0802D218
	b _0802D222
_0802D21A
	adds r1, r5, #0
	bl sub_803FF24
	b _0802D178
_0802D222
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802D178
	cmp r0, #0
	beq _0802D178
	ldr r0, _0802D2E4 ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0802D178

	thumb_func_start sub_802D23C
sub_802D23C ;@ 0x0802D23C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8 ;@ =gUnknown_030032B0
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r1, [r1, r0]
	cmp r1, #0
	blt _0802D26E
	ldr r5, _0802D2DC ;@ =gUnknown_0300345C
	lsls r1, r1, #0x18
	ldr r0, [r5]
	lsrs r4, r1, #0x13
	adds r0, r4, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802D26E
	ldr r0, [r5]
	adds r0, r4, r0
	bl sub_80268AC
_0802D26E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D274
sub_802D274 ;@ 0x0802D274
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802D2C8
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x5a
	muls r4, r0
	adds r0, r4, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r4
	lsrs r2, r4, #1
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
_0802D2C8
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D2D0
sub_802D2D0 ;@ 0x0802D2D0
	adds r0, #0x40
	ldrb r0, [r0, #4]
	bx lr
	ALIGN
_0802D2D8 DCDU gUnknown_030032B0
_0802D2DC DCDU gUnknown_0300345C
_0802D2E0 DCDU gUnknown_03003EA0
_0802D2E4 DCDU gUnknown_03003EB8

	thumb_func_start sub_802D2E8
sub_802D2E8 ;@ 0x0802D2E8
	push {r4, lr}
	adds r4, r0, #0
	bne _0802D300
	movs r0, #0x4c
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802D300
	adds r0, r4, #0
_0802D2FA
	pop {r4}
	pop {r3}
	bx r3
_0802D300
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802D6C0 ;@ =gUnknown_0803ED28
	movs r1, #0x1e
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	str r0, [r4, #0x48]
	adds r0, r4, #0
	b _0802D2FA

	non_word_aligned_thumb_func_start sub_802D32E
sub_802D32E ;@ 0x0802D32E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802D6C0 ;@ =gUnknown_0803ED28
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D350
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0802D350
	ldr r0, _0802D6C4 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
_0802D350
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _0802D36C
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_0802D36C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802D37E
	adds r0, r4, #0
	bl sub_803DA18
_0802D37E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D384
sub_802D384 ;@ 0x0802D384
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	movs r3, #1
	str r3, [r4, #0x24]
	movs r3, #0
	str r3, [r4, #0x28]
	adds r3, r0, #1
	bne _0802D3CE
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802D3DC
_0802D3CE
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802D3DC
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r3, _0802D6C8 ;@ =gUnknown_03003328
	lsls r1, r0, #1
	ldrh r1, [r3, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs _0802D406
	add r3, pc, #0x8 ;@ =_0802D408
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802D406
	b _0802D7B8
_0802D408
	DCB 0x05, 0x00
_0802D40A
	DCB 0x05, 0x00
_0802D40C
	DCB 0x05, 0x00
_0802D40E
	DCB 0xAE, 0x00
_0802D410
	DCB 0x39, 0x01
loc_802d412
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D4AC
	cmp r1, #1
	beq _0802D452
	cmp r1, #2
	beq _0802D47E
	cmp r1, #3
	bne _0802D4AA
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r5, #5
	str r1, [r4, #0x3c]
	b _0802D4AA
_0802D452
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D4AA
_0802D47E
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
_0802D4AA
	b _0802D4D8
_0802D4AC
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D4D8
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	beq _0802D538
	cmp r0, #1
	beq _0802D54E
	cmp r0, #2
	bne _0802D4FC
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xa
	adds r0, r0, r1
	movs r5, #0xc
	mvns r5, r5
	str r0, [r4, #0x48]
_0802D4FC
	ldr r0, _0802D6D0 ;@ =gUnknown_0300345C
	adds r2, #0x3a
	lsls r1, r2, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r0, _0802D6D4 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D520
	ldr r0, _0802D6D8 ;@ =gPlayerEntity
	adds r1, r5, #0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_0802D520
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0x48]
	b _0802D7B8
_0802D538
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x15
	mvns r5, r5
	str r0, [r4, #0x48]
	b _0802D4FC
_0802D54E
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x11
	mvns r5, r5
	str r0, [r4, #0x48]
	b _0802D4FC
loc_802d564
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D612
	cmp r1, #1
	beq _0802D5AA
	cmp r1, #2
	beq _0802D5DE
	cmp r1, #3
	bne _0802D610
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D610
_0802D5AA
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b _0802D610
_0802D5DE
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D610
	b _0802D644
_0802D612
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D644
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	adds r0, r0, r3
	str r0, [r4, #0x48]
	b _0802D7B8
loc_802d67a
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D74C
	cmp r1, #1
	beq _0802D6E4
	cmp r1, #2
	beq _0802D718
	cmp r1, #3
	bne _0802D716
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6E0 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D716
	ALIGN
_0802D6C0 DCDU gUnknown_0803ED28
_0802D6C4 DCDU gUnknown_03003EB8
_0802D6C8 DCDU gUnknown_03003328
_0802D6CC DCDU gUnknown_030032C0
_0802D6D0 DCDU gUnknown_0300345C
_0802D6D4 DCDU gUnknown_03003D20
_0802D6D8 DCDU gPlayerEntity
_0802D6DC DCDU gUnknown_030032E8
_0802D6E0 DCDU gUnknown_03003304
_0802D6E4
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
_0802D716
	b _0802D780
_0802D718
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802D780
_0802D74C
	b _0802D74E
_0802D74E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D780
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x48]
_0802D7B8
	ldr r7, _0802DAB8 ;@ =gUnknown_03003EB8
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	bl sub_800065C
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802D808
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802D808
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
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
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	movs r5, #3
	lsls r5, r5, #0xa
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D868
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D868
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D918
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x48]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1c
	adds r1, r1, r2
	bl sub_800065C
	ldr r0, [r4, #0x44]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x44]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r6, [r4, #0x44]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x44]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D910
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D910
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_80401E4
_0802D918
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D920
sub_802D920 ;@ 0x0802D920
	push {r4, r5, r6, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	sub sp, #8
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D94C
	ldr r0, [r4, #0x44]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802D946
	movs r1, #0
	bl sub_80401E4
	b _0802D94C
_0802D946
	movs r1, #1
	bl sub_80401E4
_0802D94C
	ldr r1, [r4, #0x48]
	lsls r0, r1, #0x1f
	bmi _0802D9FA
	movs r0, #0xff
	adds r2, r1, #0
	adds r0, #0xe1
	adds r1, #0x20
	ands r1, r0
	bics r2, r0
	orrs r1, r2
	lsls r2, r1, #0x17
	lsrs r2, r2, #0x1c
	movs r5, #0
	cmp r2, #8
	str r1, [r4, #0x48]
	bls _0802D9B0
	bics r1, r0
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, r0, #0
	movs r2, #0x1e
	adds r0, #2
	ands r0, r2
	bics r1, r2
	orrs r1, r0
	lsls r0, r1, #0x1b
	str r1, [r4, #0x48]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bhs _0802D9D6
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	bl sub_800065C
	ldr r0, [r4, #0x48]
	lsls r1, r0, #0x16
	bpl _0802D9B0
	lsls r2, r0, #0xd
	ldr r1, [r4, #0x38]
	lsrs r2, r2, #0x1c
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	bl sub_800065C
_0802D9B0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0802D9FA
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802D9CA
	add r3, pc, #0x8 ;@ =_0802D9CC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802D9CA
	b _0802DAB2
_0802D9CC
	DCB 0x1B, 0x00
_0802D9CE
	DCB 0x1B, 0x00
_0802D9D0
	DCB 0x1B, 0x00
_0802D9D2
	DCB 0x95, 0x00
_0802D9D4
	DCB 0x05, 0x01
_0802D9D6
	ldr r6, _0802DAB8 ;@ =gUnknown_03003EB8
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D9F0
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r6]
	bl sub_8000DE6
_0802D9F0
	str r5, [r4, #4]
	ldr r0, [r4, #0x48]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x48]
_0802D9FA
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
loc_802da02
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DAC0
	cmp r1, #1
	beq _0802DA4C
	cmp r1, #2
	beq _0802DA7E
	cmp r1, #3
	bne _0802DAB2
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b _0802DAB2
_0802DA4C
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DAB2
_0802DA7E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
_0802DAB2
	b _0802DBA0
	ALIGN
_0802DAB4 DCDU gUnknown_03003304
_0802DAB8 DCDU gUnknown_03003EB8
_0802DABC DCDU gUnknown_030032C0
_0802DAC0
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DDCC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802DBA0
loc_802daf6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DBA2
	cmp r1, #1
	beq _0802DB3A
	cmp r1, #2
	beq _0802DB6E
	cmp r1, #3
	bne _0802DBA0
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DBA0
_0802DB3A
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b _0802DBA0
_0802DB6E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DBA0
	b _0802DC80
_0802DBA2
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802DC80
loc_802dbd6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DC82
	cmp r1, #1
	beq _0802DC1A
	cmp r1, #2
	beq _0802DC4E
	cmp r1, #3
	bne _0802DC80
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DC80
_0802DC1A
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b _0802DC80
_0802DC4E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DC80
	b _0802DCB4
_0802DC82
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DCB4
	ldr r1, [r4, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r2, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bmi _0802DCE6
	b _0802D9FA
_0802DCE6
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #0x44]
	mov r1, sp
	bl sub_803FF24
	b _0802D9FA

	thumb_func_start sub_802DD08
sub_802DD08 ;@ 0x0802DD08
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x1d
	ldr r5, [r4, #4]
	lsrs r7, r6, #4
	cmp r5, #0
	beq _0802DD7C
	ldr r0, _0802DDD8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	lsrs r3, r6, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x2c]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r3
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r7
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r1, r2
	orrs r1, r6
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi _0802DD7C
	lsls r0, r3, #2
	orrs r0, r1
	str r0, [r4, #0x2c]
_0802DD7C
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq _0802DDC4
	ldr r0, _0802DDD8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	movs r3, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r3, r3, #0x1c
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r7
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #0x30]
_0802DDC4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802DDCC DCDU gUnknown_030032C0
_0802DDD0 DCDU gUnknown_030032E8
_0802DDD4 DCDU gUnknown_03003304
_0802DDD8 DCDU gUnknown_03003EA0

	thumb_func_start sub_802DDDC
sub_802DDDC ;@ 0x0802DDDC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0802DDFA
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x44]
_0802DDFA
	ldr r5, _0802DFF0 ;@ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802DE24
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802DE24
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802DE2A
sub_802DE2A ;@ 0x0802DE2A
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x2c]
	adds r7, r4, #0
	adds r7, #0x1c
	lsls r0, r0, #2
	cmp r0, #0
	bge _0802DF1E
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #4]
	lsls r1, r1, #3
	lsrs r1, r1, #0x1f
	ldr r1, [r0]
	beq _0802DE6A
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	b _0802DE74
_0802DE6A
	movs r2, #2
	bics r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
_0802DE74
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	lsrs r6, r0, #0x1f
	ldr r0, [r5]
	beq _0802DE8E
	lsls r0, r0, #0x1c
	bmi _0802DE9C
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0802DE9C
_0802DE8E
	lsls r0, r0, #0x1c
	bpl _0802DE9C
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802DE9C
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	bl sub_803FF24
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
	bmi _0802DED8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802DED8
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
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
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #6
	bpl _0802DF1E
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
_0802DF1E
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _0802DFD0
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r1, r1, #3
	lsrs r1, r1, #0x1f
	ldr r1, [r0]
	beq _0802DF50
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	b _0802DF5A
_0802DF50
	movs r2, #2
	bics r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
_0802DF5A
	adds r1, r7, #0
	ldr r0, [r4, #0x44]
	bl sub_803FF24
	ldr r0, [r4, #0x44]
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
	bmi _0802DF8A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802DF8A
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #0x44]
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
	lsls r0, r0, #6
	bpl _0802DFD0
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_80401E4
_0802DFD0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802DFD8
sub_802DFD8 ;@ 0x0802DFD8
	push {r3, lr}
	bl sub_802E8B0
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802DFE4
sub_802DFE4 ;@ 0x0802DFE4
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	bx lr
	ALIGN
_0802DFEC DCDU gUnknown_03003EB8
_0802DFF0 DCDU gUnknown_0300345C

	thumb_func_start sub_802DFF4
sub_802DFF4 ;@ 0x0802DFF4
	push {r4, lr}
	adds r4, r0, #0
	bne _0802E00C
	movs r0, #0x40
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802E00C
	adds r0, r4, #0
_0802E006
	pop {r4}
	pop {r3}
	bx r3
_0802E00C
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802E370 ;@ =gUnknown_0803EDA0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0, #0xc]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	b _0802E006

	non_word_aligned_thumb_func_start sub_802E02A
sub_802E02A ;@ 0x0802E02A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802E370 ;@ =gUnknown_0803EDA0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802E046
	adds r0, r4, #0
	bl sub_803DA18
_0802E046
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802E04C
sub_802E04C ;@ 0x0802E04C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r1, #0x2c]
	movs r5, #0xff
	str r0, [r4, #0x14]
	ldrb r1, [r0, #5]
	ldr r3, [r4, #0x34]
	lsls r5, r5, #0xb
	adds r1, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0xd
	bics r3, r5
	orrs r1, r3
	str r1, [r4, #0x34]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, r4, #0
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	adds r0, r1, #0
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	lsls r1, r0, #6
	lsrs r1, r1, #0x1c
	ldr r2, _0802E374 ;@ =gUnknown_03003332
	lsls r1, r1, #1
	str r0, [r4, #0x34]
	ldrh r1, [r2, r1]
	adds r6, #0x1c
	adds r5, r4, #0
	str r1, [r4, #0x38]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x34]
	adds r5, #0x30
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0802E378 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r7, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl sub_803FF24
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
	bmi _0802E114
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802E114
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1f
	bmi _0802E154
	ldr r0, _0802E378 ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r6]
	lsls r0, r0, #0x16
	bmi _0802E142
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0802E142
	ldr r0, _0802E37C ;@ =gUnknown_03003EA0
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800CD58
_0802E142
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	lsls r1, r0, #0x1e
	bpl _0802E154
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r6]
_0802E154
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802E1BC
	add r3, pc, #0x8 ;@ =_0802E168
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0802E168
	DCB 0x03
_0802E169
	DCB 0x08
_0802E16A
	DCB 0x0C
_0802E16B
	DCB 0x10
_0802E16C
	DCB 0x27, 0x00
loc_802e16e
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xe]
	b _0802E1BC
loc_802e178
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b _0802E1BC
loc_802e180
	movs r0, #2
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b _0802E1BC
loc_802e188
	movs r0, #2
	strb r0, [r5, #0xd]
	movs r1, #0
	strb r1, [r5, #0xe]
	movs r0, #0x78
	strb r0, [r5, #0xf]
	str r1, [r4, #0x28]
	str r7, [r4, #0x24]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802E1AA
	ldr r0, _0802E378 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_0802E1AA
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	b _0802E1BC
loc_802e1b6
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r0, [r5, #0xe]
_0802E1BC
	ldr r0, _0802E380 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E1D6
sub_802E1D6 ;@ 0x0802E1D6
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	adds r6, #0x1c
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub sp, #0xc
	str r0, [r6, #4]
	str r1, [r6]
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x34]
	adds r5, r4, #0
	movs r7, #7
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	lsls r7, r7, #8
	adds r5, #0x30
	cmp r0, #0
	beq _0802E26A
	cmp r0, #1
	beq _0802E298
	cmp r0, #2
	bne _0802E296
	ldr r0, _0802E37C ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802E236
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802E236
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802E316
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	movs r7, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802E25E
	ldr r0, _0802E378 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E25E
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	b _0802E296
_0802E26A
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802E296
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	movs r1, #1
	bics r0, r7
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldrb r0, [r5, #0xc]
	orrs r0, r1
	strb r0, [r5, #0xc]
_0802E296
	b _0802E334
_0802E298
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0802E2D4
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #0xf]
	bne _0802E2B0
	movs r0, #1
	lsls r0, r0, #0x13
	bics r1, r0
	str r1, [r4, #0x34]
_0802E2B0
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
_0802E2D4
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0xc
	bmi _0802E334
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r1, [r5, #0xc]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strb r1, [r5, #0xc]
	ldr r5, _0802E380 ;@ =gUnknown_0300345C
	adds r0, #0x3d
	ldr r1, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	beq _0802E334
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
	b _0802E334
_0802E316
	b _0802E318
_0802E318
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0802E334
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
_0802E32C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802E334
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #4]
	ldrb r0, [r0, #5]
	ldrb r3, [r2, #5]
	subs r0, #1
	adds r1, r0, #0
	cmp r0, r3
	beq _0802E32C
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
	bmi _0802E32C
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	b _0802E32C
	ALIGN
_0802E370 DCDU gUnknown_0803EDA0
_0802E374 DCDU gUnknown_03003332
_0802E378 DCDU gUnknown_03003EB8
_0802E37C DCDU gUnknown_03003EA0
_0802E380 DCDU gUnknown_0300345C

	thumb_func_start sub_802E384
sub_802E384 ;@ 0x0802E384
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802E3C0
	ldr r1, [r4, #0x14]
	adds r0, r4, #0
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	adds r0, #0x1c
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	adds r1, r2, #0
	movs r2, #1
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r2, [r4, #4]
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_803FF24
_0802E3C0
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E3C6
sub_802E3C6 ;@ 0x0802E3C6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #1
	lsls r1, r1, #0x13
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	str r1, [r4, #0x34]
	lsls r1, r1, #6
	ldr r5, _0802E414 ;@ =gUnknown_0300345C
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	ldr r0, [r5]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802E408
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802E408
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E40E
sub_802E40E ;@ 0x0802E40E
	adds r0, #0x30
	ldrb r0, [r0, #0xd]
	bx lr
	ALIGN
_0802E414 DCDU gUnknown_0300345C

	thumb_func_start sub_802E418
sub_802E418 ;@ 0x0802E418
	push {r4, lr}
	cmp r0, #0
	bne _0802E428
	movs r0, #0x3c
	bl sub_803D9F8
	cmp r0, #0
	beq _0802E474
_0802E428
	ldr r1, _0802E7F0 ;@ =gUnknown_0803E2A0
	movs r3, #7
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x34]
	lsls r3, r3, #8
	lsrs r2, r2, #8
	lsls r2, r2, #8
	bics r2, r3
	movs r3, #0xff
	lsls r3, r3, #0xb
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x13
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	lsls r3, r3, #1
	bics r2, r3
	movs r3, #0xf
	lsls r3, r3, #0x16
	bics r2, r3
	str r1, [r0, #0x38]
	str r2, [r0, #0x34]
	adds r4, r0, #0
	adds r4, #0x2c
	movs r2, #0
	movs r3, #0
	stm r4!, {r2, r3}
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
_0802E474
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E47A
sub_802E47A ;@ 0x0802E47A
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r0, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4 ;@ =gUnknown_03003EB8
	beq _0802E492
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
_0802E492
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0802E4A4
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
_0802E4A4
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E4AA
sub_802E4AA ;@ 0x0802E4AA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0802E7F0 ;@ =gUnknown_0803E2A0
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r6, #0
	cmp r0, #0
	ldr r5, _0802E7F4 ;@ =gUnknown_03003EB8
	beq _0802E4C8
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
_0802E4C8
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0802E4DA
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #8]
_0802E4DA
	cmp r7, #0
	beq _0802E4E4
	adds r0, r4, #0
	bl sub_803DA18
_0802E4E4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_53
nullsub_53 ;@ 0x0802E4EA
	bx lr

	thumb_func_start nullsub_54
nullsub_54 ;@ 0x0802E4EC
	bx lr

	non_word_aligned_thumb_func_start sub_802E4EE
sub_802E4EE ;@ 0x0802E4EE
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	ldr r5, [r4, #4]
	cmp r5, #0
	beq _0802E5CC
	ldr r6, _0802E7F8 ;@ =gUnknown_03003EA0
	mvns r1, r1
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	cmp r2, #0
	beq _0802E518
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802E518
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x2c]
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
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x2c]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r1]
	lsls r2, r2, #1
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1f
	lsrs r2, r2, #1
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x2c]
	ldrb r2, [r1, #5]
	cmp r2, #0x42
	bhi _0802E5B0
	lsls r2, r3, #5
	orrs r0, r2
	str r0, [r4, #0x2c]
_0802E5B0
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802E5CC
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802E7F4 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0802E5CC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E5D2
sub_802E5D2 ;@ 0x0802E5D2
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x14]
	adds r5, r0, #0
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #2
	bpl _0802E6C4
	ldr r0, _0802E7F4 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r5, #4]
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	ldr r4, [r5, #4]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	ldr r6, _0802E7F8 ;@ =gUnknown_03003EA0
	lsrs r7, r0, #0x1a
	str r1, [sp]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, _0802E7FC ;@ =0x0010BE20
	strb r7, [r4, #3]
	muls r0, r7
	str r0, [r4, #8]
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #4]
	lsls r1, r1, #3
	lsrs r2, r1, #0x1f
	movs r1, #2
	cmp r2, #0
	ldr r2, [r0]
	beq _0802E642
	movs r4, #0xff
	adds r4, #1
	orrs r1, r2
	bics r1, r4
	str r1, [r0]
	b _0802E64C
_0802E642
	movs r4, #0xff
	adds r4, #1
	bics r2, r1
	bics r2, r4
	str r2, [r0]
_0802E64C
	ldr r0, [r5, #0x2c]
	ldr r4, [r5, #4]
	lsrs r7, r0, #0x1f
	ldr r0, [r4]
	beq _0802E666
	lsls r0, r0, #0x1c
	bmi _0802E674
	ldr r0, _0802E7F4 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0802E674
_0802E666
	lsls r0, r0, #0x1c
	bpl _0802E674
	ldr r0, _0802E7F4 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E674
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r7, #3
	orrs r0, r1
	str r0, [r4]
	ldr r4, [r5, #4]
	ldr r0, [r5, #0x2c]
	ldrh r2, [r4, #0x28]
	movs r3, #1
	lsls r0, r0, #4
	lsrs r1, r0, #0x1f
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	movs r7, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0802E738
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	blt _0802E6CA
	movs r2, #0xf
	ldr r1, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge _0802E6CA
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _0802E6CA
	movs r2, #5
	lsls r2, r2, #0x15
	ldr r1, [r4, #0x38]
	b _0802E6C6
_0802E6C4
	b _0802E7EA
_0802E6C6
	cmp r1, r2
	blt _0802E6E4
_0802E6CA
	lsls r0, r0, #0x16
	bmi _0802E738
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r4]
	b _0802E738
_0802E6E4
	lsls r0, r0, #0x16
	bpl _0802E702
	adds r1, r4, #0
	ldr r0, [r6]
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
_0802E702
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
_0802E738
	ldr r1, [r4]
	adds r0, r7, #0
	orrs r1, r7
	str r1, [r4]
	ldr r1, [r5, #4]
	ldr r3, [r5, #0x1c]
	ldr r4, [r1, #0x2c]
	ldr r7, [r1, #0x30]
	subs r4, r3, r4
	ldr r3, [r5, #0x20]
	adds r2, r1, #0
	subs r3, r3, r7
	ldr r7, [r1, #0x34]
	adds r2, #0x34
	adds r7, r7, r4
	str r7, [r1, #0x34]
	ldr r7, [r1, #0x38]
	adds r7, r7, r3
	str r7, [r2, #4]
	ldr r7, [r2, #8]
	adds r4, r7, r4
	str r4, [r2, #8]
	ldr r4, [r2, #0xc]
	movs r7, #3
	adds r3, r4, r3
	str r3, [r2, #0xc]
	ldr r3, [r5, #0x1c]
	ldr r4, [r5, #0x20]
	str r3, [r1, #0x2c]
	str r4, [r1, #0x30]
	movs r4, #0xff
	ldr r2, [r1]
	adds r4, #1
	orrs r2, r4
	str r2, [r1]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0x34]
	ldrh r3, [r1, #0x2a]
	lsls r7, r7, #0xa
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x18
	bics r3, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	orrs r3, r7
	strh r3, [r1, #0x2a]
	strb r2, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi _0802E7A2
	orrs r0, r2
	str r0, [r1]
_0802E7A2
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #7
	bpl _0802E7AE
	ldr r0, [r5, #4]
	bl sub_8000914
_0802E7AE
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #6
	bpl _0802E7EA
	ldr r5, [r5, #4]
	movs r7, #1
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi _0802E7EA
	ldr r0, _0802E7F4 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi _0802E7DC
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0802E7DC
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_800CD58
_0802E7DC
	ldr r0, [r5]
	orrs r0, r7
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl _0802E7EA
	orrs r0, r4
	str r0, [r5]
_0802E7EA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802E7F0 DCDU gUnknown_0803E2A0
_0802E7F4 DCDU gUnknown_03003EB8
_0802E7F8 DCDU gUnknown_03003EA0
_0802E7FC DCDU 0x0010BE20

	thumb_func_start sub_802E800
sub_802E800 ;@ 0x0802E800
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	sub sp, #0x14
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _0802E85E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0802E85E
	adds r1, r4, #0
	adds r1, #0x24
	bl sub_8000AC4
	cmp r0, #0
	beq _0802E85E
	ldr r0, _0802E8FC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_80019B4
	mov r5, sp
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r5!, {r2, r3}
	ldr r1, [r4, #4]
	movs r0, #0x50
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0802E85E
	lsls r2, r0, #0x1e
	bpl _0802E866
	movs r1, #1
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
_0802E85E
	add sp, #0x14
	pop {r4, r5}
	pop {r3}
	bx r3
_0802E866
	lsls r0, r0, #0x1f
	bpl _0802E85E
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	ldr r0, [r4, #8]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0802E85E
	ldr r2, [sp, #0x10]
	cmp r0, r2
	beq _0802E85E
	movs r2, #1
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r4, #0x34]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0802E8AA
	ldr r0, [sp, #0x10]
	str r0, [r4, #0xc]
	b _0802E85E
_0802E8AA
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	b _0802E85E

	thumb_func_start sub_802E8B0
sub_802E8B0 ;@ 0x0802E8B0
	push {r4, r5, r6, lr}
	ldr r5, [r0, #4]
	adds r4, r0, #0
	ldr r0, [r5]
	movs r6, #0
	lsls r0, r0, #0x1c
	bpl _0802E8C8
	ldr r0, _0802E8FC ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802E8C8
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
	ldr r0, [r4, #0x34]
	lsls r1, r2, #0x12
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	lsls r1, r2, #7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	str r6, [r4, #0xc]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802E8F8
sub_802E8F8 ;@ 0x0802E8F8
	movs r0, #0
	bx lr
	ALIGN
_0802E8FC DCDU gUnknown_03003EB8

	thumb_func_start sub_802E900
sub_802E900 ;@ 0x0802E900
	push {r4, lr}
	adds r4, r0, #0
	bne _0802E918
	movs r0, #0xac
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802E918
	adds r0, r4, #0
_0802E912
	pop {r4}
	pop {r3}
	bx r3
_0802E918
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802EC08 ;@ =gUnknown_0803E4D8
	movs r1, #0x11
	str r0, [r4]
	strh r1, [r4, #4]
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r2, r2, #0x18
	bics r0, r2
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0, #0x1c]
	ldr r1, [r0]
	ldr r2, _0802EC0C ;@ =0xFF8007FF
	ands r1, r2
	ldr r2, _0802EC10 ;@ =0x0027E000
	adds r1, r1, r2
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0x3c
	strb r2, [r1, #0xd]
	movs r2, #0x14
	strb r2, [r1, #0xc]
	movs r2, #0xa6
	movs r1, #0
	strh r1, [r2, r4]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	b _0802E912

	non_word_aligned_thumb_func_start sub_802E962
sub_802E962 ;@ 0x0802E962
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802EC08 ;@ =gUnknown_0803E4D8
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802E97E
	adds r0, r4, #0
	bl sub_803DA18
_0802E97E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802E984
sub_802E984 ;@ 0x0802E984
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0802EC14 ;@ =gUnknown_03003454
	movs r7, #0x80
	ldr r6, [r0]
	add r0, pc, #0x288 ;@ =_0802EC18
	str r0, [sp]
	movs r4, #4
	b _0802E9A0
_0802E996
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs _0802E9AA
_0802E9A0
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0802E996
_0802E9AA
	ldr r0, _0802EC2C ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x80
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	lsls r1, r4, #2
	adds r7, r1, r6
	str r0, [r7, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r2, #0xff
	adds r2, #0x99
	adds r0, r0, r6
	movs r1, #0x80
	strh r1, [r2, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r2, r0, r2
	strh r1, [r2, #0x18]
	movs r2, #0xb
	lsls r2, r2, #7
	adds r0, r0, r2
	movs r1, #1
	strh r1, [r0, #0x18]
	adds r1, r2, #0
	subs r1, #0xff
	subs r1, #1
	ldr r0, [sp]
	adds r1, r7, r1
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0x90
	adds r0, r6, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r1, #0xff
	ldr r0, [r5, #0x7c]
	lsls r1, r1, #0x10
	bics r0, r1
	lsls r1, r4, #0x10
	orrs r0, r1
	str r0, [r5, #0x7c]
	bl sub_8005106
	adds r1, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802EA3E
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802EA3E
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r5, #0x28]
	movs r2, #1
	str r1, [r0, #0x18]
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	lsls r2, r2, #0xa
	ldr r0, [r1]
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802EC30 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
	adds r0, r5, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802EA80
sub_802EA80 ;@ 0x0802EA80
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #8]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #2]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #4]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq _0802EAB2
	lsrs r2, r2, #5
	ldr r4, _0802EC34 ;@ =gUnknown_03003478
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne _0802EAB2
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
_0802EAAE
	pop {r4}
	bx lr
_0802EAB2
	movs r1, #0
	strh r1, [r0, #6]
	b _0802EAAE

	thumb_func_start sub_802EAB8
sub_802EAB8 ;@ 0x0802EAB8
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq _0802EAD0
	cmp r2, #0x2c
	bne _0802EAD6
	bl sub_801DA2A
_0802EACA
	add sp, #4
	pop {r3}
	bx r3
_0802EAD0
	bl sub_802EA80
	b _0802EACA
_0802EAD6
	bl sub_801DD40
	b _0802EACA

	thumb_func_start sub_802EADC
sub_802EADC ;@ 0x0802EADC
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	beq _0802EAF2
	cmp r2, #0x2c
	bne _0802EAF6
	movs r0, #1
_0802EAEC
	add sp, #4
	pop {r3}
	bx r3
_0802EAF2
	movs r0, #1
	b _0802EAEC
_0802EAF6
	bl sub_801DF50
	b _0802EAEC

	thumb_func_start sub_802EAFC
sub_802EAFC ;@ 0x0802EAFC
	push {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _0802EC38 ;@ =gUnknown_03003EA0
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	sub sp, #0x1c
	beq _0802EB1E
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802EB1E
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802EC00
	adds r5, r4, #0
	adds r5, #0xa0
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _0802EBDA
	ldr r0, [r4, #0x58]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #8]
	ldr r0, _0802EC14 ;@ =gUnknown_03003454
	ldrh r1, [r5, #6]
	ldr r0, [r0]
	ldr r6, [r4, #0x2c]
	ldr r0, [r0, #0x10]
	lsls r1, r1, #2
	ldr r0, [r0, #0x14]
	ldr r7, [r0, r1]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0802EB72
	ldr r0, _0802EC38 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0802EB72
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
	strh r1, [r3, #0x18]
	strh r0, [r3, #0x1a]
	ldr r6, [r4, #0x2c]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _0802EBAC
	ldr r0, _0802EC38 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0802EBAC
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #0x14]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #2]
	movs r3, #0
	mvns r3, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	add r1, sp, #0xc
	add r2, sp, #4
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	movs r0, #0
	strh r0, [r5, #6]
_0802EBDA
	ldr r0, _0802EC3C ;@ =gUnknown_0300345C
	ldr r0, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	ldrh r1, [r4, #0x1a]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	movs r0, #0
	adds r4, #0x70
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_0802EC00
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802EC08 DCDU gUnknown_0803E4D8
_0802EC0C DCDU 0xFF8007FF
_0802EC10 DCDU 0x0027E000
_0802EC14 DCDU gUnknown_03003454
_0802EC18 DCDU 0x656A624F
_0802EC1C DCDU 0x53207463
_0802EC20 DCDU 0x70697263
_0802EC24 DCDU 0x72472074
_0802EC28 DCDU 0x0070756F
_0802EC2C DCDU gUnknown_03003468
_0802EC30 DCDU gUnknown_03003EB8
_0802EC34 DCDU gUnknown_03003478
_0802EC38 DCDU gUnknown_03003EA0
_0802EC3C DCDU gUnknown_0300345C

	thumb_func_start sub_802EC40
sub_802EC40 ;@ 0x0802EC40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802EC6C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802EC6C
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	END

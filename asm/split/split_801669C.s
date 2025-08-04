	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003C58
	IMPORT gUnknown_03003D34
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__303dword_803E320
	IMPORT gUnknown_08050684
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80046F8
	IMPORT sub_800476C
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_800B6A8
	IMPORT sub_800EF2A
	IMPORT sub_80138E2
	IMPORT sub_8013B76
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8017444
	IMPORT sub_8017450
	IMPORT sub_80177D8
	IMPORT SetNextGlobalFunction
	IMPORT sub_801CBAA
	IMPORT sub_80236D4
	IMPORT sub_80247A4
	IMPORT sub_80268AC
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r7
	IMPORT sub_803D66C
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_80401E4
	IMPORT sub_804025C


	thumb_func_start sub_801669C
sub_801669C
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x18
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _08016A9C
	str r0, [r4]
	movs r0, #1
	strh r0, [r4, #4]
	ldr r0, _08016AA0
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
	b %1

	thumb_func_start sub_80166DC
sub_80166DC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016A9C
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80166FE
sub_80166FE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	sub sp, #0xc
	ldr r0, [r0, #4]
	cmp r0, #0
	bne %5
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	lsls r0, r0, #0x1d
	bne %5
	add r5, sp, #4
	adds r0, r5, #0
	bl sub_80046F8
	ldr r6, _08016AA4
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
	bne %4
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
4
	adds r0, r5, #0
	bl sub_803D66C
5
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801678C
sub_801678C
	ldr r0, _08016AA4
	push {r3, lr}
	ldr r0, [r0]
	movs r1, #1
	bl sub_801CBAA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801679E
sub_801679E
	push {r3, lr}
	movs r0, #0x14
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_80167AC
sub_80167AC
	ldr r0, _08016AA8
	push {r4, lr}
	ldr r0, [r0]
	movs r1, #3
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	ldr r0, _08016AAC
	sub sp, #8
	ldr r1, [r0]
	adds r1, #0x90
	ldrb r2, [r1]
	ldr r0, [r0]
	adds r0, #0x80
	cmp r2, #0
	beq %6
	cmp r2, #1
	beq %6
	cmp r2, #2
	bne %8
6
	ldrb r2, [r1, #0xc]
	strb r2, [r1]
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x14]
	ldr r1, [r0, #0x24]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl SetNextGlobalFunction
7
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
8
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
	bhi %9
	movs r2, #0
	strb r2, [r1]
	b %10
9
	movs r2, #2
	strb r2, [r1]
10
	ldr r1, _08016AB0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl SetNextGlobalFunction
	b %7

	thumb_func_start sub_8016828
sub_8016828
	push {r3, lr}
	ldr r0, [r1]
	ldr r2, _08016AB4
	movs r1, #0x11
	strb r1, [r2]
	ldrh r0, [r0, #4]
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, _08016AB8
	asrs r0, r0, #2
	strb r0, [r1]
	movs r0, #0xd
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8016850
sub_8016850
	push {r4, r5, r6, r7, lr}
	ldr r3, _08016ABC
	ldr r1, [r1]
	ldr r3, [r3]
	movs r2, #8
	ands r3, r2
	beq %12
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
	ldr r3, _08016AC0
	movs r7, #0x13
	ldr r3, [r3]
	lsls r7, r7, #7
	adds r3, r3, r7
	cmp r6, #0
	bne %11
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
11
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
12
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
sub_80168E8
	ldr r0, _08016AA8
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
13
	ldr r0, _08016AC4
	ldr r0, [r0]
	bl sub_800116A
	lsls r5, r4, #2
	ldr r1, _08016AC8
	str r0, [r6, r5]
	lsls r7, r4, #1
	ldrh r1, [r1, r7]
	bl sub_800065C
	ldr r1, _08016AC8
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
	bmi %14
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
14
	ldr r0, [r6, r5]
	movs r1, #1
	bl sub_80401E4
	cmp r4, #3
	bne %16
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
	bmi %15
	adds r0, r5, #0
	bl sub_804025C
15
	ldr r0, [r5]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r5]
16
	adds r4, #1
	cmp r4, #4
	blo %13
	ldr r0, _08016AC4
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa3
	str r0, [sp, #0x7c]
	bl sub_80007A0
	ldr r1, _08016AC8
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
	bmi %17
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
17
	ldr r0, [sp, #0x7c]
	bl sub_8000914
	ldr r1, _08016AC8
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
	bl __call_via_r2
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #4]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r7, #0
	bl __call_via_r2
	ldr r0, [sp, #4]
	movs r2, #0x3c
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #4]
	adds r3, r0, r1
	adds r1, r5, #0
	adds r0, r7, #0
	bl __call_via_r3
	ldr r1, [sp, #4]
	adds r5, r7, #0
	ldr r1, [r1, #0x10]
	ldr r2, [sp, #4]
	adds r0, r7, #0
	adds r3, r1, r2
	movs r2, #0x20
	movs r1, #0x80
	bl __call_via_r3
	adds r0, r5, #0
	movs r2, #0
	ldr r1, [sp, #4]
	str r2, [sp]
	ldr r1, [r1, #0x20]
	b %18
	ALIGN
_08016A9C DCDU __VTABLE__303dword_803E320
_08016AA0 DCDU gUnknown_03003E88
_08016AA4 DCDU gUnknown_03003458
_08016AA8 DCDU gUnknown_03003454
_08016AAC DCDU gPlayerEntity
_08016AB0 DCDU 0x0000FFFF
_08016AB4 DCDU gUnknown_03003D34
_08016AB8 DCDU gUnknown_03003D35
_08016ABC DCDU gUnknown_03003478
_08016AC0 DCDU gUnknown_03003450
_08016AC4 DCDU gUnknown_03003EB8
_08016AC8 DCDU gUnknown_08050684
18
	ldr r2, [sp, #4]
	movs r3, #0
	adds r7, r1, r2
	movs r2, #0xff
	movs r1, #4
	bl __call_via_r7
	adds r7, r5, #0
	adds r0, r5, #0
	bl sub_8013B76
	movs r4, #0xff
	adds r3, r4, #0
	movs r2, #0
	adds r0, r5, #0
	ldr r1, _08016D5C
	bl sub_80138E2
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08016D60
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBAA
	ldr r1, [sp, #0x90]
	ldr r0, _08016D64
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
19
	bl sub_800EF2A
	adds r5, #1
	cmp r5, #0x78
	blo %19
	ldr r0, _08016D68
	ldr r1, [r0]
	movs r0, #0x11
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
	adds r3, r4, #0
	movs r2, #0
	adds r5, r7, #0
	adds r0, r7, #0
	ldr r1, _08016D6C
	bl sub_80138E2
	movs r1, #1
	ldr r0, [sp, #0x7c]
	bl sub_80401E4
	movs r4, #0
	ldr r7, _08016D70
	b %21
20
	bl sub_800EF2A
21
	ldr r0, [r7]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r3, r2, #0x1c
	bmi %22
	ldrh r1, [r0, #8]
22
	lsls r1, r1, #0x1f
	bmi %24
	adds r1, r4, #0
	lsls r2, r2, #0x1c
	bmi %23
	ldrh r1, [r0, #8]
23
	lsls r0, r1, #0x1e
	bpl %20
24
	bl sub_800EF2A
	ldr r7, _08016D74
	movs r4, #0
25
	lsls r0, r4, #2
	adds r1, r0, r6
	ldr r0, [r7]
	bl sub_8000DE6
	adds r4, #1
	cmp r4, #4
	blo %25
	add r1, sp, #0x7c
	ldr r0, [r7]
	bl sub_8000DE6
	ldr r0, _08016D60
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
sub_8016BAC
	push {r4, lr}
	ldr r0, [r1]
	ldr r2, _08016D64
	ldrh r1, [r0, #4]
	ldr r3, [r2]
	movs r2, #0x90
	strb r1, [r2, r3]
	ldrh r2, [r0, #6]
	ldr r4, _08016D78
	adds r1, r4, #0
	cmp r2, r4
	beq %26
	lsls r1, r2, #0x10
26
	adds r3, #0x80
	str r1, [r3, #0x14]
	ldrh r0, [r0, #8]
	cmp r0, r4
	beq %27
	lsls r4, r0, #0x10
27
	movs r0, #0xf
	str r4, [r3, #0x18]
	bl SetNextGlobalFunction
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8016BE0
sub_8016BE0
	push {r4, r5, r6, r7}
	ldr r5, [r1]
	ldr r6, _08016D7C
	movs r0, #0
	movs r7, #1
28
	lsls r2, r0, #1
	adds r4, r2, r5
	movs r3, #4
	ldrsh r2, [r4, r3]
	cmp r2, #0
	blt %31
	ldrh r2, [r4, #4]
	adds r3, r7, #0
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	lsls r3, r4
	cmp r2, #0
	beq %29
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r6, r2]
	ands r2, r3
	beq %30
29
	movs r2, #1
	b %35
30
	movs r2, #0
	b %35
31
	NEGS r2, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	adds r3, r7, #0
	lsls r3, r4
	cmp r2, #0
	beq %32
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r6, r2]
	ands r2, r3
	beq %33
32
	movs r2, #1
	b %34
33
	movs r2, #0
34
	subs r2, r7, r2
35
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhs %36
	cmp r2, #0
	bne %28
	b %37
36
	cmp r2, #0
	bne %43
37
	ldr r1, [r1, #0x14]
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #2
	beq %43
	ldr r6, _08016D80
	movs r7, #0x43
	lsls r7, r7, #3
38
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
	beq %39
	ldr r4, [r0, #0x14]
	str r4, [r3, #0x14]
	b %40
39
	ldr r3, [r0, #0x14]
	str r3, [r4]
40
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq %41
	ldr r4, [r0, #0x18]
	str r4, [r3, #0x18]
	b %42
41
	ldr r3, [r0, #0x18]
	str r3, [r5]
42
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
	bne %38
43
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_8016CB6
sub_8016CB6
	push {r4, lr}
	ldr r0, _08016D84
	ldr r4, [r1]
	ldr r0, [r0]
	cmp r0, #0
	beq %44
	bl sub_800B6A8
	ldrh r1, [r4, #4]
	cmp r0, r1
	beq %44
	lsls r2, r1, #0x18
	ldr r0, _08016D68
	lsrs r2, r2, #0x18
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
44
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8016CE0
sub_8016CE0
	push {r3, lr}
	ldr r0, [r1]
	movs r3, #4
	ldrsh r0, [r0, r3]
	ldr r1, _08016D68
	ldr r1, [r1]
	cmp r0, #0
	blt %46
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
45
	add sp, #4
	pop {r3}
	bx r3
46
	NEGS r0, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_80268AC
	b %45

	non_word_aligned_thumb_func_start sub_8016D0E
sub_8016D0E
	push {r3, lr}
	ldr r0, [r1]
	ldr r1, _08016D88
	ldrh r0, [r0, #4]
	strh r0, [r1]
	movs r0, #0x15
	bl SetNextGlobalFunction
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8016D24
sub_8016D24
	ldr r0, _08016D64
	push {r3, lr}
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x84
	ldrb r2, [r2, r0]
	cmp r2, #7
	bhs %47
	movs r2, #0xb0
	ldrb r2, [r2, r0]
	adds r0, #0xa0
	strb r2, [r0, #0xd]
	movs r2, #0
	strb r2, [r0, #0xe]
47
	ldrh r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne %48
	movs r0, #0
48
	adds r1, r0, #0
	ldr r0, _08016D8C
	ldr r0, [r0]
	bl sub_80247A4
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08016D5C DCDU 0x000004DD
_08016D60 DCDU gUnknown_03003458
_08016D64 DCDU gPlayerEntity
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
	END

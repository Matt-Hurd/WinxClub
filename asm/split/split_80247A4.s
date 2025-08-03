	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0805104C
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_8001432
	IMPORT sub_800B6A8
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80139AC
	IMPORT sub_8013B76
	IMPORT sub_80147FA
	IMPORT sub_8023DD0
	IMPORT sub_8023FE4
	IMPORT sub_8024084
	IMPORT sub_802416A
	IMPORT sub_80241DA
	IMPORT sub_80244C6
	IMPORT sub_802459E
	IMPORT sub_80268AC
	IMPORT sub_80268BA
	IMPORT sub_8028A7C
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r7
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_804025C
	IMPORT sub_80406A4


	thumb_func_start sub_80247A4
sub_80247A4
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
	ldr r0, _08024BA0
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	ldr r1, _08024BA4
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
	ldr r0, _08024BA0
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r7, #2
	adds r6, r1, r4
	ldr r1, _08024BA8
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
	ldr r0, _08024BA0
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
	ldr r0, _08024BA0
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	ldr r1, _08024BAC
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
	ldr r0, _08024BA0
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
	ldr r0, _08024BA0
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
	ldr r1, _08024BB0
	ldr r2, _08024BAC
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
	ldr r1, _08024BB0
	ldr r2, _08024BAC
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
	ldr r0, _08024BA0
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08024BB4
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
	ldr r6, _08024BA0
	ldr r0, [r6]
	bl sub_800116A
	ldr r1, _08024BAC
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
	ldr r1, _08024BB0
	str r0, [r5, #8]
	ldr r1, [r1]
	ldr r2, _08024BAC
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
	ldr r0, _08024BA0
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	str r0, [r7, #0x28]
	ldr r1, _08024BB8
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
	ldr r0, _08024BB0
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
	ldr r0, _08024BBC
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
	ldr r0, _08024BBC
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x14]
	ldr r1, _08024BC0
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
	bl __call_via_r2
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
	bl __call_via_r2
	ldr r0, [r5]
	movs r2, #2
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	movs r1, #0xa1
	adds r0, r5, #0
	bl __call_via_r3
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x10
	movs r1, #0x40
	bl __call_via_r3
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
	bl __call_via_r7
	adds r0, r5, #0
	bl sub_8013B76
	movs r1, #0x13
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x20C
	bl sub_80137F8
	str r6, [r4]
	ldr r1, [sp, #0x18]
	ldr r5, _08024E28
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
	ldr r0, _08024E2C
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
	ldr r0, _08024E30
	ldr r0, [r0]
	cmp r0, #0
	beq _08024C70
	bl sub_800B6A8
	cmp r0, #1
	beq _08024C70
	ldr r0, _08024E34
	movs r2, #1
	movs r1, #6
	ldr r0, [r0]
	bl sub_8028A7C
_08024C70
	ldr r0, _08024E38
	ldr r2, _08024E3C
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
	ldr r0, _08024E40
	ldr r0, [r0]
	bl sub_8001432
	ldr r0, _08024E44
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
	bl __16_ll_shift_l
	add r2, pc, #0x144
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
sub_8024D30
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08024E38
	ldr r1, [sp, #8]
	adds r6, r0, #0
	movs r0, #5
	ldr r4, [r4]
	lsls r0, r0, #8
	ldr r2, _08024E50
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
	ldr r7, _08024E34
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
	ldr r2, _08024E50
	ldr r1, [sp, #8]
	cmp r1, r2
	bne _08024E08
_08024DFC
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x20
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
	END

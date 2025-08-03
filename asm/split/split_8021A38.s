    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB8
	IMPORT ModifyPlayerHealth
	IMPORT sub_800065C
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_80177D8
	IMPORT sub_801CA1E
	IMPORT sub_801D6C4
	IMPORT sub_801DFD4
	IMPORT sub_801E124
	IMPORT sub_801F286
	IMPORT sub_801F450
	IMPORT sub_8020A74
	IMPORT sub_8020AB6
	IMPORT sub_8023A70
	IMPORT sub_8023AA2
	IMPORT sub_8028C2E
	IMPORT sub_80384FA
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT sub_803DA18
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803F2CC
	IMPORT sub_803F6E0
	IMPORT sub_803F898
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4


	thumb_func_start sub_8021A38
sub_8021A38 ;@ 0x08021A38
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_801DFD4
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	movs r5, #0
	movs r7, #0
_08021A60
	lsls r0, r5, #2
	adds r0, r0, r6
	adds r0, #0xff
	adds r0, #0x41
	ldr r4, [r0, #0x10]
	cmp r4, #0
	beq _08021A7A
_08021A6E
	adds r0, r4, #0
	ldr r4, [r4, #0x18]
	bl sub_803DA18
	cmp r4, #0
	bne _08021A6E
_08021A7A
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r6
	adds r0, #0xff
	adds r0, #0x41
	str r7, [r0, #0x10]
	cmp r5, #0x41
	blo _08021A60
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8021A98
sub_8021A98 ;@ 0x08021A98
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801D6C4
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #1
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _08021ABC
	ldr r0, _08021E74 ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	adds r1, #0x24
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r5, #0x24]
_08021ABC
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8021ADE
sub_8021ADE ;@ 0x08021ADE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_801E124
	ldr r0, _08021E74 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	str r0, [r1, #0x24]
	ldr r2, [r0]
	movs r3, #2
	orrs r2, r3
	lsls r3, r3, #7
	bics r2, r3
	str r2, [r0]
	ldr r0, [r1, #0x24]
	movs r1, #0x20
	bl sub_80401C0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq _08021B1C
	cmp r0, #0xed
	bne _08021B4E
_08021B1C
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x26]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x1e
	beq _08021B3A
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08021B3A
	ldr r0, [r4, #0x2c]
	ldrb r2, [r0, #5]
	ldr r0, [r4, #0x30]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq _08021B4E
	bl sub_80401C0
_08021B4E
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq _08021B7E
	cmp r0, #0x10
	beq _08021B7E
	adds r0, r4, #0
	bl sub_8020AB6
_08021B7E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8021B84
sub_8021B84 ;@ 0x08021B84
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08021E78 ;@ =gUnknown_03003454
	sub sp, #0xc
	ldr r6, [r0]
	add r0, pc, #0x2EC ;@ =_08021E7C
	str r0, [sp, #8]
	movs r0, #0x84
	ldr r0, [r0, r5]
	lsls r0, r0, #4
	lsrs r7, r0, #0x14
	bne _08021BCC
	movs r1, #5
	lsls r1, r1, #7
	movs r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	b _08021BB2
_08021BA8
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	bhs _08021C40
_08021BB2
	lsls r0, r4, #2
	adds r0, r0, r6
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _08021BA8
	lsls r0, r4, #1
	adds r0, r0, r6
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1f
	bmi _08021BA8
	b _08021C40
_08021BCC
	movs r4, #4
	b _08021BDA
_08021BD0
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs _08021BE4
_08021BDA
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _08021BD0
_08021BE4
	ldr r0, _08021E90 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	lsrs r1, r7, #2
	str r1, [sp, #4]
	bl sub_8005106
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08021C0E
	ldr r1, [sp, #4]
	movs r3, #0
	lsls r1, r1, #2
	mov ip, r1
	movs r2, #0
	adds r1, r0, #0
	mov r0, ip
	bl sub_803DA9C
	b _08021C1A
_08021C0E
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	movs r0, #4
	bl sub_803DA80
_08021C1A
	lsls r1, r4, #2
	adds r1, r1, r6
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r1, #0xff
	adds r1, #0x99
	adds r0, r0, r6
	strh r7, [r1, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	strh r1, [r0, #0x18]
_08021C40
	lsls r1, r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	adds r1, r1, r6
	adds r1, r1, r2
	movs r0, #1
	strh r0, [r1, #0x18]
	lsls r1, r4, #2
	subs r2, #0xff
	subs r2, #1
	adds r1, r1, r6
	ldr r0, [sp, #8]
	adds r1, r1, r2
	str r0, [r1, #0x18]
	movs r0, #0x61
	lsls r0, r0, #4
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
	ldr r0, _08021E94 ;@ =gUnknown_03003E88
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80177D8
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	movs r1, #1
	lsls r1, r1, #0x14
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, _08021E74 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	adds r4, r5, #0
	adds r4, #0xff
	adds r4, #1
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x2c]
	bl sub_803F898
	adds r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_800065C
	ldr r0, [r4, #0x24]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x24]
	bl sub_803F2CC
	movs r1, #0x20
	ldr r0, [r4, #0x24]
	bl sub_80401C0
	ldr r0, [r5, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x24]
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x24]
	bl sub_80401E4
	adds r5, #0x58
	ldm r5!, {r0, r1}
	adds r4, #0x34
	stm r4!, {r0, r1}
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8021CFC
sub_8021CFC ;@ 0x08021CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r6, #0
	str r6, [sp, #0xc]
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	movs r7, #1
	lsls r7, r7, #0x14
	cmp r0, #5
	bne _08021DA2
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl _08021D1C
	str r6, [r4, #0x78]
_08021D1C
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08021D88
	movs r5, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x3c]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	cmp r0, r1
	ldr r0, [r4, #0x2c]
	bls _08021D4E
	bl sub_803F6E0
	movs r1, #0xa
	subs r0, r1, r0
	b _08021D54
_08021D4E
	bl sub_803F6E0
	subs r0, #1
_08021D54
	cmp r0, #1
	ble _08021D5E
	cmp r0, #0xa
	bge _08021D5E
	subs r5, r0, #1
_08021D5E
	lsls r6, r0, #0x11
	ldr r0, [r4, #0x30]
	movs r1, #0
	ldr r2, [r0, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq _08021D72
	ldr r1, [r2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
_08021D72
	cmp r1, r5
	bls _08021D88
	bl sub_803F898
	ldr r1, _08021E98 ;@ =0x000011EF
	adds r1, r5, r1
	cmp r0, r1
	beq _08021D88
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08021D88
	adds r0, r6, r7
	ldr r1, [r4, #0x58]
	ldr r6, [sp, #0xc]
	ldr r2, [r4, #0x5c]
	subs r1, r1, r6
	str r1, [sp, #4]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b _08021ED6
_08021DA2
	ldr r1, _08021E9C ;@ =gUnknown_03003D20
	ldrb r1, [r1]
	cmp r1, #0
	beq _08021E72
	movs r1, #0x25
	lsls r1, r1, #4
	adds r5, r4, r1
	cmp r0, #0xf
	bne _08021DDE
	ldrb r0, [r5, #4]
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r5, #4]
	bpl _08021DC2
	strb r6, [r5, #4]
_08021DC2
	movs r3, #4
	ldrsb r0, [r5, r3]
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	lsls r0, r0, #0x10
	adds r0, r0, r7
	subs r0, r2, r0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b _08021ED6
_08021DDE
	cmp r0, #0x10
	bne _08021DF6
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r1, r7
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b _08021ED6
_08021DF6
	ldr r0, _08021EA0 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	bne _08021E54
	movs r3, #5
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #4]
	bpl _08021E1A
	strb r6, [r5, #4]
	NEGS r0, r0
	strb r0, [r5, #5]
	b _08021E26
_08021E1A
	cmp r1, #4
	ble _08021E26
	movs r1, #4
	strb r1, [r5, #4]
	NEGS r0, r0
	strb r0, [r5, #5]
_08021E26
	movs r3, #4
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls _08021E3A
	movs r6, #3
	b _08021E40
_08021E3A
	cmp r6, #1
	bhs _08021E40
	movs r6, #1
_08021E40
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08021E98 ;@ =0x000011EF
	adds r1, r6, r1
	cmp r0, r1
	beq _08021E54
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08021E54
	movs r3, #4
	ldrsb r0, [r5, r3]
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r7
	subs r0, r2, r0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b _08021ED6
_08021E72
	b _08021EA4
	ALIGN
_08021E74 DCDU gUnknown_03003EB8
_08021E78 DCDU gUnknown_03003454
_08021E7C DCDU 0x79616C50
_08021E80 DCDU 0x53207265
_08021E84 DCDU 0x70697263
_08021E88 DCDU 0x72472074
_08021E8C DCDU 0x0070756F
_08021E90 DCDU gUnknown_03003468
_08021E94 DCDU gUnknown_03003E88
_08021E98 DCDU 0x000011EF
_08021E9C DCDU gUnknown_03003D20
_08021EA0 DCDU gUnknown_03003E98
_08021EA4
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r1, r7
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08022198 ;@ =0x000011EF
	cmp r0, r1
	beq _08021ED6
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq _08021ED6
	cmp r0, #0xed
	beq _08021ED6
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08021ED6
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08021EE4
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
_08021EE4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8021EEC
sub_8021EEC ;@ 0x08021EEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802219C ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021F08
	movs r0, #0x35
	strh r0, [r4, #0x1e]
	movs r0, #0x36
	strh r0, [r4, #0x1a]
	movs r0, #0x37
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b _08021F16
_08021F08
	movs r0, #0x4e
	strh r0, [r4, #0x1e]
	movs r0, #0x4f
	strh r0, [r4, #0x1a]
	movs r0, #0x50
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
_08021F16
	ldr r0, _080221A0 ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x57
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	adds r1, #4
	strb r1, [r0, #4]
	movs r0, #0xf
	movs r1, #0x9c
	str r0, [r1, r4]
	adds r0, r4, #0
	bl sub_801F286
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8021F42
sub_8021F42 ;@ 0x08021F42
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x80
	adds r5, r1, #0
	ldr r1, [r0, #0x1c]
	adds r6, r3, #0
	cmp r1, #0xf
	sub sp, #0xc
	beq _08021F58
	cmp r1, #0x10
	bne _08021F62
_08021F58
	movs r0, #0
_08021F5A
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08021F62
	ldr r0, [r0, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq _08021F7E
	adds r0, r4, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b _08021F5A
_08021F7E
	adds r0, r4, #0
	adds r0, #0xa0
	adds r7, r0, #0
	ldr r2, [r0, #4]
	adds r7, #0x60
	cmp r2, #0
	beq _08022002
	ldr r0, [r0, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08022002
	adds r0, r4, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	ldr r0, _0802219C ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021FD2
	lsrs r0, r6, #1
	lsls r0, r0, #0x18
	movs r1, #0
	mvns r1, r1
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08021FC0
	NEGS r1, r0
_08021FC0
	ldr r5, _080221A4 ;@ =gPlayerEntity
	lsls r1, r1, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
	movs r0, #1
	b _08021F5A
_08021FD2
	ldr r0, [r7, #0x3c]
	movs r2, #7
	lsls r1, r0, #0xc
	lsrs r1, r1, #0x1d
	adds r3, r1, r6
	lsls r2, r2, #0x11
	cmp r3, #5
	blo _08021FF2
	bics r0, r2
	str r0, [r7, #0x3c]
	movs r3, #5
	subs r6, r3, r1
	movs r0, #0
	lsls r1, r3, #6
	strh r0, [r1, r4]
	b _0802201E
_08021FF2
	lsls r1, r6, #0x11
	adds r1, r0, r1
	ands r1, r2
	bics r0, r2
	orrs r0, r1
	str r0, [r7, #0x3c]
	movs r0, #1
	b _08021F5A
_08022002
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _0802201E
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _0802201E
	cmp r1, #0xb
	beq _0802201E
	movs r2, #3
	lsls r2, r2, #0xf
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801F450
_0802201E
	movs r0, #0x97
	ldrsb r0, [r0, r5]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	cmp r0, #9
	bhs _080220F8
	add r3, pc, #0x8 ;@ =_08022034
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08022034
	DCB 0x05
_08022035
	DCB 0x05
_08022036
	DCB 0x2A
_08022037
	DCB 0x2A
_08022038
	DCB 0x9F
_08022039
	DCB 0x9A
_0802203A
	DCB 0x62
_0802203B
	DCB 0x62
_0802203C
	DCB 0xA3, 0x00
loc_802203e
	NEGS r0, r6
	ldr r5, _080221A4 ;@ =gPlayerEntity
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl ModifyPlayerHealth
	lsrs r0, r6, #1
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
	ldr r0, [r5]
	movs r1, #4
	adds r0, #0xac
	bl sub_8023AA2
	ldr r0, [r5]
	adds r0, #0xa0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _08022080
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _08022168
_08022080
	adds r0, r4, #0
	bl sub_8021EEC
	b _08022168
loc_8022088
	movs r1, #0xac
	ldr r1, [r1, r5]
	lsls r1, r1, #5
	lsrs r1, r1, #0x17
	str r1, [sp, #8]
	subs r1, #0x37
	cmp r1, #2
	bhi _0802212A
	cmp r0, #2
	bne _080220D0
	adds r0, r4, #0
	bl sub_8020A74
	adds r7, #0x34
	ldm r7!, {r0, r1}
	str r0, [r4, #0x58]
	str r1, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_8020AB6
	ldr r1, [sp, #8]
	cmp r1, #0x39
	bne _08022168
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	movs r2, #5
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r0, [sp]
	ldr r0, _080221A8 ;@ =gUnknown_03003458
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r1, sp
	bl sub_801CA1E
	b _08022168
_080220D0
	adds r0, r4, #0
	bl sub_8020A74
	movs r0, #0
_080220D8
	lsls r1, r0, #2
	adds r1, r1, r5
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq _080220FA
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1f
	beq _080220FA
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _08022168
	movs r0, #0
	b _08022102
_080220F8
	b _08022182
_080220FA
	adds r0, #1
	cmp r0, #5
	blo _080220D8
	b _08022168
_08022102
	lsls r1, r0, #2
	adds r1, r1, r5
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq _0802211C
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1f
	beq _0802211C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	b _08022124
_0802211C
	adds r0, #1
	cmp r0, #5
	blo _08022102
	movs r0, #0
_08022124
	bl sub_80384FA
	b _08022168
_0802212A
	NEGS r0, r6
	ldr r5, _080221A4 ;@ =gPlayerEntity
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl ModifyPlayerHealth
	ldr r0, _0802219C ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022152
	lsrs r0, r6, #1
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
_08022152
	ldr r0, [r5]
	adds r0, #0xa0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0802216A
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
_08022168
	b _08022188
_0802216A
	adds r0, r4, #0
	bl sub_8021EEC
	b _08022188
loc_8022172
	adds r0, r4, #0
	bl sub_801F286
	b _08022188
loc_802217a
	movs r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b _08022188
_08022182
	adds r0, r4, #0
	bl sub_801F286
_08022188
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b _08021F5A
	ALIGN
_08022198 DCDU 0x000011EF
_0802219C DCDU gUnknown_03003D20
_080221A0 DCDU gUnknown_0300345C
_080221A4 DCDU gPlayerEntity
_080221A8 DCDU gUnknown_03003458
	END
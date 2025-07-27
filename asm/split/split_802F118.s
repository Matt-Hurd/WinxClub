    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_0803EBF4
	IMPORT gUnknown_080414B8
	IMPORT ModifyPlayerHealth
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000D5A
	IMPORT sub_8005106
	IMPORT sub_8017A0A
	IMPORT sub_801D564
	IMPORT sub_801D714
	IMPORT sub_801DD40
	IMPORT sub_801DF50
	IMPORT sub_801E2DA
	IMPORT sub_8023A70
	IMPORT CollectFirefly
	IMPORT sub_8028C2E
	IMPORT __call_via_r2
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803F528
	IMPORT sub_803F72C
	IMPORT sub_803FF24
	IMPORT sub_80401E4
	IMPORT sub_8040594


	thumb_func_start sub_802F118
sub_802F118 ;@ 0x0802F118
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bne _0802F134
	movs r0, #0xd4
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802F134
	adds r0, r4, #0
_0802F12C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802F134
	adds r0, r4, #0
	bl sub_801D564
	ldr r0, _0802F518 ;@ =gUnknown_0803EBF4
	adds r5, r4, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc4
	str r0, [sp, #8]
	movs r0, #0x12
	strh r0, [r4, #4]
	adds r5, #0x80
	ldr r0, [r5, #4]
	ldr r1, _0802F51C ;@ =0xF000FFFF
	adds r6, r4, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x7c]
	movs r1, #0xf
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0x11
	str r0, [r5, #0x1c]
	adds r6, #0xa0
	movs r7, #0
	str r7, [r5, #0x24]
	strh r7, [r6, #2]
	strh r7, [r6, #8]
	adds r0, r4, #0
	adds r0, #0x70
	strh r7, [r6, #0xa]
	movs r1, #0xa
	strb r1, [r0, #0xd]
	strb r7, [r0, #0xc]
	ldr r0, [r5, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r5, #0xc]
	movs r0, #1
	bl sub_8040594
	adds r0, r1, #0
	adds r0, #0x2d
	add r3, sp, #0
	strh r0, [r3, #4]
	ldrh r0, [r6, #8]
	ldr r2, _0802F520 ;@ =gUnknown_080414B8
	lsls r1, r0, #0x10
	str r1, [r5, #0x2c]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r2, r0]
	lsls r0, r0, #2
	bl __16_ll_mulss
	add r2, pc, #0x378 ;@ =_0802F524
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r5, #0xc]
	str r7, [r5, #0x3c]
	ldr r0, [sp, #8]
	str r7, [r0]
	str r7, [r0, #4]
	adds r0, r4, #0
	b _0802F12C

	non_word_aligned_thumb_func_start sub_802F1CE
sub_802F1CE ;@ 0x0802F1CE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802F518 ;@ =gUnknown_0803EBF4
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801D714
	cmp r5, #0
	beq _0802F1EA
	adds r0, r4, #0
	bl sub_803DA18
_0802F1EA
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802F1F0
sub_802F1F0 ;@ 0x0802F1F0
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne _0802F20A
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
_0802F204
	add sp, #4
	pop {r3}
	bx r3
_0802F20A
	bl sub_801DD40
	b _0802F204

	thumb_func_start sub_802F210
sub_802F210 ;@ 0x0802F210
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	bne _0802F222
	movs r0, #1
_0802F21C
	add sp, #4
	pop {r3}
	bx r3
_0802F222
	bl sub_801DF50
	b _0802F21C

	thumb_func_start sub_802F228
sub_802F228 ;@ 0x0802F228
	push {r4, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x19
	bne _0802F2AA
	ldr r2, [r2, #4]
	movs r3, #0xa0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r3, r0]
	ldr r4, _0802F52C ;@ =0x00002710
	movs r3, #0
	cmp r2, r4
	bne _0802F254
	ldr r2, _0802F530 ;@ =0x00000253
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b _0802F2AA
_0802F254
	ldr r4, _0802F534 ;@ =0x00002712
	cmp r2, r4
	bne _0802F26C
	movs r2, #0xff
	adds r2, #0xd5
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b _0802F2AA
_0802F26C
	ldr r4, _0802F538 ;@ =0x0000021D
	cmp r2, r4
	blo _0802F28A
	ldr r4, _0802F53C ;@ =0x00000245
	cmp r2, r4
	bhs _0802F28A
	movs r2, #0x4d
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
	b _0802F2AA
_0802F28A
	movs r4, #0xff
	adds r4, #0x54
	cmp r2, r4
	blo _0802F2AC
	movs r4, #0x87
	lsls r4, r4, #2
	cmp r2, r4
	bhs _0802F2AC
	movs r2, #0xa1
	lsls r2, r2, #2
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
_0802F2AA
	b _0802F2BC
_0802F2AC
	movs r2, #0x57
	lsls r2, r2, #3
	strh r2, [r0, #0x18]
	strh r3, [r0, #0x1a]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #8]
_0802F2BC
	bl sub_801E2DA
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start CollectPickup
CollectPickup ;@ 0x0802F2C6
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r0, #0x2c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802F2DA
	movs r1, #0
	bl sub_80401E4
_0802F2DA
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802F2E8
	movs r1, #0
	bl sub_80401E4
_0802F2E8
	movs r4, #0
	str r4, [r5, #0x58]
	str r4, [r5, #0x5c]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	adds r6, r4, #0
	adds r2, r4, #0
	adds r4, r5, #0
	adds r4, #0xa0
	strh r2, [r4, #2]
	ldrh r0, [r4]
	ldr r1, _0802F52C ;@ =0x00002710
	cmp r0, r1
	bne _0802F338
	ldr r0, _0802F540 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #0x41
	bl sub_8028C2E
	ldr r0, _0802F544 ;@ =gPlayerEntity
	movs r1, #4
	ldr r0, [r0]
	adds r0, #0xac
	bl ModifyPlayerHealth
_0802F330
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802F338
	ldr r1, _0802F534 ;@ =0x00002712
	cmp r0, r1
	bne _0802F36A
	ldr r0, _0802F540 ;@ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	movs r0, #0xb8
	ldrsb r1, [r0, r5]
	ldr r0, _0802F544 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	adds r1, r5, #0
	adds r1, #0x80
	ldr r0, [r1, #0x14]
	movs r2, #1
	lsls r2, r2, #0xb
	bics r0, r2
	str r0, [r1, #0x14]
_0802F368
	b _0802F330
_0802F36A
	ldr r1, _0802F538 ;@ =0x0000021D
	ldr r5, _0802F548 ;@ =gUnknown_03003478
	cmp r0, r1
	blo _0802F450
	ldr r1, _0802F53C ;@ =0x00000245
	cmp r0, r1
	bhs _0802F450
	ldr r0, _0802F540 ;@ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r7, _0802F54C ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802F550 ;@ =gUnknown_03003454
	movs r3, #2
	movs r1, #1
	ldr r0, [r0]
	bl sub_8017A0A
	adds r0, r7, #0
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #3
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	str r1, [r0, #4]
	str r6, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r7, _0802F550 ;@ =gUnknown_03003454
	movs r3, #2
	movs r1, #1
	ldr r0, [r7]
	bl sub_8017A0A
	ldr r0, _0802F54C ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #0x10
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x19
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	ldr r1, _0802F554 ;@ =0x000004EC
	str r6, [r0, #4]
	strh r1, [r0, #8]
	strh r6, [r0, #0xa]
	strh r6, [r0, #0xc]
	movs r6, #2
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F54C ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1b
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r3, r6, #0
	adds r2, r0, #0
	ldr r0, [r7]
	movs r1, #3
	bl sub_8017A0A
	ldr r0, _0802F544 ;@ =gPlayerEntity
	movs r1, #1
	ldr r0, [r0]
	adds r0, #0xac
	bl CollectFirefly
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802F368
	lsls r2, r0, #0x1b
	lsrs r2, r2, #0x1b
	movs r1, #1
	lsls r1, r2
	lsrs r0, r0, #5
	lsls r0, r0, #2
	ldr r2, [r5, r0]
	orrs r1, r2
	str r1, [r5, r0]
	b _0802F330
_0802F450
	b _0802F452
_0802F452
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x64
	bl sub_803DA9C
	ldrh r1, [r4]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802F47C
	lsls r2, r1, #0x1b
	lsrs r2, r2, #0x1b
	movs r0, #1
	lsls r0, r2
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	orrs r0, r2
	str r0, [r5, r1]
_0802F47C
	ldrh r1, [r4]
	cmp r1, #0xc6
	blo _0802F4BE
	cmp r1, #0xe4
	bhs _0802F4BE
	ldr r0, _0802F558 ;@ =gUnknown_0300344C
	subs r1, #0x26
	ldr r0, [r0]
	movs r3, #0xff
	ldr r2, [r0, #4]
	ldrb r4, [r0, #9]
	ldrh r7, [r2, #4]
	ldr r5, [r2, #8]
	lsls r4, r4, #2
	lsls r1, r7
	adds r1, r5, r1
	ldr r1, [r1, r4]
	ldr r2, [r2, #0xc]
	str r6, [sp]
	adds r2, r2, r1
	str r2, [sp, #4]
	movs r2, #0
	ldr r1, _0802F55C ;@ =0x000004E6
	bl sub_803F528
	ldr r0, _0802F540 ;@ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
	b _0802F5AA
_0802F4BE
	movs r0, #0xff
	adds r0, #0x54
	cmp r1, r0
	blo _0802F5AA
	movs r0, #0x87
	lsls r0, r0, #2
	cmp r1, r0
	bhs _0802F5AA
	adds r0, r1, #0
	subs r0, #0xff
	subs r0, #0x55
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r3, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	movs r0, #0
	cmp r1, #0
	beq _0802F504
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq _0802F506
_0802F504
	movs r0, #1
_0802F506
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	b _0802F560
	ALIGN
_0802F518 DCDU gUnknown_0803EBF4
_0802F51C DCDU 0xF000FFFF
_0802F520 DCDU gUnknown_080414B8
_0802F524 DCDU 0x00010000
_0802F528 DCDU 0x00000000
_0802F52C DCDU 0x00002710
_0802F530 DCDU 0x00000253
_0802F534 DCDU 0x00002712
_0802F538 DCDU 0x0000021D
_0802F53C DCDU 0x00000245
_0802F540 DCDU gUnknown_0300345C
_0802F544 DCDU gPlayerEntity
_0802F548 DCDU gUnknown_03003478
_0802F54C DCDU gUnknown_03003E88
_0802F550 DCDU gUnknown_03003454
_0802F554 DCDU 0x000004EC
_0802F558 DCDU gUnknown_0300344C
_0802F55C DCDU 0x000004E6
_0802F560
	lsls r4, r7
	cmp r1, #0
	beq _0802F570
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq _0802F576
_0802F570
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0802F576
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r4, #1
	lsls r4, r7
	cmp r1, #0
	beq _0802F596
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r4
	beq _0802F59C
_0802F596
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0802F59C
	adds r2, #0xff
	adds r2, #0x58
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r1, #0x1b
	lsrs r4, r4, #0x1b
	b _0802F5AC
_0802F5AA
	b _0802F61C
_0802F5AC
	movs r2, #1
	lsls r2, r4
	cmp r1, #0
	beq _0802F5BE
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ands r1, r2
	beq _0802F5C4
_0802F5BE
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0802F5C4
	ldr r1, _0802F864 ;@ =gUnknown_0300344C
	ldr r4, [r1]
	lsls r1, r3, #1
	ldr r2, [r4, #4]
	adds r1, #0xcd
	ldrh r7, [r2, #4]
	ldrb r3, [r4, #9]
	ldr r5, [r2, #8]
	lsls r1, r7
	adds r1, r5, r1
	lsls r3, r3, #2
	ldr r1, [r1, r3]
	ldr r2, [r2, #0xc]
	adds r1, r2, r1
	cmp r0, #4
	bhs _0802F5FC
	movs r2, #4
	subs r2, r2, r0
	str r2, [sp, #8]
	movs r2, #0
	str r1, [sp, #4]
	movs r3, #0xff
	adds r0, r4, #0
	ldr r1, _0802F868 ;@ =0x000004E7
	str r6, [sp]
	bl sub_803F528
	b _0802F60E
_0802F5FC
	str r1, [sp, #4]
	movs r1, #0x9d
	lsls r1, r1, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	str r6, [sp]
	bl sub_803F528
_0802F60E
	ldr r0, _0802F86C ;@ =gUnknown_0300345C
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r1, r0
	bl sub_8028C2E
_0802F61C
	ldr r7, _0802F870 ;@ =gUnknown_03003E88
	movs r2, #0
	movs r1, #4
	ldr r0, [r7]
	bl sub_803F72C
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #4
	strh r1, [r0, #2]
	movs r2, #0
	movs r4, #2
	adds r3, r4, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r5, _0802F874 ;@ =gUnknown_03003454
	movs r1, #1
	ldr r0, [r5]
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
	movs r3, #0
	str r3, [r0, #8]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
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
	str r6, [r0, #4]
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
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
	adds r3, r4, #0
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #3
	bl sub_8017A0A
	b _0802F330

	non_word_aligned_thumb_func_start sub_802F6BA
sub_802F6BA ;@ 0x0802F6BA
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0xa0
	ldrh r1, [r5]
	adds r4, r0, #0
	ldr r2, _0802F878 ;@ =0x00002710
	adds r4, #0x70
	movs r6, #0xa
	cmp r1, r2
	bne _0802F6E0
	ldr r1, _0802F87C ;@ =gPlayerEntity
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r2, r1
	bne _0802F6E0
	strb r6, [r4, #0xd]
	b _0802F6E4
_0802F6E0
	bl CollectPickup
_0802F6E4
	ldrh r0, [r5]
	ldr r1, _0802F880 ;@ =0x00002712
	cmp r0, r1
	bne _0802F6EE
	strb r6, [r4, #0xd]
_0802F6EE
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_802F6F4
sub_802F6F4 ;@ 0x0802F6F4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r7, #0xa0
	adds r4, r0, #0
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq _0802F7E8
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r1, _0802F884 ;@ =0x00001998
	adds r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r5]
	ldr r2, [r0, #0x3c]
	adds r2, r2, r1
	str r2, [r0, #0x3c]
	cmp r1, #0
	bge _0802F720
	NEGS r2, r1
	b _0802F722
_0802F720
	adds r2, r1, #0
_0802F722
	ldr r3, _0802F888 ;@ =0x0001B330
	ldr r0, _0802F88C ;@ =gUnknown_03003EA0
	cmp r2, r3
	ldr r0, [r0]
	ble _0802F74C
	ldr r6, [r4, #0x30]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F890 ;@ =0x000011F1
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F78E
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _0802F78E
_0802F74C
	ldr r1, _0802F894 ;@ =0x0000B330
	ldr r6, [r4, #0x30]
	cmp r2, r1
	ble _0802F772
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F898 ;@ =0x000011F2
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F78E
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _0802F78E
_0802F772
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F89C ;@ =0x000011F3
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F78E
	ldr r0, [r4, #0x30]
	bl sub_800065C
_0802F78E
	ldr r0, [r5]
	cmp r0, #0
	ble _0802F7E8
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0x30]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	cmp r0, r1
	ble _0802F7E8
	adds r0, r4, #0
	adds r0, #0xc4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r7, #2]
	movs r1, #0x7d
	movs r0, #0xa
	strb r0, [r1, r4]
	ldr r0, _0802F88C ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802F7D4
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802F7D4
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x18]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802F7EA
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	b _0802F7EA
_0802F7E8
	b _0802F812
_0802F7EA
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xbd
	beq _0802F812
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	movs r3, #1
	lsls r3, r3, #0xb
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xbd
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802F812
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802F812
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802F818
sub_802F818 ;@ 0x0802F818
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_8005106
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq _0802F840
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
_0802F840
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
	ALIGN
_0802F864 DCDU gUnknown_0300344C
_0802F868 DCDU 0x000004E7
_0802F86C DCDU gUnknown_0300345C
_0802F870 DCDU gUnknown_03003E88
_0802F874 DCDU gUnknown_03003454
_0802F878 DCDU 0x00002710
_0802F87C DCDU gPlayerEntity
_0802F880 DCDU 0x00002712
_0802F884 DCDU 0x00001998
_0802F888 DCDU 0x0001B330
_0802F88C DCDU gUnknown_03003EA0
_0802F890 DCDU 0x000011F1
_0802F894 DCDU 0x0000B330
_0802F898 DCDU 0x000011F2
_0802F89C DCDU 0x000011F3
	END
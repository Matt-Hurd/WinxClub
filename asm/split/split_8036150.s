    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT sub_80179BE
	IMPORT sub_8028C2E
	IMPORT sub_802F926
	IMPORT sub_802FA92
	IMPORT sub_803B8CA
	IMPORT sub_803F110

	thumb_func_start sub_8036150
sub_8036150 ;@ 0x08036150
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080363C4 ;@ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, _080363C8 ;@ =gUnknown_03003478
	ldr r0, [r0, #0x1c]
	ldr r3, [r2]
	movs r1, #0x20
	adds r5, r3, #0
	ands r3, r1
	adds r1, r4, #0
	adds r2, r4, #0
	adds r2, #0x70
	adds r1, #0xa0
	cmp r3, #0
	beq _080361A4
	ldrh r5, [r0, #0x26]
	adds r3, r4, #0
	adds r3, #0xaa
	strh r5, [r3, #6]
	ldrh r5, [r0, #0x22]
	strh r5, [r3, #2]
	ldrh r5, [r0, #0x24]
	strh r5, [r3, #4]
	ldrh r5, [r0, #0x20]
	strh r5, [r3]
	ldrh r6, [r4, #0x26]
	ldrh r7, [r4, #0x22]
	ldrh r3, [r4, #0x24]
	ldrh r5, [r4, #0x20]
	strh r6, [r0, #0x26]
	strh r7, [r0, #0x22]
	strh r3, [r0, #0x24]
	strh r5, [r0, #0x20]
	ldrb r0, [r1, #8]
	NEGS r0, r0
	strb r0, [r2, #0xd]
	b _080361BE
_080361A4
	movs r3, #0x40
	ands r5, r3
	beq _080361BE
	ldrh r6, [r1, #0x10]
	ldrh r7, [r1, #0xc]
	ldrh r3, [r1, #0xe]
	ldrh r5, [r1, #0xa]
	strh r6, [r0, #0x26]
	strh r7, [r0, #0x22]
	strh r3, [r0, #0x24]
	strh r5, [r0, #0x20]
	ldrb r0, [r1, #8]
	strb r0, [r2, #0xd]
_080361BE
	ldr r2, _080363C8 ;@ =gUnknown_03003478
	movs r5, #1
	ldr r1, [r2]
	lsls r0, r5, #8
	bics r1, r0
	str r1, [r2]
	movs r0, #0
	bl sub_803F110
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _080363C4 ;@ =gUnknown_03003454
	adds r3, r5, #0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80361E8
sub_80361E8 ;@ 0x080361E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x97
	ldrsb r0, [r0, r1]
	adds r0, r0, r2
	cmp r0, #2
	beq _0803620E
	cmp r0, #3
	beq _0803620E
	cmp r0, #5
	beq _0803620E
	cmp r0, #7
	bne _0803620E
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl sub_803B8CA
_0803620E
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

	non_word_aligned_thumb_func_start sub_8036222
sub_8036222 ;@ 0x08036222
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0xa0
	adds r4, r0, #0
	ldrb r0, [r5]
	sub sp, #0x1c
	cmp r0, #0xff
	beq _08036318
	adds r0, #0xff
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _080363CC ;@ =gUnknown_0300345C
	strb r1, [r5]
	ldr r0, [r0]
	bne _0803631A
	ldr r1, _080363C4 ;@ =gUnknown_03003454
	movs r2, #3
	ldr r1, [r1]
	lsls r2, r2, #9
	adds r1, #0x10
	adds r1, r1, r2
	ldr r6, [r1, #0x1c]
	ldrh r1, [r4, #0x1e]
	cmp r1, #0
	beq _08036256
	strh r1, [r4, #0x18]
_08036256
	cmp r1, #0
	beq _0803625C
	strh r1, [r4, #0x1a]
_0803625C
	ldrh r1, [r5, #4]
	cmp r1, #0
	beq _0803626C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
_0803626C
	adds r0, r4, #0
	adds r0, #0x70
	movs r3, #0xd
	ldrsb r1, [r0, r3]
	cmp r1, #0
	bge _08036288
	ldrh r3, [r5, #0x10]
	ldrh r7, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldrh r2, [r5, #0xa]
	strh r3, [r6, #0x26]
	strh r7, [r6, #0x22]
	strh r1, [r6, #0x24]
	strh r2, [r6, #0x20]
_08036288
	movs r1, #0
	strb r1, [r0, #0xd]
	strb r1, [r5, #8]
	movs r0, #0xff
	strb r0, [r5]
	ldrh r0, [r4, #0x1e]
	ldr r1, _080363D0 ;@ =0x00000266
	cmp r0, r1
	beq _080362A8
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1, #0xc]
	movs r2, #1
	lsls r2, r2, #0xc
	bics r0, r2
	str r0, [r1, #0xc]
_080362A8
	ldrh r0, [r5, #0x16]
	cmp r0, #0
	beq _0803635C
	ldr r0, [r4, #0x58]
	ldr r1, _080363C4 ;@ =gUnknown_03003454
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x58]
	str r0, [sp, #4]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #8]
	ldr r0, [r1]
	ldrh r1, [r5, #0x16]
	ldr r0, [r0, #0x10]
	ldr r6, [r4, #0x2c]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #2
	ldr r7, [r0, r1]
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _080362EE
	ldr r0, _080363D4 ;@ =gUnknown_03003EA0
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
_080362EE
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
	bne _0803632E
	ldr r0, _080363D4 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	b _0803631C
_08036318
	b _08036380
_0803631A
	b _08036388
_0803631C
	ldr r1, [r6, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0803632E
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #0x14]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #0x12]
	movs r3, #0
	mvns r3, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r0, [r5, #0x14]
	add r1, sp, #0xc
	add r2, sp, #4
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	movs r1, #0
	strh r1, [r5, #0x16]
_0803635C
	ldr r2, _080363C8 ;@ =gUnknown_03003478
	movs r5, #1
	ldr r1, [r2]
	lsls r0, r5, #8
	orrs r0, r1
	str r0, [r2]
	movs r0, #0
	bl sub_803F110
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _080363C4 ;@ =gUnknown_03003454
	adds r3, r5, #0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
_08036380
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08036388
	ldrh r3, [r4, #0x1a]
	ldr r2, _080363D8 ;@ =0x00000261
	cmp r3, r2
	bne _080363AA
	movs r3, #5
	subs r1, r3, r1
	adds r1, r1, r2
	strh r1, [r4, #0x18]
	ldrh r1, [r5, #2]
	cmp r1, #0
	beq _08036380
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	b _08036380
_080363AA
	ldrh r1, [r4, #0x1c]
	cmp r1, #0
	beq _080363B2
	strh r1, [r4, #0x18]
_080363B2
	ldrh r1, [r5, #2]
	cmp r1, #0
	beq _08036380
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	b _08036380
	ALIGN
_080363C4 DCDU gUnknown_03003454
_080363C8 DCDU gUnknown_03003478
_080363CC DCDU gUnknown_0300345C
_080363D0 DCDU 0x00000266
_080363D4 DCDU gUnknown_03003EA0
_080363D8 DCDU 0x00000261
	END
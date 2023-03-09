    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_080503D6
	IMPORT sub_80301E8
	IMPORT sub_803E21C

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

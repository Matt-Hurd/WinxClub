    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_0805104C
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_8023FE4
	IMPORT sub_803B92C
	IMPORT sub_803B940
	IMPORT sub_8040034
	IMPORT sub_80401E4
	IMPORT sub_8040594
	IMPORT sub_80406A4

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
